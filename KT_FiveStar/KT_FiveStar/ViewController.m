//
//  ViewController.m
//  KT_FiveStar
//
//  Created by Ki on 2018/6/1.
//  Copyright © 2018年 Ki. All rights reserved.
//

#import "ViewController.h"
#import "FiveStarView.h"


@interface ViewController ()
@property (nonatomic,strong)FiveStarView * fiveStarView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.fiveStarView];
}

-(FiveStarView *)fiveStarView{
    if (!_fiveStarView) {
        FiveStarView * fv = [[FiveStarView alloc] initWithFrame:CGRectMake(50, 100, 300, 40) numberOfStars:5];
        fv.scorePercent = 0.3;
        fv.allowIncompleteStar = YES;
        fv.hasAnimation = YES;
        _fiveStarView = fv;
    }
    return _fiveStarView;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
