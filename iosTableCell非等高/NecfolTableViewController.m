//
//  NecfolTableViewController.m
//  iosTableCell非等高
//
//  Created by necfol on 2017/8/28.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import "NecfolTableViewController.h"
#import "NecfolStatus.h"
#import "NecfolStatusCell.h"

@interface NecfolTableViewController ()

@property (strong, nonatomic) NSArray *statuses;

@end

@implementation NecfolTableViewController

-(NSArray *)statuses {
    if (_statuses == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"statuses.plist" ofType:nil];
        NSArray *array = [NSArray arrayWithContentsOfFile:path];
        
        NSMutableArray *multableArray = [[NSMutableArray alloc] init];
        for (NSDictionary *dic in array) {
            NecfolStatus *status = [NecfolStatus statusWithDic:dic];
            [multableArray addObject:status];
        }
        _statuses = multableArray;
    }
    return _statuses;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.statuses.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NecfolStatusCell *cell = [NecfolStatusCell cellWithTableView:tableView];
    cell.status = _statuses[indexPath.row];
    return cell;
}
#pragma mark - delegate方法

/**
 返回高度
 */
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 250;
}
@end
