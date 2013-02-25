//
//  TabBoard.m
//  Test
//
//  Created by jun on 13-2-21.
//  Copyright (c) 2013年 zhenian.com. All rights reserved.
//

#import "TabBoard.h"
#import "DogBoard.h"
#import "BirdBoard.h"
#import "CatBoard.h"

@interface TabBoard ()

@end

@implementation TabBoard
@synthesize tabBar;

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
        [self setTitleString:@"Some"];
        [self showNavigationBarAnimated:NO];
        
        
        self.view.backgroundColor = [UIColor whiteColor];
        cat = [BeeUIStack stack:@"cat" firstBoard:[CatBoard board]];
        bird = [BeeUIStack stack:@"bird" firstBoard:[BirdBoard board]];
        dog = [BeeUIStack stack:@"dog" firstBoard:[DogBoard board]];
        [self append:cat];
        [self append:bird];
        
        [self append:dog];
        
        tabBar = [[BeeUITabBar alloc] initWithFrame:CGRectZero];
        
        [tabBar addTitle:@"DOG" tag:1 signal:@"TestTapDog"];
        [tabBar addTitle:@"CAT" tag:2 signal:@"TestTapCat"];
        [tabBar addTitle:@"BIRD" tag:3 signal:@"TestTapBird"];
        
        [tabBar hilite:1];
        [self present:dog];
        [self.view addSubview:tabBar];
        
	}
	else if ( [signal is:BeeUIBoard.DELETE_VIEWS] )
	{
        tabBar = nil;
	}
	else if ( [signal is:BeeUIBoard.LAYOUT_VIEWS] )
	{
        CGRect frame;
        frame.size.width = self.viewSize.width;
        frame.size.height = 44.0f;
        frame.origin.x = 0.0;
        frame.origin.y = self.view.bounds.size.height - 44.0f;
        tabBar.frame = frame;
	}
}

- (void)handleBeeUITabBar:(BeeUISignal *)signal
{
	[super handleUISignal:signal];
    if([signal is:@"TestTapDog"]){
        [self present:dog];
        [self.view bringSubviewToFront:tabBar];
    }else if([signal is:@"TestTapCat"]){
        [self present:cat];
        [self.view bringSubviewToFront:tabBar];
    }else if([signal is:@"TestTapBird"]){
        [self present:bird];
        [self.view bringSubviewToFront:tabBar];
    }

}

@end
