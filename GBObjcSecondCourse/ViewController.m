//
//  ViewController.m
//  GBObjcSecondCourse
//
//  Created by Vitaly Prosvetov on 05.03.2021.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupButton];
    [self setupSelf];
}

#pragma mark Navigation

-(void)openSecondViewController {
    SecondViewController *secondViewController = [SecondViewController new];
    
    [self.navigationController pushViewController:secondViewController animated:YES];
    //[self presentViewController:secondViewController animated:YES completion:nil];
}

#pragma mark Controls

-(void) setupSelf {
    self.title = @"Main";
    [self.view setBackgroundColor:[UIColor greenColor]];
}

-(void)setupButton {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(0.0, 0.0, 150.0, 50.0)];
    [button setCenter:self.view.center];
    [button setTitle:@"Next" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor darkGrayColor]];
    [button clipsToBounds];
    button.layer.cornerRadius = 10;
    [button addTarget:self action:@selector(openSecondViewController) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}

@end
