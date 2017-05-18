//
//  UIImagePickerController+MyImagePicker.h
//  Photo-album-horizontal-screen
//
//  Created by 毕向北 on 2017/5/18.
//  Copyright © 2017年 MBXB-bifujian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImagePickerController (MyImagePicker)
- (BOOL)shouldAutorotate;
- (NSUInteger)supportedInterfaceOrientations;

@end
