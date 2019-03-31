//
//  FirstViewController.m
//  Test
//
//  Created by BAZ2019 on 3/29/19.
//  Copyright © 2019 BAZ2019. All rights reserved.
//
#import "FirstViewController.h"
#import "NextViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UIButton *presentNewViewButton;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
- (IBAction)presentNewViewButtonTapped:(id)sender {
    NextViewController *nextViewController = [[NextViewController alloc] initWithNibName:@"NextViewController" bundle:nil];
    [self presentViewController:nextViewController animated:YES completion:nil];
}

@end
