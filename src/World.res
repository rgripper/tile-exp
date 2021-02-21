let rowLength = 4

@react.component
let make = () => {
  <svg width="600" height="600">
    {React.array(
      Belt.Array.makeBy(36, i =>
        <Hexagon key={Belt.Int.toString(i)} column={mod(i, rowLength)} row={i / rowLength} />
      ),
    )}
  </svg>
}
