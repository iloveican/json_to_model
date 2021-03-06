// Generated by json_to_model

#import "Reply.h"

@implementation Reply  {

}

- (id)initWithJSONDictionary:(NSDictionary *)dictionary {

    self = [super initWithJSONDictionary:dictionary];
    if (self == nil)
        return nil;

    if (self) {
 
        self.replyTo = (dictionary[@"reply_to"] != [NSNull null]) ? [dictionary[@"reply_to"] integerValue] : 0;
 
    }
    return self;
}

- (id)initWithJSONData:(NSData *)data {
    self = [super init];
    if (self) {
        NSError *error = nil;
        id result = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
        if (result) {
            self = [self initWithJSONDictionary:result];
        } else {
            return nil;
        }
    }
    return self;
}

- (NSDictionary *)JSONDictionary {

    NSMutableDictionary *dictionary = (NSMutableDictionary *)[super JSONDictionary];

 
    dictionary[@"reply_to"] = @(self.replyTo);
 
    return dictionary;
}


- (NSData *)JSONData {
    NSError *error = nil;
    NSData *data = [NSJSONSerialization dataWithJSONObject:[self JSONDictionary] options:0 error:&error];
    if (error) {
        @throw error;
    }
    return data;
}


@end