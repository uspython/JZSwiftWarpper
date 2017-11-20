//
//  JZSwiftWarpper.swift
//  JZSwiftWarpper
//
//  Created by Jeff Zhao on 2017/10/11.
//  Copyright © 2017年 JZ Studio. All rights reserved.
//

public struct JZStudio<Base> {
    public let base: Base
    
    public init(_ base: Base) {
        self.base = base
    }
}

public protocol JZStudioCompatible {
    
    associatedtype JZStudioCompatibleType
    
    static var jz: JZStudio<JZStudioCompatibleType>.Type { get set }
    
    var jz: JZStudio<JZStudioCompatibleType> { get set }
}

extension JZStudioCompatible {
    /// Reactive extensions.
    public static var jz: JZStudio<Self>.Type {
        get {
            return JZStudio<Self>.self
        }
        set {
            // this enables using Reactive to "mutate" base type
        }
    }
    
    /// Reactive extensions.
    public var jz: JZStudio<Self> {
        get {
            return JZStudio(self)
        }
        set {
            // this enables using Reactive to "mutate" base object
        }
    }
}

import class Foundation.NSObject

extension NSObject: JZStudioCompatible { }
