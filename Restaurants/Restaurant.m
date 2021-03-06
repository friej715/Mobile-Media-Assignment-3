//
//  Restaurant.m
//  Restaurants
//

#import "Restaurant.h"
#import "Review.h"


@implementation Restaurant
@synthesize address, name, cuisineType, yearOpened, reviews, bestReview, tempTotal, isFavorite;


-(int)age
{
    return 2012 - yearOpened;
}

-(float) averageCustomerReview {
    for (Review* review in [self reviews]) {
        if (review == [reviews objectAtIndex:0]) {
            tempTotal = [review score];
        } else {
            tempTotal += [review score];
        }
    }
    
    return (float)tempTotal/(float)[reviews count];
    
}

-(void) mostHelpfulReview {
    for (Review* review in [self reviews]) {        
        if (review == [reviews objectAtIndex:0]) { // if it's the first one and not nil
            bestReview = review;
        } else { // if it's not the first one
            if ([bestReview ratio] < [review ratio]) {
                bestReview = review;
                
            }
            
        }
    }
    NSLog(@"Best Review: %@", bestReview);
}

@end
