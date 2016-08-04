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
 * @file   		CustomResourcesExtension.java
 * @created		June 1, 2016
 */
package @PACKAGE@;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;

public class CustomResourcesExtension implements FREExtension 
{
	public static FREContext context;
	
	@Override
	public FREContext createContext(String arg0) 
	{
		context = new CustomResourcesContext();
		return context;
	}

	
	@Override
	public void dispose() 
	{
		context = null;
	}

	
	@Override
	public void initialize() 
	{
	}

}
