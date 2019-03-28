delete from ADDRESS_ALIAS_TYPE_AUT;
delete from ADDRESS_TYPE_AUT;
delete from FLAT_TYPE_AUT;
delete from GEOCODE_RELIABILITY_AUT;
delete from GEOCODE_TYPE_AUT;
delete from GEOCODED_LEVEL_TYPE_AUT;
delete from LEVEL_TYPE_AUT;
delete from LOCALITY_ALIAS_TYPE_AUT;
delete from LOCALITY_CLASS_AUT;
delete from MB_MATCH_CODE_AUT;
delete from PS_JOIN_TYPE_AUT;
delete from STREET_CLASS_AUT;
delete from STREET_TYPE_AUT;
delete from STREET_LOCALITY_ALIAS_TYPE_AUT;
delete from STREET_SUFFIX_AUT;

LOAD DATA INFILE '/var/lib/mysql-files/G-NAF/G-NAF\ NOVEMBER\ 2018/Authority\ Code/Authority_Code_ADDRESS_ALIAS_TYPE_AUT_psv.psv' INTO TABLE ADDRESS_ALIAS_TYPE_AUT FIELDS TERMINATED BY '|' IGNORE 1 ROWS;
LOAD DATA INFILE '/var/lib/mysql-files/G-NAF/G-NAF\ NOVEMBER\ 2018/Authority\ Code/Authority_Code_ADDRESS_TYPE_AUT_psv.psv' INTO TABLE ADDRESS_TYPE_AUT FIELDS TERMINATED BY '|' IGNORE 1 ROWS;
LOAD DATA INFILE '/var/lib/mysql-files/G-NAF/G-NAF\ NOVEMBER\ 2018/Authority\ Code/Authority_Code_FLAT_TYPE_AUT_psv.psv' INTO TABLE FLAT_TYPE_AUT FIELDS TERMINATED BY '|' IGNORE 1 ROWS;
LOAD DATA INFILE '/var/lib/mysql-files/G-NAF/G-NAF\ NOVEMBER\ 2018/Authority\ Code/Authority_Code_GEOCODE_RELIABILITY_AUT_psv.psv' INTO TABLE GEOCODE_RELIABILITY_AUT FIELDS TERMINATED BY '|' IGNORE 1 ROWS;
LOAD DATA INFILE '/var/lib/mysql-files/G-NAF/G-NAF\ NOVEMBER\ 2018/Authority\ Code/Authority_Code_GEOCODE_TYPE_AUT_psv.psv' INTO TABLE GEOCODE_TYPE_AUT FIELDS TERMINATED BY '|' IGNORE 1 ROWS;
LOAD DATA INFILE '/var/lib/mysql-files/G-NAF/G-NAF\ NOVEMBER\ 2018/Authority\ Code/Authority_Code_GEOCODED_LEVEL_TYPE_AUT_psv.psv' INTO TABLE GEOCODED_LEVEL_TYPE_AUT FIELDS TERMINATED BY '|' IGNORE 1 ROWS;
LOAD DATA INFILE '/var/lib/mysql-files/G-NAF/G-NAF\ NOVEMBER\ 2018/Authority\ Code/Authority_Code_LEVEL_TYPE_AUT_psv.psv' INTO TABLE LEVEL_TYPE_AUT FIELDS TERMINATED BY '|' IGNORE 1 ROWS;
LOAD DATA INFILE '/var/lib/mysql-files/G-NAF/G-NAF\ NOVEMBER\ 2018/Authority\ Code/Authority_Code_LOCALITY_ALIAS_TYPE_AUT_psv.psv' INTO TABLE LOCALITY_ALIAS_TYPE_AUT FIELDS TERMINATED BY '|' IGNORE 1 ROWS;
LOAD DATA INFILE '/var/lib/mysql-files/G-NAF/G-NAF\ NOVEMBER\ 2018/Authority\ Code/Authority_Code_LOCALITY_CLASS_AUT_psv.psv' INTO TABLE LOCALITY_CLASS_AUT FIELDS TERMINATED BY '|' IGNORE 1 ROWS;
LOAD DATA INFILE '/var/lib/mysql-files/G-NAF/G-NAF\ NOVEMBER\ 2018/Authority\ Code/Authority_Code_MB_MATCH_CODE_AUT_psv.psv' INTO TABLE MB_MATCH_CODE_AUT FIELDS TERMINATED BY '|' IGNORE 1 ROWS;
LOAD DATA INFILE '/var/lib/mysql-files/G-NAF/G-NAF\ NOVEMBER\ 2018/Authority\ Code/Authority_Code_PS_JOIN_TYPE_AUT_psv.psv' INTO TABLE PS_JOIN_TYPE_AUT FIELDS TERMINATED BY '|' IGNORE 1 ROWS;
LOAD DATA INFILE '/var/lib/mysql-files/G-NAF/G-NAF\ NOVEMBER\ 2018/Authority\ Code/Authority_Code_STREET_CLASS_AUT_psv.psv' INTO TABLE STREET_CLASS_AUT FIELDS TERMINATED BY '|' IGNORE 1 ROWS;
LOAD DATA INFILE '/var/lib/mysql-files/G-NAF/G-NAF\ NOVEMBER\ 2018/Authority\ Code/Authority_Code_STREET_TYPE_AUT_psv.psv' INTO TABLE STREET_TYPE_AUT FIELDS TERMINATED BY '|' IGNORE 1 ROWS;
LOAD DATA INFILE '/var/lib/mysql-files/G-NAF/G-NAF\ NOVEMBER\ 2018/Authority\ Code/Authority_Code_STREET_LOCALITY_ALIAS_TYPE_AUT_psv.psv' INTO TABLE STREET_LOCALITY_ALIAS_TYPE_AUT FIELDS TERMINATED BY '|' IGNORE 1 ROWS;
LOAD DATA INFILE '/var/lib/mysql-files/G-NAF/G-NAF\ NOVEMBER\ 2018/Authority\ Code/Authority_Code_STREET_SUFFIX_AUT_psv.psv' INTO TABLE STREET_SUFFIX_AUT FIELDS TERMINATED BY '|' IGNORE 1 ROWS;


