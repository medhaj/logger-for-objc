Light logger for objc 
==============================

This repository hosts a light objective-c logger for iOS apps.

##### Import the logger

To use the logger, you need to import its header file. In your code, add the following line to import the logger


```objective-c

	#import "MHALogger.h"
	
```

Once imported you can start configuring it and using it.

##### Set log level

The set log level method helps you configure the log level of the logger. The default log level is the verbose mode. The following is a table describing different log levels supported by the logger:

 Level            			| Description
---------------------------	|----------------------------------------------
__kMHALogLevelVerbose__    | Log level of Verbose (default)
__kMHALogLevelInfo__      	| Log level of Info
__kMHALogLevelWarning__    	| Log level of Warning
__kMHALogLevelError__      	| Log level of Error
__kMHALogLevelNone__      	| Silent mode



##### Use the logger

To log messages on the console, use the MHALog function. You can find in the following samples

```objective-c

	MHALog(kMHALogLevelError, @"Hello world");
	
```

This prints `[ERRO] Hello World` in the console.

```objective-c

	MHALog(kMHALogLevelInfo, @"Hello %@ world", @"pretty");
	
```

This prints `[INFO] Hello pretty World` in the console.

