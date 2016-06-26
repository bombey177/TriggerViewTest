//
//  TableViewBottomCell.m
//  TrigerViewTest
//
//  Created by Oleg Bochkarev on 26.06.16.
//  Copyright © 2016 Oleg Bochkarev. All rights reserved.
//

#import "TableViewBottomCell.h"

@interface TableViewBottomCell()

@property (weak, nonatomic) IBOutlet UILabel *triggerPriceLabel;

@end

@implementation TableViewBottomCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configMaxCellForSection:(NSIndexPath *)indexPath{
    self.triggerPriceLabel.text = [NSString stringWithFormat:@"55.75"];
}

- (void)configMinCellForSection:(NSIndexPath *)indexPath{
    self.triggerPriceLabel.text = [NSString stringWithFormat:@"51.75"];
}

@end
