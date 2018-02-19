//
//  Pessoa.m
//  Banco
//
//  Created by Ada 2018 on 19/02/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "Client.h"

@implementation Client

- (instancetype)initWithName:(NSString*)name withBalance:(int)balance
{
	self = [super init];
	if (self) {
		_name = name;
		_account = [[Account alloc] initWithBalance:balance];
	}
	return self;
}
@end
