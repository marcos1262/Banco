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
		_notes = [NSArray arrayWithObjects: [NSNumber numberWithInt:0], [NSNumber numberWithInt:0], [NSNumber numberWithInt:0], [NSNumber numberWithInt:0], nil];
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
// TODO save history
}
-(void)deposit:(int)value{
	_account.balance += value;
}

-(NSString*)getNotesAsString{
	return [NSString stringWithFormat:@"Notes: 100->%@, 50->%@, 20->%@, 10->%@", _notes[_100], _notes[_50], _notes[_20], _notes[_10]];
}

@end
