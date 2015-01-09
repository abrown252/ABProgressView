//
//  UIView+ProgressIndicator.m
//  INTRO
//
//  Created by Alex Brown on 03/05/2014.
//  Copyright (c) 2014 TheAppStudio360. All rights reserved.
//

#import "UIView+ProgressIndicator.h"

@implementation UIView (ProgressIndicator)

UIView * progressIndicatorView;
UIActivityIndicatorView * progressIndicator;

- (void)addProgressIndicatorView {
    CGRect viewFrame = self.frame;
    progressIndicatorView = [[UIView alloc] initWithFrame:viewFrame];
    progressIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    [progressIndicatorView setHidden:YES];
    [progressIndicator setHidden:YES];
    CGRect progressIndicatorViewRect = progressIndicatorView.frame;
    [progressIndicatorView addSubview:progressIndicator];
    [progressIndicator setCenter:CGPointMake(viewFrame.size.width /2,
                                                  viewFrame.size.height /2)];
    [progressIndicatorView setFrame:CGRectMake((viewFrame.origin.x /2),
                                                    viewFrame.origin.y /2, progressIndicatorViewRect.size.width,
                                                    progressIndicatorViewRect.size.height)];
    [progressIndicatorView setBackgroundColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:0.6]];
    [self addSubview:progressIndicatorView];
}

-(void)setProgressIndicator:(UIActivityIndicatorView *)progressIndicator {
    progressIndicator = progressIndicator;
}

- (void)setShouldDisplayProgressIndicator:(BOOL)shouldShow {
    if(!progressIndicatorView) {
        [self addProgressIndicatorView];
    }
    [progressIndicator startAnimating];
    [progressIndicator setHidden:!shouldShow];
    [progressIndicatorView setHidden:!shouldShow];
}

@end
