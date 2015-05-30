//
//  MHALogger.m
//
//  Created by Med on 30/05/15.
//  Copyright (c) 2015 Med. All rights reserved.
//

#import "MHALogger.h"

@implementation MHALogger

MHALogger *logger;
static MHALogger * _defaultLogger;

+ (MHALogger *)defaultLogger {
    if (_defaultLogger) {
        return _defaultLogger;
    }
    
    _defaultLogger = [[MHALogger alloc] init];
    return _defaultLogger;
    
}


- (id)init {
    if (self = [super init]) {
        //Update this value to set
        //the default log level
        self.level = kMHALogLevelVerbose;
        logger = self;
    }
    
    return self;
}


- (void)setLevel:(MHALogLevelType)intentlevel {
    level = intentlevel;
}


- (BOOL)levelEnabled:(MHALogLevelType)intentLevel {
    return (level >= intentLevel) && (level != kMHALogLevelNone);
}


- (NSString *)nameOfLevel:(MHALogLevelType)loggingLevel {
    NSString *name = @"UNKN";
    switch (loggingLevel) {
        case kMHALogLevelNone:
            name = @"NONE";
            break;
        case kMHALogLevelInfo:
            name = @"INFO";
            break;
        case kMHALogLevelError:
            name = @"ERRO";
            break;
        case kMHALogLevelVerbose:
            name = @"VERB";
            break;
        case kMHALogLevelWarning:
            name = @"WARN";
            break;
    }
    
    return name;
}

void MHALog(MHALogLevelType intentLevel, NSString *message,...) {
    if ([logger levelEnabled:intentLevel]) {
        va_list args;
        va_start(args, message);
        NSString *s = [[NSString alloc] initWithFormat:message arguments:args];
        NSLog(@"[%@] - %@", [logger nameOfLevel:intentLevel], s);
        va_end(args);
    }
}
@end
