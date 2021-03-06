--------------------------------------------------------
--  파일이 생성됨 - 수요일-10월-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BINZIP_HOST_BBS
--------------------------------------------------------

  CREATE TABLE "SCOTT"."BINZIP_HOST_BBS" 
   (	"IDX" NUMBER(10,0), 
	"BINZIP_MEMBER_ID" VARCHAR2(50 BYTE), 
	"HOST_NAME" VARCHAR2(50 BYTE), 
	"HOST_EMAIL" VARCHAR2(200 BYTE), 
	"HOST_PHONE" VARCHAR2(100 BYTE), 
	"HOST_BANK" VARCHAR2(30 BYTE), 
	"HOST_ACNUMBER" VARCHAR2(100 BYTE), 
	"ZIPNAME" VARCHAR2(200 BYTE), 
	"ZIPTYPE" VARCHAR2(50 BYTE), 
	"ZIPADDR" VARCHAR2(200 BYTE), 
	"COST" NUMBER(10,0), 
	"PEOPLENUM" NUMBER(4,0), 
	"TODAYDATE" DATE, 
	"CONTENTS" VARCHAR2(3000 BYTE), 
	"HOST_BBS_STARTDATE" DATE, 
	"HOST_BBS_ENDDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SCOTT.BINZIP_HOST_BBS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index SYS_C007139
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007139" ON "SCOTT"."BINZIP_HOST_BBS" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table BINZIP_HOST_BBS
--------------------------------------------------------

  ALTER TABLE "SCOTT"."BINZIP_HOST_BBS" MODIFY ("BINZIP_MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BINZIP_HOST_BBS" ADD PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SCOTT"."BINZIP_HOST_BBS" MODIFY ("CONTENTS" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BINZIP_HOST_BBS" MODIFY ("TODAYDATE" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BINZIP_HOST_BBS" MODIFY ("PEOPLENUM" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BINZIP_HOST_BBS" MODIFY ("COST" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BINZIP_HOST_BBS" MODIFY ("ZIPADDR" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BINZIP_HOST_BBS" MODIFY ("ZIPTYPE" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BINZIP_HOST_BBS" MODIFY ("ZIPNAME" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BINZIP_HOST_BBS" MODIFY ("HOST_ACNUMBER" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BINZIP_HOST_BBS" MODIFY ("HOST_BANK" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BINZIP_HOST_BBS" MODIFY ("HOST_PHONE" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BINZIP_HOST_BBS" MODIFY ("HOST_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."BINZIP_HOST_BBS" MODIFY ("HOST_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BINZIP_HOST_BBS
--------------------------------------------------------

  ALTER TABLE "SCOTT"."BINZIP_HOST_BBS" ADD CONSTRAINT "SYS_C007140" FOREIGN KEY ("BINZIP_MEMBER_ID")
	  REFERENCES "SCOTT"."BINZIP_MEMBER" ("ID") DISABLE;
