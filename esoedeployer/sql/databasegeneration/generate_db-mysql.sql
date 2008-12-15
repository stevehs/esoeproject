/*
 * Creates database structure for ESOE and ESOE Manager web applications. Must be run into the database before running ESOE Startup
 */

CREATE TABLE ESOE_VERSION_DATA (DATECREATED DATETIME NOT NULL, CURRENTVERSION VARCHAR(256) NOT NULL, SCHEMAVERSION VARCHAR(256) NOT NULL, LICENCEBINARY BLOB);


CREATE TABLE ESOE_VERSION_DATA_HISTORY (DATEUPDATED DATETIME, VERSION VARCHAR(256) );


CREATE TABLE ENTITY_DESCRIPTORS (ENT_ID INT UNSIGNED NOT NULL, ENTITYID VARCHAR(512) NOT NULL UNIQUE, ORGANIZATIONNAME VARCHAR(1024) NOT NULL, ORGANIZATIONDISPLAYNAME VARCHAR(1024) NOT NULL, ORGANIZATIONURL VARCHAR(1024) NOT NULL, ACTIVEFLAG CHAR(1) NOT NULL, ENTITYHOST VARCHAR(250), PRIMARY KEY (ENT_ID), INDEX(ENTITYID));


CREATE TABLE SERVICE_DESCRIPTIONS (ENT_ID INT UNSIGNED NOT NULL,  SERVICENAME VARCHAR(1024) NOT NULL, SERVICEURL VARCHAR(2048) NOT NULL, SERVICEDESC VARCHAR(2048), AUTHZFAILUREMSG VARCHAR(2048), PRIMARY KEY (ENT_ID));


CREATE TABLE DESCRIPTORS (ENT_ID INT UNSIGNED NOT NULL, DESC_ID INT UNSIGNED NOT NULL,  DESCRIPTORID VARCHAR(512) NOT NULL, DESCRIPTORXML BLOB NOT NULL, DESCRIPTORTYPEID INT NOT NULL, PRIMARY KEY(DESC_ID), INDEX(ENT_ID, DESCRIPTORID(512)));


CREATE TABLE DESCRIPTORS_SHUNT (ENT_ID INT UNSIGNED NOT NULL, DESC_ID INT UNSIGNED NOT NULL,  DESCRIPTORID VARCHAR(512) NOT NULL, DESCRIPTORXML BLOB NOT NULL, DESCRIPTORTYPEID INT NOT NULL, PRIMARY KEY(DESC_ID), INDEX(ENT_ID, DESCRIPTORID(512)));


CREATE TABLE DESCRIPTOR_NAMEID_FORMATS(DESC_ID INT UNSIGNED NOT NULL, NAMEID VARCHAR(255) NOT NULL, PRIMARY KEY(DESC_ID));


CREATE TABLE DESCRIPTOR_PUBLIC_KEYS(DESC_ID INT UNSIGNED NOT NULL, EXPIRYDATE DATETIME NOT NULL, KEYNAME VARCHAR(255), ISSUERDN VARCHAR(255), SERIALNUMBER VARCHAR(64), PUBLICKEY BLOB NOT NULL, PRIMARY KEY(DESC_ID, KEYNAME));


CREATE TABLE SERVICE_ENDPOINTS (DESC_ID INT UNSIGNED NOT NULL, ENDPOINTID VARCHAR(12) NOT NULL, NODEURL VARCHAR(512) NOT NULL, ASSERTIONCONSUMER_ENDPOINT VARCHAR(512) NOT NULL, SINGLELOGOUT_ENDPOINT VARCHAR(512) NOT NULL, CACHECLEAR_ENDPOINT VARCHAR(512) NOT NULL, ACTIVEFLAG CHAR(1) DEFAULT 'y' NOT NULL, PRIMARY KEY (ENDPOINTID, DESC_ID));


CREATE TABLE DESCRIPTOR_TYPES (DESCRIPTORTYPEID INT NOT NULL, DESCRIPTORTYPEDESCRIPTION VARCHAR(128) NOT NULL, PRIMARY KEY(DESCRIPTORTYPEID));
INSERT INTO DESCRIPTOR_TYPES VALUES (1, 'IDPSSODescriptor');
INSERT INTO DESCRIPTOR_TYPES VALUES (2, 'SPSSODescriptor');
INSERT INTO DESCRIPTOR_TYPES VALUES (3, 'LXACMLPDPDescriptor');
INSERT INTO DESCRIPTOR_TYPES VALUES (4, 'AuthNAuthorityDescriptor');
INSERT INTO DESCRIPTOR_TYPES VALUES (5, 'AttributeAuthorityDescriptor');


