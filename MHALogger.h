//
//  MHALogger.h
//
//  Created by Med on 30/05/15.
//  Copyright (c) 2015 Med. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * Log Level setting.
 */
typedef enum {
    /** Log level of Verbose. */
    kMHALogLevelVerbose = 4,
    
    /** Log level of Info. */
    kMHALogLevelInfo = 3,
    
    /** Log level of Warning. */
    kMHALogLevelWarning = 2,
    
    /** Log level of Error. */
    kMHALogLevelError = 1,
    
    /** Log level of None. */
    kMHALogLevelNone = 0
} MHALogLevelType;


/**
 *  This class helps to log all messages with different log levels.
 */
@interface MHALogger : NSObject {
    MHALogLevelType level;
}



/**
 *  Provides a shared instance of the logger.
 *
 *  @return A shared instance of MHALogger.
 */
+ (MHALogger *) defaultLogger;



/**
 *  Use this method to filter the log.
 *
 *  @param level The Log level
 */
-(void)setLevel:(MHALogLevelType)level;



/**
 *  Use this method to log any message. The message can be simple or formatted.
 *
 *  @param level   The log level in which your message will appear.
 *  @param message Your message, it can be simple or formatted.
 *  @param ...     Add here parameters to fill your message format.
 */
void MHALog(MHALogLevelType level, NSString *message,...) NS_FORMAT_FUNCTION(2,3);
@end