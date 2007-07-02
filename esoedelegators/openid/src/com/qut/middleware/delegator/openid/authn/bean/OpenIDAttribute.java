/* 
 * Copyright 2007, Queensland University of Technology
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
 * Creation Date: 13/06/2007
 * 
 * Purpose: Stores reference to openID attribute for exchange
 */
package com.qut.middleware.delegator.openid.authn.bean;


public interface OpenIDAttribute
{
	public String getEsoeAttributeName();
	public void setEsoeAttributeName(String esoeAttributeName);
	
	public String getLabel();
	public void setLabel(String label);
	
	public String getSchema();
	public void setSchema(String schema);
	
	public String getValuePrepend();
	public void setValuePrepend(String valuePrepend);
	
	public String getValue();
	public void setValue(String value);
	
	public boolean isRequired();
	public void setRequired(boolean required);
}
