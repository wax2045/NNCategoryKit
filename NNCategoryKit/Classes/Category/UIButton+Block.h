//
//  UIButton+Block.h
//  AMapTaxi
//
//  Created by mac on 17/5/17.
//  Copyright © 2017年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^ActionBlock)(UIButton *button);
@interface UIButton (Block)
- (void) handleControlEvent:(UIControlEvents)controlEvent withBlock:(ActionBlock)action;
@end
