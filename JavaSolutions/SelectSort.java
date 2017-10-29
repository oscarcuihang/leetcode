// easy Data Structure Selection Sort
// Given an array of integers, sort the elements in the array in ascending order. The selection sort algorithm should be used to solve this problem.

// Examples

// {1} is sorted to {1}
// {1, 2, 3} is sorted to {1, 2, 3}
// {3, 2, 1} is sorted to {1, 2, 3}
// {4, 2, -3, 6, 1} is sorted to {-3, 1, 2, 4, 6}
// Corner Cases

// What if the given array is null? In this case, we do not need to do anything.
// What if the given array is of length zero? In this case, we do not need to do anything.

package class1;

public class SelectSort {
  
  public static void main(String[] args) {
    int[] input = {};
    int[] test = solve( input );
    for(int i:test) {
      System.out.println(i);
    }
  }

  public static int[] solve(int[] array) {
    // Write your solution here.
    int size = array.length;

    //check if array size less or equal than 1, return array
    if (size <= 1) {
      return array;
    }

    // loop array
    for (int i = 0; i < size - 1; i++) {
          int index = i;

          //find smallest number in array
          for (int j = i + 1; j < array.length; j++) {
              if (array[j] < array[index]) {
                  index = j;
              }
          }
          //swap
          int temp = array[index];
          array[index] = array[i];
          array[i] = temp;
      }
      return array;
  }
}
