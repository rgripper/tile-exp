// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Tree from "./Tree.bs.js";
import * as Curry from "bs-platform/lib/es6/curry.mjs";
import * as React from "react";
import * as Random from "bs-platform/lib/es6/random.mjs";
import * as Hexagon from "./Hexagon.bs.js";
import * as Belt_Array from "bs-platform/lib/es6/belt_Array.mjs";
import * as HexagonUtil from "./HexagonUtil.bs.js";

var hexagonBuilder = HexagonUtil.makeHexagonBuilder(30.0);

var worldRect = Curry._2(hexagonBuilder.getWorldRect, 9, 27);

function generateTree(param) {
  return {
          x: Random.$$float(worldRect.width),
          y: Random.$$float(worldRect.height)
        };
}

var trees = Belt_Array.makeBy(36, (function (_i) {
        return generateTree(undefined);
      }));

function World(Props) {
  return React.createElement("svg", {
              height: String(worldRect.height),
              width: String(worldRect.width)
            }, Belt_Array.makeBy(243, (function (i) {
                    return React.createElement(Hexagon.make, {
                                column: i % 9,
                                row: i / 9 | 0,
                                shapeBuilder: hexagonBuilder,
                                key: String(i)
                              });
                  })), Belt_Array.map(trees, (function (tree) {
                    return React.createElement(Tree.make, {
                                x: tree.x,
                                y: tree.y
                              });
                  })));
}

var hexagonSize = 30.0;

var worldColumns = 9;

var worldRows = 27;

var make = World;

export {
  hexagonSize ,
  worldColumns ,
  worldRows ,
  hexagonBuilder ,
  worldRect ,
  generateTree ,
  trees ,
  make ,
  
}
/* hexagonBuilder Not a pure module */