delete from address_alias;
LOAD DATA INFILE '/var/lib/mysql-files/G-NAF/G-NAF\ NOVEMBER\ 2018/Standard/NT_ADDRESS_ALIAS_psv.psv' INTO TABLE address_alias FIELDS TERMINATED BY '|' IGNORE 1 ROWS;
copy address_alias from '/var/lib/postgresql/data/ngaf/Standard/NT_ADDRESS_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy address_alias from '/var/lib/postgresql/data/ngaf/Standard/OT_ADDRESS_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy address_alias from '/var/lib/postgresql/data/ngaf/Standard/SA_ADDRESS_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy address_alias from '/var/lib/postgresql/data/ngaf/Standard/WA_ADDRESS_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy address_alias from '/var/lib/postgresql/data/ngaf/Standard/ACT_ADDRESS_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy address_alias from '/var/lib/postgresql/data/ngaf/Standard/NSW_ADDRESS_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy address_alias from '/var/lib/postgresql/data/ngaf/Standard/QLD_ADDRESS_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy address_alias from '/var/lib/postgresql/data/ngaf/Standard/TAS_ADDRESS_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy address_alias from '/var/lib/postgresql/data/ngaf/Standard/VIC_ADDRESS_ALIAS_psv.psv' delimiter '|' CSV HEADER;

