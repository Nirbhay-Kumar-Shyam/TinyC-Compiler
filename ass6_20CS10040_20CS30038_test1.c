int gcd(int a, int b) {
    if (b == 0)
        return a;
    return gcd(b, a % b);
}

// Returns LCM of array elements
int findlcm(int arr[], int n) {
    // Initialize result
    int ans, i;
    ans = arr[0];

    // ans contains LCM of arr[0], ..arr[i]
    // after i'th iteration,
    for (i = 1; i < n; i++)
        ans = (((arr[i] * ans)) /
               (gcd(arr[i], ans)));

    return ans;
}

// Driver Code
int main() {
    int a[100], i, n, m, c, l, u;
    int err = 1;
    printStr("This Program implements LCM\n");
    printStr("Enter the size of an array(<=100): \n");
    n = readInt(&err);
    printStr("Enter the elements of the array one by one i.e. single element in a line: \n");
    for (i = 0; i < n; i++) {
        a[i] = readInt(&err);
    }

    l = findlcm(a, n);

    printStr("lcm of given no is: ");
    printInt(l);
    printStr("\n");
    return 0;
}