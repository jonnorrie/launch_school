"use strict"

function range(...nums) {
  let output = [];
  let minNum;
  let maxNum;
  
  if (nums.length >= 2){
    maxNum = nums[1]
    minNum = nums[0]
  } else {
    maxNum = nums[0]
    minNum = 0
  }
  
  
  for (let i = minNum; i <= maxNum; i ++){
    output.push(i)
  }

  return output
}

console.log(range(5))