delete from ADDRESS_DEFAULT_GEOCODE;
copy ADDRESS_DEFAULT_GEOCODE from '/var/lib/postgresql/data/ngaf/Standard/NT_ADDRESS_DEFAULT_GEOCODE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_DEFAULT_GEOCODE from '/var/lib/postgresql/data/ngaf/Standard/OT_ADDRESS_DEFAULT_GEOCODE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_DEFAULT_GEOCODE from '/var/lib/postgresql/data/ngaf/Standard/SA_ADDRESS_DEFAULT_GEOCODE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_DEFAULT_GEOCODE from '/var/lib/postgresql/data/ngaf/Standard/WA_ADDRESS_DEFAULT_GEOCODE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_DEFAULT_GEOCODE from '/var/lib/postgresql/data/ngaf/Standard/ACT_ADDRESS_DEFAULT_GEOCODE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_DEFAULT_GEOCODE from '/var/lib/postgresql/data/ngaf/Standard/NSW_ADDRESS_DEFAULT_GEOCODE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_DEFAULT_GEOCODE from '/var/lib/postgresql/data/ngaf/Standard/QLD_ADDRESS_DEFAULT_GEOCODE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_DEFAULT_GEOCODE from '/var/lib/postgresql/data/ngaf/Standard/TAS_ADDRESS_DEFAULT_GEOCODE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_DEFAULT_GEOCODE from '/var/lib/postgresql/data/ngaf/Standard/VIC_ADDRESS_DEFAULT_GEOCODE_psv.psv' delimiter '|' CSV HEADER;

delete from ADDRESS_FEATURE;
copy ADDRESS_FEATURE from '/var/lib/postgresql/data/ngaf/Standard/NT_ADDRESS_FEATURE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_FEATURE from '/var/lib/postgresql/data/ngaf/Standard/SA_ADDRESS_FEATURE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_FEATURE from '/var/lib/postgresql/data/ngaf/Standard/WA_ADDRESS_FEATURE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_FEATURE from '/var/lib/postgresql/data/ngaf/Standard/ACT_ADDRESS_FEATURE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_FEATURE from '/var/lib/postgresql/data/ngaf/Standard/NSW_ADDRESS_FEATURE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_FEATURE from '/var/lib/postgresql/data/ngaf/Standard/QLD_ADDRESS_FEATURE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_FEATURE from '/var/lib/postgresql/data/ngaf/Standard/TAS_ADDRESS_FEATURE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_FEATURE from '/var/lib/postgresql/data/ngaf/Standard/VIC_ADDRESS_FEATURE_psv.psv' delimiter '|' CSV HEADER;

delete from ADDRESS_DETAIL;
copy ADDRESS_DETAIL from '/var/lib/postgresql/data/ngaf/Standard/NT_ADDRESS_DETAIL_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_DETAIL from '/var/lib/postgresql/data/ngaf/Standard/OT_ADDRESS_DETAIL_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_DETAIL from '/var/lib/postgresql/data/ngaf/Standard/SA_ADDRESS_DETAIL_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_DETAIL from '/var/lib/postgresql/data/ngaf/Standard/WA_ADDRESS_DETAIL_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_DETAIL from '/var/lib/postgresql/data/ngaf/Standard/ACT_ADDRESS_DETAIL_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_DETAIL from '/var/lib/postgresql/data/ngaf/Standard/NSW_ADDRESS_DETAIL_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_DETAIL from '/var/lib/postgresql/data/ngaf/Standard/QLD_ADDRESS_DETAIL_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_DETAIL from '/var/lib/postgresql/data/ngaf/Standard/TAS_ADDRESS_DETAIL_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_DETAIL from '/var/lib/postgresql/data/ngaf/Standard/VIC_ADDRESS_DETAIL_psv.psv' delimiter '|' CSV HEADER;

