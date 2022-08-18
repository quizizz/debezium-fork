-- Create Table
create table debezium.products (id NUMBER(4) GENERATED BY DEFAULT ON NULL AS IDENTITY (START WITH 101) NOT NULL PRIMARY KEY, name VARCHAR2(255) NOT NULL, description VARCHAR2(512), weight FLOAT);
create table debezium.products (id NUMBER(4) GENERATED BY DEFAULT ON NULL AS IDENTITY (START WITH 101 INCREMENT BY 1 CYCLE CACHE 200) NOT NULL PRIMARY KEY, name VARCHAR2(255) NOT NULL, description VARCHAR2(512), weight FLOAT);
create global temporary table sys.ora_temp_1_ds_1550399 sharing=none on commit preserve rows cache noparallel as select /*+ no_parallel(t) no_parallel_index(t) dbms_stats cursor_sharing_exact use_weak_name_resl dynamic_sampling(0) no_monitoring xmlindex_sel_idx_tbl opt_param('optimizer_inmemory_aware' 'false') no_substrb_pad */"ENTRYUUID", rowid SYS_DS_ALIAS_0 from "IDENTITYDB"."OAUTH2_CLIENT_CHANGE_LOGS" sample ( 10.0000000000) t WHERE 1 = 2;
CREATE TABLE "ABCD_SHARD_1_3"."D_PLAN_SCHEDULE_LOT_ENTRY"("ID" NUMBER(38,0) NOT NULL ENABLE, "LOT_ID" NUMBER(38,0) NOT NULL ENABLE, "PLAN_SCHEDULE_ID" NUMBER(38,0) NOT NULL ENABLE, "IS_ACTUAL" NUMBER(1,0) NOT NULL ENABLE, "OOS_POSITION_NUMBER" NVARCHAR2(50) DEFAULT 0, CONSTRAINT "PK_PSLE_ENTRY_ID" PRIMARY KEY ("ID") USING INDEX  ENABLE, SUPPLEMENTAL LOG DATA (PRIMARY KEY) COLUMNS, SUPPLEMENTAL LOG DATA (UNIQUE INDEX) COLUMNS, SUPPLEMENTAL LOG DATA (FOREIGN KEY) COLUMNS, CONSTRAINT "FK_PSLE_LOT_VERSION" FOREIGN KEY ("LOT_ID") REFERENCES "ABCD_SHARD_1_3"."D_LOT_VERSION" ("ID") DISABLE, CONSTRAINT "FK_PSLE_PLAN_SCHEDULE_VERSION" FOREIGN KEY ("PLAN_SCHEDULE_ID") REFERENCES "ABCD_SHARD_1_3"."D_PLAN_SCHEDULE_VERSION" ("ID") ENABLE );
CREATE TABLE IDATA_BAIIR.CUST_INFO (ID NUMBER(20) NOT NULL ENABLE, CUST_NAME VARCHAR2(200 CHAR) NOT NULL ENABLE, CUST_NAME_PY VARCHAR2(500 CHAR), CUST_NAME_PY_SZ VARCHAR2(50 CHAR), CUST_NAME_ABBR VARCHAR2(100 CHAR), CUST_NAME_ABBR_PY VARCHAR2(300 CHAR), CUST_NAME_ABBR_PY_SZ VARCHAR2(50 CHAR), CUST_NAME_EN VARCHAR2(100 CHAR), CUST_TYPE NUMBER(10), CUST_STATUS NUMBER(10), CUST_LEVEL NUMBER(10), MEMO VARCHAR2(500 CHAR), TEL_NUM VARCHAR2(100 CHAR), FAX_NUM VARCHAR2(100 CHAR), INTERNET_ADDRESS VARCHAR2(200 CHAR), COMPANY_ADDRESS VARCHAR2(200 CHAR), POST_CODE VARCHAR2(50 CHAR), EMAIL_ADDRESS VARCHAR2(200 CHAR), CUST_VALID_FLAG NUMBER(1), EXP_DATE DATE, CERT_TYPE NUMBER(10), CERT_NUM VARCHAR2(100 CHAR), CERT_CUST_NAME VARCHAR2(200 CHAR), RISK_LEVEL NUMBER(10), FXPP_CONFIRM_PROCESS NUMBER(10), FXPP_CONFIRM_PROCESS_INFO NUMBER(10), SDX_INFO_AUDITOR VARCHAR2(100 CHAR), SDX_NEW_COM NUMBER(1), ECIF_OTC_FLAG NUMBER(1), AUDIT_STATUS NUMBER(1), IS_VALID NUMBER(1) DEFAULT 1 NOT NULL ENABLE, CREATE_TIME DATE, CREATOR NUMBER(20), CREATOR_NAME VARCHAR2(30 CHAR), MODIFY_TIME DATE, MODIFIER NUMBER(20), MODIFIER_NAME VARCHAR2(30 CHAR)) tablespace BIGDATADBT pctfree 10 initrans 1 maxtrans 255 storage ( initial 192K next 1M minextents 1 maxextents unlimited );
create table dbz1211 (id number(38) not null, data varchar2(50), constraint name primary key (id) using index tablespace ts1) tablespace ts2;
CREATE TABLE "HR"."COUNTRIES"( "COUNTRY_ID" CHAR(2) CONSTRAINT "COUNTRY_ID_NN" NOT NULL ENABLE,"COUNTRY_NAME" VARCHAR2(40),"REGION_ID" NUMBER,CONSTRAINT "COUNTRY_C_ID_PK" PRIMARY KEY ("COUNTRY_ID") ENABLE,SUPPLEMENTAL LOG DATA (ALL) COLUMNS,CONSTRAINT "COUNTR_REG_FK" FOREIGN KEY ("REGION_ID")REFERENCES "HR"."REGIONS" ("REGION_ID") ENABLE) ORGANIZATION INDEX NOCOMPRESS;
CREATE TABLE "VELEBIT_ZAVAR_PROD"."PON_PRIJENOS" ("SIF_AGENCIJE" NUMBER DEFAULT 0 NOT NULL ENABLE, "DAT_PRIJENOSA" DATE NOT NULL ENABLE, "VRS_POLICE" NUMBER DEFAULT 0 NOT NULL ENABLE, "BR_ZAPRIMLJENIH" NUMBER DEFAULT 0, "BR_POLICIRANIH" NUMBER DEFAULT 0) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 ROW STORE COMPRESS ADVANCED LOGGING STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "TS_VELEBIT" PARALLEL 8 ;
create table eshp_auction_file_history (history_id number not null, history_date timestamp not null, auction_id number not null, changed_by varchar(4000), type varchar(4000) not null, constraint pk_eshp_auction_file_history primary key (history_id) using index (create unique index idx_eshp_auction_file_history_id on eshp_auction_file_history(history_id)), constraint fk_eshp_auc_file_history_auction foreign key (auction_id) references eshp_auction(auction_id) on delete cascade);
CREATE TABLE "IDENTITYDB"."CHANGE_NUMBERS" ( "CHANGE_NO" NUMBER(*,0) NOT NULL ENABLE, "SOURCE_INFO" VARCHAR2(128) NOT NULL ENABLE, "CHANGED_TIME" TIMESTAMP (6) DEFAULT SYSDATE, "ENTITY_TYPE" VARCHAR2(36) NOT NULL ENABLE, "ORGANIZATIONID" VARCHAR2(36), "PROCESSED" NUMBER(1,0) DEFAULT 1 NOT NULL ENABLE, "TRACKING_ID" VARCHAR2(256) NOT NULL ENABLE, "EXPIRY_TIME" TIMESTAMP (6), "ACTOR" VARCHAR2(36), "ENTITY_ID" VARCHAR2(36) ) PARTITION BY RANGE ("EXPIRY_TIME") INTERVAL (NUMTODSINTERVAL(7, 'DAY')) SUBPARTITION BY HASH ("CHANGE_NO") SUBPARTITIONS 16 (PARTITION "SYS_P44414"  VALUES LESS THAN (TIMESTAMP' 2021-07-06 00:00:00') ( SUBPARTITION "SYS_SUBP44398" , SUBPARTITION "SYS_SUBP44399" , SUBPARTITION "SYS_SUBP44400" , SUBPARTITION "SYS_SUBP44401" , SUBPARTITION "SYS_SUBP44402" , SUBPARTITION "SYS_SUBP44403" , SUBPARTITION "SYS_SUBP44404" , SUBPARTITION "SYS_SUBP44405" , SUBPARTITION "SYS_SUBP44406" , SUBPARTITION "SYS_SUBP44407" , SUBPARTITION "SYS_SUBP44408" , SUBPARTITION "SYS_SUBP44409" , SUBPARTITION "SYS_SUBP44410" , SUBPARTITION "SYS_SUBP44411" , SUBPARTITION "SYS_SUBP44412" , SUBPARTITION "SYS_SUBP44413" ) );
CREATE TABLE "ETUDES"."IMPORT_EXMETI" (abort_step NUMBER,access_method VARCHAR2(16),ancestor_object_name VARCHAR2(128),ancestor_object_schema VARCHAR2(128),ancestor_object_type VARCHAR2(128),ancestor_process_order NUMBER,base_object_name VARCHAR2(128),base_object_schema VARCHAR2(128),base_object_type VARCHAR2(128),base_process_order NUMBER,block_size NUMBER,cluster_ok NUMBER,completed_bytes NUMBER,completed_rows NUMBER,completion_time DATE,control_queue VARCHAR2(128),creation_level NUMBER,creation_time DATE,cumulative_time NUMBER,data_buffer_size NUMBER,data_io NUMBER,dataobj_num NUMBER,db_version VARCHAR2(60),degree NUMBER,domain_process_order NUMBER,dump_allocation NUMBER,dump_fileid NUMBER,dump_length NUMBER,dump_orig_length NUMBER,dump_position NUMBER,duplicate NUMBER,elapsed_time NUMBER,error_count NUMBER,extend_size NUMBER,file_max_size NUMBER,file_name VARCHAR2(4000),file_type NUMBER,flags NUMBER,grantor VARCHAR2(128),granules NUMBER,guid RAW(16),in_progress CHAR(1),instance VARCHAR2(60),instance_id NUMBER,is_default NUMBER,job_mode VARCHAR2(21),job_version VARCHAR2(60),last_file NUMBER,last_update DATE,load_method NUMBER,metadata_buffer_size NUMBER,metadata_io NUMBER,name VARCHAR2(128),object_int_oid VARCHAR2(130),object_long_name VARCHAR2(4000),object_name VARCHAR2(200),object_number NUMBER,object_path_seqno NUMBER,object_row NUMBER,object_schema VARCHAR2(128),object_tablespace VARCHAR2(128),object_type VARCHAR2(128),object_type_path VARCHAR2(200),objnum NUMBER,old_value VARCHAR2(4000),operation VARCHAR2(8),option_tag VARCHAR2(128),orig_base_object_name VARCHAR2(128),orig_base_object_schema VARCHAR2(128),original_object_name VARCHAR2(128),original_object_schema VARCHAR2(128),packet_number NUMBER,parallelization NUMBER,parent_object_name VARCHAR2(128),parent_object_schema VARCHAR2(128),parent_process_order NUMBER,partition_name VARCHAR2(128),phase NUMBER,platform VARCHAR2(101),process_name VARCHAR2(128),process_order NUMBER,processing_state CHAR(1),processing_status CHAR(1),property NUMBER,proxy_schema VARCHAR2(128),proxy_view VARCHAR2(128),queue_tabnum NUMBER,remote_link VARCHAR2(128),scn NUMBER,seed NUMBER,service_name VARCHAR2(64),size_estimate NUMBER,src_compat VARCHAR2(60),start_time DATE,state VARCHAR2(12),status_queue VARCHAR2(128),subpartition_name VARCHAR2(128),target_xml_clob CLOB,tde_rewrapped_key RAW(2000),template_table VARCHAR2(128),timezone VARCHAR2(64),total_bytes NUMBER,trigflag NUMBER,unload_method NUMBER,user_directory VARCHAR2(4000),user_file_name VARCHAR2(4000),user_name VARCHAR2(128),value_n NUMBER,value_t VARCHAR2(4000),version NUMBER,work_item VARCHAR2(21),xml_clob CLOB,xml_process_order NUMBER) SEGMENT CREATION IMMEDIATE NO INMEMORY INITRANS 100;
CREATE TABLE "IFSAPP".CMP4$94648 organization heap tablespace "IFSAPP_DATA" compress for all operations nologging as select /*+ DYNAMIC_SAMPLING(0) */ * from "IFSAPP".COMP3$94648 mytab;
CREATE TABLE "ZZJOBRUN_MDE" ("MANDT" VARCHAR2 (000009) DEFAULT '000' NOT NULL, "REPID" VARCHAR2 (000120) DEFAULT ' ' NOT NULL, "VARNA" VARCHAR2 (000042) DEFAULT ' ' NOT NULL, "ZZ_MDE_INFO" VARCHAR2 (000075) DEFAULT ' ' NOT NULL) PCTFREE 10 PCTUSED 00 INITRANS 001 TABLESPACE PSAPSR3TBLS NOCOMPRESS NO INMEMORY STORAGE (INITIAL 0000000064 K NEXT 0000001024 K MINEXTENTS 0000000001 MAXEXTENTS UNLIMITED PCTINCREASE 0000 FREELISTS 001 FREELIST GROUPS 01);
CREATE TABLE "DEBEZIUM"."TYPE_GEOMETRY" ( "ID" NUMBER(9,0) NOT NULL ENABLE, "LOCATION" "SDO_GEOMETRY", PRIMARY KEY ("ID") USING INDEX ENABLE, SUPPLEMENTAL LOG DATA (ALL) COLUMNS ) VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS SECUREFILE LOB VARRAY "LOCATION"."SDO_ORDINATES" STORE AS SECUREFILE LOB;
CREATE TABLE "U3"."TEST_QUEUE_TABLE"(q_name            VARCHAR2(128),msgid              RAW(16),corrid             VARCHAR2(128),priority           NUMBER,state              NUMBER,delay              TIMESTAMP,expiration         NUMBER,time_manager_info  TIMESTAMP,local_order_no     NUMBER,chain_no           NUMBER,cscn               NUMBER,dscn               NUMBER,enq_time           TIMESTAMP,enq_uid             VARCHAR2(128), enq_tid            VARCHAR2(30),deq_time           TIMESTAMP,deq_uid             VARCHAR2(128), deq_tid            VARCHAR2(30),retry_count        NUMBER,exception_qschema  VARCHAR2(128),exception_queue    VARCHAR2(128),step_no            NUMBER,recipient_key      NUMBER,dequeue_msgid      RAW(16),sender_name    VARCHAR2(128),sender_address VARCHAR2(1024),sender_protocol NUMBER,USER_DATA "SYS"."AQ$_JMS_TEXT_MESSAGE",user_prop      SYS.ANYDATA, PRIMARY KEY(msgid) ) USAGE QUEUE ;
create table products (id NUMBER(4) NOT NULL PRIMARY KEY, name VARCHAR2(255) NOT NULL, seq NUMBER NOT NULL);
CREATE TABLE T$BO_PATIENT_LMAP NOLOGGING TABLESPACE CMX_TEMP_TDE PARALLEL (DEGREE 1) AS SELECT DISTINCT XREF.ORIG_ROWID_OBJECT, XREF.ROWID_OBJECT FROM C_S_PATIENT STAGE INNER JOIN C_BO_PATIENT_XREF XREF ON XREF.ORIG_ROWID_OBJECT = STAGE.ROWID_OBJECT WHERE STAGE.ROWID_OBJECT IS NOT NULL ;
CREATE TABLE "ORACDC"."DEPARTMENT"  (    "EMP_NO" VARCHAR2(20) NOT NULL ENABLE, "REQUEST_ID" VARCHAR2(30) NOT NULL ENABLE, "EMP_RCODE" NUMBER(2,0), "EMP_RFLAG" VARCHAR2(20), "EMP_RMSG" VARCHAR2(1000), "EMP_EMP_AMOUNT" NUMBER(8,2), "EMP_EMP_AVS" VARCHAR2(20), "EMP_EMP_CODE" VARCHAR2(200), "EMP_EMP_TIME" VARCHAR2(20), "LAST_UPD_DATE" DATE, "LAST_UPD_BY" VARCHAR2(20), "SITE_ID" NUMBER(5,0) DEFAULT NULL NOT NULL ENABLE, "OBSOLETE_FLAG" CHAR(1) DEFAULT 'N' NOT NULL ENABLE, "PRODUCT_TYPE_ID" NUMBER DEFAULT 2, "TRX_NUMBER" VARCHAR2(30), "RECONCILIATION_ID" VARCHAR2(60), "REQUEST_TOKEN" VARCHAR2(256), "LOAD_TIMESTAMP" TIMESTAMP (6), "PAYMENT_TYPE" VARCHAR2(50), "TRANSACTION_SOURCE" VARCHAR2(50), "CREDIT_CARD_TYPE" VARCHAR2(50),  SUPPLEMENTAL LOG GROUP "GGS_19282" ("EMP_NO", "REQUEST_ID") ALWAYS, SUPPLEMENTAL LOG DATA (ALL) COLUMNS, CONSTRAINT "DEPARTMENT_FK" FOREIGN KEY ("EMP_NO")   REFERENCES "ORACDC"."MEM_REG" ("EMP_NO") ENABLE NOVALIDATE  ) PARTITION BY HASH ("EMP_NO") (PARTITION "DEPARTMENT_P1" ,PARTITION "DEPARTMENT_P2" , PARTITION "DEPARTMENT_P32" );
CREATE TABLE "ODS_XMES_QY"."ORDER" ("Oid" CHAR(36), "CONTRACT" CHAR(36), CONSTRAINT "PK_ORDER" PRIMARY KEY ("Oid") USING INDEX ENABLE, SUPPLEMENTAL LOG GROUP "GGS_87678" ("Oid") ALWAYS) INMEMORY PRIORITY CRITICAL MEMCOMPRESS FOR QUERY LOW DISTRIBUTE AUTO FOR SERVICE ALL NO DUPLICATE;
  CREATE TABLE "XMES"."ORDER_ITEM"
   (    "CREATE_TIME" DATE,
    "Oid" CHAR(36) NOT NULL ENABLE,
    "ORDER" CHAR(36),
    "ORDER_PRODUCT" CHAR(36),
    "JOB_HEAD" CHAR(36),
    "NAME" NVARCHAR2(100),
    "STD_CODE" NVARCHAR2(50),
    "STD_ITEM_NAME" NVARCHAR2(50),
    "STD_TYPE" NUMBER(*,0),
    "NON_STD" NUMBER(1,0),
    "OWE_MTL" NUMBER(1,0),
    "NON_STD_ITEM_CODE" NVARCHAR2(50),
    "ITEM_CLASSIFY" CHAR(36),
    "Parent" CHAR(36),
    "ITEMID" NVARCHAR2(50),
    "STANDARD_MODEL" NUMBER(1,0),
    "ITEMCODE" NVARCHAR2(50),
    "TYPE" NVARCHAR2(10),
    "PART_TYPE" NVARCHAR2(100),
    "LINE_NO" NVARCHAR2(30),
    "OTHER_NAME" NVARCHAR2(500),
    "LENGTH" FLOAT(126),
    "FLENGTH" FLOAT(126),
    "WIDTH" FLOAT(126),
    "FWIDTH" FLOAT(126),
    "THICKNESS" FLOAT(126),
    "FTHICKNESS" FLOAT(126),
    "QTY_OLD" NUMBER(*,0),
    "UOM" NVARCHAR2(10),
    "BARCODE" NVARCHAR2(50),
    "PURCHASE_ID" NVARCHAR2(100),
    "DESCRIPTION1" NVARCHAR2(1000),
    "DESCRIPTION2" NVARCHAR2(1000),
    "ISPEC" NUMBER(*,0),
    "GRID" NUMBER(1,0),
    "GROR" NUMBER(1,0),
    "NGRID" NUMBER(*,0),
    "SURFTGRID" NUMBER(*,0),
    "EDGE_ID" NUMBER(*,0),
    "EDGE_INFO" NVARCHAR2(800),
    "WEIGHT" FLOAT(126),
    "ID_TEXT" NVARCHAR2(500),
    "CNC_FLAG" NUMBER(1,0),
    "BOM_FLAG" NUMBER(1,0),
    "EXCEPTION" NUMBER(1,0),
    "IS_SUPPLY" NUMBER(1,0),
    "CUT_FLAG" NUMBER(1,0),
    "ASSOC_PART" NVARCHAR2(50),
    "INFO2" NVARCHAR2(100),
    "INFO3" NVARCHAR2(600),
    "INFO4" NVARCHAR2(100),
    "INFO5" NVARCHAR2(400),
    "COLOR" NVARCHAR2(100),
    "SURFT_ID" NVARCHAR2(50),
    "SURFT_NAME" NVARCHAR2(100),
    "SURFT_K3_CODE" NVARCHAR2(50),
    "SURFT_MTL_TYPE" NVARCHAR2(100),
    "SURFB_ID" NVARCHAR2(50),
    "SURFB_NAME" NVARCHAR2(100),
    "SURFB_K3_CODE" NVARCHAR2(50),
    "SURFB_MTL_TYPE" NVARCHAR2(100),
    "MTL_LIST_DATE" DATE,
    "TO_JOB" NUMBER(1,0),
    "VIRTUAL" NUMBER(1,0),
    "MTL_TYPE" NVARCHAR2(100),
    "PACKED" NUMBER(1,0),
    "SUPPLIER" NVARCHAR2(200),
    "INFO6" NVARCHAR2(800),
    "TMP_ROAD" NVARCHAR2(2000),
    "ORDER_ITEM_PROD_INFO" CHAR(36),
    "DOOR_DIR" NVARCHAR2(50),
    "IS_MANUAL_DECOMPOSE" NUMBER(1,0),
    "MMP" NUMBER(1,0),
    "AUTO_ID" NUMBER(20,0),
    "PACK_TYPE" NVARCHAR2(100),
    "MTL_RULE" CHAR(36),
    "SURFT_NAM" NVARCHAR2(100),
    "MAT_NAM" NVARCHAR2(100),
    "MAT_ID" NVARCHAR2(100),
    "OPERATION_ROAD" NVARCHAR2(2000),
    "OLD_TECH_CODE" NVARCHAR2(100),
    "PARENT_PROPERTY" NVARCHAR2(100),
    "ENGLISH_NAME" NVARCHAR2(100),
    "REPORTLOSS_TYPE" NVARCHAR2(100),
    "INACTIVE" NUMBER(1,0),
    "LACK_ADD_NOTE" NVARCHAR2(500),
    "OptimisticLockField" NUMBER(*,0),
    "TABLE_TASK_COMPLETE" NUMBER(1,0),
    "ADJUST_STOCK" NVARCHAR2(100),
    "CRAFT_BATCH" NVARCHAR2(100),
    "GLASS_NAME" NVARCHAR2(100),
    "SUPPLY_TYPE" NVARCHAR2(20),
    "AUTO_PICK" NUMBER(1,0),
    "QTY" NUMBER(20,2),
    "XML_ANALYSIS" NCLOB,
     CONSTRAINT "PK_ORDER_ITEM" PRIMARY KEY ("Oid")
  USING INDEX  ENABLE,
     SUPPLEMENTAL LOG DATA (ALL) COLUMNS,
     CONSTRAINT "FK_ORDER_ITEM_ORDER" FOREIGN KEY ("ORDER")
      REFERENCES "XMES"."ORDER" ("Oid") ENABLE,
     CONSTRAINT "FK_ORDER_ITEM_ORDER_PRODUCT" FOREIGN KEY ("ORDER_PRODUCT")
      REFERENCES "XMES"."ORDER_PRODUCT" ("Oid") ENABLE,
     CONSTRAINT "FK_ORDER_ITEM_JOB_HEAD" FOREIGN KEY ("JOB_HEAD")
      REFERENCES "XMES"."JOB_HEAD" ("Oid") ENABLE,
     CONSTRAINT "FK_ORDER_ITEM_ITEM_CLASSIFY" FOREIGN KEY ("ITEM_CLASSIFY")
      REFERENCES "XMES"."ITEM_CLASSIFY_RULE" ("Oid") ENABLE,
     CONSTRAINT "FK_ORDER_ITEM_Parent" FOREIGN KEY ("Parent")
      REFERENCES "XMES"."ORDER_ITEM" ("Oid") ENABLE,
     CONSTRAINT "FK_ORDER_ITEM_ORDER_I_DB670C25" FOREIGN KEY ("ORDER_ITEM_PROD_INFO")
      REFERENCES "XMES"."ORDER_ITEM_PROD_INFO" ("Oid") ENABLE,
     CONSTRAINT "FK_ORDER_ITEM_MTL_RULE" FOREIGN KEY ("MTL_RULE")
      REFERENCES "XMES"."MTL_RULE" ("Oid") ENABLE
   )
  PARTITION BY RANGE ("CREATE_TIME")
 (PARTITION "FOURTH2018"  VALUES LESS THAN (TO_DATE(' 2019-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')) ,
 PARTITION "FIRST2019"  VALUES LESS THAN (TO_DATE(' 2019-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')) ,
 PARTITION "SECOND2019"  VALUES LESS THAN (TO_DATE(' 2019-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')) ,
 PARTITION "THIRD2019"  VALUES LESS THAN (TO_DATE(' 2019-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')) ,
 PARTITION "FOURTH2019"  VALUES LESS THAN (TO_DATE(' 2020-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')) ,
 PARTITION "FIRST2020"  VALUES LESS THAN (TO_DATE(' 2020-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')) ,
 PARTITION "SECOND2020"  VALUES LESS THAN (TO_DATE(' 2020-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')) ,
 PARTITION "THIRD2020"  VALUES LESS THAN (TO_DATE(' 2020-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')) ,
 PARTITION "FOURTH2020"  VALUES LESS THAN (TO_DATE(' 2021-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')) ,
 PARTITION "FIRST2021"  VALUES LESS THAN (TO_DATE(' 2021-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')) ,
 PARTITION "SECOND2021"  VALUES LESS THAN (TO_DATE(' 2021-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')) ,
 PARTITION "THIRD2021"  VALUES LESS THAN (TO_DATE(' 2021-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')) ,
 PARTITION "OTHER"  VALUES LESS THAN (MAXVALUE) ) ;
