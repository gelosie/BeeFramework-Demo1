//
//  TabBoard.h
//  Test
//
//  Created by jun on 13-2-21.
//  Copyright (c) 2013年 zhenian.com. All rights reserved.
//

#import "Bee_UIBoard.h"

extern NSString *HideBarNotification;

@interface TabBoard : BeeUIStackGroup
{
    BeeUIStack *dog;
    BeeUIStack *cat;
    BeeUIStack *bird;
}
@property(nonatomic,strong)BeeUITabBar *tabBar;

@end
