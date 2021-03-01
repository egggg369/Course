//
//  EOCPerson.m
//  EOCPerson
//
//  Created by 王旭 on 2021/2/7.
//

#import "EOCPerson.h"

@implementation EOCPerson
- (id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName {
    if ((self = [super init])) {
        _firstName = [firstName copy];
        _lastName = [lastName copy];
    }
    return self;
}
- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %p, \"%@ %@\">", [self class], self, _firstName, _lastName];
}
@end
