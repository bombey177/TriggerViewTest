//
//  TableViewTopCell.m
//  TrigerViewTest
//
//  Created by Oleg Bochkarev on 26.06.16.
//  Copyright © 2016 Oleg Bochkarev. All rights reserved.
//

#import "TableViewTopCell.h"

@interface TableViewTopCell()

@property (weak, nonatomic) IBOutlet UILabel *aboveBelowLabel;
@property (weak, nonatomic) IBOutlet UISwitch *triggerSubSwitch;

@end

@implementation TableViewTopCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configMaxCellForSection:(NSIndexPath *)indexPath{
    self.aboveBelowLabel.text = [NSString stringWithFormat:@"Above"];
    [self.triggerSubSwitch setOn:NO];
}

- (void)configMinCellForSection:(NSIndexPath *)indexPath{
    self.aboveBelowLabel.text = [NSString stringWithFormat:@"Below"];
    [self.triggerSubSwitch setOn:NO];
}

@end
