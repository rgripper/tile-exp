let rowLength = 4

type rec plant = {x: float, y: float}

type rec rectangle = {x: float, y: float, width: float, height: float}

let worldRect = {x: 0., y: 0., width: 600., height: 600.}

let generateTree = () => {{x: Random.float(600.0), y: Random.float(600.0)}}

let trees = Belt.Array.makeBy(36, _i => generateTree())

let hexagonBuilder = HexagonUtil.makeHexagonBuilder(30.0)

@react.component
let make = () => {
  <svg width={Belt.Float.toString(worldRect.width)} height={Belt.Float.toString(worldRect.height)}>
    {React.array(
      Belt.Array.makeBy(36, i =>
        <Hexagon
          key={Belt.Int.toString(i)}
          column={mod(i, rowLength)}
          row={i / rowLength}
          shapeBuilder={hexagonBuilder}
        />
      ),
    )}
    {React.array(Belt.Array.map(trees, tree => <Tree x={tree.x} y={tree.y} />))}
  </svg>
}