CREATE TABLE ENTITY_CONTACTS (CONTACTTYPE VARCHAR(255) NOT NULL CHECK(CONTACTTYPE IN ('technical', 'support', 'administrative', 'billing', 'other')), ENT_ID INT UNSIGNED NOT NULL, CONTACTID VARCHAR(12) NOT NULL, COMPANY VARCHAR(255), GIVENNAME VARCHAR(255) NOT NULL, SURNAME VARCHAR(255) NOT NULL, EMAILADDRESS VARCHAR(255) NOT NULL, TELEPHONENUMBER VARCHAR(255) NOT NULL, CONSTRAINT CONTACTTYPE PRIMARY KEY (CONTACTID, ENT_ID));


CREATE TABLE SUPPORTED_ATTRIBUTES (ENT_ID INT UNSIGNED NOT NULL, ATTRIBPOLICY BLOB NOT NULL, SEQID BIGINT UNSIGNED NOT NULL, PRIMARY KEY (ENT_ID));


CREATE TABLE SUPPORTED_ATTRIB_HISTORICAL (ENT_ID INT UNSIGNED NOT NULL, ATTRIBPOLICY BLOB NOT NULL, DATEINSERTED DATETIME NOT NULL);


CREATE TABLE SERVICE_POLICIES (ENT_ID INT UNSIGNED NOT NULL, POLICYID VARCHAR(100) NOT NULL, LXACMLPOLICY BLOB NOT NULL, ACTIVEFLAG CHAR(1) DEFAULT 'y' NOT NULL, PRIMARY KEY (ENT_ID, POLICYID));


CREATE TABLE SERVICE_POLICIES_STATE (ENT_ID INT UNSIGNED NOT NULL, POLICYID VARCHAR(100) NOT NULL, POLACTION CHAR NOT NULL, SEQID BIGINT UNSIGNED NOT NULL, PRIMARY KEY (ENT_ID, POLICYID));


CREATE TABLE SERVICE_POLICIES_HISTORICAL (ENT_ID INT UNSIGNED NOT NULL, POLICYID VARCHAR(100) NOT NULL, LXACMLPOLICY BLOB NOT NULL, DATEINSERTED DATETIME NOT NULL);


CREATE TABLE SERVICE_POLICIES_SHUNT (ENT_ID INT UNSIGNED NOT NULL, LXACMLPOLICY BLOB NOT NULL, DATEINSERTED DATETIME NOT NULL, PRIMARY KEY (ENT_ID));


CREATE TABLE METADATA_PKI_STORES (EXPIRYDATE DATETIME NOT NULL, KEYPAIRNAME VARCHAR(255) NOT NULL UNIQUE, KEYPAIR_PASSPHRASE VARCHAR(255) NOT NULL UNIQUE, KEYSTORE BLOB, KEYSTORE_PASSPHRASE VARCHAR(255), PRIMARY KEY (KEYPAIRNAME));


CREATE TABLE PKI_STORES (DESC_ID INT UNSIGNED NOT NULL, EXPIRYDATE DATETIME NOT NULL, KEYPAIRNAME VARCHAR(255) NOT NULL, KEYPAIR_PASSPHRASE VARCHAR(255) NOT NULL, KEYSTORE BLOB, KEYSTORE_PASSPHRASE VARCHAR(255), PRIMARY KEY (DESC_ID, KEYPAIRNAME));


CREATE TABLE SPEP_REGISTRATIONS (ENT_ID INT UNSIGNED NOT NULL, NODEID VARCHAR(100) NOT NULL, IPADDRESS VARCHAR(1024) NOT NULL, COMPILEDATE VARCHAR(30) NOT NULL, COMPILESYSTEM VARCHAR(512) NOT NULL, VERSION VARCHAR(100) NOT NULL, ENVIRONMENT VARCHAR(512) NOT NULL, DATE_ADDED DATETIME NOT NULL, DATE_UPDATED DATETIME NOT NULL, PRIMARY KEY (ENT_ID, NODEID));


CREATE TABLE SPEP_REGISTRATIONS_HISTORICAL (ENT_ID INT UNSIGNED NOT NULL, NODEID VARCHAR(100) NOT NULL, IPADDRESS VARCHAR(100) NOT NULL, COMPILEDATE VARCHAR(30) NOT NULL, COMPILESYSTEM VARCHAR(512) NOT NULL, VERSION VARCHAR(100) NOT NULL, ENVIRONMENT VARCHAR(512) NOT NULL, DATE_ADDED DATETIME NOT NULL);


