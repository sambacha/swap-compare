/// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

/// @title SwapMeHarder

contract SwapMeHarder {

/** @notice 🆘 This is for illustration purposes only! Do NOT use 🆘 */ 

/*
*  Compare the implementation the functions below. 
*   They are suppose to imeplement a swap functionality
*   for trading. They achieve the same results, but
*   from slightly different ways.
*
* calculate: transaction cost
* calculate: execution cost
* optional: what further enhancements could be made?
* summary: which implementation is gas minimizing?
* summary: which implemtnation is `better`? Does the answer depend on pairs/markets/etc?
*/


//##############################################################################################\\
// @dev case / switch contract
    function case_switch(uint256 x, uint256 y) public returns(uint256 xx, uint256 yy) {
        assembly {
            function foo2(x_, y_, reversed) -> a, b {
                switch reversed
                case 0 {
                    a := x_
                    b := y_
                }
                default {
                    a := y_
                    b := x_
                }
            }
            x, y := foo2(x, y, 0)
            xx, yy := foo2(x, y, 1)
        }
    }


//##############################################################################################\\   




//##############################################################################################\\
// @dev if / else contract
    function if_else(uint256 x, uint256 y) public returns(uint256 xx, uint256 yy) {
        assembly {
            function foo1(x_, y_, reversed) -> a, b {
                a := x_
                b := y_
                if reversed {
                    let tmp := b
                    b := a
                    a := tmp
                }
            }
            x, y := foo1(x, y, 0)
            xx, yy := foo1(x, y, 1)
        }
    }
}
//##############################################################################################\\
