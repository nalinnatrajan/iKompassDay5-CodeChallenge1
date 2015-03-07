//
//  ViewController.m
//  CodeChallenge1
//
//  Created by Ramlan's MacBook on 7/3/15.
//  Copyright (c) 2015 Ramlan's MacBook. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *valueOneText;
@property (weak, nonatomic) IBOutlet UITextField *valueTwoText;
- (IBAction)calculateButton:(id)sender;
@property (weak, nonatomic) IBOutlet UINavigationItem *answerTitle;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *webButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)calculateButton:(id)sender {
    int valueOne = (int)self.valueOneText.text.intValue;
    int valueTwo = (int)self.valueTwoText.text.intValue;
    int result = valueOne * valueTwo;
    self.answerTitle.title = [NSString stringWithFormat:@"%d", result];
    
    int checkResult = result%5;
    if (checkResult == 0) {
        self.webButton.enabled = TRUE;
    } else {
        self.webButton.enabled = FALSE;
    }
    [self.view endEditing:YES];    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    webViewController *destinationViewController = (webViewController *)segue.destinationViewController;
    destinationViewController.webViewTitle = self.answerTitle.title;
}

@end
