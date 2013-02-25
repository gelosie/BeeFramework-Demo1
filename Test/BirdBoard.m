//
//  BirdBoard.m
//  Test
//
//  Created by jun on 13-2-21.
//  Copyright (c) 2013年 zhenian.com. All rights reserved.
//

#import "BirdBoard.h"

@interface BirdBoard ()

@end

@implementation BirdBoard




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
		[self setTitleString:@"Bird"];
		[self showNavigationBarAnimated:YES];
        self.view.backgroundColor = [UIColor redColor];
		
	}
	else if ( [signal is:BeeUIBoard.DELETE_VIEWS] )
	{
	}
	else if ( [signal is:BeeUIBoard.LAYOUT_VIEWS] )
	{
	}
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
