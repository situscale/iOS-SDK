//
//  ViewController.m
//  SITUBluetoothSampleOSX
//
//  Created by Gary on 8/14/15.
//  Copyright (c) 2015 SITU. All rights reserved.
//

#import "ViewController.h"

#import "SITUBluetoothScaleController.h"

@interface ViewController () <SITUBluetoothDelegate>

@property (nonatomic, weak) IBOutlet NSTextField *statusTextField;
@property (nonatomic, weak) IBOutlet NSTextField *weightTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.weightTextField setFont:[NSFont systemFontOfSize:40]];
    [self scaleDisconnected];
    [[SITUBluetoothScaleController sharedInstance] scanForDevice:self];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
}

- (void)scaleConnected
{
    [self.statusTextField setStringValue:@"Connected"];
    [self.statusTextField setTextColor:[NSColor colorWithCalibratedRed:0 green:200/256. blue:0 alpha:1]];
}

- (void)scaleDisconnected
{
    [self.statusTextField setStringValue:@"Disconnected"];
    [self.statusTextField setTextColor:[NSColor grayColor]];
    [self.weightTextField setStringValue:@"N/A"];
}

- (void)scaleUnsupported
{
    NSLog(@"This scale is unsupported.");
}

- (void)scaleDidUpdateValue:(int)value
{
    [self.weightTextField setStringValue:[NSString stringWithFormat:@"%i g", value]];
}

@end