-- Create External Table
CREATE TABLE deptXTec3
    ORGANIZATION EXTERNAL ( TYPE ORACLE_DATAPUMP DEFAULT DIRECTORY def_dir1
                            ACCESS PARAMETERS (COMPRESSION ENABLED)
                            LOCATION ('dept.dmp'));

CREATE TABLE inv_part_all_xt (PRODUCT_ID NUMBER(6), WAREHOUSE_ID NUMBER(3), QUANTITY_ON_HAND NUMBER(8))
    ORGANIZATION EXTERNAL ( TYPE ORACLE_DATAPUMP DEFAULT DIRECTORY def_dir1
                            ACCESS PARAMETERS (COMPRESSION ENABLED)
                            LOCATION ('inv_p1_xt.dmp','inv_p2_xt.dmp'));

CREATE TABLE emp_load (first_name CHAR(15), last_name CHAR(20), resume CHAR(2000), picture RAW (2000))
    ORGANIZATION EXTERNAL ( TYPE ORACLE_LOADER DEFAULT DIRECTORY ext_tab_dir
                            ACCESS PARAMETERS (FIELDS (first_name VARCHARC(5,12), last_name VARCHARC(2,20), resume VARCHARC(4,10000), picture VARRAWC(4,100000)))
                            LOCATION ('info.dat'));

