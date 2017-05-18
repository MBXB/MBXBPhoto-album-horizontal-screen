//
//  ViewController.m
//  Photo-album-horizontal-screen
//
//  Created by 毕向北 on 2017/5/18.
//  Copyright © 2017年 MBXB-bifujian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UINavigationControllerDelegate,UIImagePickerControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *clickBtn = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-50, self.view.frame.size.height/2-50, 100, 100)];
    clickBtn.backgroundColor = [UIColor orangeColor];
    [clickBtn setTitle:@"进入相册" forState:UIControlStateNormal];
    [self.view addSubview:clickBtn];
    [clickBtn addTarget:self action:@selector(showPhotoLibrary) forControlEvents:UIControlEventTouchUpInside];
}
//点击展示相册
- (void)showPhotoLibrary{
    [self showImagePicker:UIImagePickerControllerSourceTypePhotoLibrary];
}


- (void)showImagePicker:(UIImagePickerControllerSourceType)type{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"changeDirection" object:@"1"];
    UIImagePickerController *myPicker = [[UIImagePickerController alloc] init];
    myPicker.delegate = self;
    myPicker.sourceType = type;
    myPicker.allowsEditing = YES;
    [self presentViewController:myPicker animated:YES completion:nil];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
