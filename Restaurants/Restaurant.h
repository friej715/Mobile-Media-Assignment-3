//
//  Restaurant.h
//  Restaurants
//

#import <Foundation/Foundation.h>
#import "Review.h"

@interface Restaurant : NSObject
{
    NSString* address;
    NSString* name;
    NSString* cuisineType;
    int yearOpened;
    int tempTotal;
    NSArray* reviews;
    Review* bestReview;
    bool isFavorite;
    
}
@property(readwrite, strong) NSString* address;
@property(readwrite, strong) NSString* name;
@property(readwrite, strong) NSString* cuisineType;
@property(readwrite) int yearOpened;
@property(readwrite) int tempTotal;
@property(readwrite, strong) NSArray* reviews;
@property(readwrite, strong) Review* bestReview;
@property(readwrite) bool isFavorite;

-(void) mostHelpfulReview;

-(int)age;

-(float) averageCustomerReview;

@end
