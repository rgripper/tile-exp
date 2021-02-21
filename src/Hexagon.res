open HexagonUtil

let hexagonBuilder = makeHexagonBuilder(30.0)

let defaultWidth = 30.0

let getPointsString = (points: array<(float, float)>) =>
  Belt.Array.reduce(points, " ", (acc, (x, y)) => acc ++ " " ++ j`$x,$y`)

@react.component
let make = (~column: int, ~row: int) => {
  let hexagon = hexagonBuilder.getHexagonAt(column, row)
  <polygon points={getPointsString(hexagon)} fill={mod(column, 2) == 0 ? "#ff77ff" : "#77ffff"} />
}
