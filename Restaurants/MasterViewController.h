//
//  MasterViewController.h
//  Restaurants
//
//

#import <UIKit/UIKit.h>

@interface MasterViewController : UITableViewController

-(int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section:(NSInteger)section;
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

@end
