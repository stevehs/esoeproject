/* 
 * Copyright 2006, Queensland University of Technology
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not 
 * use this file except in compliance with the License. You may obtain a copy of 
 * the License at 
 * 
 *   http://www.apache.org/licenses/LICENSE-2.0 
 * 
 * Unless required by applicable law or agreed to in writing, software 
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT 
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the 
 * License for the specific language governing permissions and limitations under 
 * the License.
 * 
 * Author: Bradley Beddoes
 * Creation Date: 1/5/07
 * 
 * Purpose: Constants for ESOE Manager
 */
package com.qut.middleware.esoemanager;

public class Constants
{
	/** SAML schemas */
	/* SAML Schema constants */
	public static final String samlProtocol = "saml-schema-protocol-2.0.xsd"; //$NON-NLS-1$
	public static final String samlAssertion = "saml-schema-assertion-2.0.xsd"; //$NON-NLS-1$
	public static final String samlMetadata = "saml-schema-metadata-2.0.xsd"; //$NON-NLS-1$
	public static final String lxacml = "lxacml-schema.xsd"; //$NON-NLS-1$
	public static final String lxacmlSAMLProtocol = "lxacml-schema-saml-protocol.xsd"; //$NON-NLS-1$
	public static final String lxacmlSAMLAssertion = "lxacml-schema-saml-assertion.xsd"; //$NON-NLS-1$
	public static final String lxacmlGroupTarget = "lxacml-schema-grouptarget.xsd"; //$NON-NLS-1$
	public static final String lxacmlContext = "lxacml-schema-context.xsd"; //$NON-NLS-1$
	public static final String lxacmlMetadata = "lxacml-schema-metadata.xsd"; //$NON-NLS-1$
	public static final String esoeProtocol = "esoe-schema-saml-protocol.xsd"; //$NON-NLS-1$
	public static final String cacheClearService = "cacheclear-schema-saml-metadata.xsd"; //$NON-NLS-1$
	public static final String sessionData = "sessiondata-schema.xsd"; //$NON-NLS-1$
	public static final String delegatedAuthn = "delegated-schema-saml-protocol.xsd"; //$NON-NLS-1$*/
	public static final String spepStartup = "spepstartup-schema-saml-metadata.xsd"; //$NON-NLS-1$
	public static final String attributeConfig = "attributeconfig-schema.xsd"; //$NON-NLS-1$

	/** iBatis */
	public static final String SERVICE_ACTIVE = "y";
	public static final String SERVICE_INACTIVE = "n";
	
	public static final String IDP_DESCRIPTOR = "1";
	public static final String SP_DESCRIPTOR = "2";
	public static final String LXACML_PDP_DESCRIPTOR = "3";
	public static final String AUTHN_AUTHORITY_DESCRIPTOR = "4"; 
	public static final String ATTRIBUTE_AUTHORITY_DESCRIPTOR ="5";
	
	/* iBatis Field Names */
	public static final String FIELD_ENTITY_ID = "entityID";
	public static final String FIELD_DESCRIPTOR_ID = "descriptorID";
	public static final String FIELD_DESCRIPTOR_TYPE_ID = "descriptorTypeID";
	public static final String FIELD_DESCRIPTOR_XML = "descriptorXML";
	public static final String FIELD_ACTIVE_FLAG = "activeFlag";
	public static final String FIELD_ORGANIZATION_NAME = "organizationName";
	public static final String FIELD_ORGANIZATION_DISPLAY_NAME = "organizationDisplayName";
	public static final String FIELD_ORGANIZATION_URL = "organizationURL";
		
	public static final String FIELD_SERVICE_NAME = "serviceName";
	public static final String FIELD_SERVICE_URL = "serviceURL";
	public static final String FIELD_SERVICE_DESC = "serviceDesc";
	public static final String FIELD_SERVICE_AUTHZ_FAIL = "authzFailureMsg";
	
	public static final String FIELD_CONTACT_ID = "contactID";
	public static final String FIELD_CONTACT_TYPE = "contactType";
	public static final String FIELD_CONTACT_COMPANY = "company";
	public static final String FIELD_CONTACT_GIVEN_NAME = "givenName";
	public static final String FIELD_CONTACT_SURNAME = "surname";
	public static final String FIELD_CONTACT_EMAIL_ADDRESS = "emailAddress";
	public static final String FIELD_CONTACT_TELEPHONE_NUMBER = "telephoneNumber";
	
