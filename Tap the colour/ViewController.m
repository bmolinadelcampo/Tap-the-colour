//
//  ViewController.m
//  Tap the colour
//
//  Created by Belén Molina del Campo on 16/03/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

#import "ViewController.h"
#include <stdlib.h>

@interface ViewController ()

@property (strong, nonatomic) NSArray *colours;
@property (strong, nonatomic) NSArray *buttons;
//@property (strong, nonatomic) UIColor *pink;
//@property (strong, nonatomic) UIColor *yellow;
//@property (strong, nonatomic) UIColor *purple;
//@property (strong, nonatomic) UIColor *blue;
//@property (strong, nonatomic) UIColor *green;
@property (strong, nonatomic) NSString *solution;
@property (strong, nonatomic) NSString *textForLabel;

@property (weak, nonatomic) IBOutlet UILabel *whatColourToTouchLabel;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UIButton *topLeftButton;
@property (weak, nonatomic) IBOutlet UIButton *topRightButton;
@property (weak, nonatomic) IBOutlet UIButton *bottomLeftButton;
@property (weak, nonatomic) IBOutlet UIButton *bottomRightButton;

- (void)createNewChallenge;
- (IBAction)topLeftButton:(id)sender;
- (IBAction)topRightButton:(id)sender;
- (IBAction)bottomLeftButton:(id)sender;
- (IBAction)bottomRightButton:(id)sender;
- (IBAction)nextButton:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.colours = @[@"pink", @"yellow", @"purple", @"blue", @"green"];
    
    self.buttons = @[self.topLeftButton, self.topRightButton, self.bottomLeftButton, self.bottomRightButton];
    
    [self createNewChallenge];
}

- (void)createNewChallenge {
    self.solution = self.colours[3];
    self.whatColourToTouchLabel.text = [NSString stringWithFormat:@"Tap colour %@!", self.solution];
    
    for (UIButton *b in self.buttons) {
        NSInteger randomIndex = arc4random() %4;
        [b setTitle:self.colours[randomIndex] forState:UIControlStateNormal];
        NSLog(@"Random index is %li", (NSInteger) randomIndex);
    }
}

- (IBAction)topLeftButton:(id)sender {
}

- (IBAction)topRightButton:(id)sender {
}

- (IBAction)bottomLeftButton:(id)sender {
}

- (IBAction)bottomRightButton:(id)sender {
}

- (IBAction)nextButton:(id)sender {
}



@end
