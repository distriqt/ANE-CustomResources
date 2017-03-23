/**
 *        __       __               __ 
 *   ____/ /_ ____/ /______ _ ___  / /_
 *  / __  / / ___/ __/ ___/ / __ `/ __/
 * / /_/ / (__  ) / / /  / / /_/ / / 
 * \__,_/_/____/_/ /_/  /_/\__, /_/ 
 *                           / / 
 *                           \/ 
 * http://distriqt.com
 *
 * @file   		CustomResourcesContext.java
 * @created		June 1, 2016
 */
package @PACKAGE@;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;

public class CustomResourcesContext extends FREContext
{
	
	@Override
	public void dispose() 
	{
	}

	@Override
	public java.util.Map<String, FREFunction> getFunctions() 
	{
		java.util.Map<String, FREFunction> functionMap = new java.util.HashMap<String, FREFunction>();
		return functionMap;
	}
	
}
