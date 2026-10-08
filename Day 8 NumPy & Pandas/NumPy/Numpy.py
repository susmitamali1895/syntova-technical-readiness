import numpy as np

print("=" * 60)
print("NUMPY OPERATIONS PRACTICAL")
print("=" * 60)

# 1D Array
array_1d = np.array([10, 20, 30, 40, 50])

print("\n1D Array:")
print(array_1d)

# 2D Array
array_2d = np.array([
    [10, 20, 30],
    [40, 50, 60],
    [70, 80, 90]
])

print("\n2D Array:")
print(array_2d)

# 3D Array
array_3d = np.array([
    [[1, 2], [3, 4]],
    [[5, 6], [7, 8]]
])

print("\n3D Array:")
print(array_3d)

# Array attributes
print("\nArray Attributes")
print("Shape:", array_2d.shape)
print("Dimensions:", array_2d.ndim)
print("Size:", array_2d.size)
print("Data Type:", array_2d.dtype)

# Indexing
print("\nIndexing")
print("First element:", array_1d[0])
print("Third element:", array_1d[2])

# Slicing
print("\nSlicing")
print("First three elements:", array_1d[:3])
print("Elements from index 2:", array_1d[2:])

# Select row
print("\nRow Selection")
print("First row:", array_2d[0])
print("Second row:", array_2d[1])

# Select column
print("\nColumn Selection")
print("First column:", array_2d[:, 0])
print("Second column:", array_2d[:, 1])

# Specific element from 2D array
print("\nSpecific 2D Element:")
print(array_2d[1, 2])

# Reshape
reshaped_array = array_1d.reshape(5, 1)

print("\nReshaped Array:")
print(reshaped_array)

# Flatten
flattened_array = array_2d.flatten()

print("\nFlattened Array:")
print(flattened_array)

# Array creation functions
zeros_array = np.zeros((2, 3))
ones_array = np.ones((2, 3))
range_array = np.arange(1, 11)

print("\nZeros Array:")
print(zeros_array)

print("\nOnes Array:")
print(ones_array)

print("\nRange Array:")
print(range_array)

# Mathematical operations
print("\nMathematical Operations")

print("Addition:", array_1d + 5)
print("Subtraction:", array_1d - 5)
print("Multiplication:", array_1d * 2)
print("Division:", array_1d / 2)

# Array-to-array operations
array_a = np.array([10, 20, 30])
array_b = np.array([2, 4, 5])

print("\nArray-to-Array Operations")
print("Addition:", array_a + array_b)
print("Subtraction:", array_a - array_b)
print("Multiplication:", array_a * array_b)
print("Division:", array_a / array_b)

# Statistical operations
print("\nStatistical Operations")

print("Sum:", np.sum(array_1d))
print("Mean:", np.mean(array_1d))
print("Median:", np.median(array_1d))
print("Minimum:", np.min(array_1d))
print("Maximum:", np.max(array_1d))
print("Standard Deviation:", np.std(array_1d))
print("Variance:", np.var(array_1d))

# Sorting
unsorted_array = np.array([45, 12, 78, 23, 56, 34])

print("\nSorting")
print("Original:", unsorted_array)
print("Ascending:", np.sort(unsorted_array))
print("Descending:", np.sort(unsorted_array)[::-1])

# Filtering
print("\nFiltering")

print("Values greater than 30:")
print(array_1d[array_1d > 30])

print("Values less than or equal to 30:")
print(array_1d[array_1d <= 30])

# Multiple conditions
print("Values between 20 and 50:")
print(array_1d[(array_1d >= 20) & (array_1d <= 50)])

# Maximum and minimum position
print("\nIndex of Maximum:", np.argmax(array_1d))
print("Index of Minimum:", np.argmin(array_1d))

# Unique values
duplicate_array = np.array([10, 20, 20, 30, 30, 40, 50, 50])

print("\nUnique Values:")
print(np.unique(duplicate_array))

# Concatenate arrays
first_array = np.array([10, 20, 30])
second_array = np.array([40, 50, 60])

combined_array = np.concatenate(
    (first_array, second_array)
)

print("\nConcatenated Array:")
print(combined_array)

# Stack arrays
stacked_array = np.vstack(
    (first_array, second_array)
)

print("\nVertical Stack:")
print(stacked_array)

# Horizontal stack
horizontal_array = np.hstack(
    (first_array, second_array)
)

print("\nHorizontal Stack:")
print(horizontal_array)

# Transpose
print("\nTranspose:")
print(array_2d.T)

# Random numbers
random_array = np.random.randint(
    1, 100, 10
)

print("\nRandom Numbers:")
print(random_array)

# Random decimal values
random_decimal = np.random.random(5)

print("\nRandom Decimal Values:")
print(random_decimal)

# Generate equally spaced values
linear_values = np.linspace(1, 10, 5)

print("\nLinearly Spaced Values:")
print(linear_values)

# Square root
print("\nSquare Root:")
print(np.sqrt(array_1d))

# Power
print("\nPower:")
print(np.power(array_1d, 2))

# Absolute values
negative_values = np.array([-10, -20, 30, -40])

print("\nAbsolute Values:")
print(np.abs(negative_values))

# Handling NaN
nan_array = np.array([
    10, 20, np.nan, 40, 50
])

print("\nArray with NaN:")
print(nan_array)

print("NaN Check:")
print(np.isnan(nan_array))

print("NaN Count:")
print(np.isnan(nan_array).sum())

print("Mean ignoring NaN:")
print(np.nanmean(nan_array))

# Data type conversion
integer_array = np.array([10, 20, 30, 40])

float_array = integer_array.astype(float)

print("\nData Type Conversion")
print("Original:", integer_array)
print("Converted:", float_array)
print("Original Type:", integer_array.dtype)
print("New Type:", float_array.dtype)

print("\n" + "=" * 60)
print("NUMPY PRACTICAL COMPLETED")
print("=" * 60)