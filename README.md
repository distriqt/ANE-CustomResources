built by [distriqt //](http://airnativeextensions.com) 

# Custom Android Resources

> ## Quick Start 
>
> 1. Install Apache Ant, the AIR SDK, and the Android SDK with Android Studio
> 2. update `air.sdk` and `android.sdk` in `build_config/build.config` 
> 3. Copy your resources to the `res` directory 
> 4. Run `ant`


This project uses an Apache Ant build script to create and package an ANE with your custom Android resources.

The main purpose of this is to allow AIR developers to easily add android resources such as 
notification icons and configuration values using the correct Android resource process.

This is very important for resources such as notifications icons:

- [com.distriqt.Notifications](http://airnativeextensions.com/extension/com.distriqt.Notifications)
- [com.distriqt.PushNotifications](http://airnativeextensions.com/extension/com.distriqt.PushNotifications)


To use this script ensure you have Apache Ant installed on your machine along with 
a recent version of the AIR and Android SDKs and a version of Java.

- **AIR SDK** : http://www.adobe.com/devnet/air/air-sdk-download.html

- **Android SDK** : Easiest way is to install Android Studio: https://developer.android.com/studio/index.html

- **Apache Ant** : You can download the binary distributions from here: http://ant.apache.org/ 

  - macOS (OSX) : 
    - Homebrew : `brew install ant` 
    - MacPorts : `sudo port install apache-ant`

  - Windows: 
    - Download the binary distribution and extract to a location
    - Add the `ANT_HOME` environment variable pointing to this location
    - Update your `PATH` variable, append `%ANT_HOME%\bin` 


Once you have all those setup, download this repository and open the `build.config` file. 
You will need to update the paths to the AIR and Android SDKS, however the rest you can leave as is.

```
# AIR SDK
air.sdk = /PATH/TO/YOUR/AIR/SDK

# ANDROID
android.sdk = /PATH/TO/YOUR/ANDROID/SDK
```

On Windows it will look something like the following, you must make sure to use:
for air.sdk - two backslashes to correctly escape a backslash:
for android.sdk - *forward slash* (See https://github.com/distriqt/ANE-CustomResources/issues/50, https://github.com/distriqt/ANE-CustomResources/issues/47)

```
# AIR SDK (backslash)
air.sdk = C:\\Users\\username\\sdks\\air\\AIRSDK_22.0.0.153 # backslashes here

# ANDROID (forward slash)
android.sdk = C:/Users/username/AppData/Local/Android/sdk
```


## Resources

Next you will need to place your resources to the `res` folder. 
You can add any custom resources your application requires. 

The next section shows how to create notification icons to use in our extensions.


### Notification Icons 

The Android Asset Studio is a great resource which will convert your icon into the correct 
sizes and formats for an Android notification icon.

Your notification icon needs to be white(grey) and transparent and will be converted to meet
these requirements if you provide something different. 

![Notification Icons](images/android-group.png)

To generate these goto the Android Asset Studio [Notification Icon Generator](https://romannurik.github.io/AndroidAssetStudio/icons-notification.html)
and upload your source image. Make sure you change the name of the icon. 
You will be using this name to reference this icon in notifications.

![Asset Studio](images/example-icons.png)

You can then download the zip and extract the contents into the `res` directory in the repository. 


## Running the script

Once you have your resources set up, you can run the script to generate your ANE.
Open a terminal in the downloaded repository directory and run:

```
ant
```

You should see a series of outputs as the libraries are built and eventually a `BUILD SUCCESSFUL` message.

Once that occurs your ANE will be located in the `build` directory:

```
build/com.distriqt.CustomResources.ane
```

Add this ANE to any projects you will be using your custom resources in.



---


## License


Copyright (c) 2016 distriqt Pty Ltd
 
> Permission is hereby granted, free of charge, to any person obtaining a copy
> of this software and associated documentation files (the "Software"), to deal
> in the Software without restriction, including without limitation the rights
> to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> copies of the Software, and to permit persons to whom the Software is
> furnished to do so, subject to the following conditions:
> 
> The above copyright notice and this permission notice shall be included in all
> copies or substantial portions of the Software.
> 
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
> SOFTWARE.
> 