delete from ADDRESS_MESH_BLOCK_2011;
copy ADDRESS_MESH_BLOCK_2011 from '/var/lib/postgresql/data/ngaf/Standard/NT_ADDRESS_MESH_BLOCK_2011_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_MESH_BLOCK_2011 from '/var/lib/postgresql/data/ngaf/Standard/OT_ADDRESS_MESH_BLOCK_2011_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_MESH_BLOCK_2011 from '/var/lib/postgresql/data/ngaf/Standard/SA_ADDRESS_MESH_BLOCK_2011_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_MESH_BLOCK_2011 from '/var/lib/postgresql/data/ngaf/Standard/WA_ADDRESS_MESH_BLOCK_2011_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_MESH_BLOCK_2011 from '/var/lib/postgresql/data/ngaf/Standard/ACT_ADDRESS_MESH_BLOCK_2011_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_MESH_BLOCK_2011 from '/var/lib/postgresql/data/ngaf/Standard/NSW_ADDRESS_MESH_BLOCK_2011_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_MESH_BLOCK_2011 from '/var/lib/postgresql/data/ngaf/Standard/QLD_ADDRESS_MESH_BLOCK_2011_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_MESH_BLOCK_2011 from '/var/lib/postgresql/data/ngaf/Standard/TAS_ADDRESS_MESH_BLOCK_2011_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_MESH_BLOCK_2011 from '/var/lib/postgresql/data/ngaf/Standard/VIC_ADDRESS_MESH_BLOCK_2011_psv.psv' delimiter '|' CSV HEADER;

delete from ADDRESS_MESH_BLOCK_2016;
copy ADDRESS_MESH_BLOCK_2016 from '/var/lib/postgresql/data/ngaf/Standard/NT_ADDRESS_MESH_BLOCK_2016_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_MESH_BLOCK_2016 from '/var/lib/postgresql/data/ngaf/Standard/OT_ADDRESS_MESH_BLOCK_2016_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_MESH_BLOCK_2016 from '/var/lib/postgresql/data/ngaf/Standard/SA_ADDRESS_MESH_BLOCK_2016_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_MESH_BLOCK_2016 from '/var/lib/postgresql/data/ngaf/Standard/WA_ADDRESS_MESH_BLOCK_2016_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_MESH_BLOCK_2016 from '/var/lib/postgresql/data/ngaf/Standard/ACT_ADDRESS_MESH_BLOCK_2016_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_MESH_BLOCK_2016 from '/var/lib/postgresql/data/ngaf/Standard/NSW_ADDRESS_MESH_BLOCK_2016_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_MESH_BLOCK_2016 from '/var/lib/postgresql/data/ngaf/Standard/QLD_ADDRESS_MESH_BLOCK_2016_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_MESH_BLOCK_2016 from '/var/lib/postgresql/data/ngaf/Standard/TAS_ADDRESS_MESH_BLOCK_2016_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_MESH_BLOCK_2016 from '/var/lib/postgresql/data/ngaf/Standard/VIC_ADDRESS_MESH_BLOCK_2016_psv.psv' delimiter '|' CSV HEADER;

delete from ADDRESS_SITE_GEOCODE;
copy ADDRESS_SITE_GEOCODE from '/var/lib/postgresql/data/ngaf/Standard/NT_ADDRESS_SITE_GEOCODE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_SITE_GEOCODE from '/var/lib/postgresql/data/ngaf/Standard/OT_ADDRESS_SITE_GEOCODE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_SITE_GEOCODE from '/var/lib/postgresql/data/ngaf/Standard/SA_ADDRESS_SITE_GEOCODE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_SITE_GEOCODE from '/var/lib/postgresql/data/ngaf/Standard/WA_ADDRESS_SITE_GEOCODE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_SITE_GEOCODE from '/var/lib/postgresql/data/ngaf/Standard/ACT_ADDRESS_SITE_GEOCODE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_SITE_GEOCODE from '/var/lib/postgresql/data/ngaf/Standard/NSW_ADDRESS_SITE_GEOCODE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_SITE_GEOCODE from '/var/lib/postgresql/data/ngaf/Standard/QLD_ADDRESS_SITE_GEOCODE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_SITE_GEOCODE from '/var/lib/postgresql/data/ngaf/Standard/TAS_ADDRESS_SITE_GEOCODE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_SITE_GEOCODE from '/var/lib/postgresql/data/ngaf/Standard/VIC_ADDRESS_SITE_GEOCODE_psv.psv' delimiter '|' CSV HEADER;

