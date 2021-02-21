type rec hexagonBuilder = {getHexagonAt: (int, int) => array<(float, float)>}

let makeHexagonBuilder = (size: float): hexagonBuilder => {
  let width = 2.0 *. size // 4 points
  let height = sqrt(3.0) *. size // 3 points
  let pointyGapOdd = size *. 1.5
  let isEven = value => mod(value, 2) == 0

  let hexagon = [
    (width, height /. 2.0),
    (width *. 3.0 /. 4.0, height),
    (width /. 4.0, height),
    (0.0, height /. 2.0),
    (width /. 4.0, 0.0),
    (width *. 3.0 /. 4.0, 0.0),
  ]
  let getPosition = (column: int, row: int) => (
    Belt.Int.toFloat(column) *. size *. 3.0 +. (isEven(row) ? 0.0 : pointyGapOdd),
    Belt.Int.toFloat(row) *. (sqrt(3.0) *. size /. 2.0),
  )

  {
    getHexagonAt: (column: int, row: int) => {
      let (posX, posY) = getPosition(column, row)
      Belt.Array.map(hexagon, ((x, y)) => (x +. posX, y +. posY))
    },
  }
}
