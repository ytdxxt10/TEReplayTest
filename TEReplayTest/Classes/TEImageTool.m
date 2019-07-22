//
//  TEImageTool.m
//  Pods-TEReplayTest_Example
//
//  Created by offcn_Terry on 2019/7/22.
//

#import "TEImageTool.h"

@implementation TEImageTool

+ (instancetype)shareManager {
    static TEImageTool *imageTool = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        imageTool = [[TEImageTool alloc]init];
    });
    return imageTool;
}

- (UIImage *)bundle_imageNamed:(NSString *)imageName {
    NSString *bundlePath = [[NSBundle bundleForClass:[self class]].resourcePath
                            stringByAppendingPathComponent:@"/TEReplayTest.bundle"];
//    NSLog(@"category --%@",bundlePath);
    NSBundle *resource_bundle = [NSBundle bundleWithPath:bundlePath];
    UIImage *reusltImage = [UIImage imageNamed:imageName
                                      inBundle:resource_bundle
                 compatibleWithTraitCollection:nil];
    return reusltImage;
}
@end