delete from ADDRESS_SITE;
copy ADDRESS_SITE from '/var/lib/postgresql/data/ngaf/Standard/NT_ADDRESS_SITE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_SITE from '/var/lib/postgresql/data/ngaf/Standard/OT_ADDRESS_SITE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_SITE from '/var/lib/postgresql/data/ngaf/Standard/SA_ADDRESS_SITE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_SITE from '/var/lib/postgresql/data/ngaf/Standard/WA_ADDRESS_SITE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_SITE from '/var/lib/postgresql/data/ngaf/Standard/ACT_ADDRESS_SITE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_SITE from '/var/lib/postgresql/data/ngaf/Standard/NSW_ADDRESS_SITE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_SITE from '/var/lib/postgresql/data/ngaf/Standard/QLD_ADDRESS_SITE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_SITE from '/var/lib/postgresql/data/ngaf/Standard/TAS_ADDRESS_SITE_psv.psv' delimiter '|' CSV HEADER;
copy ADDRESS_SITE from '/var/lib/postgresql/data/ngaf/Standard/VIC_ADDRESS_SITE_psv.psv' delimiter '|' CSV HEADER;

delete from LOCALITY_ALIAS;
copy LOCALITY_ALIAS from '/var/lib/postgresql/data/ngaf/Standard/NT_LOCALITY_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_ALIAS from '/var/lib/postgresql/data/ngaf/Standard/OT_LOCALITY_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_ALIAS from '/var/lib/postgresql/data/ngaf/Standard/SA_LOCALITY_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_ALIAS from '/var/lib/postgresql/data/ngaf/Standard/WA_LOCALITY_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_ALIAS from '/var/lib/postgresql/data/ngaf/Standard/ACT_LOCALITY_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_ALIAS from '/var/lib/postgresql/data/ngaf/Standard/NSW_LOCALITY_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_ALIAS from '/var/lib/postgresql/data/ngaf/Standard/QLD_LOCALITY_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_ALIAS from '/var/lib/postgresql/data/ngaf/Standard/TAS_LOCALITY_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_ALIAS from '/var/lib/postgresql/data/ngaf/Standard/VIC_LOCALITY_ALIAS_psv.psv' delimiter '|' CSV HEADER;

delete from LOCALITY_NEIGHBOUR;
copy LOCALITY_NEIGHBOUR from '/var/lib/postgresql/data/ngaf/Standard/NT_LOCALITY_NEIGHBOUR_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_NEIGHBOUR from '/var/lib/postgresql/data/ngaf/Standard/OT_LOCALITY_NEIGHBOUR_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_NEIGHBOUR from '/var/lib/postgresql/data/ngaf/Standard/SA_LOCALITY_NEIGHBOUR_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_NEIGHBOUR from '/var/lib/postgresql/data/ngaf/Standard/WA_LOCALITY_NEIGHBOUR_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_NEIGHBOUR from '/var/lib/postgresql/data/ngaf/Standard/ACT_LOCALITY_NEIGHBOUR_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_NEIGHBOUR from '/var/lib/postgresql/data/ngaf/Standard/NSW_LOCALITY_NEIGHBOUR_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_NEIGHBOUR from '/var/lib/postgresql/data/ngaf/Standard/QLD_LOCALITY_NEIGHBOUR_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_NEIGHBOUR from '/var/lib/postgresql/data/ngaf/Standard/TAS_LOCALITY_NEIGHBOUR_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_NEIGHBOUR from '/var/lib/postgresql/data/ngaf/Standard/VIC_LOCALITY_NEIGHBOUR_psv.psv' delimiter '|' CSV HEADER;

