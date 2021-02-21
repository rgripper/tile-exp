// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "bs-platform/lib/es6/curry.mjs";
import * as React from "react";
import * as Belt_Array from "bs-platform/lib/es6/belt_Array.mjs";

function getPointsString(points) {
  return Belt_Array.reduce(points, " ", (function (acc, param) {
                return acc + " " + ("" + param[0] + "," + param[1]);
              }));
}

function Hexagon(Props) {
  var column = Props.column;
  var row = Props.row;
  var shapeBuilder = Props.shapeBuilder;
  var hexagon = Curry._2(shapeBuilder.getHexagonAt, column, row);
  return React.createElement("polygon", {
              title: "col: " + column + ", row: " + row,
              fill: "#aaaaaa",
              points: getPointsString(hexagon)
            });
}

var make = Hexagon;

export {
  getPointsString ,
  make ,
  
}
/* react Not a pure module */
