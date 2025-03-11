######################################################################
# Table structure for table 'tx_newsadsignage_domain_model_news'
######################################################################
CREATE TABLE tx_newsadsignage_domain_model_news (
    sorting int(11) DEFAULT '0' NOT NULL,
    title varchar(255) DEFAULT '' NOT NULL,
    teaser text,
    bodytext mediumtext,
    datetime bigint(20) DEFAULT '0' NOT NULL,
    archive bigint(20) DEFAULT '0' NOT NULL,
    author tinytext,
    author_email tinytext,
    categories int(11) DEFAULT '0' NOT NULL,
    related int(11) DEFAULT '0' NOT NULL,
    related_from int(11) DEFAULT '0' NOT NULL,
    related_files tinytext,
    fal_related_files int(11) unsigned DEFAULT '0',
    related_links int(11) DEFAULT '0' NOT NULL,
    type varchar(100) NOT NULL DEFAULT '0',
    keywords text,
    description text,
    tags int(11) DEFAULT '0' NOT NULL,
    media text,
    fal_media int(11) unsigned DEFAULT '0',
    internalurl text,
    externalurl text,
    istopnews int(11) DEFAULT '0' NOT NULL,
    content_elements int(11) DEFAULT '0' NOT NULL,
    path_segment varchar(2048),
    alternative_title tinytext,
    notes text,
    sitemap_changefreq varchar(10) DEFAULT '' NOT NULL,
    sitemap_priority decimal(2,1) DEFAULT '0.5' NOT NULL,
    import_id varchar(100) DEFAULT '' NOT NULL,
    import_source varchar(100) DEFAULT '' NOT NULL,
    KEY path_segment (path_segment(185), uid),
    KEY import (import_id,import_source)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

######################################################################
# Extend table structure of table 'sys_category'
######################################################################
CREATE TABLE sys_category (
    images int(11) unsigned DEFAULT '0',
    single_pid int(11) unsigned DEFAULT '0' NOT NULL,
    shortcut int(11) DEFAULT '0' NOT NULL,
    import_id varchar(100) DEFAULT '' NOT NULL,
    import_source varchar(100) DEFAULT '' NOT NULL,
    seo_title varchar(255) NOT NULL DEFAULT '',
    seo_description text,
    seo_headline varchar(255) NOT NULL DEFAULT '',
    seo_text text,
    slug varchar(2048),
    KEY import (import_id,import_source)
);

######################################################################
# Table structure for table 'tx_newsadsignage_domain_model_news_ttcontent_mm'
######################################################################
CREATE TABLE tx_newsadsignage_domain_model_news_ttcontent_mm (
    uid_local int(11) DEFAULT '0' NOT NULL,
    uid_foreign int(11) DEFAULT '0' NOT NULL,
    sorting int(11) DEFAULT '0' NOT NULL,
    KEY uid_local (uid_local),
    KEY uid_foreign (uid_foreign)
);

######################################################################
# Table structure for table 'tx_newsadsignage_domain_model_news_related_mm'
######################################################################
CREATE TABLE tx_newsadsignage_domain_model_news_related_mm (
    uid_local int(11) DEFAULT '0' NOT NULL,
    uid_foreign int(11) DEFAULT '0' NOT NULL,
    sorting int(11) DEFAULT '0' NOT NULL,
    sorting_foreign int(11) DEFAULT '0' NOT NULL,
    KEY uid_local (uid_local),
    KEY uid_foreign (uid_foreign)
);

######################################################################
# Table structure for table 'tx_newsadsignage_domain_model_link'
######################################################################
CREATE TABLE tx_newsadsignage_domain_model_link (
    parent int(11) DEFAULT '0' NOT NULL,
    title tinytext,
    description text,
    uri text
);

######################################################################
# Table structure for table 'tx_newsadsignage_domain_model_tag'
######################################################################
CREATE TABLE tx_newsadsignage_domain_model_tag (
    title tinytext,
    slug varchar(2048),
    seo_title varchar(255) NOT NULL DEFAULT '',
    seo_description text,
    seo_headline varchar(255) NOT NULL DEFAULT '',
    seo_text text,
    notes text
);

######################################################################
# Table structure for table 'tx_newsadsignage_domain_model_news_tag_mm'
######################################################################
CREATE TABLE tx_newsadsignage_domain_model_news_tag_mm (
    uid_local int(11) DEFAULT '0' NOT NULL,
    uid_foreign int(11) DEFAULT '0' NOT NULL,
    sorting int(11) DEFAULT '0' NOT NULL,
    KEY uid_local (uid_local),
    KEY uid_foreign (uid_foreign)
);

######################################################################
# Extension of table structure for table 'tt_content'
#
# (Typically, tt_content is a core table.
#  The extension adds a new field for related records.)
######################################################################
CREATE TABLE tt_content (
    tx_newsadsignage_related_news int(11) DEFAULT '0' NOT NULL,
    KEY index_newsadsignage_newscontent (tx_newsadsignage_related_news)
);

######################################################################
# Extension of table structure for table 'sys_file_reference'
#
# (This is a simplified declaration; the actual sys_file_reference is part of TYPO3 core.)
######################################################################
CREATE TABLE sys_file_reference (
    showinpreview tinyint(4) DEFAULT '0' NOT NULL
);

######################################################################
# Table structure for table 'tx_newsadsignage_domain_model_naechste_stadtfuehrung'
######################################################################
CREATE TABLE tx_newsadsignage_domain_model_naechste_stadtfuehrung (
    uid int(11) unsigned NOT NULL auto_increment,
    pid int(11) DEFAULT '0' NOT NULL,
    tstamp int(11) unsigned NOT NULL,
    crdate int(11) unsigned NOT NULL,
    cruser_id int(11) unsigned NOT NULL,
    deleted tinyint(4) unsigned NOT NULL DEFAULT '0',
    hidden tinyint(4) unsigned NOT NULL DEFAULT '0',
    title varchar(255) DEFAULT '' NOT NULL,
    date_time int(11) unsigned DEFAULT '0' NOT NULL,
    duration varchar(255) DEFAULT '' NOT NULL,
    starts_in varchar(255) DEFAULT '' NOT NULL,
    organizer varchar(255) DEFAULT '' NOT NULL,
    address varchar(255) DEFAULT '' NOT NULL,
    phone varchar(255) DEFAULT '' NOT NULL,
    image varchar(255) DEFAULT '' NOT NULL,
    PRIMARY KEY (uid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

######################################################################
# Table structure for table 'tx_newsadsignage_domain_model_veranstaltungstipp'
######################################################################
CREATE TABLE tx_newsadsignage_domain_model_veranstaltungstipp (
    uid int(11) unsigned NOT NULL auto_increment,
    pid int(11) DEFAULT '0' NOT NULL,
    tstamp int(11) unsigned NOT NULL,
    crdate int(11) unsigned NOT NULL,
    cruser_id int(11) unsigned NOT NULL,
    deleted tinyint(4) unsigned NOT NULL DEFAULT '0',
    hidden tinyint(4) unsigned NOT NULL DEFAULT '0',
    title varchar(255) DEFAULT '' NOT NULL,
    date_time int(11) unsigned DEFAULT '0' NOT NULL,
    location varchar(255) DEFAULT '' NOT NULL,
    detailed_description text,
    image varchar(255) DEFAULT '' NOT NULL,
    PRIMARY KEY (uid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
