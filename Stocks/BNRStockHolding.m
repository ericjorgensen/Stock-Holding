//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Eric Jorgensen on 7/8/14.
//  Copyright (c) 2014 Eric Jorgensen. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding


- (float)costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}

-(float)valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}

@end
