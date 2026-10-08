import numpy as np
import pandas as pd

print("=" * 60)
print("NUMPY OPERATIONS")
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
print("\nArray Shape:", array_2d.shape)
print("Array Dimensions:", array_2d.ndim)
print("Array Size:", array_2d.size)
print("Array Data Type:", array_2d.dtype)

# Indexing
print("\nFirst Element:", array_1d[0])
print("Third Element:", array_1d[2])

# Slicing
print("\nArray Slicing:", array_1d[1:4])

# Select row
print("\nSecond Row:", array_2d[1])

# Select column
print("\nSecond Column:", array_2d[:, 1])

# Reshaping
reshaped_array = array_1d.reshape(5, 1)
print("\nReshaped Array:")
print(reshaped_array)

# Mathematical operations
print("\nAddition:", array_1d + 5)
print("Subtraction:", array_1d - 5)
print("Multiplication:", array_1d * 2)
print("Division:", array_1d / 2)

# Statistical operations
print("\nSum:", np.sum(array_1d))
print("Mean:", np.mean(array_1d))
print("Minimum:", np.min(array_1d))
print("Maximum:", np.max(array_1d))
print("Standard Deviation:", np.std(array_1d))

# Sorting
unsorted_array = np.array([45, 12, 78, 23, 56])
print("\nOriginal Array:", unsorted_array)
print("Sorted Array:", np.sort(unsorted_array))

# Filtering
print("\nValues greater than 25:", array_1d[array_1d > 25])

# Random numbers
random_values = np.random.randint(1, 100, 5)
print("\nRandom Values:", random_values)


print("\n" + "=" * 60)
print("PANDAS OPERATIONS")
print("=" * 60)

# Create DataFrame
data = {
    "Name": [
        "Aarohi", "Vedika", "Rishika", "Mrunal",
        "Tanisha", "Kritika", "Shanaya", "Ira"
    ],
    "Department": [
        "IT", "HR", "Finance", "IT",
        "Sales", "Finance", "HR", "IT"
    ],
    "Age": [24, 27, 25, 29, 26, 31, 28, 23],
    "Salary": [
        45000, 52000, 48000, 65000,
        55000, 72000, np.nan, 42000
    ],
    "City": [
        "Pune", "Mumbai", "Nashik", "Pune",
        "Mumbai", "Pune", "Nashik", "Pune"
    ],
    "Experience": [1, 3, 2, 5, 4, 7, 6, 1]
}

df = pd.DataFrame(data)

print("\nOriginal DataFrame:")
print(df)

# DataFrame information
print("\nDataFrame Shape:")
print(df.shape)

print("\nColumn Names:")
print(df.columns)

print("\nData Types:")
print(df.dtypes)

print("\nFirst 5 Rows:")
print(df.head())

print("\nLast 5 Rows:")
print(df.tail())

# Select column
print("\nSalary Column:")
print(df["Salary"])

# Select multiple columns
print("\nName and Salary:")
print(df[["Name", "Salary"]])

# Select rows
print("\nFirst Three Rows:")
print(df.iloc[0:3])

# Select specific row
print("\nThird Row:")
print(df.iloc[2])

# Filtering
print("\nEmployees with Salary greater than 50000:")
print(df[df["Salary"] > 50000])

print("\nEmployees from Pune:")
print(df[df["City"] == "Pune"])

print("\nIT Employees with Salary above 50000:")
print(
    df[
        (df["Department"] == "IT") &
        (df["Salary"] > 50000)
    ]
)

# Sorting
print("\nSorted by Salary:")
print(df.sort_values("Salary", ascending=False))

print("\nSorted by Age:")
print(df.sort_values("Age"))

# Missing values
print("\nMissing Values:")
print(df.isnull())

print("\nMissing Value Count:")
print(df.isnull().sum())

print("\nNon-Missing Values:")
print(df.notnull().sum())

# Fill missing value
df["Salary"] = df["Salary"].fillna(df["Salary"].mean())

print("\nSalary after filling missing value:")
print(df["Salary"])

# Data type conversion
df["Age"] = df["Age"].astype(float)

print("\nAge Data Type after Conversion:")
print(df["Age"].dtype)

# String operations
print("\nNames in Uppercase:")
print(df["Name"].str.upper())

print("\nNames in Lowercase:")
print(df["Name"].str.lower())

print("\nCity Names:")
print(df["City"].str.strip())

print("\nNames containing 'a':")
print(df[df["Name"].str.contains("a", case=False)])

# Replace values
df["Department"] = df["Department"].replace(
    {"IT": "Information Technology"}
)

print("\nDepartment after Replace:")
print(df["Department"])

# Map
salary_level = {
    "Information Technology": "Technical",
    "HR": "Non-Technical",
    "Finance": "Non-Technical",
    "Sales": "Non-Technical"
}

df["Department_Type"] = df["Department"].map(salary_level)

print("\nDepartment Type using map():")
print(df[["Name", "Department", "Department_Type"]])

# Add new column
df["Annual_Salary"] = df["Salary"] * 12

print("\nAnnual Salary:")
print(df[["Name", "Salary", "Annual_Salary"]])

# Conditional column
df["Salary_Category"] = np.where(
    df["Salary"] >= 60000,
    "High",
    "Normal"
)

print("\nSalary Category:")
print(df[["Name", "Salary", "Salary_Category"]])

# Aggregation
print("\nSalary Aggregation:")
print("Total Salary:", df["Salary"].sum())
print("Average Salary:", df["Salary"].mean())
print("Maximum Salary:", df["Salary"].max())
print("Minimum Salary:", df["Salary"].min())

# Multiple aggregation functions
print("\nMultiple Aggregations:")
print(
    df["Salary"].agg(
        ["sum", "mean", "min", "max", "count"]
    )
)

# GroupBy
print("\nAverage Salary by Department:")
print(
    df.groupby("Department")["Salary"].mean()
)

print("\nDepartment-wise Salary Summary:")
print(
    df.groupby("Department")["Salary"].agg(
        ["count", "sum", "mean", "min", "max"]
    )
)

# Duplicate check
print("\nDuplicate Rows:")
print(df.duplicated().sum())

# Apply function
df["Salary_With_Bonus"] = df["Salary"].apply(
    lambda salary: salary * 1.10
)

print("\nSalary with 10% Bonus:")
print(df[["Name", "Salary", "Salary_With_Bonus"]])

# DateTime operation
df["Joining_Date"] = pd.to_datetime([
    "2025-01-10",
    "2024-06-15",
    "2025-03-20",
    "2023-08-01",
    "2024-02-12",
    "2022-11-25",
    "2023-05-18",
    "2025-07-05"
])

df["Joining_Year"] = df["Joining_Date"].dt.year
df["Joining_Month"] = df["Joining_Date"].dt.month
df["Joining_Day"] = df["Joining_Date"].dt.day

print("\nDateTime Operations:")
print(
    df[
        [
            "Name",
            "Joining_Date",
            "Joining_Year",
            "Joining_Month",
            "Joining_Day"
        ]
    ]
)

# GroupBy with multiple columns
print("\nCity and Department-wise Average Salary:")
print(
    df.groupby(
        ["City", "Department"]
    )["Salary"].mean()
)

print("\n" + "=" * 60)
print("FINAL DATAFRAME")
print("=" * 60)

print(df)