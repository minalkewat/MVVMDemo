//
//  CurrencyClass.swift
//  MVVMDemo
//
//  Created by apple on 30/03/20.
//  Copyright © 2020 apple. All rights reserved.
//

import Foundation

struct CurrencyRate {
    let currencyIso: String
    let rate: Double
}

struct Converter {
    let base: String
    let date: String
    let rates:[CurrencyRate]
}
