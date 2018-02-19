//
//  Pessoa.h
//  Banco
//
//  Created by Ada 2018 on 19/02/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"

@interface Client : NSObject

@property NSString *name;
@property Account *account;

- (instancetype)initWithName:(NSString*)name withBalance:(int)balance;

@end
