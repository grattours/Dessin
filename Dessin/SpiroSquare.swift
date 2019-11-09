//
//  SpiroSquare.swift
//  Dessin
//
//  Created by Luc Derosne on 08/11/2019.
//  Copyright © 2019 Luc Derosne. All rights reserved.
//

import SwiftUI

struct SpiroSquare: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        let rotations = 5
        let amount = .pi / CGFloat(rotations)
        let transform = CGAffineTransform(rotationAngle: amount)

        for _ in 0 ..< rotations {
            path = path.applying(transform)

            path.addRect(CGRect(x: -rect.width / 2, y: -rect.height / 2, width: rect.width, height: rect.height))
        }

        return path
    }
}
