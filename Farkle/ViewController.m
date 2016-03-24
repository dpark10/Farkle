//
//  ViewController.m
//  Farkle
//
//  Created by dp on 3/24/16.
//  Copyright © 2016 Dan Park. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h"

@interface ViewController () <DieLabelDelegate>
@property DieLabel *dieLabel;
@property (strong, nonatomic) IBOutletCollection(DieLabel) NSArray *dieLabels;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)onRollPressed:(UIButton *)sender {
    for (DieLabel *dieLabel in self.dieLabels) {
        [dieLabel roll];
    }
}


@end
