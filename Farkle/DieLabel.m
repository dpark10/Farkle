//
//  DieLabel.m
//  Farkle
//
//  Created by Matthew Bracamonte on 3/24/16.
//  Copyright © 2016 Dan Park. All rights reserved.
//

#import "DieLabel.h"

@interface DieLabel() <UIGestureRecognizerDelegate>


@end

@implementation DieLabel

- (id) initWithCoder:(NSCoder *)aDecoder {
    
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        self.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapHandler:)];
        self.gestureRecognizers = @[tap];
    }
    return self;
}

-(void)tapHandler:(UITapGestureRecognizer *)gestureRecognizer {
    
    if(gestureRecognizer.state == UIGestureRecognizerStateEnded) {
        NSLog(@"tapped");
        
    }
}

-(void)roll:(UILabel *)label {
    int randomNumber = arc4random_uniform(5);
    label.text = [NSString stringWithFormat:@"%i", randomNumber];
}

@end
