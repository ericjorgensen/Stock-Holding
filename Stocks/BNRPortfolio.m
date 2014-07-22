//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Eric Jorgensen on 7/12/14.
//  Copyright (c) 2014 Eric Jorgensen. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@interface BNRPortfolio ()

{
    NSMutableDictionary *_holdings;
}

@end

@implementation BNRPortfolio

- (void)addStock:(BNRStockHolding *)s
{
    if (!_holdings) {
        _holdings = [[NSMutableDictionary alloc] init];
    }
    
    _holdings[s.symbol] = s;
}

- (void)removeStock:(NSString *)symbol
{
    if (_holdings) {
        [_holdings removeObjectForKey: symbol];
    }
    
}

- (float)valueOfPortfolio
{
    float value = 0.0;
    
    for ( NSString *key in _holdings ){
        BNRStockHolding *s = [_holdings objectForKey:key];
        value += [s valueInDollars];
    }
    
    return value;
}

@end
