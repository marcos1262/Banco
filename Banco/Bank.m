//
//  Caixa.m
//  Banco
//
//  Created by Ada 2018 on 19/02/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "Bank.h"

@interface Bank ()

-(NSMutableArray*)chooseNotesMethod1:(int)value withError:(NSError**)error;
-(NSMutableArray*)chooseNotesMethod2:(int)value withError:(NSError**)error;

@end


@implementation Bank

- (instancetype)init
{
	self = [super init];
	if (self) {
		_notesValues = [NSMutableArray arrayWithObjects: [NSNumber numberWithInt:100], [NSNumber numberWithInt:50], [NSNumber numberWithInt:20], [NSNumber numberWithInt:10], nil];
		_notes = [NSMutableArray arrayWithObjects: [NSNumber numberWithInt:0], [NSNumber numberWithInt:0], [NSNumber numberWithInt:0], [NSNumber numberWithInt:0], nil];
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
	
	NSMutableArray *chosenNotes1 = [self chooseNotesMethod1:value withError:error];
	if (error) {
		
	}
	
	NSMutableArray *chosenNotes2 = [self chooseNotesMethod2:value withError:error];
	if (error) {
		
	}
	
	_account.balance -= value;
// TODO save history
}
-(void)deposit:(int)value{
	_account.balance += value;
}

-(NSString*)getNotesAsString{
	return [NSString stringWithFormat:@"Notes: %@ of 100$, %@ of 50$, %@ of 20$, %@ of 10$", _notes[_100], _notes[_50], _notes[_20], _notes[_10]];
}


-(NSMutableArray*)chooseNotesMethod1:(int)value withError:(NSError**)error{
	NSMutableArray* tmpNotes = [_notes copy];
	
	for(NSNumber* note in tmpNotes){
		
	}
}

-(NSMutableArray*)chooseNotesMethod2:(int)value withError:(NSError**)error{
	NSMutableArray* tmpNotes = [_notes copy];
	
	
}

@end
