//
//  NextController.m
//  LXCardSearch
//
//  Created by zhongzhi on 2017/8/17.
//  Copyright © 2017年 漫漫. All rights reserved.
//

#import "NextController.h"
#import "LXCardSearchView.h"
@interface NextController ()
@property(nonatomic,strong)LXCardSearchView *cardSeachView;
@property(nonatomic,strong)UIView *navView;
@end

@implementation NextController
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor =[UIColor whiteColor];
    
    [self.view addSubview:self.navView];
    
    self.cardSeachView =[[LXCardSearchView alloc]init];
    [self.navView addSubview:self.cardSeachView];
    self.cardSeachView.backgroundColor =[UIColor whiteColor];
    
    self.cardSeachView.sd_layout
    .leftEqualToView(self.navView)
    .rightEqualToView(self.navView)
    .bottomSpaceToView(self.navView, 10)
    .heightIs(31);
    
  
    self.cardSeachView.searchCompleteBlock = ^(NSString *text) {
        NSLog(@"%@",text);
    };
   
    NCWS(weakSelf);
    self.cardSeachView.selectBlock = ^(LxButton *button) {
        UIViewController *vc =[[UIViewController alloc]init];
        vc.view.backgroundColor = LBRandomColor;
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    
    
    self.cardSeachView.returnBlock = ^{
        [weakSelf.navigationController popViewControllerAnimated:YES];
    };
    
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];

}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    [self.cardSeachView resetStatus];
}
-(UIView *)navView{
    if (!_navView) {
        _navView =[[UIView alloc]initWithFrame:CGRectMake(0, 0, Device_Width, 64)];
        _navView.backgroundColor =[UIColor whiteColor];
    }
    return _navView;
}
@end
