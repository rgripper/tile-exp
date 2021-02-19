open HexagonUtil
let hexagon = createHexagon(30.0)

let defaultWidth = 30.0

@react.component
let make = (~column: int, ~row: int) => {
  let (offsetX, offsetY) = calcHexagonPosition(column, row, defaultWidth)
  Js.log2(offsetX, offsetY)
  <polygon
    points={Belt.Array.reduce(
      Belt.Array.map(hexagon, ((x, y)) =>
        `${Belt.Float.toString(x +. offsetX)},${Belt.Float.toString(y +. offsetY)}`
      ),
      " ",
      (acc, x) => acc ++ " " ++ x,
    )}
    fill={mod(column, 2) == 0 ? "#ff77ff" : "#77ffff"}
  />
}
