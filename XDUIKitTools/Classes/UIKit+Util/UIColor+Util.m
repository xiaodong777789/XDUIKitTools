//
//  UIColor+Util.m
//  SCTests
//
//  Created by CYQF on 2023/1/12.
//

#import "UIColor+Util.h"

@implementation UIColor (Util)

- (UIColor *(^)(CGFloat))alpha{
    return ^(CGFloat alpha){
        return [self colorWithAlphaComponent:alpha];
    };
}

+ (UIColor *)randomColor{
    return [UIColor  colorWithRed:(arc4random_uniform(255))/255.0
                            green:(arc4random_uniform(255))/255.0
                             blue:(arc4random_uniform(255))/255.0
                            alpha:1];
}

+ (UIColor *(^)(NSInteger))colorWithHexRGB{
    return ^(NSInteger hex){
        return UIColor.colorWithHexRGBA(hex,1);
    };
}

+ (UIColor *(^)(NSInteger, CGFloat))colorWithHexRGBA{
    return ^(NSInteger hex,CGFloat a){
        return [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0
                               green:((float)((hex & 0xFF00) >> 8))/255.0
                                blue:((float)(hex & 0xFF))/255.0 alpha:(a)];
    };
}

- (UIImage *)toImage{
    return self.toImageWithSize(CGSizeMake(1, 1));
}

- (UIImage *(^)(CGSize))toImageWithSize{
    return ^(CGSize size){
        CGRect rect = CGRectMake(0, 0, size.width, size.height);
        UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
        [self setFill];
        UIRectFill(rect);
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return image;
    };
}

+ (UIColor *(^)(CGSize, GradientColorDirection, UIColor *, UIColor *))gradientColorWithSizeDirectionStartColorAndEndColor{
    return ^(CGSize size, GradientColorDirection direction, UIColor *startcolor, UIColor *endColor){
        
        if (CGSizeEqualToSize(size, CGSizeZero) || !startcolor || !endColor) {
            return UIColor.clearColor;
        }
        
        CAGradientLayer *gradientLayer = [CAGradientLayer layer];
        gradientLayer.frame = CGRectMake(0, 0, size.width, size.height);
        
        CGPoint startPoint = CGPointMake(0.0, 0.0);
        if (direction == GradientColorDirectionUpwardDiagonalLine) {
            startPoint = CGPointMake(0.0, 1.0);
        }
        
        CGPoint endPoint = CGPointMake(0.0, 0.0);
        switch (direction) {
            case GradientColorDirectionVertical:
                endPoint = CGPointMake(0.0, 1.0);
                break;
            case GradientColorDirectionDownDiagonalLine:
                endPoint = CGPointMake(1.0, 1.0);
                break;
            case GradientColorDirectionUpwardDiagonalLine:
                endPoint = CGPointMake(1.0, 0.0);
                break;
            default:
                endPoint = CGPointMake(1.0, 0.0);
                break;
        }
        gradientLayer.startPoint = startPoint;
        gradientLayer.endPoint = endPoint;
        
        gradientLayer.colors = @[(__bridge id)startcolor.CGColor, (__bridge id)endColor.CGColor];
        UIGraphicsBeginImageContext(size);
        [gradientLayer renderInContext:UIGraphicsGetCurrentContext()];
        UIImage*image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        return [UIColor colorWithPatternImage:image];
    };
}


@end
