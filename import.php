<?php
	// To get this to work you must have PHP and MySQL installed. If you have it installed but it doesn't work, then make a copy of php.exe and mysql.exe and put it in your WINDOWS dir.
	// Please edit config.php to fit your needs.
	require_once('config.php');
	
	ini_set("memory_limit","120M");
	
	function why_get_files($dir,$ext){
		$counter = 0;
		$files = array();
		if($handle = opendir($dir)){
			while(false !== ($file = readdir($handle))){
				if($file != "." && $file != ".."){
					if(substr($file, -3) == $ext){
						$files[] = $file;
						$counter++;
					}
				}
			}
			closedir($handle);
			return array($files,$counter);
		}
	}
	function why_mysql_connect($host,$user,$pass){
		$link = mysql_connect($host,$user,$pass);
		if(!$link){
			die('Could not connect: ' . mysql_error());
		}
		echo "Connected successfully to the mysql server.\n";
		return $link;
	}
	function why_db_selected($link,$db){
		$db_selected = mysql_select_db($db,$link);
		if(!$db_selected){
			die('Can\'t use database : ' . mysql_error());
		}
		echo "Connected successfully to the database.\n";
	}
	function why_mysql_close($link){
		mysql_close($link);
		echo "Disconnected mysql server.\n";
	}
	function why_get_info($link){
		$result = mysql_query("SELECT * FROM `db_version` WHERE db_name='WhyDB';");
		$row = mysql_fetch_row($result);
		return $row;
	}
	
	$args = array('a' => $_SERVER["argv"][1]);
	if($args['a'] == "fresh"){
		$out = why_get_files($config['dir_world'],"sql");
		$files = $out[0];
		$counter[0] = $out[1];
		$link = why_mysql_connect($config['mysql_host'],$config['mysql_user'],$config['mysql_pass']);
		mysql_query("DROP database IF EXISTS `".$config['mysql_db']."`;") or die('Can\'t drop database : ' . mysql_error());
		echo "Successfully dropped ".$config['mysql_db'].".\n";
		mysql_query("CREATE database IF NOT EXISTS `".$config['mysql_db']."`;") or die('Can\'t create database : ' . mysql_error());
		echo "Successfully created ".$config['mysql_db'].".\n";
		why_db_selected($link,$config['mysql_db']);
		$counter[1] = 1;
		foreach($files as $file){
			clearstatcache();
			$filepath = $config['dir_world'].$file;
			$exec = "mysql -h".$config['mysql_host']." -u".$config['mysql_user'];
			if($config['mysql_pass'] != ''){
				$exec.= " -p".$config['mysql_pass'];
			}
			$exec.= " ".$config['mysql_db']." < ".$filepath;
			exec($exec);			
			echo "[$counter[1]/$counter[0]] importing ".$file."\n";
			$counter[1]++;
		}
		echo "\nImporting complete.\n\n";
		why_mysql_close($link);
	}
	else if($args['a'] == "update"){
		$link = why_mysql_connect($config['mysql_host'],$config['mysql_user'],$config['mysql_pass']);
		why_db_selected($link,$config['mysql_db']);
		$done = array();
		while(true){
			$out = why_get_files($config['dir_changeset'],"sql");
			$files = $out[0];
			$row = why_get_info($link);
			$changesets = array();
			foreach($files as $f){
				$changesets[] = substr($f, 10, -4);
			}
			rsort($changesets);
			if($changesets[0] <= $row[2]){
				echo "World database is up-to-date.\n";
				return false;
			}
			else{
				$ch = $row[2]+1;
				if(!in_array($ch,$done)){
					$filepath = $config['dir_changeset']."changeset_$ch.sql";
					$exec = "mysql -h".$config['mysql_host']." -u".$config['mysql_user'];
					if($config['mysql_pass'] != ''){
						$exec.= " -p".$config['mysql_pass'];
					}
					$exec.= " ".$config['mysql_db']." < ".$filepath;
					exec($exec);
					$done[] = $ch;
					echo "Successfully imported changeset_$ch.sql\n";
				}
				else{
					echo "There is some problem with imporing changeset_$ch.sql, lets stop the script, else it will return in a loop. Please report this on the WhyDB forum.\n";
					return false;
				}
			}
		}
		why_mysql_close($link);
	}
	else if($args['a'] == "info"){
		$link = why_mysql_connect($config['mysql_host'],$config['mysql_user'],$config['mysql_pass']);
		why_db_selected($link,$config['mysql_db']);
		$info = why_get_info($link);
		echo "\nThis is info of your current database!\n\n";
		echo "	WhyDB Revision: ".$info[1]."\n";
		echo "	WhyDB Changeset: ".$info[2]."\n";
		echo "	ArcEmu Revision needed: ".$info[4]."+\n";
		echo "	Lastest ArcEmu patch that is applied: ".$info[5]."\n";
		echo "	Game version required: ".$info[3]."\n\n";
	}
?>