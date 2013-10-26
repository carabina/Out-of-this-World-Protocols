//
//  OWAddSpaceObjectViewController.h
//  Out of this World
//
//  Created by Eliot Arntz on 10/22/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OWSpaceObject.h"

/*Define a protocol with 2 methods to be implemented in the OWOuterSpaceTableViewController file.  Notice the name of our delegate is the name of the class with the word Delegate at the end. */
@protocol OWAddSpaceObjectViewControllerDelegate <NSObject>

@required

-(void)addSpaceObject:(OWSpaceObject *)spaceObject;
-(void)didCancel;

@end

@interface OWAddSpaceObjectViewController : UIViewController

/* Create a property named delegate. Notice that we use weak instead of strong, type id (a pointer to any type of object) and our variable named delegate conforms to our protocol. */
@property (weak, nonatomic) id <OWAddSpaceObjectViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *nicknameTextField;
@property (strong, nonatomic) IBOutlet UITextField *diameterTextField;
@property (strong, nonatomic) IBOutlet UITextField *temperatureTextField;
@property (strong, nonatomic) IBOutlet UITextField *numberOfMoonsTextField;
@property (strong, nonatomic) IBOutlet UITextField *interestingFactTextField;

- (IBAction)cancelButtonPressed:(UIButton *)sender;
- (IBAction)addButtonPressed:(UIButton *)sender;


@end