CREATE TABLE ENT_ID_SEQUENCE (ID INT NOT NULL);
INSERT INTO ENT_ID_SEQUENCE VALUES (0);


CREATE TABLE DESC_ID_SEQUENCE (ID INT NOT NULL);
INSERT INTO DESC_ID_SEQUENCE VALUES (0);


CREATE TABLE POLICY_ID_SEQUENCE (ID INT NOT NULL);
INSERT INTO POLICY_ID_SEQUENCE VALUES (0);


ALTER TABLE ENTITY_CONTACTS ADD CONSTRAINT FK_CONTACTS FOREIGN KEY (ENT_ID) REFERENCES ENTITY_DESCRIPTORS(ENT_ID);
ALTER TABLE SERVICE_DESCRIPTIONS ADD CONSTRAINT FK_SERV_DESC FOREIGN KEY (ENT_ID) REFERENCES ENTITY_DESCRIPTORS(ENT_ID);
ALTER TABLE SERVICE_ENDPOINTS  ADD  CONSTRAINT FK_SERV_ENDP FOREIGN KEY (DESC_ID) REFERENCES DESCRIPTORS(DESC_ID);
ALTER TABLE DESCRIPTORS ADD CONSTRAINT FK_DESCRIPTORS FOREIGN KEY (ENT_ID) REFERENCES ENTITY_DESCRIPTORS(ENT_ID);
ALTER TABLE DESCRIPTORS_SHUNT ADD CONSTRAINT FK_DESCRIPTORS_SHUNT FOREIGN KEY (ENT_ID) REFERENCES ENTITY_DESCRIPTORS(ENT_ID);
ALTER TABLE DESCRIPTOR_NAMEID_FORMATS ADD CONSTRAINT FK_NAMEID FOREIGN KEY (DESC_ID) REFERENCES DESCRIPTORS(DESC_ID);
ALTER TABLE PKI_STORES ADD CONSTRAINT FK_PKI FOREIGN KEY (DESC_ID) REFERENCES DESCRIPTORS(DESC_ID);
ALTER TABLE SERVICE_POLICIES ADD CONSTRAINT FK_SERV_POL FOREIGN KEY (ENT_ID) REFERENCES ENTITY_DESCRIPTORS(ENT_ID);
ALTER TABLE SPEP_REGISTRATIONS ADD CONSTRAINT FK_SPEP_REG FOREIGN KEY (ENT_ID) REFERENCES ENTITY_DESCRIPTORS(ENT_ID);
ALTER TABLE SPEP_REGISTRATIONS_HISTORICAL ADD CONSTRAINT FK_SPEP_REG_HIST FOREIGN KEY (ENT_ID) REFERENCES ENTITY_DESCRIPTORS(ENT_ID);
ALTER TABLE DESCRIPTORS ADD CONSTRAINT FKDESCTYPE FOREIGN KEY (DESCRIPTORTYPEID) REFERENCES DESCRIPTOR_TYPES(DESCRIPTORTYPEID);


DELIMITER //

CREATE TRIGGER VERSION_HISTORY_INSERT BEFORE INSERT ON ESOE_VERSION_DATA
	FOR EACH ROW
	BEGIN
	INSERT INTO ESOE_VERSION_DATA_HISTORY (DATEUPDATED, VERSION) VALUES (SYSDATE(), NEW.CURRENTVERSION); 
	END //


CREATE TRIGGER VERSION_HISTORY_UPDATE BEFORE UPDATE ON ESOE_VERSION_DATA
	FOR EACH ROW
	BEGIN
	INSERT INTO ESOE_VERSION_DATA_HISTORY (DATEUPDATED, VERSION) VALUES (SYSDATE(), NEW.CURRENTVERSION); 
	END //


CREATE TRIGGER POLICY_INSERT BEFORE INSERT ON SERVICE_POLICIES
	FOR EACH ROW
	BEGIN
	INSERT INTO SERVICE_POLICIES_STATE (ENT_ID, POLICYID, POLACTION) VALUES (NEW.ENT_ID, NEW.POLICYID, 'A'); 
	INSERT INTO SERVICE_POLICIES_HISTORICAL (ENT_ID, POLICYID, LXACMLPOLICY, DATEINSERTED) VALUES (NEW.ENT_ID, NEW.POLICYID, NEW.LXACMLPOLICY, SYSDATE());
	END //


