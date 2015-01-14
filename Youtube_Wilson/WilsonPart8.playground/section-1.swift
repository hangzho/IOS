import Cocoa

var someArray = [1,2,3]
someArray[2]

struct TimeTable {
    let multiplier:Int
    subscript(index:Int) ->Int{
        return multiplier * index
    }
}

let threeThimesTables = TimeTable(multiplier: 3)
threeThimesTables[2]

func ramdomizer(#range:Range<UInt32>) -> UInt32 {
    return range.startIndex + arc4random_uniform(range.endIndex - range.startIndex + 1)
}

1..4

struct LevelMaker {
    var grid = Array<Array<UInt32>>()
    
    mutating func makeGrid() {
        var numColumns = 7
        var numRows = 7
        for column in 0..numColumns {
            var newRow = Array<UInt32>()
            for row in 0..numRows {
                newRow.append(ramdomizer(range: 1..32))
            }
            self.grid.append(newRow)
        }
    }
    subscript(row:Int, column:Int) -> UInt32 {
        return grid[row][column]
    }
    init(){
        makeGrid()
    }
}
var level2 = LevelMaker()
level2[2,5]
level2.grid[2][5]