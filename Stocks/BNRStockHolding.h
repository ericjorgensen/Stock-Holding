//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Eric Jorgensen on 7/8/14.
//  Copyright (c) 2014 Eric Jorgensen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) unsigned int numberOfShares;
@property (nonatomic) NSString *symbol;

- (float)costInDollars; // purchaseSharePrice * numberOfShares
- (float)valueInDollars; // currentSharePrice * numberOfShares;

@end
