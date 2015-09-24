//
//  ViewController.m
//  xib2
//
//  Created by takuji funao on 2015/09/24.
//  Copyright (c) 2015年 takuji funao. All rights reserved.
//

#import "ViewController.h"
#import "xibViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UITextField *text_field2;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton* button = (UIButton*)[self.view viewWithTag:1];
    
    [button addTarget:self
               action:@selector(button_Tapped:)
     forControlEvents:UIControlEventTouchUpInside];
}

- (void)button_Tapped:(id)sender{
    
    UILabel* name_label = (UILabel*)[self.view viewWithTag:2];
    
    if (_text_field2.text.length > 0 ) {
        name_label.text = _text_field2.text;
    }else{
        name_label.text = @"takuji funao";
    }
    
    xibViewController *mNextVC;
    mNextVC = [[xibViewController alloc]initWithNibName:@"xibViewController" bundle:nil];
    [self presentViewController:mNextVC animated:YES completion:nil];
}

-(BOOL)textFieldShouldReturn:(UITextField*)textField{
    [_text_field2 resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
