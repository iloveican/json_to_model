// Generated by json_to_model

import Foundation

class User : NSObject {

    
    var username : String? = nil
    

    
    var age : Int = 0
    

    
    var registered : Bool = false
    

    
    var email : String? = nil
    


   init(JSONDictionary: NSDictionary) {

 
        if (!(JSONDictionary["username"] is NSNull)) {
            self.username = JSONDictionary["username"] as String?
        }
  
        if (!(JSONDictionary["age"] is NSNull)) {
            self.age = JSONDictionary["age"]!.integerValue
        }
  
        if (!(JSONDictionary["registered"] is NSNull)) {
            self.registered = JSONDictionary["registered"]!.boolValue
        }
  
        if (!(JSONDictionary["email"] is NSNull)) {
            self.email = JSONDictionary["email"] as String?
        }
 
    }

    convenience init?(JSONData: NSData) {
        var error : NSErrorPointer = nil
        var result : NSDictionary? = NSJSONSerialization.JSONObjectWithData(JSONData, options:NSJSONReadingOptions.AllowFragments, error:error) as NSDictionary?
        if (result != nil) {
            self.init(JSONDictionary:result!)
        } else {
            self.init(JSONDictionary:NSMutableDictionary())
            return nil
        }
    }


    func JSONDictionary() -> NSDictionary {


        var dictionary : NSMutableDictionary = NSMutableDictionary()

 
        dictionary["username"] = (self.username != nil) ? self.username : NSNull()
  
        dictionary["age"] = self.age
  
        dictionary["registered"] = self.registered
  
        dictionary["email"] = (self.email != nil) ? self.email : NSNull()
 
        return dictionary;
    }

    func JSONData() -> NSData? {

        var error : NSErrorPointer = nil
        var data : NSData? = NSJSONSerialization.dataWithJSONObject(self.JSONDictionary(), options:nil, error:error)
        if (error != nil) {
            return nil
        }
        return data
    }

}