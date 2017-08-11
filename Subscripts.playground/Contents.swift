//: Playground - noun: a place where people can play



struct TimesTable {
    
    var multiplier = 0
    
    subscript (toMultiply: Int) -> Int {
        return multiplier * toMultiply
    }
    
}


let multiplication = TimesTable(multiplier: 4)
print(multiplication[6])



struct Matrix {
    
    let rows: Int, columns: Int
    var grid: [Double]
    
    init(rows: Int , columns: Int){
        
        self.rows = rows
        self.columns = columns
        
        grid = Array(repeating: 0.0,count: rows * columns)
        
    }
    
    func indexIsValid(row: Int , column:Int) -> Bool{
        return row >= 0 && row < rows && columns >= 0 && column < columns
    }
    
    
    //Creating subscript for search values for a row and column
    
    subscript(row: Int,column: Int) -> Double {
        
        
        get {
            assert(indexIsValid(row: row, column:column),"Index is out of range")
            
            return grid[(row * column)  + column]
        }
        
        
        set{
            assert(indexIsValid(row:row, column:column),"Index is out of range")
            
            grid[(row * column) + column] = newValue
        }
        
    }
    
}



//Creating and testing the matrix

var matrix = Matrix(rows: 2 , columns: 4)


matrix[0,0] = 58
matrix[1,2] = 1
matrix[0,2] = 78


print("\(matrix[0,0]) - \(matrix[0,2]) - \(matrix[1,2])")
