//
//  ViewController.m
//  UITextField
//
//  Created by WeiChaoW on 16/9/20.
//  Copyright © 2016年 WeiChaoW. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建一个文本输入框
    UITextField *textField = [[UITextField alloc]init];
    
    //设置坐标
    textField.frame = CGRectMake(40, 100, self.view.frame.size.width-80, 100);
    
    //设置文本框外观样式
    textField.borderStyle = UITextBorderStyleNone;//没有样式
    textField.borderStyle = UITextBorderStyleLine;//文本输入框的边框是一条黑线
    textField.borderStyle = UITextBorderStyleBezel;//文本输入框的边框是一条棕色
    textField.borderStyle = UITextBorderStyleRoundedRect;//文本输入框的边框是圆角矩形
    
    //设置文本框背景颜色
    textField.backgroundColor = [UIColor greenColor];
    
    //设置提示文字
    textField.placeholder = @"请输入帐号";
    
    //设置字体
    textField.font = [UIFont systemFontOfSize:15];
    
    //设置字体的颜色
    textField.textColor = [UIColor redColor];
    
    //文字内容对其方式
    textField.textAlignment = NSTextAlignmentCenter;//居中对齐
    textField.textAlignment = NSTextAlignmentRight;//右对齐
    textField.textAlignment = NSTextAlignmentLeft;//左对齐
    
    //内容水平对齐方式
    textField.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;//居中
    textField.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;//左对齐
    textField.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;//右对齐
    textField.contentHorizontalAlignment = UIControlContentHorizontalAlignmentFill;//充满
    
    //内容垂直对齐方式
    textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;//居中
    textField.contentHorizontalAlignment = UIControlContentVerticalAlignmentTop;//顶部对齐
    textField.contentHorizontalAlignment = UIControlContentVerticalAlignmentBottom;//底部对齐
    textField.contentHorizontalAlignment = UIControlContentVerticalAlignmentFill;//充满
    
    //开始开始缩小,当文字小到一定地步的时候会不再缩小
    textField.adjustsFontSizeToFitWidth = YES;
    
    //设置最小字号
    textField.minimumFontSize = 10;
    
    //设置首字母是否大小写
    textField.autocapitalizationType = UITextAutocapitalizationTypeNone;//从不大写
    textField.autocapitalizationType = UITextAutocapitalizationTypeWords;//单词首字母大写（以空格为区分）
    textField.autocapitalizationType = UITextAutocapitalizationTypeSentences;//回车时第一个字符大写
    textField.autocapitalizationType = UITextAutocapitalizationTypeAllCharacters;//回车时当前的
    
    //关闭错误纠正(会记录之前输入的内容)
    textField.autocorrectionType = UITextAutocorrectionTypeNo;
    
    //设置对文本加密
    textField.secureTextEntry=YES;
    
    //设置键盘样式
    textField.keyboardType = UIKeyboardTypeURL;
    textField.keyboardType = UIKeyboardTypeTwitter;
    textField.keyboardType = UIKeyboardTypeAlphabet;
    textField.keyboardType = UIKeyboardTypePhonePad;
    textField.keyboardType = UIKeyboardTypeNumberPad;
    textField.keyboardType = UIKeyboardTypeWebSearch;
    textField.keyboardType = UIKeyboardTypeDecimalPad;
    textField.keyboardType = UIKeyboardTypeASCIICapable;
    textField.keyboardType = UIKeyboardTypeEmailAddress;
    textField.keyboardType = UIKeyboardTypeNamePhonePad;
    textField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    textField.keyboardType = UIKeyboardTypeDefault;
    
    //设置键盘风格
    textField.keyboardAppearance = UIKeyboardAppearanceAlert;//提示
    textField.keyboardAppearance = UIKeyboardAppearanceDark;//黑色的
    textField.keyboardAppearance = UIKeyboardAppearanceLight;//亮色的
    textField.keyboardAppearance = UIKeyboardAppearanceDefault;//系统默认
    
    //设置键盘的return键样式
    textField.returnKeyType = UIReturnKeyGo;
    textField.returnKeyType = UIReturnKeyGoogle;
    textField.returnKeyType = UIReturnKeyJoin;
    textField.returnKeyType = UIReturnKeyNext;
    textField.returnKeyType = UIReturnKeyRoute;
    textField.returnKeyType = UIReturnKeySearch;
    textField.returnKeyType = UIReturnKeySend;
    textField.returnKeyType = UIReturnKeyYahoo;
    textField.returnKeyType = UIReturnKeyDone;
    textField.returnKeyType = UIReturnKeyEmergencyCall;
    textField.returnKeyType = UIReturnKeyDefault;
    
    //设置清除按钮模式
    textField.clearButtonMode = UITextFieldViewModeNever;//从不
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;//当编辑的时候
    textField.clearButtonMode = UITextFieldViewModeUnlessEditing;//当不编辑的时候
    textField.clearButtonMode = UITextFieldViewModeAlways;//总是
    
    //再次编辑时是否清空
    textField.clearsOnBeginEditing=YES;
    
    //设置输入框左侧头像
    UIImageView *hadeimage =[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 25, 30)];
    hadeimage.image =[UIImage imageNamed:@"DOVE 10"];
    textField.leftView = hadeimage;
    
    //设置模式
    textField.leftViewMode = UITextFieldViewModeNever;
    textField.leftViewMode = UITextFieldViewModeWhileEditing;
    textField.leftViewMode = UITextFieldViewModeUnlessEditing;
    textField.leftViewMode = UITextFieldViewModeAlways;
    
    [self.view addSubview:textField];
    
    
    
    
    //createMyInputView该方法返回一个UIImageView类型的视图
    UIImageView *myView= [self createMyInputView];
    //让此视图作为键盘的背景视图
    textField.inputView = myView;
    
    //添加附件区域
    UIView *upView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 60)];
    //附件区域的颜色
    upView.backgroundColor=[UIColor grayColor];
    //让upView作为附件区域
    textField.inputAccessoryView = upView;
    
    //在附件区域中添加“确定”按钮
    UIButton *sendButton=[UIButton buttonWithType:UIButtonTypeSystem];
    sendButton.frame=CGRectMake(self.view.frame.size.width-80, 6, 80, 40);
    [sendButton setTitle:@"确定" forState:UIControlStateNormal];
    [upView addSubview:sendButton];
    
    //通知中心
    NSNotificationCenter *center=[NSNotificationCenter defaultCenter];
    //当键盘将要弹起时候执行方法UIKeyboardWillShowNotification
    [center addObserver:self selector:@selector(willShow:) name:UIKeyboardWillShowNotification object:nil];
    //键盘将要收起时执行方法UIKeyboardWillHideNotification
    [center addObserver:self selector:@selector(willHide:) name:UIKeyboardWillHideNotification object:nil];
}

