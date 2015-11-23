//
//  ViewController.m
//  AutoLayoutParallax
//
//  Created by Dinesh Kumar on 23/11/15.
//  Copyright © 2015 StackSample. All rights reserved.
//


#import "ViewController.h"


@implementation TableViewCell
@end

@implementation TableViewController

-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    NSArray * cells =  [self.tableView visibleCells];
    for (TableViewCell* cell in cells) {
        NSIndexPath * indexPathOfCell = [self.tableView indexPathForCell:cell];
        CGRect cellRect = [self.tableView rectForRowAtIndexPath:indexPathOfCell];
        cell.verticalCenter.constant = (scrollView.contentOffset.y -cellRect.origin.y)/kParallaxRatio;
    }
}

@end