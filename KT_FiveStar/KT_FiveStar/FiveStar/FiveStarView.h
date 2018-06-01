//
//  FiveStarView.h
//  KT_FiveStar
//
//  Created by Ki on 2018/6/1.
//  Copyright © 2018年 Ki. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FiveStarView;
@protocol FiveStarViewDelegate <NSObject>
@optional
- (void)starRateView:(FiveStarView *)starRateView scroePercentDidChange:(CGFloat)newScorePercent;
@end


@interface FiveStarView : UIView

@property (nonatomic, assign) CGFloat scorePercent;//得分值，范围为0--1，默认为1
@property (nonatomic, assign) BOOL hasAnimation;//是否允许动画，默认为NO
@property (nonatomic, assign) BOOL allowIncompleteStar;//评分时是否允许不是整星，默认为NO

@property (nonatomic, weak) id<FiveStarViewDelegate>delegate;

- (instancetype)initWithFrame:(CGRect)frame numberOfStars:(NSInteger)numberOfStars;


@end
