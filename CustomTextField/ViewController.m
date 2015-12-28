//
//  ViewController.m
//  fdsafg
//
//  Created by sunze on 15/12/3.
//  Copyright © 2015年 sunzeboy. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+History.h"
#import "UITextField+Blocks.h"
#import "UITextField+Shake.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *fdffdsfg;
- (IBAction)search:(id)sender;
- (IBAction)hide:(id)sender;
- (IBAction)load:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.fdffdsfg.identify = @"geg";
    self.fdffdsfg.delegate = self;
    [self.fdffdsfg setShouldBegindEditingBlock:^BOOL(UITextField *textField) {
        if (self.fdffdsfg ==textField) {
            [self.fdffdsfg shake:2 withDelta:3];
            [self.fdffdsfg showHistory];
        }
        return YES;
    }];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.fdffdsfg shake:2 withDelta:3];
    [self.fdffdsfg hideHistroy];
    [self.fdffdsfg resignFirstResponder];
}


- (IBAction)search:(id)sender {
    [self.fdffdsfg synchronize];
}

- (IBAction)hide:(id)sender {
    [self.fdffdsfg hideHistroy];
}

- (IBAction)load:(id)sender {
    
    NSLog(@"%@",[self.fdffdsfg loadHistroy]);
}
@end