CREATE TRIGGER POLICY_UPDATE BEFORE UPDATE ON SERVICE_POLICIES
	FOR EACH ROW 
	BEGIN
	UPDATE SERVICE_POLICIES_STATE SET POLACTION = 'U' WHERE ENT_ID = OLD.ENT_ID AND POLICYID = OLD.POLICYID;
	INSERT INTO SERVICE_POLICIES_HISTORICAL (ENT_ID, POLICYID, LXACMLPOLICY, DATEINSERTED) VALUES (NEW.ENT_ID, NEW.POLICYID, NEW.LXACMLPOLICY, SYSDATE());
	END //


CREATE TRIGGER POLICY_DELETE BEFORE DELETE ON SERVICE_POLICIES
	FOR EACH ROW 
	BEGIN
	UPDATE SERVICE_POLICIES_STATE SET POLACTION = 'D' WHERE ENT_ID = OLD.ENT_ID AND POLICYID = OLD.POLICYID;
	END //


CREATE TRIGGER POLICY_STATE_INSERT BEFORE INSERT ON SERVICE_POLICIES_STATE
	FOR EACH ROW 
	SET NEW.SEQID = NEXT_SEQ_ID() //


CREATE TRIGGER POLICY_STATE_UPDATE BEFORE UPDATE ON SERVICE_POLICIES_STATE
	FOR EACH ROW 
	SET NEW.SEQID = NEXT_SEQ_ID() //


CREATE TRIGGER ATTRIBUTE_INSERT BEFORE INSERT ON SUPPORTED_ATTRIBUTES
	FOR EACH ROW
	BEGIN
	INSERT INTO SUPPORTED_ATTRIB_HISTORICAL (ENT_ID, ATTRIBPOLICY, DATEINSERTED) VALUES (NEW.ENT_ID, NEW.ATTRIBPOLICY, SYSDATE());
	END //


CREATE TRIGGER ATTRIBUTE_UPDATE BEFORE UPDATE ON SUPPORTED_ATTRIBUTES
	FOR EACH ROW 
	BEGIN
	INSERT INTO SUPPORTED_ATTRIB_HISTORICAL (ENT_ID, ATTRIBPOLICY, DATEINSERTED) VALUES (OLD.ENT_ID, NEW.ATTRIBPOLICY, SYSDATE());
	END //


CREATE TRIGGER SPEP_REGISTRATIONS_INSERT BEFORE INSERT ON SPEP_REGISTRATIONS
	FOR EACH ROW
	BEGIN
	INSERT INTO SPEP_REGISTRATIONS_HISTORICAL (ENT_ID, NODEID, IPADDRESS, COMPILEDATE, COMPILESYSTEM, VERSION, ENVIRONMENT, DATE_ADDED) VALUES (NEW.ENT_ID, NEW.NODEID, NEW.IPADDRESS, NEW.COMPILEDATE, NEW.COMPILESYSTEM, NEW.VERSION, NEW.ENVIRONMENT, SYSDATE()); 
	END //


CREATE TRIGGER SPEP_REGISTRATIONS_UPDATE BEFORE UPDATE ON SPEP_REGISTRATIONS
	FOR EACH ROW
	BEGIN
	INSERT INTO SPEP_REGISTRATIONS_HISTORICAL (ENT_ID, NODEID, IPADDRESS, COMPILEDATE, COMPILESYSTEM, VERSION, ENVIRONMENT, DATE_ADDED) VALUES (NEW.ENT_ID, NEW.NODEID, NEW.IPADDRESS, NEW.COMPILEDATE, NEW.COMPILESYSTEM, NEW.VERSION, NEW.ENVIRONMENT, SYSDATE()); 
	END //


CREATE FUNCTION NEXT_ENT_ID ()
RETURNS INT UNSIGNED
BEGIN
UPDATE ENT_ID_SEQUENCE SET ID = LAST_INSERT_ID(ID + 1);
RETURN LAST_INSERT_ID();
END //


CREATE FUNCTION NEXT_DESC_ID ()
RETURNS INT UNSIGNED
BEGIN
UPDATE DESC_ID_SEQUENCE SET ID = LAST_INSERT_ID(ID + 1);
RETURN LAST_INSERT_ID();
END //


CREATE FUNCTION NEXT_SEQ_ID ()
RETURNS BIGINT UNSIGNED
BEGIN
UPDATE POLICY_ID_SEQUENCE SET ID = LAST_INSERT_ID(ID + 1);
RETURN LAST_INSERT_ID();
END //


DELIMITER ;