//
//  Photo.m
//  InstaKilo W3D3
//
//  Created by Elham on 3/31/17.
//  Copyright © 2017 Elham. All rights reserved.
//

#import "Photo.h"

@implementation Photo

-(instancetype) initWithName:(NSString *)name shape:(Shape *)shape andColor:(Color *)color
{
    if (self = [super init]) {
        self.photoName = name;
        self.shape = shape;
        self.color = color;
    }
    return self;
}

-(Shape)convertShape:(NSString *)Shape
{
    if ([Shape isEqualToString:@"Square"])
    {
        return Square;
    }else if ([Shape isEqualToString:@"Circle"])
    {
        return Circle;
    }
    return Triangle;
}

@end
