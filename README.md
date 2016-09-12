# XLPopViewDemo
![模拟效果.gif](http://upload-images.jianshu.io/upload_images/1992366-1fdb8cd20221649c.gif?imageMogr2/auto-orient/strip)
***
XLPopView有提供了四种弹出框样式：   
         1、固定提示title、右上角关闭按钮、下面确定按钮，中间提示文字可自定义；   
         2、固定左边gif、右上角关闭按钮，中间提示文字可自定义；   
         3、固定右上角关闭按钮，上面title、中间提示文字可自定义；   
         4、上面title、中间提示文字、下面左右两边按钮可自定义。
             

eg:   
//  第一种弹出框:固定提示title、右上角关闭按钮、下面确定按钮；中间提示文字可自定义   
 +(XLPopView *)popViewWithTipStr:(NSString *)tipStr;   

调用的时候只需这样:   
XLPopView *popView = [XLPopView popViewWithTipStr:@"这里可以自定义提示文字。"];   
[popView showInView:[UIApplication sharedApplication].keyWindow];