delete from LOCALITY_POINT;
copy LOCALITY_POINT from '/var/lib/postgresql/data/ngaf/Standard/NT_LOCALITY_POINT_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_POINT from '/var/lib/postgresql/data/ngaf/Standard/OT_LOCALITY_POINT_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_POINT from '/var/lib/postgresql/data/ngaf/Standard/SA_LOCALITY_POINT_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_POINT from '/var/lib/postgresql/data/ngaf/Standard/WA_LOCALITY_POINT_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_POINT from '/var/lib/postgresql/data/ngaf/Standard/ACT_LOCALITY_POINT_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_POINT from '/var/lib/postgresql/data/ngaf/Standard/NSW_LOCALITY_POINT_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_POINT from '/var/lib/postgresql/data/ngaf/Standard/QLD_LOCALITY_POINT_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_POINT from '/var/lib/postgresql/data/ngaf/Standard/TAS_LOCALITY_POINT_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY_POINT from '/var/lib/postgresql/data/ngaf/Standard/VIC_LOCALITY_POINT_psv.psv' delimiter '|' CSV HEADER;

delete from LOCALITY;
copy LOCALITY from '/var/lib/postgresql/data/ngaf/Standard/NT_LOCALITY_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY from '/var/lib/postgresql/data/ngaf/Standard/OT_LOCALITY_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY from '/var/lib/postgresql/data/ngaf/Standard/SA_LOCALITY_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY from '/var/lib/postgresql/data/ngaf/Standard/WA_LOCALITY_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY from '/var/lib/postgresql/data/ngaf/Standard/ACT_LOCALITY_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY from '/var/lib/postgresql/data/ngaf/Standard/NSW_LOCALITY_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY from '/var/lib/postgresql/data/ngaf/Standard/QLD_LOCALITY_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY from '/var/lib/postgresql/data/ngaf/Standard/TAS_LOCALITY_psv.psv' delimiter '|' CSV HEADER;
copy LOCALITY from '/var/lib/postgresql/data/ngaf/Standard/VIC_LOCALITY_psv.psv' delimiter '|' CSV HEADER;

delete from MB_2011;
copy MB_2011 from '/var/lib/postgresql/data/ngaf/Standard/NT_MB_2011_psv.psv' delimiter '|' CSV HEADER;
copy MB_2011 from '/var/lib/postgresql/data/ngaf/Standard/OT_MB_2011_psv.psv' delimiter '|' CSV HEADER;
copy MB_2011 from '/var/lib/postgresql/data/ngaf/Standard/SA_MB_2011_psv.psv' delimiter '|' CSV HEADER;
copy MB_2011 from '/var/lib/postgresql/data/ngaf/Standard/WA_MB_2011_psv.psv' delimiter '|' CSV HEADER;
copy MB_2011 from '/var/lib/postgresql/data/ngaf/Standard/ACT_MB_2011_psv.psv' delimiter '|' CSV HEADER;
copy MB_2011 from '/var/lib/postgresql/data/ngaf/Standard/NSW_MB_2011_psv.psv' delimiter '|' CSV HEADER;
copy MB_2011 from '/var/lib/postgresql/data/ngaf/Standard/QLD_MB_2011_psv.psv' delimiter '|' CSV HEADER;
copy MB_2011 from '/var/lib/postgresql/data/ngaf/Standard/TAS_MB_2011_psv.psv' delimiter '|' CSV HEADER;
copy MB_2011 from '/var/lib/postgresql/data/ngaf/Standard/VIC_MB_2011_psv.psv' delimiter '|' CSV HEADER;

