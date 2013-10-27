//
//  OWAddSpaceObjectViewController.m
//  Out of this World
//
//  Created by Eliot Arntz on 10/22/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "OWAddSpaceObjectViewController.h"

@interface OWAddSpaceObjectViewController ()

@end

@implementation OWAddSpaceObjectViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

/* Set the background view to be the Orion image. */
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UIImage *orionImage = [UIImage imageNamed:@"Orion.jpg"];
    self.view.backgroundColor = [UIColor colorWithPatternImage:orionImage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/* Call the method defined in the protocol. The method should be implemented in the OWOuterSpaceTableViewController. */
- (IBAction)cancelButtonPressed:(UIButton *)sender
{
    [self.delegate didCancel];
}

/* Call the method defined in the protocol. The method should be implemented in the OWOuterSpaceTableViewController. For the parameter of OWSpaceObject use the helper method returnNewSpaceObject.*/
- (IBAction)addButtonPressed:(UIButton *)sender
{
    OWSpaceObject *newSpaceObject = [self returnNewSpaceObject];
    [self.delegate addSpaceObject:newSpaceObject];
}

/* Method returns an OWSpaceObject using the information supplied from the textFields. Use a default image the EinsteinRing*/
-(OWSpaceObject *)returnNewSpaceObject
{
    OWSpaceObject *addedSpaceObject = [[OWSpaceObject alloc] init];
    addedSpaceObject.name = self.nameTextField.text;
    addedSpaceObject.nickname = self.nicknameTextField.text;
    addedSpaceObject.diameter = [self.diameterTextField.text floatValue];
    addedSpaceObject.temperature = [self.temperatureTextField.text floatValue];
    addedSpaceObject.numberOfMoons = [self.numberOfMoonsTextField.text intValue];
    addedSpaceObject.interestFact = self.interestingFactTextField.text;
    
    return addedSpaceObject;
}


@end
