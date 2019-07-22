//
//  TETestViewController.m
//  Pods-TEReplayTest_Example
//
//  Created by offcn_Terry on 2019/7/22.
//

#import "TETestViewController.h"

@interface TETestViewController ()

@end

@implementation TETestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];

    [self testImage];
}

- (void)testImage {
    NSString *bundlePath = [[NSBundle bundleForClass:[self class]].resourcePath
                            stringByAppendingPathComponent:@"/TEReplayTest.bundle"];
    NSBundle *resource_bundle = [NSBundle bundleWithPath:bundlePath];
    UIImage *image = [UIImage imageNamed:@"newplayer_tanchu"
                                inBundle:resource_bundle
           compatibleWithTraitCollection:nil];
    UIImageView *testImageView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 80, 100, 100)];
    testImageView.image = image;
    [self.view addSubview:testImageView];
    
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
