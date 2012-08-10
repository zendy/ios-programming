//
//  BNRItem.m
//  RandomPossessions
//
//  Created by Zendy Wongso on 27/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+ (id)randomItem
{
  //Create an array of three adjectives
  NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy", @"Rusty", @"Shiny", nil];

  //Create an array of three nouns
  NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear", @"Spork", @"Mac", nil];

  //Get the index of a random adjective/noun from lists 
  //Note: The % operator, called the modulo operator, give you the remainder. So adjectiveIndex is a random number from 0 to 2 inclusive.
  NSInteger adjectiveIndex = rand() % [randomAdjectiveList count];
  NSInteger nounIndex = rand() % [randomNounList count];

  //Note that NSInteger is not an object, but a type definition for "unsigned long"
  NSString *randomName = [NSString stringWithFormat:@"%@ %@", [randomAdjectiveList objectAtIndex:adjectiveIndex], [randomNounList objectAtIndex:nounIndex]];

  int randomValue = rand() % 100;

  NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c", '0' + rand() % 10, '0' + rand() % 26, '0' + rand() % 10, '0' + rand() % 26, '0' + rand() % 10];

  BNRItem *newItem = [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];

  return newItem;
}

- (id) init
{
  return [self initWithItemName:@"Item" valueInDollars:0 serialNumber:@""];
}

- (id) initWithItemName:(NSString *)name
{
  return [self initWithItemName:name valueInDollars:0 serialNumber:@""];
}

- (id) initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
  //Call the superclass' designated initializer
  self = [super init];

  //Give the instance variables initial values
  if (self){
    [self setItemName:name];
    [self setSerialNumber:sNumber];
    [self setValueInDollars:value];
    dateCreated = [[NSDate alloc] init];
  }

  //Return the address of the newly initialized object
  return self;
}

- (void)dealloc
{
  NSLog(@"Destroyed: %@", self);
}


@synthesize itemName;
@synthesize containedItem, container, serialNumber, valueInDollars, dateCreated;

- (void) setContainedItem:(BNRItem *)i
{
  containedItem = i;

  //When given an item to contain, the contained item will be given a pointer to its container
  [i setContainer:self];
}

/*
- (BNRItem *)containedItem
{
  return containedItem;
}

- (void)setContainer:(BNRItem *)i
{
  container = i;
}

- (BNRItem *)container
{
  return container;
}

- (void) setItemName:(NSString *)str
{
  itemName = str;
}

- (NSString *)itemName
{
  return itemName;
}

- (void) setSerialNumber:(NSString *)str
{
  serialNumber = str;
}

- (NSString *)serialNumber
{
  return serialNumber;
}

- (void) setValueInDollars:(int)i
{
  valueDollars = i;
}

- (int)valueInDollars
{
  return valueDollars;
}

- (NSDate *)dateCreated
{
  return dateCreated;
}
 */

- (NSString *)description
{
  NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", itemName, serialNumber, valueDollars, dateCreated];
  
  return descriptionString;
}

@end
