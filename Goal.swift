//
//  Goal.swift
//  FlappyFly
//
//  Created by Rishi Masand on 3/13/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

import Foundation

class Goal: CCNode {
    func didLoadFromCCB() {
        self.physicsBody.sensor = true
    }
}