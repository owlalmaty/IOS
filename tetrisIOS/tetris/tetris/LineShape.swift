//
//  LineShape.swift
//  tetris
//
//  Created by user on 14.11.17.
//  Copyright © 2017 user. All rights reserved.
//

class LineShape: Shape {
    
    /*
     ^- shape indicator
     
     0' & 180'
     
        |0^|
        |1 |
        |2 |
        |3 |
     
     
     90' & 270'
     
     |0 ||1^||2 ||3 |
     
     
     
     */
    
    override var blockRowColumnPositions: [Orientation : Array<(columnDiff: Int, rowDiff: Int)>]{
        
        return [
            Orientation.Zero: [(0,0),(0,1),(0,2),(0,3)],
            Orientation.Ninety: [(-1,0),(0,0),(1,0),(2,0)],
            Orientation.OneEighty: [(0,0),(0,1),(0,2),(0,3)],
            Orientation.TwoSeventy: [(-1,0),(0,0),(1,0),(2,0)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation : Array<Block>]{
        
        return [
            
            Orientation.Zero: [ blocks[FourthBlockIdx]],
            Orientation.Ninety: blocks,
            Orientation.OneEighty: [ blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: blocks
        ]
    }
}
