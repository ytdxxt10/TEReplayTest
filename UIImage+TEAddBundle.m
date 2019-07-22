//
//  UIImage+TEAddBundle.m
//  Pods-TEReplayTest_Example
//
//  Created by offcn_Terry on 2019/7/22.
//

#import "UIImage+TEAddBundle.h"

@implementation UIImage (TEAddBundle)

- (UIImage *)bundle_imageNamed:(NSString *)imageName {
    NSString *bundlePath = [[NSBundle bundleForClass:[self class]].resourcePath
                            stringByAppendingPathComponent:@"/TEReplayTest.bundle"];
    NSBundle *resource_bundle = [NSBundle bundleWithPath:bundlePath];
    UIImage *reusltImage = [UIImage imageNamed:imageName
                                inBundle:resource_bundle
           compatibleWithTraitCollection:nil];
    return reusltImage;
}
@end
