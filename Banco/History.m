//
//  Historico.m
//  Banco
//
//  Created by Ada 2018 on 19/02/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "History.h"

@implementation History

- (instancetype)initWithClient:(Client*)client withValue:(int)value
{
	self = [super init];
	if (self) {
		_client = client;
		_cashoutValue = value;
		_date = [NSDate date];
	}
	return self;
}

@end
