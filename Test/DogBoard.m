//
//  DogBoard.m
//  Test
//
//  Created by jun on 13-2-21.
//  Copyright (c) 2013年 zhenian.com. All rights reserved.
//

#import "DogBoard.h"

@interface DogBoard ()

@end

@implementation DogBoard


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
		[self setTitleString:@"DOG"];
		[self showNavigationBarAnimated:YES];
        self.view.backgroundColor = [UIColor blueColor];
		
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