delete from MB_2016;
copy MB_2016 from '/var/lib/postgresql/data/ngaf/Standard/NT_MB_2016_psv.psv' delimiter '|' CSV HEADER;
copy MB_2016 from '/var/lib/postgresql/data/ngaf/Standard/OT_MB_2016_psv.psv' delimiter '|' CSV HEADER;
copy MB_2016 from '/var/lib/postgresql/data/ngaf/Standard/SA_MB_2016_psv.psv' delimiter '|' CSV HEADER;
copy MB_2016 from '/var/lib/postgresql/data/ngaf/Standard/WA_MB_2016_psv.psv' delimiter '|' CSV HEADER;
copy MB_2016 from '/var/lib/postgresql/data/ngaf/Standard/ACT_MB_2016_psv.psv' delimiter '|' CSV HEADER;
copy MB_2016 from '/var/lib/postgresql/data/ngaf/Standard/NSW_MB_2016_psv.psv' delimiter '|' CSV HEADER;
copy MB_2016 from '/var/lib/postgresql/data/ngaf/Standard/QLD_MB_2016_psv.psv' delimiter '|' CSV HEADER;
copy MB_2016 from '/var/lib/postgresql/data/ngaf/Standard/TAS_MB_2016_psv.psv' delimiter '|' CSV HEADER;
copy MB_2016 from '/var/lib/postgresql/data/ngaf/Standard/VIC_MB_2016_psv.psv' delimiter '|' CSV HEADER;

delete from PRIMARY_SECONDARY;
copy PRIMARY_SECONDARY from '/var/lib/postgresql/data/ngaf/Standard/NT_PRIMARY_SECONDARY_psv.psv' delimiter '|' CSV HEADER;
copy PRIMARY_SECONDARY from '/var/lib/postgresql/data/ngaf/Standard/OT_PRIMARY_SECONDARY_psv.psv' delimiter '|' CSV HEADER;
copy PRIMARY_SECONDARY from '/var/lib/postgresql/data/ngaf/Standard/SA_PRIMARY_SECONDARY_psv.psv' delimiter '|' CSV HEADER;
copy PRIMARY_SECONDARY from '/var/lib/postgresql/data/ngaf/Standard/WA_PRIMARY_SECONDARY_psv.psv' delimiter '|' CSV HEADER;
copy PRIMARY_SECONDARY from '/var/lib/postgresql/data/ngaf/Standard/ACT_PRIMARY_SECONDARY_psv.psv' delimiter '|' CSV HEADER;
copy PRIMARY_SECONDARY from '/var/lib/postgresql/data/ngaf/Standard/NSW_PRIMARY_SECONDARY_psv.psv' delimiter '|' CSV HEADER;
copy PRIMARY_SECONDARY from '/var/lib/postgresql/data/ngaf/Standard/QLD_PRIMARY_SECONDARY_psv.psv' delimiter '|' CSV HEADER;
copy PRIMARY_SECONDARY from '/var/lib/postgresql/data/ngaf/Standard/TAS_PRIMARY_SECONDARY_psv.psv' delimiter '|' CSV HEADER;
copy PRIMARY_SECONDARY from '/var/lib/postgresql/data/ngaf/Standard/VIC_PRIMARY_SECONDARY_psv.psv' delimiter '|' CSV HEADER;

delete from STATE;
copy STATE from '/var/lib/postgresql/data/ngaf/Standard/NT_STATE_psv.psv' delimiter '|' CSV HEADER;
copy STATE from '/var/lib/postgresql/data/ngaf/Standard/OT_STATE_psv.psv' delimiter '|' CSV HEADER;
copy STATE from '/var/lib/postgresql/data/ngaf/Standard/SA_STATE_psv.psv' delimiter '|' CSV HEADER;
copy STATE from '/var/lib/postgresql/data/ngaf/Standard/WA_STATE_psv.psv' delimiter '|' CSV HEADER;
copy STATE from '/var/lib/postgresql/data/ngaf/Standard/ACT_STATE_psv.psv' delimiter '|' CSV HEADER;
copy STATE from '/var/lib/postgresql/data/ngaf/Standard/NSW_STATE_psv.psv' delimiter '|' CSV HEADER;
copy STATE from '/var/lib/postgresql/data/ngaf/Standard/QLD_STATE_psv.psv' delimiter '|' CSV HEADER;
copy STATE from '/var/lib/postgresql/data/ngaf/Standard/TAS_STATE_psv.psv' delimiter '|' CSV HEADER;
copy STATE from '/var/lib/postgresql/data/ngaf/Standard/VIC_STATE_psv.psv' delimiter '|' CSV HEADER;

