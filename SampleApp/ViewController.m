//
//  ViewController.m
//  SampleApp
//
//  Created by 陈碧滔 on 2025/1/18.
//

#import "ViewController.h"

@implementation TestView

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}
- (void)willMoveToSuperview:(nullable UIView *)newSuperview {
    [super willMoveToSuperview:newSuperview];
};
- (void)didMoveToSuperview {
    [super didMoveToSuperview];
};
- (void)willMoveToWindow:(nullable UIWindow *)newWindow {
    [super willMoveToWindow:newWindow];
};
- (void)didMoveToWindow {
    [super didMoveToWindow];
};

@end

@interface ViewController ()

@end

@implementation ViewController

/**
 * init 不执行解决方案，但建议应该顺势而为，初始化方法放到initWithCoder中，用initWithCoder替代 init 方法
 * @see https://time.geekbang.org/course/detail/100025901-90974
 * @see https://segmentfault.com/n/1330000022494782
 */
- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        // 在此处执行初始化操作
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
- (void)viewIsAppearing:(BOOL)animated API_AVAILABLE(ios(13.0), tvos(13.0)) API_UNAVAILABLE(watchos) {
    [super viewIsAppearing:animated];
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    [self.view addSubview:({
//        UILabel *label = [[UILabel alloc] init];
//        label.text = @"hello world";
//        [label sizeToFit];
//        label.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
//        label;
//    })];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    TestView *view2 = [[TestView alloc] init];
    view2.backgroundColor = [UIColor greenColor];
    view2.frame = CGRectMake(150, 150, 150, 150);
    [self.view addSubview:view2];
    
//    UIView *view = [[UIView alloc] init];
//    view.backgroundColor = [UIColor redColor];
//    view.frame = CGRectMake(100, 100, 100, 100);
//    [self.view addSubview:view];
    
}


@end
