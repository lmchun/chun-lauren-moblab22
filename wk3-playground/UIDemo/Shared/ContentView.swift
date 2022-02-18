//
//  ContentView.swift
//  Shared
//
//  Created by L Chun on 2/11/22.
//HStack, VStack, ZStack
///

import SwiftUI

let imageArray = [
    
    "rectangle",
    "rhombus",
    "circle",
    "triangle",
    "diamond"
]

struct ContentView: View {
    var body: some View {
        
        //highlight a thing and then command+click to extract as a subview
        VStack{
            //vertical stacking
            
            ForEach(0 ..< imageArray.count){index in
                let item = imageArray[index]
                Image(systemName:item)
                    .resizable()
                    .frame(width:100, height:100)
            //this is using a loop to do the example the behind is the original that does not use the array
                
                
                
        HStack(spacing: 10){
            //horizontal stacking
            //this is the spacing between the two shapes
            Image(systemName: item)
                .resizable()
                .frame(width:100,height:100)
            //using the variable
            
            
//        Image(systemName: "circle")
//            .resizable()
//            .frame(width:100,height:100)
//        Image(systemName: "rectangle")
//            .resizable()
//            .frame(width:100,height:100)
//            Image(systemName: "triangle")
//                .resizable()
//                .frame(width:100,height:100)
//        Text("Hello, world!")
            //.padding()
        }
            }
//            Spacer()
//            //use up as much space as you can and allow the spacing to obey the padding and alignment etc
//            HStack(spacing: 10){
//                //horizontal stacking
//                //this is the spacing between the two shapes
//            Image(systemName: "hexagon")
//                .resizable()
//                .frame(width:100,height:100)
//            Image(systemName: "star")
//                .resizable()
//                .frame(width:100,height:100)
//                Image(systemName: "pentagon")
//                    .resizable()
//                    .frame(width:100,height:100)
    //        Text("Hello, world!")
                //.padding()
            }
    }
  }
//}

struct ContentView_Previews: PreviewProvider {
//IDK WHAT THE FUCK HERE BECAUSE IT IS GOING TO FAST
//    var body: some View{
//        NavigationView{
//            List{
//                For Each(0 ..< imageArray.count){index in
//                    let item = imageArray
//            }
//        }
//
//    }
    
    
    static var previews: some View {
        ContentView()
    }
}


//struct ItemLink: View{
//    var item: String
//    var body: some View {
        //PLACE ANY SUBVIEW EXTRACTIONS IN THINGS LIKE THIS FOR EXAMPLE THE VSTACK WOULD HAVE GONE HERE BUT I DONT KNOW WHERE TF THAT SHORTCUT IS
        
  //  }
    
    
//}
