function sum(arr) {
  return arr.length === 0 ? arr[0] : arr[0] + sum(arr.slice(1));
}
const arr = [3, 6, 11, 9];

console.log(sum(arr)); // 29
