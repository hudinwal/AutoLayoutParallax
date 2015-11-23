//
//  ViewController.h
//  AutoLayoutParallax
//
//  Created by Dinesh Kumar on 23/11/15.
//  Copyright © 2015 StackSample. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kParallaxRatio 8.0

#pragma mark - Custom Cell

@interface TableViewCell : UITableViewCell
@property (nonatomic,weak) IBOutlet NSLayoutConstraint * verticalCenter;
@end

#pragma mark - Custom Table View Controller

@interface TableViewController : UITableViewController
@end