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
            if (indexPath.row == 0)
                [topCell configMaxCellForSection:indexPath];
            else
                [topCell configMinCellForSection:indexPath];
            return topCell;
        }
        else{
            //bottom cell
            NSString *CellIdentifier = @"BottomCell";
            TableViewBottomCell *bottomCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
            if (indexPath.row == 1)
                [bottomCell configMaxCellForSection:indexPath];
            else
                [bottomCell configMinCellForSection:indexPath];
            return bottomCell;
        }
    }
    //тот же код
    else{//second section
        if (indexPath.row % 2 == 0){
            //top cell
            NSString *CellIdentifier = @"TopCell";
            TableViewTopCell *topCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
            if (indexPath.row == 0)
                [topCell configMaxCellForSection:indexPath];
            else
                [topCell configMinCellForSection:indexPath];
            return topCell;
        }
        else{
            //bottom cell
            NSString *CellIdentifier = @"BottomCell";
            TableViewBottomCell *bottomCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
            if (indexPath.row == 1)
                [bottomCell configMaxCellForSection:indexPath];
            else
                [bottomCell configMinCellForSection:indexPath];
            return bottomCell;
        }
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *sectionTitle = nil;
    sectionTitle = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 30)];
    
    UITextView *sectionName = [[UITextView alloc] initWithFrame:sectionTitle.bounds];
    sectionName.backgroundColor = [UIColor clearColor];
    sectionName.userInteractionEnabled = NO;
    sectionName.scrollEnabled = NO;
    
    if (section == 0){
        //NSLog(@"here1");
        sectionName.text = [NSString stringWithFormat:@"Purchase"];
        
    } else {
        //NSLog(@"here2");
        sectionName.text = [NSString stringWithFormat:@"Sale"];
    }
    
    [sectionName setTextContainerInset:UIEdgeInsetsMake(4,10,0,0)];
    [sectionName setFont:[UIFont systemFontOfSize:16 weight:UIFontWeightBold]];
    [sectionName setTextColor:[UIColor whiteColor]];
    [sectionName setTextAlignment:NSTextAlignmentLeft];
    [sectionTitle addSubview:sectionName];
    [sectionName setBackgroundColor:[UIColor blackColor]];
    
    return sectionTitle;
}

- (UIView *)tableView:(UITableView *)tableView
viewForFooterInSection:(NSInteger)section
{
    UIView *sectionTitle = nil;
    sectionTitle = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 5)];
    [sectionTitle setBackgroundColor:[UIColor blackColor]];
    
    return sectionTitle;
}//идея: заместо футера сделать ячейку высоты 5?

- (CGFloat) tableView:(UITableView *)tableView
heightForHeaderInSection:(NSInteger)section
{
    return 30;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}

/*
- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == 0){
        return [NSString stringWithFormat:@"Purchase"];
    }
    else
        return [NSString stringWithFormat:@"Sale"];
}// fixed font style. use custom view (UILabel) if you want something different
*/

@end
