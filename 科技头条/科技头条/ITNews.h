//
//  ITNews.h
//  科技头条
//
//  Created by 王军波 on 16/6/17.
//  Copyright © 2016年 王军波. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ITNews : NSObject

/**
 * 新闻代号
 */
@property (nonatomic, copy) NSString *id;

/**
 * 标题
 */
@property (nonatomic, copy) NSString *title;

/**
 * 简介
 */
@property (nonatomic, copy) NSString *summary;

/**
 * 添加的时间
 */
@property (nonatomic, copy) NSString *addtime;

/**
 * 来自于哪个网站
 */
@property (nonatomic, copy) NSString *sitename;

/**
 * 配图地址
 */
@property (nonatomic, copy) NSString *src_img;

@end
