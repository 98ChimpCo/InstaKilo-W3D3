//
//  Photo.h
//  InstaKilo W3D3
//
//  Created by Elham on 3/31/17.
//  Copyright © 2017 Elham. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Shape) {
    Square,
    Circle,
    Triangle
};

typedef NS_ENUM(NSInteger, Color) {
    Orange,
    Pink,
    Blue
};
//typedef enum{
//    Square,
//    Circle,
//    Triangle
//}Shape;
//
//typedef enum{
//    Orange,
//    Blue,
//    Pink
//}Color;

@interface Photo : NSObject

@property (nonatomic) NSString *photoName;

@property (nonatomic) Shape shape;
@property (nonatomic) Color color;

-(instancetype) initWithName:(NSString *)name shape:(Shape)shape andColor:(Color)color;
-(Shape)convertShape:(NSString *)Shape;

@end
