//
//  NNPMasterViewController.h
//  ToDo
//
//  Created by damian on 14/04/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NNPAppDelegate.h"
#import "ToDo.h"
#import "NNPDetailViewController.h"
#import "RefreshTableProtocol.h"

#define ALERTMESSAGE_DELETEALL   1001

@interface NNPMasterViewController : UITableViewController <RefreshTableProtocol> {
    NNPAppDelegate *appDelegate;
    
@private
    UIImage *_lowImg, *_mediumImg, *_highImg;    
}

- (IBAction)deleteAllCompleted:(id)sender;

@end
