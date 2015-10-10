//
//  UIImage+ZYImage.h
//  WangYiCaiPiao
//
//  Created by JamesZY on 15/10/10.
//  Copyright © 2015年 JamesZY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ZYImage)

// 返回一张没有被渲染的图片
+ (instancetype)imageWithOriginRenderingName:(NSString *)imageName;

@end
