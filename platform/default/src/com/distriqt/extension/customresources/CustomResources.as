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
 * @file   		CustomResources.as
 * @brief  		CustomResources Native Extension
 * @author 		Michael Archbold
 * @created		May 15, 2016
 */
package com.distriqt.extension.customresources
{
	import flash.events.EventDispatcher;
	
	
	/**	
	 * <p>
	 * This class represents the CustomResources extension.
	 * </p>
	 */
	public final class CustomResources extends EventDispatcher
	{
		////////////////////////////////////////////////////////
		//	CONSTANTS
		//
		
		//
		//	ID and Version numbers
		public static const EXT_CONTEXT_ID			: String = "com.distriqt.CustomResources";
		
		//
		//	Error Messages
		private static const ERROR_CREATION			: String = "The native extension context could not be created";
		private static const ERROR_SINGLETON		: String = "The extension has already been created. Use ExtensionClass.service to access the functionality of the class";
		
		
		
		////////////////////////////////////////////////////////
		//	VARIABLES
		//
		
		//
		// Singleton variables
		private static var _instance				: CustomResources;
		private static var _shouldCreateInstance	: Boolean = false;
		
		
		////////////////////////////////////////////////////////
		//	SINGLETON INSTANCE
		//
		
		public static function get service():CustomResources
		{
			createInstance();
			return _instance;
		}
		
		
		private static function createInstance():void
		{
			if(_instance == null)
			{
				_shouldCreateInstance = true; 
				_instance = new CustomResources();
				_shouldCreateInstance = false;
			}
		}
		
		
		
		////////////////////////////////////////////////////////
		//	FUNCTIONALITY
		//
		
		public function CustomResources()
		{
			if (_shouldCreateInstance)
			{
			}
			else
			{
				throw new Error( ERROR_SINGLETON );
			}
		}
		
		
		public function dispose():void
		{
			_instance = null;
		}
		
		
	}
}
