//
//  TETestViewController.m
//  Pods-TEReplayTest_Example
//
//  Created by offcn_Terry on 2019/7/22.
//

#import "TETestViewController.h"
#import "TEImageTool.h"
@interface TETestViewController ()

@end

@implementation TETestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];

    [self testImage];
}

- (void)testImage {
    NSString *bundlePath = [[NSBundle bundleForClass:[self class]].resourcePath
                            stringByAppendingPathComponent:@"/TEReplayTest.bundle"];
    NSBundle *resource_bundle = [NSBundle bundleWithPath:bundlePath];
    NSLog(@"self class%@ bundlePath%@",[self class],bundlePath);
    UIImage *image = [UIImage imageNamed:@"newplayer_tanchu"
                                inBundle:resource_bundle
           compatibleWithTraitCollection:nil];
    UIImage *resultImage = [[[TEImageTool alloc]init] bundle_imageNamed:@"newplayer_tanchu"];
    
    NSLog(@"--%@",resultImage);
    UIImageView *testImageView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 80, 100, 100)];
    testImageView.image = resultImage;
    [self.view addSubview:testImageView];
    
    UIImageView *rightImageView = [[UIImageView alloc]initWithFrame:CGRectMake(130, 80, 100, 100)];
    rightImageView.image = image;
    [self.view addSubview:rightImageView];
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
