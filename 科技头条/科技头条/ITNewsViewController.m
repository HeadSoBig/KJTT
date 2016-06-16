//
//  ITNewsViewController.m
//  科技头条
//
//  Created by 王军波 on 16/6/17.
//  Copyright © 2016年 王军波. All rights reserved.
//

#import "ITNewsViewController.h"
#import "ITNews.h"

@interface ITNewsViewController ()

@end

@implementation ITNewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadData];
}

- (void)loadData {
    
    NSString *urlString = @"http://news.coolban.com/Api/Index/news_list/app/2/cat/0/limit/20/time/1464926334/type/0?channel=appstore&uuid=86FE9108-47B0-4052-BD4C-8DB4FB719B5C&net=5&model=iPhone&ver=1.0.5";
    NSURL *url = [NSURL URLWithString:urlString];
    
    [[[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error != nil) {
            NSLog(@"请求错误 %@",error);
            return ;
        }
        
        NSArray *array = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
        //NSLog(@"%@",array);
        
        // 字典转模型
        NSMutableArray *arrayM = [NSMutableArray array];
        
        for (NSDictionary *dict in array) {
            
            ITNews *model = [ITNews new];
            
            [model setValuesForKeysWithDictionary:dict];
            
            [arrayM addObject:model];
        }
        NSLog(@"%@",arrayM);
        
    }]resume];
}

@end
