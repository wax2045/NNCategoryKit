//
//  UIView+NNUIKit.h
//  Ptaxi
//
//  Created by mac on 17/5/16.
//  Copyright © 2017年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import<Foundation/Foundation.h>

@interface UIView (NNUIKit)

/***************************UILabel*******************************/
/**  文字、颜色、对齐方式、字体大小 label */
+ (UILabel *)createLabelText:(NSString *)text
                   textColor:(UIColor *)textColor
                        font:(CGFloat)font
                textAlignment:(NSTextAlignment)textAlignment;
/**  对其方式、线数 label */
+ (UILabel *)createLabelFrame:(CGRect)frame
                         text:(NSString *)text
                    textColor:(UIColor *)textColor
                textAlignment:(NSTextAlignment)textAlignment
                numberOfLines:(NSInteger)numberOfLines;

/**  有字体颜色 label  */
+ (UILabel *)createLabelFrame:(CGRect)frame
                         text:(NSString *)text
                        color:(UIColor *)textColor;

/****************************UIButton******************************/
/** 文字 */
+ (UIButton *)createButtonTitle:(NSString *)title
                   textColor:(UIColor *)textColor
               textAlignment:(UIControlContentHorizontalAlignment)textAlignment
                        font:(CGFloat)font
               clickComplete:(void(^)(UIButton *button))clickComplete;
/** 文字、图片 */
+ (UIButton *)createButtonTitle:(NSString *)title
                   textColor:(UIColor *)textColor
               textAlignment:(UIControlContentHorizontalAlignment)textAlignment
                   imageName:(NSString *)imageName
                imageContent:(UIViewContentMode)imageContent
                        font:(CGFloat)font
               clickComplete:(void(^)(UIButton *button))clickComplete;
/** 图片  */
+ (UIButton *)createButtonImageName:(NSString *)imageName
                     contentMode:(UIViewContentMode)contentMode
                   clickComplete:(void(^)(UIButton *button))clickComplete;
/** 文字  */
+ (UIButton *)createButtonTitle:(NSString *)title
                   textColor:(UIColor *)textColor
                        font:(CGFloat)font
                      target:(id)target
                      action:(SEL)action;
/** 文字 、图片 */
+ (UIButton *)createButtonTitle:(NSString *)title
                      textColor:(UIColor *)textColor
                      imageName:(NSString *)imageName
                           font:(CGFloat)font
                         target:(id)target
                         action:(SEL)action;

/** frame 、图片  */
+ (UIButton *)createButtonFrame:(CGRect)frame
                      imageName:(NSString *)imageName
                    contentMode:(UIViewContentMode)contentMode
                  clickComplete:(void(^)(UIButton *button))clickComplete;
/** frame、文字  */
+ (UIButton *)createButtonFrame:(CGRect)frame
                          title:(NSString *)title
                    bgImageName:(NSString *)bgImageName
                         target:(id)target
                         action:(SEL)action;

/**
 *  block型Button 设置图片 =》自定义
 */
+ (UIButton *)createButton:(UIButton *)button
                 imageName:(NSString *)imageName
              imageContent:(UIViewContentMode)imageContent
             clickComplete:(void(^)(UIButton *button))clickComplete;
/**
 *  block型Button 设置文字 =》自定义
 */
+ (UIButton *)createButton:(UIButton *)button title:(NSString *)title
                 textColor:(UIColor *)textColor
             textAlignment:(UIControlContentHorizontalAlignment)textAlignment
                      font:(CGFloat)font
             clickComplete:(void(^)(UIButton *button))clickComplete;
/**
 *  block型Button 设置图片文字 =》自定义
 */
+ (UIButton *)createButton:(UIButton *)button title:(NSString *)title
                 textColor:(UIColor *)textColor
             textAlignment:(UIControlContentHorizontalAlignment)textAlignment
                      font:(CGFloat)font
                 imageName:(NSString *)imageName
              imageContent:(UIViewContentMode)imageContent
             clickComplete:(void(^)(UIButton *button))clickComplete;
/****************************UIImageView******************************/
+(UIImageView *)createImageViewImageName:(NSString *)imageName
                             contentMode:(UIViewContentMode)contentMode;
/**  imageView */
+ (UIImageView *)createImageViewFrame:(CGRect)frame
                            imageName:(NSString *)imageName;

/****************************UITextField******************************/
+ (UITextField *)createTextFieldText:(NSString *)text
                           placeholder:(NSString *)placeholder
                                font:(CGFloat)font
                           textColor:(UIColor *)textColor;

+ (UITextField *)createTextFieldText:(NSString *)text
                       textAlignment:(NSTextAlignment)textAlignment
                         placeholder:(NSString *)placeholder
                                font:(CGFloat)font
                           textColor:(UIColor *)textColor;

/****************************TOOL******************************/
- (void)setShadowColor:(UIColor *)color
               opacity:(CGFloat)opacity
                offset:(CGSize)offset;
- (void)setCornerRadius:(CGFloat)cornerRadius;
- (void)setBoarderWidth:(CGFloat)width boarderColor:(UIColor *)color;
@end
