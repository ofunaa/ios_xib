//
//  xibViewController.m
//  xib2
//
//  Created by takuji funao on 2015/09/24.
//  Copyright (c) 2015年 takuji funao. All rights reserved.
//

#import "xibViewController.h"
#import "ViewController.h"

@interface xibViewController ()

@property (weak, nonatomic) IBOutlet UIButton *segueButton;
@property (weak, nonatomic) IBOutlet UITextView *otherClass;


@end

@implementation xibViewController

@synthesize description;

- (id)init {
    self=[super init];
    if (self) {
        UITextView* left_textview = (UITextView*)[self.view viewWithTag:4];
        description = left_textview.text;
    }
    return self;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITextView* left_textview = (UITextView*)[self.view viewWithTag:4];
    UITextView* right_textview = (UITextView*)[self.view viewWithTag:5];
    
    right_textview.text = left_textview.text;    
    // Do any additional setup after loading the view from its nib.
    
    [_segueButton addTarget:self
               action:@selector(button_Tapped:)
     forControlEvents:UIControlEventTouchUpInside];
}

- (void)button_Tapped:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
//    ViewController *mNextVC;
//    mNextVC = [[ViewController alloc]initWithNibName:@"ViewController" bundle:nil];
//    [self presentViewController:mNextVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
