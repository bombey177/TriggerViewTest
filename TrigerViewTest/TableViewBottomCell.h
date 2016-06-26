//
//  TableViewBottomCell.h
//  TrigerViewTest
//
//  Created by Oleg Bochkarev on 26.06.16.
//  Copyright © 2016 Oleg Bochkarev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewBottomCell : UITableViewCell

- (void)configMaxCellForSection:(NSIndexPath *)indexPath;

- (void)configMinCellForSection:(NSIndexPath *)indexPath;

@end
