//
//  ContentView.swift
//  Dessin
//
//  Created by Luc Derosne on 08/11/2019.
//  Copyright © 2019 Luc Derosne. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
        }
        .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//struct ContentView: View {
//
//    var body: some View {
//        //Triangle()
//        Arc()
////        Path { path in
////            path.move(to: CGPoint(x: 200, y: 100))
////            path.addLine(to: CGPoint(x: 100, y: 300))
////            path.addLine(to: CGPoint(x: 300, y: 300))
////            path.addLine(to: CGPoint(x: 200, y: 100))
////            path.addLine(to: CGPoint(x: 100, y: 300))
////        }
////
////        .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
////
//    }
//}

