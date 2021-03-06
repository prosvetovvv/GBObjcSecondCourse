//
//  SecondViewController.m
//  GBObjcSecondCourse
//
//  Created by Vitaly Prosvetov on 05.03.2021.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupSelf];
    [self setupLabel];
    [self setupTextField];
    [self setupActivityIndicator];
}

#pragma mark UIElements

-(void)setupSelf {
    [self setTitle:@"Second"];
    [self.view setBackgroundColor:[UIColor blueColor]];
}

-(void)setupLabel {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, 200.0, 30.0)];
    label.center = CGPointMake(self.view.center.x, self.view.center.y);
    label.text = @"Hello, World";
    label.font = [UIFont systemFontOfSize:20 weight:UIFontWeightBold];
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:label];
}

-(void) setupTextField {
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(0.0, 0.0, 200.0, 30.0)];
    [textField setCenter:CGPointMake(self.view.center.x, self.view.center.y - 100)];
    [textField setBorderStyle:UITextBorderStyleRoundedRect];
    [textField setPlaceholder:@"Placeholder"];
    
    [self.view addSubview:textField];
}

-(void) setupActivityIndicator {
    UIActivityIndicatorView *activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
    [activityIndicator setFrame:CGRectMake(0.0, 0.0, 50.0, 50.0)];
    [activityIndicator setColor:[UIColor whiteColor]];
    [activityIndicator setCenter:CGPointMake(self.view.center.x, self.view.center.y + 100)];
    [activityIndicator setHidesWhenStopped:YES];
    [activityIndicator startAnimating];
    
    [self.view addSubview:activityIndicator];
    
}

@end
