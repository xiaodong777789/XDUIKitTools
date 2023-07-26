//
//  UIImage+DSL.m
//  SCTests
//
//  Created by CYQF on 2022/11/23.
//

#import "UIImage+Util.h"

@implementation UIImage (Util)

+(UIImage *(^)(NSString *))imageNamed{
    return ^(NSString *name){
        return [UIImage imageNamed:name];
    };
}

+(UIImage *(^)(NSData *))imageWithData{
    return ^(NSData *data){
        return [UIImage imageWithData:data];
    };
}

+(UIImage *(^)(NSString *))imageWithContentsOfFile{
    return ^(NSString *path){
        return [UIImage imageWithContentsOfFile:path];
    };
}

+(UIImage *(^)(NSString *))imageWithNameInMainBundle{
    return ^(NSString *name){
        return [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:name ofType:@""]];
    };
}

+ (UIImage *(^)(CGImageRef))imageWithCGImage{
    return ^(CGImageRef cgimg){
        return [UIImage imageWithCGImage:cgimg];
    };
}

+ (UIImage *(^)(CIImage *))imageWithCIImage{
    return ^(CIImage *ciimg){
        return [UIImage imageWithCIImage:ciimg];
    };
}


+ (UIImage *(^)(UIColor *))imageWithColor{
    return ^(UIColor *color){
        return UIImage.imageWithColorAndSize(color,CGSizeMake(1, 1));
    };
}

+ (UIImage *(^)(UIColor *,CGSize))imageWithColorAndSize{
    return ^(UIColor *color,CGSize size){
        CGRect rect = CGRectMake(0, 0, size.width, size.height);
        UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
        [color setFill];
        UIRectFill(rect);
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return image;
    };
}

- (UIImage *(^)(UIColor *))setTintColor{
    return ^(UIColor *color){
        UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0f);
        [color setFill];
        CGRect bounds = CGRectMake(0, 0, self.size.width, self.size.height);
        UIRectFill(bounds);
        [self drawInRect:bounds blendMode:kCGBlendModeDestinationIn alpha:1.0f];
        UIImage *tintedImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        tintedImage = [tintedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        return tintedImage;
    };
}

- (UIImage *(^)(void))fixOrientation{
    return ^(){
        if (self.imageOrientation == UIImageOrientationUp) return self;
        
        CGAffineTransform transform = CGAffineTransformIdentity;
        
        switch (self.imageOrientation) {
            case UIImageOrientationDown:
            case UIImageOrientationDownMirrored:
                transform = CGAffineTransformTranslate(transform, self.size.width, self.size.height);
                transform = CGAffineTransformRotate(transform, M_PI);
                break;
                
            case UIImageOrientationLeft:
            case UIImageOrientationLeftMirrored:
                transform = CGAffineTransformTranslate(transform, self.size.width, 0);
                transform = CGAffineTransformRotate(transform, M_PI_2);
                break;
                
            case UIImageOrientationRight:
            case UIImageOrientationRightMirrored:
                transform = CGAffineTransformTranslate(transform, 0, self.size.height);
                transform = CGAffineTransformRotate(transform, -M_PI_2);
                break;
            case UIImageOrientationUp:
            case UIImageOrientationUpMirrored:
                break;
        }
        
        switch (self.imageOrientation) {
            case UIImageOrientationUpMirrored:
            case UIImageOrientationDownMirrored:
                transform = CGAffineTransformTranslate(transform, self.size.width, 0);
                transform = CGAffineTransformScale(transform, -1, 1);
                break;
                
            case UIImageOrientationLeftMirrored:
            case UIImageOrientationRightMirrored:
                transform = CGAffineTransformTranslate(transform, self.size.height, 0);
                transform = CGAffineTransformScale(transform, -1, 1);
                break;
            case UIImageOrientationUp:
            case UIImageOrientationDown:
            case UIImageOrientationLeft:
            case UIImageOrientationRight:
                break;
        }
        
        // Now we draw the underlying CGImage into a new context, applying the transform
        // calculated above.
        CGContextRef ctx = CGBitmapContextCreate(NULL, self.size.width, self.size.height,
                                                 CGImageGetBitsPerComponent(self.CGImage), 0,
                                                 CGImageGetColorSpace(self.CGImage),
                                                 CGImageGetBitmapInfo(self.CGImage));
        CGContextConcatCTM(ctx, transform);
        switch (self.imageOrientation) {
            case UIImageOrientationLeft:
            case UIImageOrientationLeftMirrored:
            case UIImageOrientationRight:
            case UIImageOrientationRightMirrored:
                // Grr...
                CGContextDrawImage(ctx, CGRectMake(0,0,self.size.height,self.size.width), self.CGImage);
                break;
                
            default:
                CGContextDrawImage(ctx, CGRectMake(0,0,self.size.width,self.size.height), self.CGImage);
                break;
        }
        
        // And now we just create a new UIImage from the drawing context
        CGImageRef cgimg = CGBitmapContextCreateImage(ctx);
        UIImage *img = [UIImage imageWithCGImage:cgimg];
        CGContextRelease(ctx);
        CGImageRelease(cgimg);
        return img;
    };
}


- (UIImage *(^)(CGFloat))setScale{
    return ^(CGFloat scale){
        UIImage *sourceImage = self;
        UIImage *newImage = nil;
        
        CGSize size = CGSizeMake(self.size.width*scale, self.size.height*scale);
        UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
        CGRect thumbnailRect = CGRectZero;
        thumbnailRect.origin = CGPointZero;
        thumbnailRect.size = size;
        [sourceImage drawInRect:thumbnailRect];
        newImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return newImage ;
    };
}

- (UIImage *(^)(UIEdgeInsets))resizableImageWithCapInset{
    return ^(UIEdgeInsets inset){
        return [self resizableImageWithCapInsets:inset resizingMode:UIImageResizingModeStretch];
    };
}

- (UIImage *(^)(UIEdgeInsets, UIImageResizingMode))resizableImageWithCapInsetAndMode{
    return ^(UIEdgeInsets inset, UIImageResizingMode mod){
        return [self resizableImageWithCapInsets:inset resizingMode:mod];
    };
}

@end
