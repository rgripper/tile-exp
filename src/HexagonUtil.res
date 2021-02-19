export createHexagon = size => {
  let width: float = 2.0 *. size // 4 points
  let height: float = sqrt(3.0) *. size // 3 points
  [
    (width, height /. 2.0),
    (width *. 3.0 /. 4.0, height),
    (width /. 4.0, height),
    (0.0, height /. 2.0),
    (width /. 4.0, 0.0),
    (width *. 3.0 /. 4.0, 0.0),
  ]
}

let calcPointyGapOdd = size => size *. 1.5

let isEven = value => mod(value, 2) == 0
export calcHexagonPosition = (column: int, row: int, size: float) => (
  Belt.Int.toFloat(column) *. size *. 3.0 +. (isEven(row) ? 0.0 : calcPointyGapOdd(size)),
  Belt.Int.toFloat(row) *. (sqrt(3.0) *. size /. 2.0),
)
