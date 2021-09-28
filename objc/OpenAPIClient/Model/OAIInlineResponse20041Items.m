#import "OAIInlineResponse20041Items.h"

@implementation OAIInlineResponse20041Items

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"name": @"name", @"measures": @"measures", @"pantryItem": @"pantryItem", @"aisle": @"aisle", @"cost": @"cost", @"ingredientId": @"ingredientId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"measures", ];
  return [optionalProperties containsObject:propertyName];
}

@end
