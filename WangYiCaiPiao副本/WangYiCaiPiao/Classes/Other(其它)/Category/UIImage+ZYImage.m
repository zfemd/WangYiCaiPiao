//
//  UIImage+ZYImage.m
//  WangYiCaiPiao
//
//  Created by JamesZY on 15/10/10.
//  Copyright © 2015年 JamesZY. All rights reserved.
//

#import "UIImage+ZYImage.h"

@implementation UIImage (ZYImage)

+ (instancetype)imageWithOriginRenderingName:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end
