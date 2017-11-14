//
//  TShape.swift
//  tetris
//
//  Created by user on 14.11.17.
//  Copyright © 2017 user. All rights reserved.
//

class TShape: Shape {
    
    /*
     ^- shape indicator
     
      ^ |0|
     |1||2||3|
     
     
     90'
     
    ^|1|
     |2||0|
     |3|
     
     180'
      ^
     |1||2||3|
        |0|
     
     270'
     
      ^ |1|
     |0||2|
        |3|
     
     */
    
    override var blockRowColumnPositions: [Orientation : Array<(columnDiff: Int, rowDiff: Int)>]{
        
        return [
            Orientation.Zero: [(1,0),(0,1),(1,1),(2,1)],
            Orientation.Ninety: [(2,1),(1,0),(1,1),(1,2)],
            Orientation.OneEighty: [(1,2),(0,1),(1,1),(2,1)],
            Orientation.TwoSeventy: [(0,1),(1,0),(1,1),(1,2)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation : Array<Block>]{
        
        return [
            
            Orientation.Zero: [blocks[SecondBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety: [blocks[FirstBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty: [blocks[FirstBlockIdx], blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[FirstBlockIdx], blocks[FourthBlockIdx]]
        ]
    }
}
