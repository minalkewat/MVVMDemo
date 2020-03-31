//
//  CurrencyViewModel.swift
//  MVVMDemo
//
//  Created by apple on 30/03/20.
//  Copyright © 2020 apple. All rights reserved.
//

import Foundation

struct CurrencyViewModel {
    weak var dataSource: GenericDataSource<CurrencyRate>?
    
    init(dataSource: GenericDataSource<CurrencyRate>?) {
        self.dataSource = dataSource
    }
    
    func fetchCurrencies(){
        
    }
}