CREATE TABLE emp_load (first_name CHAR(15), last_name CHAR(20), resume CHAR(2000), picture RAW (2000))
    ORGANIZATION EXTERNAL ( TYPE ORACLE_LOADER DEFAULT DIRECTORY ext_tab_dir
                            ACCESS PARAMETERS ( RECORDS VARIABLE 2 DATA IS BIG ENDIAN CHARACTERSET US7ASCII
                                                FIELDS (first_name VARCHAR(2,12), last_name VARCHAR(2,20), resume VARCHAR(4,10000), picture VARRAW(4,100000)))
                            LOCATION ('info.dat'));

CREATE TABLE emp_load (first_name CHAR(15), last_name CHAR(20), year_of_birth INT, phone CHAR(12), area_code CHAR(3), exchange CHAR(3), extension CHAR(4))
    ORGANIZATION EXTERNAL ( TYPE ORACLE_LOADER DEFAULT DIRECTORY ext_tab_dir
                            ACCESS PARAMETERS ( FIELDS RTRIM (first_name (1:15) CHAR(15), last_name (*:+20), year_of_birth (36:39), phone (40:52), area_code (*-12: +3), exchange (*+1: +3), extension (*+1: +4)))
                            LOCATION ('info.dat'));

CREATE TABLE emp_load (first_name CHAR(15), last_name CHAR(20), year_of_birth CHAR(4))
    ORGANIZATION EXTERNAL ( TYPE ORACLE_LOADER DEFAULT DIRECTORY ext_tab_dir
                            ACCESS PARAMETERS ( FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '(' and ')' LRTRIM )
                            LOCATION ('info.dat'));

