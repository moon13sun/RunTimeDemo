//
//  ViewController.m
//  RunTimeDemo
//
//  Created by leergou on 16/8/5.
//  Copyright © 2016年 WhiteHouse. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

#define KPath [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject stringByAppendingPathComponent:@"person.data"]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // json 转模型
    NSDictionary *dict = @{
                           @"name":@"小明",
                           @"age":@35,
                           @"height":@165
                           };
    
    
    Person *person = [[Person alloc] initWithDict:dict];
    
    // 对模型进行归档
    
    [NSKeyedArchiver archiveRootObject:person toFile:KPath];
    
    // 从归档中进行读取-解档操作
    Person *person1 = [NSKeyedUnarchiver unarchiveObjectWithFile:KPath];
    
    
    NSLog(@"name = %@,age = %d",person1.name,person1.age);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
