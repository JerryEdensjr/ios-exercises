//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {

    return @"My favorite cheese is ricotta.";
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {

    NSString *noSuffix = cheeseName;
    NSRange range = [cheeseName rangeOfString:@"cheese" options:NSCaseInsensitiveSearch | NSBackwardsSearch];
    if (range.location != NSNotFound) {
        
        noSuffix = [cheeseName substringToIndex:range.location];
        noSuffix = [noSuffix stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@" "]];
    }
    
    return noSuffix;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {

    return [NSString stringWithFormat:@"%d cheese%@", cheeseCount, (cheeseCount > 1 ? @"s" : @"")];
}

@end
