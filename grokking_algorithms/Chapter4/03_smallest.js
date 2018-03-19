// find the smallest number
function findSmallest(arr) {
  if (!arr[0]) {
    return 'not found';
  }
  const smallest = arr[0];
  function iter(items, s) {
    if (!items[0]) {
      return s;
    }
    const newSmallest = items[0] < s ? items[0] : s;
    return iter(items.slice(1), newSmallest);
  }
  return iter(arr.slice(1), smallest);
}

const arr = [5, 3, 9, 1, 6, 10];

console.log(findSmallest(arr)); // 1
