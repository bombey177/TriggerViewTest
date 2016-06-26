//
//  ViewController.m
//  TrigerViewTest
//
//  Created by Oleg Bochkarev on 26.06.16.
//  Copyright © 2016 Oleg Bochkarev. All rights reserved.
//

#import "ViewController.h"
#import "TableViewTopCell.h"
#import "TableViewBottomCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *firstTable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.firstTable.dataSource = self;
    self.firstTable.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}// Default is 1 if not implemented

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section % 2 == 0){//first section
        if (indexPath.row % 2 == 0){
            //top cell
            NSString *CellIdentifier = @"TopCell";
            TableViewTopCell *topCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
            [topCell configMaxCellForSection:indexPath];
            return topCell;
        }
        else{
            //bottom cell
            NSString *CellIdentifier = @"BottomCell";
            TableViewBottomCell *bottomCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
            [bottomCell configMaxCellForSection:indexPath];
            return bottomCell;
        }
    }
    else{//second section
        if (indexPath.row % 2 == 0){
            //top cell
            NSString *CellIdentifier = @"TopCell";
            TableViewTopCell *topCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
            [topCell configMinCellForSection:indexPath];
            return topCell;
        }
        else{
            //bottom cell
            NSString *CellIdentifier = @"BottomCell";
            TableViewBottomCell *bottomCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
            [bottomCell configMinCellForSection:indexPath];
            return bottomCell;
        }
    }
}



- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == 0){
        return [NSString stringWithFormat:@"Purchase"];
    }
    else
        return [NSString stringWithFormat:@"Sale"];
}// fixed font style. use custom view (UILabel) if you want something different

@end
