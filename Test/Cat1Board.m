//
//  Cat1Board.m
//  Test
//
//  Created by jun on 13-2-21.
//  Copyright (c) 2013年 zhenian.com. All rights reserved.
//

#import "Cat1Board.h"
#import "TabBoard.h"
@interface Cat1Board ()

@end

@implementation Cat1Board


- (void)load
{
	[super load];
    
}

- (void)unload
{
	[super unload];
}

- (void)handleUISignal_BeeUIBoard:(BeeUISignal *)signal
{
	[super handleUISignal:signal];
	
	if ( [signal is:BeeUIBoard.CREATE_VIEWS] )
	{
		[self setTitleString:@"CAT 1  CAT 1"];
		[self showNavigationBarAnimated:YES];
        self.view.backgroundColor = [UIColor redColor];
		
	}
	else if ( [signal is:BeeUIBoard.DELETE_VIEWS] )
	{
	}
	else if ( [signal is:BeeUIBoard.LAYOUT_VIEWS] )
	{
	}
    
    else if ( [signal is:BeeUIBoard.DID_DISAPPEAR] )
	{
        [[NSNotificationCenter defaultCenter]postNotificationName:HideBarNotification object:self userInfo:@{@"hide":[NSNumber numberWithInt:0]}];
	}
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
