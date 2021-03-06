

-------------------------------------------------------------------------------
--  dict data
-------------------------------------------------------------------------------
CREATE TABLE DICT_DATA(
        ID BIGINT NOT NULL,
	NAME VARCHAR(200),
	VALUE VARCHAR(200),
	INFO_ID BIGINT,
	SCHEMA_ID BIGINT,
        CONSTRAINT PK_DICT_DATA PRIMARY KEY(ID),
	CONSTRAINT FK_DICT_DATA_INFO FOREIGN KEY(INFO_ID) REFERENCES DICT_INFO(ID),
	CONSTRAINT FK_DICT_DATA_SCHEMA FOREIGN KEY(SCHEMA_ID) REFERENCES DICT_SCHEMA(ID)
);

COMMENT ON TABLE DICT_DATA IS '数据字典';
COMMENT ON COLUMN DICT_DATA.ID IS '唯一主键';
COMMENT ON COLUMN DICT_DATA.NAME IS '名称';
COMMENT ON COLUMN DICT_DATA.VALUE IS '数据';
COMMENT ON COLUMN DICT_DATA.INFO_ID IS '外键，DICT_INFO';
COMMENT ON COLUMN DICT_DATA.SCHEMA_ID IS '外键，DICT_SCHEMA';


