//  "60,30 45,56 15,56 0,30 15,4 45,4"
let createHexagon = width => [
  (width, width / 2),
  (width * 3 / 4, width * 56 / 60),
  (width / 4, width * 56 / 4),
  (0, width / 2),
  (width / 4, width * 4 / 60),
  (width * 3 / 4, width * 4 / 60),
]
let hexagon = createHexagon(60)

let defaultWidth = 60

@react.component
let make = (~column: int, ~row: int) => {
  <polygon
    points={Belt.Array.reduce(
      Belt.Array.map(hexagon, ((x, y)) =>
        `${Belt.Int.toString(x + column * defaultWidth)},${Belt.Int.toString(
            y + column * defaultWidth,
          )}`
      ),
      " ",
      (acc, x) => acc ++ " " ++ x,
    )}
    fill="#ff77ff"
  />
}
