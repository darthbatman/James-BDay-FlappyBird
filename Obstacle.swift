//
//  Obstacle.swift
//  FlappyFly
//
//  Created by Rishi Masand on 3/11/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

import Foundation

class Obstacle : CCNode {
    var _topPipe : CCNode!
    var _bottomPipe : CCNode!
    
    let _topPipeMinimumPositionY : CGFloat = 128
    let _bottomPipeMaximumPositionY : CGFloat = 440
    let _pipeDistance : CGFloat = 142
    
    func didLoadFromCCB() {
        _topPipe.physicsBody.sensor = true
        _bottomPipe.physicsBody.sensor = true
    }
    
    func setupRandomPosition() {
        let _randomPrecision : UInt32 = 100
        let random = CGFloat(arc4random_uniform(_randomPrecision)) / CGFloat(_randomPrecision)
        let range = _bottomPipeMaximumPositionY - _pipeDistance - _topPipeMinimumPositionY
        _topPipe.position = ccp(_topPipe.position.x, _topPipeMinimumPositionY + (random * range));
        _bottomPipe.position = ccp(_bottomPipe.position.x, _topPipe.position.y + _pipeDistance);
    }
 
}

