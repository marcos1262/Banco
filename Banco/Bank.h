//
//  Caixa.h
//  Banco
//
//  Created by Ada 2018 on 19/02/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"
#import "History.h"

typedef enum {
	_100, _50, _20, _10
} Notes;


@interface Bank : NSObject

@property NSArray<NSNumber*> *notesValues;
@property NSMutableArray<NSNumber*> *notes;
@property Account* account;
@property NSMutableArray<History*> *report;

-(void)startSession:(Account*)account;
-(void)endSession;

-(void)cashout:(int)value withError:(NSError**)error;
-(void)deposit:(int)value;

-(NSString*)getNotesAsString;

@end
