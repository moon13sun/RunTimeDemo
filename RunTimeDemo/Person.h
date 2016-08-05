//
//  Person.h
//  RunTimeDemo
//
//  Created by leergou on 16/8/5.
//  Copyright © 2016年 WhiteHouse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic,copy) NSString *name;

@property (nonatomic,assign) int age;

@property (nonatomic,assign) int weight;

- (instancetype)initWithDict:(NSDictionary *)dict;

@end
