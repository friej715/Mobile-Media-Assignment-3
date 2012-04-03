//
//  DetailViewController.m
//  Restaurants
//
//

#import "DetailViewController.h"
#import "Review.h"

@implementation DetailViewController
@synthesize addressLabel;
@synthesize navigationHeader;
@synthesize cuisineLabel;
@synthesize ageLabel;
@synthesize helpfulReviewPercentageLabel;
@synthesize helpfulReviewLabel;
@synthesize star1;
@synthesize star2;
@synthesize star3;
@synthesize star4;
@synthesize star5;
@synthesize restaurant;

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [restaurant mostHelpfulReview];
    
    helpfulReviewLabel.text = [restaurant.bestReview text];
    NSLog(@"Best Review Text: %@", restaurant.bestReview.text);
    
    helpfulReviewPercentageLabel.text = [NSString stringWithFormat:@"Most helpful review -- %i out of %i found this helpful.", [restaurant.bestReview numberOfHelpfulReviews], [restaurant.bestReview numberOfUnhelpfulReviews] + [restaurant.bestReview numberOfHelpfulReviews]];
    
    
    addressLabel.text = [restaurant address];
    navigationHeader.title = [restaurant name];
    cuisineLabel.text = [restaurant cuisineType];
    ageLabel.text = [NSString stringWithFormat:@"Est. %i (%i years ago)", restaurant.yearOpened, [restaurant age]];
    
    NSLog(@"Average Rating: %f", [restaurant averageCustomerReview]);
    
    if ([restaurant averageCustomerReview] >= .5) {
        star1.image = [UIImage imageNamed:@"Star_ON.png"];
    }
    if ([restaurant averageCustomerReview] >= 1.5) {
        star2.image = [UIImage imageNamed:@"Star_ON.png"];
    }
    if ([restaurant averageCustomerReview] >= 2.5) {
        star3.image = [UIImage imageNamed:@"Star_ON.png"];
    }
    if ([restaurant averageCustomerReview] >= 3.5) {
        star4.image = [UIImage imageNamed:@"Star_ON.png"];
    }
    if ([restaurant averageCustomerReview] >= 4.5) {
        star5.image = [UIImage imageNamed:@"Star_ON.png"];
    }
    
}



- (void)viewDidUnload
{
    [self setAddressLabel:nil];
    [self setNavigationHeader:nil];
    [self setCuisineLabel:nil];
    [self setAgeLabel:nil];
    [self setHelpfulReviewPercentageLabel:nil];
    [self setHelpfulReviewLabel:nil];
    [self setStar1:nil];
    [self setStar2:nil];
    [self setStar3:nil];
    [self setStar4:nil];
    [self setStar5:nil];
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


@end
