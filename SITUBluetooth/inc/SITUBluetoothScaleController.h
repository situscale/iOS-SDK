//
//  SITUBluetoothScaleController.h
//  SITU Bluetooth Library
//
//  Copyright (c) 2015 Michael Grothaus Limited. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>

@protocol SITUBluetoothDelegate;

@protocol SITUBluetoothDelegate <NSObject>

@required

- (void)scaleConnected;
- (void)scaleDisconnected;
- (void)scaleUnsupported;

// the value passed in is in grams.
- (void)scaleDidUpdateValue:(int)value;

@optional

- (void)scaleBTStateUnknown;
- (void)scaleBTStateResetting;
- (void)scaleBTStateUnauthorized;

@end

@interface SITUBluetoothScaleController : NSObject <CBCentralManagerDelegate, CBPeripheralDelegate, CBPeripheralManagerDelegate>

@property (assign, nonatomic, readonly, getter=isScaleConnected) BOOL scaleConnected;

// singleton
+ (id)sharedInstance;

// call this on startup in order to link the scale to the listener
- (void)scanForDevice:(id)observer;

@end
