open Geometry

type rec plant = {x: float, y: float}

let hexagonSize = 30.0
let worldColumns = 9
let worldRows = 27

let hexagonBuilder = HexagonUtil.makeHexagonBuilder(hexagonSize)

let worldRect = hexagonBuilder.getWorldRect(worldColumns, worldRows)
let generateTree = () => {{x: Random.float(worldRect.width), y: Random.float(worldRect.height)}}
let trees = Belt.Array.makeBy(36, _i => generateTree())

@react.component
let make = () => {
  <svg width={Belt.Float.toString(worldRect.width)} height={Belt.Float.toString(worldRect.height)}>
    {React.array(
      Belt.Array.makeBy(worldColumns * worldRows, i =>
        <Hexagon
          key={Belt.Int.toString(i)}
          column={mod(i, worldColumns)}
          row={i / worldColumns}
          shapeBuilder={hexagonBuilder}
        />
      ),
    )}
    {React.array(Belt.Array.map(trees, tree => <Tree x={tree.x} y={tree.y} />))}
  </svg>
}
