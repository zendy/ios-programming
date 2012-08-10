//
//  BNRItem.h
//  RandomPossessions
//
//  Created by Zendy Wongso on 27/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

/*
{
  NSString *itemName;
  NSString *serialNumber;
  int valueDollars;
  NSDate *dateCreated;


  BNRItem *containedItem;
  __weak BNRItem *container;
}
 */

+ (id)randomItem;

- (id)initWithItemName:(NSString *)name;
- (id)initWithItemName:(NSString *)name valueInDollars:(int)value  serialNumber:(NSString *)sNumber;

/*
- (void)setContainedItem:(BNRItem *) i;
- (BNRItem *)containedItem;

- (void)setContainer:(BNRItem *) i;
- (BNRItem *)container;

- (void) setItemName: (NSString *) str;
- (NSString *) itemName;

- (void) setSerialNumber: (NSString *) str;
- (NSString *) serialNumber;

- (void) setValueInDollars: (int) i;
- (int) valueInDollars;

- (NSDate *) dateCreated;
 */

@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;

//@property (nonatomic, strong) NSString *itemName;
//@property (nonatomic, strong) NSString *serialNumber;
@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;

@end
