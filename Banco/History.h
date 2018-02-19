//
//  Historico.h
//  Banco
//
//  Created by Ada 2018 on 19/02/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Client.h"

@interface History : NSObject

@property Client *client;
@property int cashoutValue;
@property NSDate *date;

@end
