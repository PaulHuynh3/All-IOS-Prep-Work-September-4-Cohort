//
//  AddViewController.h
//  delet
//
//  Created by Paul on 2017-08-13.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddViewControllerDelegate <NSObject>

-(void)addTodos:(NSString*)input;

@end



@interface AddViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textFieldOne;
@property (strong, nonatomic) id <AddViewControllerDelegate> listDelegate;


- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;





@end
