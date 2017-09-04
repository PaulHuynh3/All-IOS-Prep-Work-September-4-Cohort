//
//  AddItemViewController.h
//  BuildAnApp
//
//  Created by Paul on 2017-08-09.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddItemViewControllerDelegate <NSObject>

-(void)addTodos:(NSString*)input;

@end

@interface AddItemViewController : UIViewController

@property id <AddItemViewControllerDelegate> thisDelegate;

@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;






@end
