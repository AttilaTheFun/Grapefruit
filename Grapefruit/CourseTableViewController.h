//
//  CourseTableViewController.h
//  Grapefruit
//
//  Created by Logan Shire on 9/15/14.
//  Copyright (c) 2014 Logan Shire. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CourseTableViewController : UITableViewController

@property (nonatomic) NSInteger courseID;
@property (strong, nonatomic) NSDictionary *courseInformation;

@end
