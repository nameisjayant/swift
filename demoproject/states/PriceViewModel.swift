//
//  PriceViewModel.swift
//  demoproject
//
//  Created by jayant kumar on 6/17/22.
//

import Foundation

struct Price{
    
    var amount:String
    var description:String
    
}

protocol PriceResquesting : ObservableObject{
    
    var price:Price? {get}
    
    var priceValue:Published<Price?> {get}
    
    var priceProvider:Published<Price?>.Publisher {get}
    
    func fetch()
    
}

class PricingProvider : PriceResquesting{
    
  
    
   @Published private(set) var price:Price?
    
    init(price initValue:Price? = nil){
        self.price = initValue
    }
    
    init(){
        
    }
    
    var priceValue: Published<Price?>{
        return _price
    }
    
    var priceProvider: Published<Price?>.Publisher{
        return $price
    }
    
    
    func fetch() {
        let amount = Int.random(in:42...400)
        self.price = Price(amount:"$\(amount)",description: "avg/night")
    }
    
    
}