delete from STREET_LOCALITY_ALIAS;
copy STREET_LOCALITY_ALIAS from '/var/lib/postgresql/data/ngaf/Standard/NT_STREET_LOCALITY_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY_ALIAS from '/var/lib/postgresql/data/ngaf/Standard/OT_STREET_LOCALITY_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY_ALIAS from '/var/lib/postgresql/data/ngaf/Standard/SA_STREET_LOCALITY_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY_ALIAS from '/var/lib/postgresql/data/ngaf/Standard/WA_STREET_LOCALITY_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY_ALIAS from '/var/lib/postgresql/data/ngaf/Standard/ACT_STREET_LOCALITY_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY_ALIAS from '/var/lib/postgresql/data/ngaf/Standard/NSW_STREET_LOCALITY_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY_ALIAS from '/var/lib/postgresql/data/ngaf/Standard/QLD_STREET_LOCALITY_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY_ALIAS from '/var/lib/postgresql/data/ngaf/Standard/TAS_STREET_LOCALITY_ALIAS_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY_ALIAS from '/var/lib/postgresql/data/ngaf/Standard/VIC_STREET_LOCALITY_ALIAS_psv.psv' delimiter '|' CSV HEADER;

delete from STREET_LOCALITY_POINT;
copy STREET_LOCALITY_POINT from '/var/lib/postgresql/data/ngaf/Standard/NT_STREET_LOCALITY_POINT_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY_POINT from '/var/lib/postgresql/data/ngaf/Standard/OT_STREET_LOCALITY_POINT_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY_POINT from '/var/lib/postgresql/data/ngaf/Standard/SA_STREET_LOCALITY_POINT_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY_POINT from '/var/lib/postgresql/data/ngaf/Standard/WA_STREET_LOCALITY_POINT_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY_POINT from '/var/lib/postgresql/data/ngaf/Standard/ACT_STREET_LOCALITY_POINT_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY_POINT from '/var/lib/postgresql/data/ngaf/Standard/NSW_STREET_LOCALITY_POINT_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY_POINT from '/var/lib/postgresql/data/ngaf/Standard/QLD_STREET_LOCALITY_POINT_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY_POINT from '/var/lib/postgresql/data/ngaf/Standard/TAS_STREET_LOCALITY_POINT_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY_POINT from '/var/lib/postgresql/data/ngaf/Standard/VIC_STREET_LOCALITY_POINT_psv.psv' delimiter '|' CSV HEADER;

delete from STREET_LOCALITY;
copy STREET_LOCALITY from '/var/lib/postgresql/data/ngaf/Standard/NT_STREET_LOCALITY_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY from '/var/lib/postgresql/data/ngaf/Standard/OT_STREET_LOCALITY_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY from '/var/lib/postgresql/data/ngaf/Standard/SA_STREET_LOCALITY_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY from '/var/lib/postgresql/data/ngaf/Standard/WA_STREET_LOCALITY_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY from '/var/lib/postgresql/data/ngaf/Standard/ACT_STREET_LOCALITY_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY from '/var/lib/postgresql/data/ngaf/Standard/NSW_STREET_LOCALITY_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY from '/var/lib/postgresql/data/ngaf/Standard/QLD_STREET_LOCALITY_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY from '/var/lib/postgresql/data/ngaf/Standard/TAS_STREET_LOCALITY_psv.psv' delimiter '|' CSV HEADER;
copy STREET_LOCALITY from '/var/lib/postgresql/data/ngaf/Standard/VIC_STREET_LOCALITY_psv.psv' delimiter '|' CSV HEADER;





