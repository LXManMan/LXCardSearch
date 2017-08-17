//
//  UIColor+NCColor.m
//  NatureCard
//
//  Created by zhongzhi on 2017/7/4.
//  Copyright © 2017年 zhongzhi. All rights reserved.
//

#import "UIColor+NCColor.h"

@implementation UIColor (NCColor)
+(UIColor *)mainColor{
    return [UIColor hexStringToColor:@"#FF9B41"];
}
+(UIColor *)tabbarNoSelectColor{
    return [UIColor hexStringToColor:@"#c8c8c8"];
}
+(UIColor *)navTitleColor{
    return [UIColor hexStringToColor:@"#ffffff"];
}
+(UIColor *)separateColor{
    return [UIColor hexStringToColor:@"#ececec"];
}
+(UIColor *)tableviewBackColor{
    return [UIColor hexStringToColor:@"#F0EFF5"];
}

@end
