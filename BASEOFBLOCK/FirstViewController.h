//
//  FirstViewController.h
//  BASEOFBLOCK
//
//  Created by 叶永长 on 8/19/15.
//  Copyright (c) 2015 YYC. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef  void(^PassValueBlock)(NSString *str);
@interface FirstViewController : UIViewController
@property (nonatomic,copy) PassValueBlock passValueBlock;
-(void)passValue:(PassValueBlock)block;
@end
