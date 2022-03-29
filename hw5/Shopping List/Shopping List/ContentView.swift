//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

class Items: Identifiable {
    let imageName: String
    let itemName: String
    let quantity: Int
    init(imageName: String, itemName: String, quantity: Int) {
        self.imageName = imageName
        self.itemName = itemName
        self.quantity = quantity
    
    }
}
    
struct ContentView: View {
    var list = [
        Items(imageName: "banana", itemName: "Bananas", quantity: 3),
        Items(imageName: "apple", itemName: "Apples", quantity: 4),
        Items(imageName: "eggs", itemName: "Eggs", quantity: 12),
    ]
    
    private var veggies = [
        Items(imageName: "carrot", itemName: "Carrots", quantity: 3),
        Items(imageName: "broccoli", itemName: "Broccoli", quantity: 9),
        Items(imageName: "lettuce", itemName: "Lettuce", quantity: 10),
    ]
    
    private var protein = [
        Items(imageName: "chicken", itemName: "Chicken", quantity: 5),
        Items(imageName: "bacon", itemName: "Bacon", quantity: 8),
        Items(imageName: "beef", itemName: "Beef", quantity: 7),
    ]
    var body: some View {
        NavigationView {
            //List(list) { i in
                //CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity) }.navigationTitle("Shopping List") }
            VStack {
                List {
                    Section(header: Text("Fruits")) {
                        ForEach(list) { i in
                            CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity) }.navigationTitle("Shopping List") }
                List {
                    List {
                        ForEach(veggies) { i in
                            CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity) }
                
                List {
                    Section(header: Text("Fruits")) {
                        ForEach(protein) { i in
                            CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity) }
                
                        }
                    }
                }
            }
        }
    }
}
}
}




    

