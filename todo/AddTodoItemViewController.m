//
//  AddTodoItemViewController.m
//  todo
//
//  Created by Developer on 7/1/15.
//  Copyright (c) 2015 Developer. All rights reserved.
//

#import "AddTodoItemViewController.h"

@interface AddTodoItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation AddTodoItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if (sender != self.saveButton) return;
    if (self.textField.text.length > 0) {
        self.todoItem = [[TodoItem alloc] init];
        self.todoItem.itemName = self.textField.text;
        self.todoItem.completed = NO;
    }
}


@end
