//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by vefa kosova on 17.04.2023.
//

import SwiftUI

//7 struct GridStack<Content: View>: View {
//    let rows: Int
//    let columns: Int
//    @ViewBuilder let content: (Int, Int) -> Content
//
//    var body: some View {
//        VStack {
//            ForEach(0..<rows, id: \.self) { row in
//                HStack {
//                    ForEach(0..<columns, id: \.self) { column in
//                        content(row, column)
//                    }
//                }
//            }
//        }
//    }
//}

//5 struct CapsuleText: View {
//    var text: String
//
//    var body: some View {
//        Text(text)
//            .font(.largeTitle)
//            .padding()
//            .foregroundColor(.white)
//            .background(.blue)
//            .clipShape(Capsule())
//    }
//}


//6 struct Title: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .font(.largeTitle)
//            .foregroundColor(.white)
//            .padding()
//            .background(.blue)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
//    }
//}
//
//extension View {
//    func titleStyle() -> some View {
//        modifier(Title())
//    }
//}

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct ContentView: View {
//2    @State private var useRedText = false
    
//4    var motto1: some View {
//        Text("Draco dormiens")
//    }
//
//    let motto2 = Text("nunquam titillandus")
//
//    @ViewBuilder var spells: some View {
//        Group {
//            Text("Lumos")
//            Text("Obliviate")
//        }
//    }
    
    var body: some View {
        
//1        Button("Hello, world!") {
//            print(type(of: self.body))
//        }
//        .background(.red)
//        .frame(width: 200, height: 200)
        
//1       Text("Hello, world!")
//            .padding()
//            .background(.red)
//            .padding()
//            .background(.blue)
//            .padding()
//            .background(.green)
//            .padding()
//            .background(.yellow)
        
        
//2        Button("Hello, world!") {
//            useRedText.toggle()
//        }
//        .foregroundColor(useRedText ? .red : .blue)
        
//2        if useRedText {
//            Button("Hello, world!") {
//                useRedText.toggle()
//            }
//            .foregroundColor(.red)
//        } else {
//            Button("Hello, world!") {
//                useRedText.toggle()
//            }
//            .foregroundColor(.blue)
//        }
        
        
//3        VStack {
//            Text("Gryffindor")
//                .font(.largeTitle)
//                .blur(radius: 10)
//            Text("Hufflepuss")
//            Text("Ravenclaw")
//            Text("Slytherin")
//        }
//        .font(.title)
//        .blur(radius: 5)
        
        
//4            HStack {
//                spells
//            }
        
        
//5        VStack(spacing: 10) {
//            CapsuleText(text: "First")
//                .foregroundColor(.white)
//            CapsuleText(text: "Second")
//                .foregroundColor(.yellow)
//        }
        
        
//6        Text("Hello, world!")
//            .modifier(Title())
//            .titleStyle()
        
        Color.blue
            .frame(width: 300, height: 200)
            .watermarked(with: "Hacking with Swift")
        
        
//7        GridStack(rows: 4, columns: 4) { row, col in
//                Image(systemName: "\(row * 4 + col).circle")
//                Text("R\(row) C\(col)")
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
