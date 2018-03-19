function sum([first, ...rest]) {
  return rest.length === 0 ? first : first + sum(rest);
}

const arr = [3, 6, 11, 9];

console.log(sum(arr)); // 29
