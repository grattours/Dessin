//
//  ShapeView.swift
//  Dessin
//
//  Created by Luc Derosne on 08/11/2019.
//  Copyright © 2019 Luc Derosne. All rights reserved.
//


import SwiftUI

struct ShapeView: View {
    var body: some View {
        ZStack {
            GeometryReader { geo in
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .stroke(Color.black,lineWidth: 5)
                    .frame(width: geo.size.width, height: geo.size.height)
                ScrollView {
                    VStack {
                        HStack {
                            Star(corners: 5, smoothness: 0.45)
                                .fill(Color.yellow)
                                .frame(width: 200, height: 200)
                            
                            Capsule()
                                .fill(Color.purple)
                                .frame(width: 40, height: 200)
                            
                            Ellipse()
                                .fill(Color.blue)
                                .frame(width: 100, height: 50)
                        }
                        .padding()
                        
                        Triangle()
                            .stroke(Color.green, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                            .frame(width: 200, height: 200)
                        ZStack {
                            Arc(startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
                                .stroke(Color.blue, lineWidth: 10)
                                .frame(width: 350, height: 350)
                                .padding()
                            VStack {
                                HStack {
                                    ZStack {
                                        Arc(startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
                                            .stroke(Color.red, lineWidth: 5)
                                            .frame(width: 20, height: 20)
                                            .padding()
                                        
                                        Arc(startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
                                            .stroke(Color.red, lineWidth: 5)
                                            .frame(width: 70, height: 70)
                                            .padding()
                                        
                                    }
                                    
                                    ZStack {
                                        Arc(startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
                                            .stroke(Color.red, lineWidth: 5)
                                            .frame(width: 20, height: 20)
                                            .padding()
                                        
                                        Arc(startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
                                            .stroke(Color.red, lineWidth: 5)
                                            .frame(width: 70, height: 70)
                                            .padding()
                                        
                                    }
                                }
                                
                                Arc(startAngle: .degrees(90), endAngle: .degrees(260), clockwise: false)
                                    .stroke(Color.pink, lineWidth: 5)
                                    .frame(width: 50, height: 50)
                                    .padding()
                            }
                            
                            
                        }
                        
                    }
                }
            }
        }
        .padding()
    }
}

struct ShapeView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}

