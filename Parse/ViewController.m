//
//  ViewController.m
//  Parse
//
//  Created by Ralph on 19/02/18.
//  Copyright © 2018 R4lph. All rights reserved.
//

#import "ViewController.h"
#define screenWidth self.view.frame.size.width
#define screenHeight self.view.frame.size.height
#import <Parse/Parse.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self helloWorld];
}

-(void)helloWorld{
    PFQuery *query = [PFQuery queryWithClassName:@"Test"];
    [query getFirstObjectInBackgroundWithBlock:^(PFObject * _Nullable object, NSError * _Nullable error) {
        if(!error){
            UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(screenWidth/2 - 100, screenHeight/2 - 50, 200, 100)];
            textLabel.text = object[@"text"];
            textLabel.textAlignment = NSTextAlignmentCenter;
            [self.view addSubview:textLabel];
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
