//
//  AddViewController.m
//  delet
//
//  Created by Paul on 2017-08-13.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "AddViewController.h"

@interface AddViewController ()

@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)save:(id)sender {
    [_listDelegate addTodos:_textFieldOne.text];
    [self dismissViewControllerAnimated:true completion:nil];
    
}
- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
    
}





@end
