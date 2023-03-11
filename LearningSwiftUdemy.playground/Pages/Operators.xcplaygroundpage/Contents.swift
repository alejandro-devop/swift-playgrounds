//: [Previous](@previous)

import Foundation

/**
 * Arithmetic operators
 * `=` Asignation
 * `+=` Incremental
 * `+` Addition
 * `-` Subtraction
 * `*` Multiplication
 * `/` Division
 * `%` Mod
 *
 * Comparison operators
 * `==` Equality
 * `!=` Different
 * `>` Greater than
 * `<` Less than
 * `>=` Greater or equals
 * `<=` Less or equals
 *
 * Identity Operator
 * `===` Identical to
 * `!==` Not identical to
 */

/**
 * Nil-Coalescing Operator
 * `??` This operator simplifies a short conditional (terniary)
 */
let a = "Foo"
let b = "Bar"
print(a != nil ? a : b) // This could be simplified by `??`
print(a ?? b)

/**
 * Range operator
 * `0...9`
 * `0..<10`
 * `...9`
 */

/**
 * Logical Operators
 * `&&` And
 * `||` Or
 * `!` Negation
 * True table
 * |  bool  |  bool  |  Operator  | Result |
 * |:------:|:------:|:----------:|:------:|
 * | `true`   | `true`    |    `&&`    | `true`    |
 * | `true`   | `false`  |    `&&`    | `false` |
 * | `false` | `false`  |    `&&`    | `false` |
 * | `true`   | `false`  |    `&&`    | `false` |
 * | `true`   | `true`    |    `||`    | `true`   |
 * | `false` | `true`    |    `||`    | `true`   |
 * | `true`   | `false`  |    `||`    | `true`   |
 * | `false` | `false`  |    `||`    | `false` |
 * | `!true` |                  |                 | `false`  |
 * |`!false`|                  |                 | `true`    |
 */
