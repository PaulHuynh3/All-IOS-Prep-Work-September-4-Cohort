//
//  ViewController.m
//  delet
//
//  Created by Paul on 2017-08-13.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "ViewController.h"
#import "ListTableViewCell.h"
#import "AddViewController.h"


@interface ViewController () <UITableViewDataSource, UITableViewDelegate,AddViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITableView *firstView;
@property (strong, nonatomic) NSMutableArray* listArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.listArray = [[NSMutableArray alloc]init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.listArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    NSString* cellIdentifier = @"ListTableViewCell";
    //passing the nsstring cellidentifer into tableview...
    ListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil){
        cell = [[ListTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    NSString* arrayToText = self.listArray[indexPath.row];
    
    cell.tableLabelOne.text = arrayToText;
    return cell;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    UINavigationController* nav = segue.destinationViewController;
    AddViewController *addVc = nav.viewControllers[0];
    
    addVc.listDelegate = self;

}


-(void)addTodos:(NSString *)input{
    [self.listArray addObject:input];
    [self.firstView reloadData];

}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [self.listArray removeObjectAtIndex:indexPath.row];
    [self.firstView reloadData];
}




@end
