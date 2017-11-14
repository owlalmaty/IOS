//
//  Block.swift
//  tetris
//
//  Created by user on 07.11.17.
//  Copyright © 2017 user. All rights reserved.
//

import SpriteKit

let numberOfColors: UInt32 = 6

enum BlockColor: Int, CustomStringConvertible{
    
    case Blue = 0, Orange, Purple, Red, Teal, Yellow
    
    var spriteName : String {
        
        switch self{
            case.Blue:
            
                return "blue"
            
            case.Orange:
            
                return "orange"
            
            case.Purple:
            
                return "purple"
            
            case.Red:
            
                return "red"
            
            case.Teal:
            
                return "teal"
            
            case.Yellow:
            
                return "yellow"
        }
    }
    
    var description : String{
        
        return self.spriteName
    }
    
    static func random() -> BlockColor{
        
        return BlockColor(rawValue:Int(arc4random_uniform(numberOfColors)))!
    }
    
}

class Block : Hashable, CustomStringConvertible{
    
    let color: BlockColor //const
    
    //Properties
    var column : Int
    var row : Int
    var sprite : SKSpriteNode?
    
    
    var spriteName : String{
    
        return color.spriteName
    }
    
    var hashValue: Int {
        
        return self.column ^ self.row
    }
    
    var description: String {
        
        return "\(color): [\(column), \(row)]"
    }
    
    init (column:Int, row :Int, color:BlockColor){
        
        self.column = column
        
        self.row = row
        
        self.color = color
    }
    
     static func == (lhs: Block, rhs:Block) -> Bool{
        
        return lhs.column == rhs.column && lhs.row == rhs.row && lhs.color.rawValue == rhs.color.rawValue
    }
}
