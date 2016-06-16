//
//  ITNews.m
//  科技头条
//
//  Created by 王军波 on 16/6/17.
//  Copyright © 2016年 王军波. All rights reserved.
//

#import "ITNews.h"

@implementation ITNews

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{}

- (NSString *)description {
    return [NSString stringWithFormat:@"{id = %@, title = %@, summary = %@, addtime = %@, sitename = %@, src_img = %@}", _id, _title, _summary, _addtime, _sitename, _src_img];
}

@end
