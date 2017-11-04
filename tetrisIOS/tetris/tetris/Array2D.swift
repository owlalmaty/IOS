//
//  Array2D.swift
//  tetris
//
//  Created by user on 04.11.17.
//  Copyright © 2017 user. All rights reserved.
//

class  Array2D <T> {
    
    var columns : Int = 0
    var rows : Int = 0
    
    var array: Array<T?> = []
    
    init(columns: Int, rows: Int){
        
        self.columns = columns
        self.rows = rows
        
        
        array = Array<T?>(repeating: nil, count: rows * columns)
        
    }
    
    subscript(column: Int, row: Int)-> T?{
        
        get{
            
            return array[(row * columns) + column]
            
        }
        
        set(newValue){
            
            array[(row * columns) + column] = newValue
            
        }
        
    }
    
}

