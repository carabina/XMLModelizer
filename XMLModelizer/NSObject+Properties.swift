//
//  NSObject+Properties.swift
//  XMLModelizer
//
//  Created by aoponaopon on 2016/09/22.
//  Copyright © 2016年 aoponapopon. All rights reserved.
//

import Foundation

public extension NSObject {
    
    public class var properties: [String] {
        
        var resultSet: [String] = []
        var count: UInt32 = 0
        let properties = class_copyPropertyList(self, &count)
        
        for i in 0..<Int(count) {
            let propName = String(utf8String: property_getName(properties?[i]))
            resultSet.append(propName!)
        }
        return resultSet
    }
    
}
