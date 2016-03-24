//
//  DieLabel.h
//  Farkle
//
//  Created by Matthew Bracamonte on 3/24/16.
//  Copyright © 2016 Dan Park. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DieLabel;

@protocol DieLabelDelegate <NSObject>


@end

@interface DieLabel : UILabel

@property (nonatomic,assign) id<DieLabelDelegate>delegate;
-(void)roll;



@end