CREATE TABLE xtab (recno varchar2(2000))
    ORGANIZATION EXTERNAL ( TYPE ORACLE_LOADER DEFAULT DIRECTORY data_dir
                            ACCESS PARAMETERS ( RECORDS DELIMITED BY NEWLINE
                                                PREPROCESSOR execdir:'zcat'
                                                LOGFILE 'deptxt1.log'
                                                BADFILE 'deptXT.bad'
                                                FIELDS TERMINATED BY ',' MISSING FIELD VALUES ARE NULL (recno char(2000)))
                            LOCATION ('foo.dat.gz')) REJECT LIMIT UNLIMITED;

CREATE TABLE deptxt1 ( deptno number(2), dname varchar2(14), loc varchar2(13))
    ORGANIZATION EXTERNAL ( TYPE ORACLE_LOADER DEFAULT DIRECTORY dpump_dir
                            ACCESS PARAMETERS ( EXTERNAL VARIABLE DATA
                                               LOGFILE 'deptxt1.log'
                                               READSIZE=10000
                                               PREPROCESSOR execdir:'uncompress.sh' )
                            LOCATION ('deptxt1.dmp')) REJECT LIMIT UNLIMITED;

CREATE TABLE "T_XT" ("C0" VARCHAR2(2000))
    ORGANIZATION EXTERNAL ( TYPE ORACLE_LOADER DEFAULT DIRECTORY DMPDIR
                            ACCESS PARAMETERS ( RECORDS XMLTAG ("home address", "work address", "home phone")
                                                READSIZE 1024
                                                SKIP 0
                                                FIELDS NOTRIM MISSING FIELD VALUES ARE NULL)
                            LOCATION ('t.dat')) REJECT LIMIT UNLIMITED;

