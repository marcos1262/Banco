//
//  Conta.m
//  Banco
//
//  Created by Ada 2018 on 19/02/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "Account.h"

@implementation Account

- (instancetype)initWithBalance:(int)balance
{
	self = [super init];
	if (self) {
		_balance = balance;
	}
	return self;
}
@end
