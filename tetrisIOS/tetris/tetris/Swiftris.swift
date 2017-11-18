//
//  Swiftris.swift
//  tetris
//
//  Created by user on 18.11.17.
//  Copyright © 2017 user. All rights reserved.
//

let NumColumns = 10
let NumRows = 20

let StartingColumn = 4
let SrartingRow = 0

let PreviewColumn = 12
let PreviewRow = 1

class Swiftris {
    
    var blockArray: Array2D<Block>
    var nextShape: Shape?
    var fallingShape: Shape?
    
    init(){
        fallingShape = nil
        nextShape = nil
        blockArray = Array2D<Block>(columns: NumColumns, rows: NumRows)
        
    }
    
    func beginGame() {
        if (nextShape == nil) {
            nextShape = Shape.random( startingColumn: PreviewColumn, startingRow: PreviewRow)
        }
    }
    
    func newShape() -> (fallingShape: Shape? , nextShape:Shape?){
        
        fallingShape = nextShape
        nextShape = Shape.random(startingColumn: PreviewColumn, startingRow: PreviewRow)
        fallingShape?.moveTo(column: StartingColumn, row: SrartingRow)
        return (fallingShape, nextShape)
    }
}
