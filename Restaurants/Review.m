//
//  Review.m
//  Restaurants
//
//  Created by Jane Friedhoff on 2/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Review.h"

@implementation Review

@synthesize reviewer, text, score, numberOfHelpfulReviews, numberOfUnhelpfulReviews;

-(float) ratio
{
    return (numberOfHelpfulReviews / (numberOfHelpfulReviews+numberOfUnhelpfulReviews));
}

@end
