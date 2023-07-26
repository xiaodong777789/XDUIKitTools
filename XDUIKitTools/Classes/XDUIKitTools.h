//
//  Uitls.h
//  SCTests
//
//  Created by CYQF on 2023/3/23.
//

#ifndef Uitls_h
#define Uitls_h

#if defined(__cplusplus)
#define let auto const
#else
#define let __auto_type const
#endif

#if defined(__cplusplus)
#define var auto
#else
#define var __auto_type
#endif

#import "UIView+Util.h"
#import "UIColor+Util.h"
#import "UIImage+Util.h"
#import "UIButton+Uitl.h"
#import "UILabel+Util.h"
#import "UITableView+Util.h"

#import "UIView+DSL.h"
#import "UIButton+DSL.h"
#import "UIControl+DSL.h"
#import "UIImageView+DSL.h"
#import "UILabel+DSL.h"
#import "UITextField+DSL.h"
#import "UITextView+DSL.h"
#import "UIScrollView+DSL.h"
#import "UITableView+DSL.h"
#import "UICollectionView+DSL.h"


#endif /* Uitls_h */
