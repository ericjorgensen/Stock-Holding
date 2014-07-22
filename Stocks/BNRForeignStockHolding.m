//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by Eric Jorgensen on 7/9/14.
//  Copyright (c) 2014 Eric Jorgensen. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float)costInDollars
{
    return self.purchaseSharePrice * self.numberOfShares * self.conversionRate;
}

- (float)valueInDollars
{
    return self.currentSharePrice * self.numberOfShares * self.conversionRate;
}

@end
