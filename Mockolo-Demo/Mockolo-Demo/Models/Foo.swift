//
//  Foo.swift
//  Mockolo-Demo
//
//  Created by kazunori.aoki on 2021/10/06.
//

import Foundation

/// @mockable
public protocol Foo {
    var num: Int { get set }
    func bar(arg: Float) -> String
}

class FooImpl: Foo {
    var num: Int = 0
    
    func bar(arg: Float) -> String {
        return ""
    }
}
