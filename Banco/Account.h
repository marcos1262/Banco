//
//  Conta.h
//  Banco
//
//  Created by Ada 2018 on 19/02/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Account : NSObject

@property int balance;
@property int cashoutLimit;

- (instancetype)initWithBalance:(int)balance;

@end
