function count(arr, acc) {
  return !arr[0] ? acc : count(arr.slice(1), acc + 1);
}
const arr = [3, 6, 11, 9];

console.log(count(arr, 0)); // 4
