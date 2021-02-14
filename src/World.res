@react.component
let make = () => {
  <svg width="600" height="600">
    {React.array(
      Belt.Array.makeBy(1000, i => <Hexagon key={Belt.Int.toString(i)} column={i} row={i} />),
    )}
  </svg>
}
