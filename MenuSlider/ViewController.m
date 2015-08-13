//
//  ViewController.m
//  MenuSlider
//
//  Created by Guilherme on 01/12/14.
//  Copyright (c) 2014 Quaddro Treinamentos. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.isSelected = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)arrastarTela:(UIBarButtonItem *)sender {
    
    if (self.isSelected == YES) {
        
        [UIView animateWithDuration:0.25 animations:^{
            
            self.containerPrincipal.frame = CGRectMake(260, self.containerPrincipal.frame.origin.y, self.containerPrincipal.frame.size.width, self.containerPrincipal.frame.size.height);
            
            self.containerMenu.frame = CGRectMake(0, self.containerMenu.frame.origin.y, self.containerMenu.frame.size.width, self.containerMenu.frame.size.height);
            
        }];
        
        self.isSelected = NO;
        
    }else{
        
        [UIView animateWithDuration:0.25 animations:^{
            self.containerPrincipal.frame = CGRectMake(0, self.containerPrincipal.frame.origin.y, self.containerPrincipal.frame.size.width, self.containerPrincipal.frame.size.height);
            
            self.containerMenu.frame = CGRectMake(-260, self.containerMenu.frame.origin.y, self.containerMenu.frame.size.width, self.containerMenu.frame.size.height);
        }];
        
        self.isSelected = YES;
    
    }
    
}

-(BOOL)prefersStatusBarHidden{

    return YES;

}
@end
