//
//  UIImagePickerController+MyImagePicker.m
//  Photo-album-horizontal-screen
//
//  Created by 毕向北 on 2017/5/18.
//  Copyright © 2017年 MBXB-bifujian. All rights reserved.
//

#import "UIImagePickerController+MyImagePicker.h"

@implementation UIImagePickerController (MyImagePicker)
- (BOOL)shouldAutorotate {
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscape;
}

@end