CREATE TABLE emp_load (first_name CHAR(15), last_name CHAR(20), year_of_birth CHAR(4))
    ORGANIZATION EXTERNAL ( TYPE ORACLE_LOADER DEFAULT DIRECTORY ext_tab_dir
                            ACCESS PARAMETERS ( RECORDS DELIMITED BY '|' FIELDS TERMINATED BY ','
                                              ( first_name CHAR(7), last_name CHAR(8), year_of_birth CHAR(4)))
                            LOCATION ('info.dat'));

CREATE TABLE emp_load (first_name CHAR(15), last_name CHAR(20), year_of_birth CHAR(4))
    ORGANIZATION EXTERNAL ( TYPE ORACLE_LOADER DEFAULT DIRECTORY ext_tab_dir
                            ACCESS PARAMETERS (RECORDS FIXED 20 FIELDS (first_name CHAR(7), last_name CHAR(8), year_of_birth CHAR(4)))
                            LOCATION ('info.dat'));

CREATE TABLE CUSTOMER_TABLE (cust_num VARCHAR2(10), order_num VARCHAR2(20), order_date DATE, item_cnt NUMBER, description VARCHAR2(100), order_total NUMBER(8,2))
    ORGANIZATION EXTERNAL ( TYPE ORACLE_HIVE
                            ACCESS PARAMETERS (
                                com.oracle.bigdata.tableName:  order_db.order_summary
                                com.oracle.bigdata.colMap:     {"col":"ITEM_CNT", "field":"order_line_item_count"}
                                com.oracle.bigdata.overflow:   {"action":"ERROR", "col":"DESCRIPTION"}
                                com.oracle.bigdata.errorOpt:   [{"action":"replace", "value":"INV_NUM" , "col":["CUST_NUM","ORDER_NUM"]} , {"action":"reject", "col":"ORDER_TOTAL"}]
                          ));
