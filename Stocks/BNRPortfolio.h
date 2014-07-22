//
//  BNRPortfolio.h
//  Stocks
//
//  Created by Eric Jorgensen on 7/12/14.
//  Copyright (c) 2014 Eric Jorgensen. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRPortfolio : NSObject

@property (nonatomic, copy) NSMutableDictionary *holdings;

- (float)valueOfPortfolio;
- (void)addStock:(BNRStockHolding *)s;
- (void)removeStock:(NSString *)symbol;

@end
