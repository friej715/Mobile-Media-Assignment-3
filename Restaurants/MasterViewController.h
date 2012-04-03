//
//  MasterViewController.h
//  Restaurants
//
//

#import <UIKit/UIKit.h>
#import "Restaurant.h"
#import "DetailViewController.h"

@interface MasterViewController : UITableViewController {
    NSMutableArray* restaurants;
}


//-(int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section:(NSInteger)section;
//
//-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;


@property(readwrite, strong) NSMutableArray* restaurants;

@end