CREATE TABLE TT_BSTOFF_VERDICHT ( TrxKey NUMBER(12), BStoffPKey NUMBER(12), BStoffBOId VARCHAR2(40), BStoffBelegNr NUMBER(12), BStoffBetrag NUMBER(15,2), BStoffBetragWA NUMBER(15,2),  PRIMARY KEY (TrxKey, BStoffPKey)) ORGANIZATION INDEX;
CREATE TABLE WBXCRLOG (CRID NUMBER not null, CONFLCITTIME DATE default SYSDATE, CONSTRAINT PK_WBXCRLOG PRIMARY KEY(CONFLICTTIME,CRID) USING INDEX TABLESPACE SPLEX_INDX LOCAL) PARTITION BY RANGE(CONFLICTTIME) INTERVAL(NUMTOYMINTERVAL(1, 'MONTH')) STORE IN (SPLEX_DATA) ( PARTITION P201805 VALUES LESS THAN (TO_DATE('2018-06-01', 'YYYY-MM-DD')) TABLESPACE SPLEX_DATA, PARTITION P201806 VALUES LESS THAN (TO_DATE('2018-07-01', 'YYYY-MM-DD')) TABLESPACE SPLEX_DATA );
CREATE TABLE "MYUSER"."ITEMS" ("ID" NUMBER(4,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE NOT NULL ENABLE, "NAME" VARCHAR2(255) NOT NULL ENABLE, "DESCRIPTION" VARCHAR2(512), "COST" FLOAT(126), PRIMARY KEY ("ID") USING INDEX ENABLE, SUPPLEMENTAL LOG DATA (ALL) COLUMNS);
CREATE TABLE TEST001(ID NUMBER, NAME VARCHAR2(1) DEFAULT ('0'));
create table InversePickingAssignmentGroup ( name nvarchar2(20), areaId nvarchar2(10), whLocId nvarchar2(20), enabled number(1) default 0) tablespace WAMASDATA;
create table "DVSADM".CMP3$58238005  nocompress tablespace "DVS_PROOF" nologging lob (VALUE) store as (tablespace "DVS_PROOF" enable storage in row nocache nologging) as select /*+ DYNAMIC_SAMPLING(0) FULL("DVSADM"."DVS_ARCHIVE") */ *  from "DVSADM"."DVS_ARCHIVE"  sample block( 6.734) mytab;
CREATE TABLE "APPLSYS"."FND_SEC_GUIDELINES_TL"
   (    "CODE" VARCHAR2(20) NOT NULL ENABLE,
    "TITLE" VARCHAR2(100) NOT NULL ENABLE,
    "DESCRIPTION" VARCHAR2(2000) NOT NULL ENABLE,
    "INFO" CLOB NOT NULL ENABLE,
    "LANGUAGE" VARCHAR2(30) NOT NULL ENABLE,
    "SOURCE_LANG" VARCHAR2(4) NOT NULL ENABLE,
    "CREATED_BY" VARCHAR2(30) NOT NULL ENABLE,
    "CREATION_DATE" DATE NOT NULL ENABLE,
    "LAST_UPDATED_BY" NUMBER(15,0) NOT NULL ENABLE,
    "LAST_UPDATE_DATE" DATE NOT NULL ENABLE,
    "LAST_UPDATE_LOGIN" NUMBER(15,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 LOGGING
  STORAGE(INITIAL 4096 NEXT 131072 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 4 FREELIST GROUPS 4 BUFFER_POOL DEFAULT)
  TABLESPACE "APPS_TS_TX_DATA"
 LOB ("INFO") STORE AS (
  TABLESPACE "APPS_TS_TX_DATA" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE
  STORAGE(INITIAL 4096 NEXT 131072 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 4 FREELIST GROUPS 4 BUFFER_POOL DEFAULT))
;
CREATE TABLE "t_ddl_0027"(
    "PID" INT,
    "FID" INT,
    "NAME" VARCHAR(50) DEFAULT 'Tom',
    "ADDRESS" VARCHAR(50) NOT NULL,
    "DEPT" VARCHAR(50),
    CONSTRAINT "PK_ID" PRIMARY KEY("PID"),
    CONSTRAINT "CK_DEPT" CHECK ("DEPT" IN('IT', 'SALES', 'MANAGER')));
CREATE TABLE "ET$xxxx"
   (    "MANDT",
    "WERKS",
    "MATNR",
    "GZEQUNR",
    "GZEQUNED",
    "MODNE",
    "NAME1",
    "MAKTX"
   ) ORGANIZATION EXTERNAL
    ( TYPE ORACLE_DATAPUMP DEFAULT DIRECTORY "DMPDP" ACCESS PARAMETERS ( DEBUG = (0 , 0) DATAPUMP INTERNAL TABLE "xxxx"."xxxx"  JOB ( "GGS","SYS_EXPORT_TABLE_01",1) WORKERID 1 PARALLEL 1 VERSION '11.2.0.0.0' ENCRYPTPASSWORDISNULL  COMPRESSION ENABLED  ENCRYPTION DISABLED  DBLINK 'TOPRD') LOCATION ('xxxx.dat') )  PARALLEL 1 REJECT LIMIT UNLIMITED
    AS SELECT /*+ PARALLEL(KU$,1) */ "MANDT", "WERKS", "MATNR", "GZEQUNR", "GZEQUNED", "MODNE", "NAME1", "MAKTX"
    FROM RELATIONAL("xxxx"."xxxx" @TOPRD NOT XMLTYPE) AS OF SCN 216399751091 KU$;
CREATE TABLE "C##RCUSER"."JSON_TRANS" ( "ID" NUMBER(8,0) NOT NULL ENABLE, "TRANS_MSG" CLOB, CONSTRAINT "CHECK_JSON" CHECK (trans_msg is json) ENABLE, PRIMARY KEY ("ID") USING INDEX ENABLE, SUPPLEMENTAL LOG DATA (ALL) COLUMNS);
-- Create index
create index hr.name on hr.table (id,data) tablespace ts;
create unique index idx_eshp_auction_file_history_id on eshp_auction_file_history(history_id);
CREATE UNIQUE INDEX "IDENTITYDB"."IDX_CHANGENUMBERS_PK" ON "IDENTITYDB"."CHANGE_NUMBERS" ("CHANGE_NO", "EXPIRY_TIME") LOCAL (PARTITION "SYS_P44414" NOCOMPRESS ( SUBPARTITION "SYS_SUBP44398" , SUBPARTITION "SYS_SUBP44399" , SUBPARTITION "SYS_SUBP44400" , SUBPARTITION "SYS_SUBP44401" , SUBPARTITION "SYS_SUBP44403" , SUBPARTITION "SYS_SUBP44404" , SUBPARTITION "SYS_SUBP44405" , SUBPARTITION "SYS_SUBP44406" , SUBPARTITION "SYS_SUBP44407" , SUBPARTITION "SYS_SUBP44408" , SUBPARTITION "SYS_SUBP44409" , SUBPARTITION "SYS_SUBP44410" , SUBPARTITION "SYS_SUBP44411" , SUBPARTITION "SYS_SUBP44412" , SUBPARTITION "SYS_SUBP44413" ) )
CREATE UNIQUE INDEX "ORACDC"."DEPARTMENT_PK" ON "ORACDC"."DEPARTMENT" ("REQUEST_ID", "EMP_NO");
CREATE INDEX "SETTLEMENT"."TRADE_REQ_BASE_IDX6" ON "SETTLEMENT"."TRADE_REQ_BASE" ("UPDATED_AT") PCTFREE 10 INITRANS 2 MAXTRANS 255  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "SETTLEMENT" PARALLEL 1;