//键盘出现的方法
-(void)willShow:(NSNotification *)notice{
    
    //通知里的内容
    NSDictionary *userInfo = [notice userInfo];
    NSValue *aValue = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
    CGRect keyboardRect = [aValue CGRectValue];
    //键盘的高度
    CGFloat keyBoardHeight = keyboardRect.size.height;
    
    //动画
    [UIView animateWithDuration:0.25 animations:^{
        
    }completion:^(BOOL finished){
    }];
}
//键盘收起的方法
-(void)willHide:(NSNotification *)notice{
    
    //动画
    [UIView animateWithDuration:0.25 animations:^{
        
    }completion:^(BOOL finished){
        
    }];
}



//自定义键盘
-(UIImageView *)createMyInputView{
    
    //创建一个背景ImageView
    UIImageView *inputView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200)];
    //添加背景图片
    inputView.image = [UIImage imageNamed:@"DOVE 1"];
    //打开用户交互
    inputView.userInteractionEnabled = YES;
    //视图的背景色
    inputView.backgroundColor=[UIColor colorWithRed:1 green:1 blue:1 alpha:0.5];
    
    //添加按钮
    NSArray *titleArray=@[@"京",@"津",@"追",@"梦",@"人",@"自",@"定",@"义",@"键",@"盘",@"一",@"二",@"三",@"四",@"五",@"六",@"七",@"八",@"九",@"十",@"取钱",@"红包",@"收"];
    
    //有多少个字就创建多少个按钮
    for(int i = 0; i< titleArray.count; i++)
    {
        //创建按钮
        UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
        //按钮的坐标
        button.frame=CGRectMake(40*(i%10), i/10*40, 40, 40);
        //按钮上显示的文字
        [button setTitle:titleArray[i] forState:UIControlStateNormal];
        //把创建的每一个按钮添加到inputView上
        [inputView addSubview:button];
        //设置按钮的tag值
        button.tag = i+1;
        //给每个按钮添加点击事件
        [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    //返回背景视图
    return inputView;
}

//按钮的点击事件
-(void)btnClick:(UIButton *)button
{
    //在此处做响应的处理
    
}
















//是否可以进入编辑模式
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    return YES;
}
//进入编辑模式
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    
}
//是否可以退出编辑模式
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    
    return YES;
}
//是否可以点击一键清除按钮
- (BOOL)textFieldShouldClear:(UITextField *)textField{
    
    return YES;
}
//键盘上的返回键收起键盘的方法
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    
    return YES;
}
//控制输入框内的字符串长度 代理方法( 增删字符串)
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    //定义一个可变字符串
    NSMutableString *mutableString = [[NSMutableString alloc] initWithString:textField.text];
    //插入一个字符串
    [mutableString insertString:string atIndex:range.location];
    
    //当字符串的长度大于5时不能执行
    if (mutableString.length > 5) {
        
        return NO;
    }
    
    return YES;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
