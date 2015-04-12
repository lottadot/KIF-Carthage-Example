//
//  ExampleAcceptanceTests.m
//  ExampleAcceptanceTests
//
//  Created by Shane Zatezalo on 4/11/15.
//  Copyright (c) 2015 Lottadot LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <KIFFramework/KIF.h>

@interface ExampleAcceptanceTests : KIFTestCase

@end

@implementation ExampleAcceptanceTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    [tester waitForViewWithAccessibilityLabel:@"ExampleLabel"];
}

@end
