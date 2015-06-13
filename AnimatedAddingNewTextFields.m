//
//  AnimatedAddingNewTextFields.m
//  How much did you make?
//
//  Created by Tony Mu on 6/13/15.
//  Copyright (c) 2015 The Shepherd. All rights reserved.
//

#import "AnimatedAddingNewTextFields.h"

@interface AnimatedAddingNewTextFields ()

@end

@implementation AnimatedAddingNewTextFields

+ (id)addTextFieldWithButton: (UIButton *)button withSize: (CGSize)size withVerticalDistance: (float)vDistance withDistanceFromButton: (float)hDistance animated: (BOOL)animated {
    CGRect screenSize = [[UIScreen mainScreen] bounds];
    NSLog(@"%@%@",NSStringFromCGRect(screenSize),NSStringFromCGRect(button.frame));
    
    if (button.frame.origin.y < screenSize.size.height - 100) {
        CGRect rectTf = CGRectMake(button.frame.origin.x + hDistance, button.frame.origin.y, size.width, size.height);
        
        [UIButton beginAnimations:nil context:nil];
        [UIButton setAnimationDuration:0.5];
        button.frame = CGRectMake(button.frame.origin.x, button.frame.origin.y+vDistance, button.frame.size.width, button.frame.size.height);
        [UIButton commitAnimations];
        
        [UITextField beginAnimations:nil context:nil];
        [UITextField setAnimationDuration:0.5];
        UITextField *tf = [[UITextField alloc] initWithFrame:rectTf];
        tf.borderStyle = UITextBorderStyleRoundedRect;
        [UITextField commitAnimations];
        
        return tf;
    } else {
        return 0;
    }
    
    
}

@end
