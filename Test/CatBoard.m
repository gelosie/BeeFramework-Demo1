//
//  CatBoard.m
//  Test
//
//  Created by jun on 13-2-21.
//  Copyright (c) 2013年 zhenian.com. All rights reserved.
//

#import "CatBoard.h"
#import "Cat1Board.h"
#import "TabBoard.h"

@interface CatBoard ()

@end

@implementation CatBoard

DEF_SIGNAL(GO)

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
		[self setTitleString:@"Cat"];
		[self showNavigationBarAnimated:YES];
        self.view.backgroundColor = [UIColor greenColor];
		
        _button1 = [[BeeUIButton alloc] initWithFrame:CGRectZero];
		_button1.backgroundColor = [UIColor blackColor];
		_button1.titleLabel.font = [UIFont boldSystemFontOfSize:12.0f];
		_button1.stateNormal.title = @"Go To Cat 1.";
		_button1.stateNormal.titleColor = [UIColor whiteColor];
		[_button1 addSignal:CatBoard.GO forControlEvents:UIControlEventTouchUpInside];
		[self.view addSubview:_button1];
	}
	else if ( [signal is:BeeUIBoard.DELETE_VIEWS] )
	{
	}
	else if ( [signal is:BeeUIBoard.LAYOUT_VIEWS] )
	{
        CGRect buttonFrame;
		buttonFrame.size.width = (self.viewSize.width - 30.0f) / 2.0f;
		buttonFrame.size.height = 44.0f;
		buttonFrame.origin.x = 100.0f;
		buttonFrame.origin.y = 100.0f;
		
		_button1.frame = buttonFrame;
	}
}

- (void)handleUISignal_CatBoard:(BeeUISignal *)signal
{
	if ( [signal is:CatBoard.GO] )
	{
		Cat1Board * board = [[Cat1Board alloc] init];
		[self.stack pushBoard:board animated:YES];
        [[NSNotificationCenter defaultCenter]postNotificationName:HideBarNotification object:self userInfo:@{@"hide":[NSNumber numberWithInt:1]}];
	}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