	public static final String FIELD_PKI_KEYPAIRNAME = "keyPairName"; //$NON-NLS-1$$
	public static final String FIELD_PKI_EXPIRY_DATE = "expiryDate";
	public static final String FIELD_PKI_KEYSTORE = "keyStore";
	public static final String FIELD_PKI_KEYSTORE_PASSPHRASE = "keyStorePassphrase"; //$NON-NLS-1$
	public static final String FIELD_PKI_KEYPAIR_PASSPHRASE = "keyPairPassphrase"; //$NON-NLS-1$
	
	public static final String FIELD_ENDPOINT_ID = "endpointID";
	public static final String FIELD_ENDPOINT_NODEURL = "nodeURL";
	public static final String FIELD_ENDPOINT_ASSERTIONCONSUMER = "assertionConsumerEndpoint";
	public static final String FIELD_ENDPOINT_SINGLELOGOUT = "singleLogoutEndpoint";
	public static final String FIELD_ENDPOINT_CACHECLEAR = "cacheClearEndpoint";
	
	public static final String FIELD_LXACML_POLICY = "lxacmlPolicy";
	public static final String FIELD_LXACML_DATE_LAST_UPDATED = "lxacmlDate";
	public static final String FIELD_LXACML_DATE_INSERTED = "lxacmlDate";
	
	/* iBatis field values */
	public static final String FIELD_VALUE_SPEP_ACTIVE_AT_REGISTER = "y";
	public static final String FIELD_VALUE_SPEP_NOT_ACTIVE_AT_REGISTER = "n";
	
	public static final String QUERY_ENTITY_DESCRIPTORS = "getDescriptors";
	public static final String QUERY_ACTIVE_ENTITY_LIST = "getActiveEntityIDList";
	public static final String QUERY_ACTIVE_SERVICES_LIST = "getActiveServicesList";
	public static final String QUERY_IDP_LIST = "getIDPList";
	public static final String QUERY_SP_LIST = "getSPList";
	public static final String QUERY_SERVICE_DESCRIPTOR = "getServiceDescriptor";
	public static final String QUERY_SERVICE_DESCRIPTION = "getServiceDescription";
	public static final String QUERY_ATTRIBUTE_AUTHORITY_LIST = "getAttributeAuthorityList";
	public static final String QUERY_LXACMLPDP_LIST = "getLXACMLPDPList";
	public static final String QUERY_CONTACTS = "getContacts";
	public static final String QUERY_SERVICE_CONTACTS = "getServiceContacts";
	public static final String QUERY_KEYSTORE = "getKeyStore";
	public static final String QUERY_SERVICE_DETAILS = "getServiceDetails";
	public static final String QUERY_SERVICE_NODES = "getServiceNodes";
	public static final String QUERY_KEYSTORE_DETAILS = "getKeyStoreDetails";
	public static final String QUERY_ACTIVE_AUTHORIZATION_POLICY = "getActiveAuthorizationPolicy";
	
	public static final String INSERT_ENTITY_DESCRIPTOR = "insertEntityDescriptor";
	public static final String INSERT_SERVICE_DESCRIPTION = "insertServiceDescription";
	public static final String INSERT_SERVICE_CONTACTS = "insertServiceContacts";
	public static final String INSERT_DESCRIPTOR = "insertDescriptor";
	public static final String INSERT_PKI_DATA = "insertPKIData";
	public static final String INSERT_SERVICE_NODE = "insertServiceNode";
	public static final String INSERT_SERVICE_AUTHORIZATION_POLICY = "insertServiceAuthorizationPolicy";
	public static final String INSERT_SERVICE_AUTHORIZATION_SHUNTED_POLICY = "insertServiceAuthorizationShuntedPolicy";
	public static final String INSERT_SERVICE_AUTHORIZATION_HISTORICAL_POLICY = "insertServiceAuthorizationHistoricalPolicy";
	
	public static final String UPDATE_SERVICE_CONTACT = "updateServiceContact";
	public static final String UPDATE_SERVICE_ACTIVE_STATUS = "updateServiceActiveStatus";
	public static final String UPDATE_SERVICE_DESCRIPTION = "updateServiceDescription";
	public static final String UPDATE_SERVICE_AUTHORIZATION_POLICY = "updateServiceAuthorizationPolicy";
	
	public static final String DELETE_SERVICE_CONTACT = "deleteServiceContact";
	
	/*** Metadata ***/
	public static final String METADATA_EXTENSION = ".xml";
	
	/** General */
	public static final String SCHEMA_SEPERATOR = ":";
	public static final int PASSPHRASE_LENGTH = 10;
	
}