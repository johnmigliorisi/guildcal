# CocoaMySQL dump
# Version 0.7b5
# http://cocoamysql.sourceforge.net
#
# Host: 127.0.0.1 (MySQL 5.0.27-max)
# Database: GuildCal
# Generation Time: 2006-11-14 10:25:29 -0700
# ************************************************************

# Dump of table Class
# ------------------------------------------------------------

CREATE TABLE `Class` (
  `id` int(11) NOT NULL auto_increment,
  `Name` text,
  `IconImageId` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table Event
# ------------------------------------------------------------

CREATE TABLE `Event` (
  `id` int(11) NOT NULL auto_increment,
  `Name` text,
  `Type` int(11) unsigned zerofill default NULL,
  `InstanceId` int(11) default NULL,
  `MeetLocation` text,
  `MeetTime` time default NULL,
  `Description` text,
  `Date` date default NULL,
  `StartTime` time default NULL,
  `EndTime` time default NULL,
  `LowestLevel` int(11) default NULL,
  `HighestLevel` int(11) default NULL,
  `LimitGuilds` int(11) default NULL,
  `IconImageId` int(11) default NULL,
  `ClassLimitLevel` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table EventGuild
# ------------------------------------------------------------

CREATE TABLE `EventGuild` (
  `EventId` int(11) default NULL,
  `GuildId` int(11) default NULL,
  `Min` int(11) default NULL,
  `Max` int(11) default NULL,
  KEY `EventId` (`EventId`),
  KEY `GuildId` (`GuildId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table EventLimit
# ------------------------------------------------------------

CREATE TABLE `EventLimit` (
  `EventId` int(11) default NULL,
  `ClassId` int(11) default NULL,
  `Min` int(11) default NULL,
  `Max` int(11) default NULL,
  KEY `EventId` (`EventId`),
  KEY `ClassId` (`ClassId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table EventRegent
# ------------------------------------------------------------

CREATE TABLE `EventRegent` (
  `EventId` int(11) default NULL,
  `RegentId` int(11) default NULL,
  `Min` int(11) default NULL,
  KEY `EventId` (`EventId`),
  KEY `RegentId` (`RegentId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table EventToon
# ------------------------------------------------------------

CREATE TABLE `EventToon` (
  `EventId` int(11) default NULL,
  `ToonId` int(11) default NULL,
  `Status` int(11) default NULL,
  `Role` int(11) default NULL,
  KEY `EventId` (`EventId`),
  KEY `ToonId` (`ToonId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table Guild
# ------------------------------------------------------------

CREATE TABLE `Guild` (
  `id` int(11) NOT NULL auto_increment,
  `Name` text,
  `IconImageId` int(11) default NULL,
  `GuildLeaderId` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table IconImage
# ------------------------------------------------------------

CREATE TABLE `IconImage` (
  `id` int(11) NOT NULL auto_increment,
  `Name` text,
  `URL` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table Instance
# ------------------------------------------------------------

CREATE TABLE `Instance` (
  `id` int(11) NOT NULL auto_increment,
  `Name` text,
  `MaxToonCount` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table Regent
# ------------------------------------------------------------

CREATE TABLE `Regent` (
  `id` int(11) NOT NULL auto_increment,
  `Name` text,
  `IconImageId` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table Toon
# ------------------------------------------------------------

CREATE TABLE `Toon` (
  `id` int(11) NOT NULL auto_increment,
  `UserId` int(11) default NULL,
  `Name` text,
  `ClassId` int(11) default NULL,
  `Level` int(11) default NULL,
  `GuildId` int(11) default NULL,
  `IconImageId` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `UserId` (`UserId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table User
# ------------------------------------------------------------

CREATE TABLE `User` (
  `id` int(11) NOT NULL auto_increment,
  `Name` text,
  `Email` text,
  `SecurityLevel` int(11) default NULL,
  `Password` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



