//
//  AssociatedObjectWrapper.swift
//  BTFoundation
//
//  Created by JeffZhao on 2016/10/13.
//  Copyright © 2016年 JeffZhao. All rights reserved.
//

import Foundation
import ObjectiveC
import JZSwiftWarpper

extension JZStudio where Base: NSObject {
    
    func setAssociatedObject<T>(key: UnsafeRawPointer, value: T, policy: objc_AssociationPolicy = .OBJC_ASSOCIATION_RETAIN_NONATOMIC) {
        objc_setAssociatedObject(self.base, key, value, policy)
    }
    
    @discardableResult
    func getAssociatedObject<T>(key: UnsafeRawPointer, policy: objc_AssociationPolicy = .OBJC_ASSOCIATION_RETAIN_NONATOMIC, initialiser: (() -> T)? = nil) -> T? {
        if let value = objc_getAssociatedObject(self.base, key) as? T {
            return value
        } else if let initialiser = initialiser {
            let value = initialiser()
            setAssociatedObject(key: key, value: value, policy: policy)
            return value
        }
        return nil
    }
    
}

