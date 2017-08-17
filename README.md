# LXCardSearch

![image][https://github.com/liuxinixn/LXCardSearch/blob/master/searchBar.gif]

使用方法
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
