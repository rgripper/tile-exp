let getPointsString = (points: array<(float, float)>) =>
  Belt.Array.reduce(points, " ", (acc, (x, y)) => acc ++ " " ++ j`$x,$y`)

@react.component
let make = (~column: int, ~row: int, ~shapeBuilder: HexagonUtil.hexagonBuilder) => {
  let hexagon = shapeBuilder.getHexagonAt(column, row)
  <polygon title={j`col: $column, row: $row`} points={getPointsString(hexagon)} fill={"#aaaaaa"} />
}
