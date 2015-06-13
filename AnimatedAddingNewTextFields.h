//
//  AnimatedAddingNewTextFields.h
//  How much did you make?
//
//  Created by Tony Mu on 6/13/15.
//  Copyright (c) 2015 The Shepherd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimatedAddingNewTextFields : UIViewController
+ (id)addTextFieldWithButton: (UIButton *)button withSize: (CGSize)size withVerticalDistance: (float)vDistance withDistanceFromButton: (float)hDistance animated: (BOOL)animated;

@end
