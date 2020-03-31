//
//  GenericDataSource.swift
//  MVVMDemo
//
//  Created by apple on 30/03/20.
//  Copyright © 2020 apple. All rights reserved.
//

import Foundation

class GenericDataSource<T>: NSObject {
    var data:DynamicValue<[T]> = DynamicValue([])
}
