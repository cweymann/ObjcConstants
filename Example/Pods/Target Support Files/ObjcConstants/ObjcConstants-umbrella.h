#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "AVMHTTPError.h"
#import "ErrorConstant.h"
#import "ExternConstant.h"

FOUNDATION_EXPORT double ObjcConstantsVersionNumber;
FOUNDATION_EXPORT const unsigned char ObjcConstantsVersionString[];

