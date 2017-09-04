//
//  ViewController.m
//  BuildAnApp
//
//  Created by Paul on 2017-08-09.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "ViewController.h"
#import "ListTableViewCell.h"
#import "AddItemViewController.h"


@interface ViewController () <UITableViewDataSource, UITableViewDelegate, AddItemViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITableView *firstView;
@property (strong, nonatomic) NSMutableArray* thisArrayList;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _thisArrayList = [[NSMutableArray alloc]init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _thisArrayList.count;

}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString* cellIdentifier = @"ListTableViewCell";
    ListTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell ==nil){
        cell = [[ListTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    NSString* convertArrayToText = _thisArrayList[indexPath.row];
    
    cell.tableLabel.text = convertArrayToText;
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    UINavigationController* nav = segue.destinationViewController;
    
    AddItemViewController* addVC = nav.viewControllers[0];
    
    addVC.thisDelegate = self;
}

-(void)addTodos:(NSString *)input{
    [_thisArrayList addObject:input];
    [_firstView reloadData];

}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {

    [_thisArrayList removeObjectAtIndex:indexPath.row];
    [_firstView reloadData];

}




@end
