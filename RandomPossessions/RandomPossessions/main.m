//
//  main.m
//  RandomPossessions
//
//  Created by Zendy Wongso on 27/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

      //Create a mutable array object, store its address in items variable
      //NSMutableArray *items = [[NSMutableArray alloc] init];

      /*
      for (int i=0; i<10; i++) {
        BNRItem *p = [BNRItem randomItem];
        [items addObject:p];
      }

      for (BNRItem *item in items) {
        NSLog(@"%@", item);
      }
      */

      BNRItem *backpack = [[BNRItem alloc] init];
      [backpack setItemName:@"Backpack"];
      //[items addObject:backpack];

      BNRItem *calculator = [[BNRItem alloc] init];
      [calculator setItemName:@"Calculator"];
      //[items addObject:calculator];

      [backpack setContainedItem:calculator];

      //NSLog(@"Setting items to nil...");
      //items = nil;

      NSLog(@"Container: %@", [calculator container]);

      calculator = nil;

      /*
      //Send the message addObject: to the NSMutableArray pointed to by the variable items, passing a string each time
      [items addObject:@"One"];
      [items addObject:@"Two"];
      [items addObject:@"Three"];

      //Send another message, inserObject:atIndex:, to that same array object
      [items insertObject:@"Zero" atIndex:0];

      //For every item in the array as determined by sending count to items
      for (int i = 0; i < [items count]; i++) {
        //We get the ith object from the array and pass it as an argument to NSLog, which implicitly sends the description message to that object
        NSLog(@"%@", [items objectAtIndex:i]);
      }

      BNRItem *p = [[BNRItem alloc] init];

      NSLog(@"%@", p);

      //This creates a new NSString, "Red Sofa" and gives it to the BNRItem
      [p setItemName:@"Red Sofa"];

      //This creates a new NSString, "A1B2C" and gives it to the BNRItem
      [p setSerialNumber:@"A1B2C"];

      //We send the value 100 to be used as the valueInDollars of this BNRItem
      [p setValueInDollars:100];

      //NSLog(@"%@ %@ %@ %d", [p itemName], [p dateCreated], [p serialNumber], [p valueInDollars]);
      NSLog(@"%@", p);
      */

      /*
      BNRItem *p = [[BNRItem alloc] initWithItemName:@"Red Sofa" valueInDollars:100 serialNumber:@"A1V2C"];

      NSLog("%@", p);
      */

      //Destroy the array pointed to by items
      //items = nil;

    }
    return 0;
}

