//
//  Caixa.m
//  Banco
//
//  Created by Ada 2018 on 19/02/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "Bank.h"

@implementation Bank

- (instancetype)init
{
	self = [super init];
	if (self) {
		_notes = {0,0,0,0};
		_report = [[NSMutableArray alloc] init];
	}
	return self;
}

-(void)startSession:(Account *)account{
	_account = account;
}
-(void)endSession{
	_account = nil;
}

-(void)cashout:(int)value withError:(NSError **)error{
	if (_account == nil) {
		*error = [NSError errorWithDomain:@"br.com.academy" code: -1 userInfo:[NSDictionary dictionaryWithObject:@"No session started" forKey:@"msg"]];
		return;
	}
	if (value > _account.cashoutLimit) {
		*error = [NSError errorWithDomain:@"br.com.academy" code: -2 userInfo:[NSDictionary dictionaryWithObject:@"Out of limit" forKey:@"msg"]];
		return;
	}
	if (value > _account.balance) {
		*error = [NSError errorWithDomain:@"br.com.academy" code: -3 userInfo:[NSDictionary dictionaryWithObject:@"Out of balance" forKey:@"msg"]];
		return;
	}
	_account.balance -= value;
	
}
-(void)deposit:(int)value{
	
}

-(NSString*)getNotesAsString{
	
}

@end
