//
//  main.m
//  Stocks
//
//  Created by Eric Jorgensen on 7/8/14.
//  Copyright (c) 2014 Eric Jorgensen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPortfolio.h"
#import "BNRForeignStockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BNRPortfolio *portfolio = [[BNRPortfolio alloc] init];
        
        for ( int i = 1; i < 10; i++ ) {
            BNRStockHolding *stock = [[BNRStockHolding alloc] init];
            stock.purchaseSharePrice = i * 5.25;
            stock.currentSharePrice = i * 2.50;
            stock.numberOfShares = i;
            NSString *symbolAddition = [NSString stringWithFormat:@"%i", i];
            NSString *symbol = [@"ABC" stringByAppendingString:symbolAddition];
            stock.symbol = symbol;
            
            [portfolio addStock: stock];
        }
        
        NSLog(@"The value of this portfolio is: $%.2f", portfolio.valueOfPortfolio);
        
        [portfolio removeStock: @"ABC9"];
        
        NSLog(@"The value of this portfolio is: $%.2f", portfolio.valueOfPortfolio);
    }
    return 0;
}

