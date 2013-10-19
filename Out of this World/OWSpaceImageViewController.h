//
//  OWSpaceImageViewController.h
//  Out of this World
//
//  Created by Eliot Arntz on 10/15/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OWSpaceObject.h"

/* The angle brakets mean that the class now conforms to the UIScrollView Protocol. In short we get access to the methods defined in the UIScrollViewDelegate like viewForZoomingInScrollView */
@interface OWSpaceImageViewController : UIViewController <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UIImageView *imageView;
@property (strong, nonatomic) OWSpaceObject *spaceObject;

@end
