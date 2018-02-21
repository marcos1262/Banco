//
//  main.m
//  Banco
//
//  Created by Ada 2018 on 19/02/18.
//  Copyright © 2018 Academy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Client.h"
#import "Bank.h"

void initialMenu(void);
void clientMenu(void);
void adminMenu(void);

void inputClient(void);
void inputCashout(void);

int op = -1;
Client *client;
Bank *bank;

void initialMenu(){
	bank = [[Bank alloc] init];
	
	printf("1 - Cliente\n \
		   2 - Admin\n \
		   0 - Sair\n \
		   Escolha: ");
	
	while(true) {
		scanf("%d", &op);
		if (!op) break;
		
		switch (op) {
			case 1:
				clientMenu();
				break;
			case 2:
				adminMenu();
				break;
			default:
				printf("\nDigite uma opção válida: ");
				break;
		}
	}
}

void clientMenu(){
	inputClient();
	
	printf("1 - Saldo\n \
		   2 - Depósito\n \
		   3 - Saque\n \
		   0 - Sair\n \
		   Escolha: ");
	
	while(true) {
		scanf("%d", &op);
		if (!op) break;
		
		switch (op) {
			case 1:
				
				break;
			case 2:
				
				break;
			case 3:
				inputCashout();
				break;
			default:
				printf("\nDigite uma opção válida: ");
				break;
		}
	}
}

void adminMenu(){
	printf("1 - Cédulas\n \
		   2 - Reabastecer\n \
		   3 - Histórico\n \
		   0 - Sair\n \
		   Escolha: ");
}

void inputClient(){
	char name[256];
	int value = 1000;
	
	scanf("%s", name);
	
	client = [[Client alloc] initWithName:[NSString stringWithFormat:@"%s", name] withBalance:value];
	[bank startSession:client.account];
}

void inputCashout(){
	NSError** error = nil;
	
	[bank cashout: withError:<#(NSError *__autoreleasing *)#>]
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
		printf("########### Banco NakeD ###########\n\n");
		
		initialMenu();
		
		printf("See you later!");
    }
    return 0;
}
