//
//  EOCPerson.h
//  EOCPerson
//
//  Created by 王旭 on 2021/2/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EOCPerson : NSObject
@property (nonatomic, copy, readonly) NSString *firstName;
@property (nonatomic, copy, readonly) NSString *lastName;

- (id)initWithFirstName: (NSString *)firstName lastName: (NSString *)lastName;
@end

NS_ASSUME_NONNULL_END
