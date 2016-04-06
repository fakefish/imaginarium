//
//  ViewController.m
//  Imaginarium
//
//  Created by 王佳裕 on 16/4/5.
//  Copyright © 2016年 fakefish. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[ImageViewController class]]) {
        ImageViewController *ivc = (ImageViewController *)segue.destinationViewController;
        ivc.imageURL = [NSURL URLWithString:
                        [NSString stringWithFormat:@"http://images.apple.com/v/iphone-6/a/images/display/landscape-gallery/landscape_%@_large.jpg", segue.identifier]];
        ivc.title = segue.identifier;
        
    }
}

@end
