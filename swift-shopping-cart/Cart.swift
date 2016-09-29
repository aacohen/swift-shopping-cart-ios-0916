//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    
    var items: [Item] = []
   
    //1. return total cost of all items in array
    func totalPriceInCents() ->Int {
        var totalPrice = 0
        for item in items {
            totalPrice += item.priceInCents
        }
        return totalPrice
    }
    
    //2. add the argument to the array
    func add(item:Item) {
        items.append(item)
    }
    //3. remove item from array that matches the argument
    func remove(item: Item) {
        for (index, value) in items.enumerated() {
            
            if item == value {
            items.remove(at: index)
            }
        }
    }
    
    //4. collect all items in items property array whose name matches the submitted string argument.
    
    func items(withName:String) -> [Item] {
        var itemsWithNameArray: [Item] = []
            for item in items {
                if withName == item.name {
                    itemsWithNameArray.append(item)
                }
        }
        return itemsWithNameArray
    }
    
    //5. collect all of the items in items property array whose priceincents property is less than or equal to th esubmitted integer argument.
    func items(withMinPrice: Int) -> [Item] {
        var itemsWithLowerPrice: [Item] = []
        for item in items {
            if item.priceInCents >= withMinPrice {
                itemsWithLowerPrice.append(item)
            }
        }
        return itemsWithLowerPrice
    }
    
    //6. collect all the items in items property array whose priceInCentes property is less than or equal to the submitted integer argument.
    func items(withMaxPrice: Int) -> [Item] {
        var itemsWithHigherPrice: [Item] = []
        for item in items {
            if item.priceInCents <= withMaxPrice {
                itemsWithHigherPrice.append(item)
            }
        }
        return itemsWithHigherPrice
    }
    
}
