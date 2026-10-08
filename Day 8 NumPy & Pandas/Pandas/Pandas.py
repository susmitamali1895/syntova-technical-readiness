import pandas as pd
import numpy as np

print("=" * 60)
print("PANDAS OPERATIONS PRACTICAL")
print("=" * 60)

# Create Series
salary_series = pd.Series([45000, 52000, 48000, 65000, 58000])

print("\nSeries:")
print(salary_series)

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
        55000, np.nan, 62000, 42000
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

# DataFrame inspection
print("\nDataFrame Shape:")
print(df.shape)

print("\nColumn Names:")
print(df.columns)

print("\nData Types:")
print(df.dtypes)

print("\nDataFrame Information:")
df.info()

print("\nFirst 5 Rows:")
print(df.head())

print("\nLast 5 Rows:")
print(df.tail())

# Select single column
print("\nSalary Column:")
print(df["Salary"])

# Select multiple columns
print("\nName and Salary:")
print(df[["Name", "Salary"]])

# Select rows using iloc
print("\nFirst Three Rows:")
print(df.iloc[0:3])

print("\nThird Row:")
print(df.iloc[2])

# Select rows using loc
print("\nRows from Index 1 to 3:")
print(df.loc[1:3])

# Filtering
print("\nEmployees with Salary Greater Than 50000:")
print(df[df["Salary"] > 50000])

print("\nEmployees from Pune:")
print(df[df["City"] == "Pune"])

print("\nIT Employees:")
print(df[df["Department"] == "IT"])

# Multiple conditions
print("\nIT Employees with Salary Greater Than 50000:")
print(
    df[
        (df["Department"] == "IT") &
        (df["Salary"] > 50000)
    ]
)

# OR condition
print("\nEmployees from Pune or Mumbai:")
print(
    df[
        (df["City"] == "Pune") |
        (df["City"] == "Mumbai")
    ]
)

# Sorting
print("\nSorted by Salary - Descending:")
print(
    df.sort_values(
        "Salary",
        ascending=False
    )
)

print("\nSorted by Age - Ascending:")
print(
    df.sort_values(
        "Age"
    )
)

# Multiple column sorting
print("\nSorted by Department and Salary:")
print(
    df.sort_values(
        ["Department", "Salary"],
        ascending=[True, False]
    )
)

# Missing values
print("\nMissing Values:")
print(df.isnull())

print("\nMissing Value Count:")
print(df.isnull().sum())

print("\nNot Null Count:")
print(df.notnull().sum())

# Find rows with missing Salary
print("\nRows with Missing Salary:")
print(df[df["Salary"].isnull()])

# Find rows with non-missing Salary
print("\nRows with Salary Available:")
print(df[df["Salary"].notnull()])

# Fill missing values
df["Salary"] = df["Salary"].fillna(
    df["Salary"].mean()
)

print("\nSalary After Filling Missing Values:")
print(df["Salary"])

# Data type conversion
df["Age"] = df["Age"].astype(float)

print("\nAge Data Type:")
print(df["Age"].dtype)

# String operations
print("\nNames in Uppercase:")
print(df["Name"].str.upper())

print("\nNames in Lowercase:")
print(df["Name"].str.lower())

print("\nNames Containing 'a':")
print(
    df[
        df["Name"].str.contains(
            "a",
            case=False
        )
    ]
)

print("\nCity Names with String Length:")
print(df["City"].str.len())

# Replace values
df["Department"] = df["Department"].replace(
    {
        "IT": "Information Technology"
    }
)

print("\nDepartment After Replace:")
print(df["Department"])

# Map
department_type = {
    "Information Technology": "Technical",
    "HR": "Non-Technical",
    "Finance": "Non-Technical",
    "Sales": "Non-Technical"
}

df["Department_Type"] = df[
    "Department"
].map(department_type)

print("\nDepartment Type using map():")
print(
    df[
        [
            "Name",
            "Department",
            "Department_Type"
        ]
    ]
)

# Add new column
df["Annual_Salary"] = df["Salary"] * 12

print("\nAnnual Salary:")
print(
    df[
        [
            "Name",
            "Salary",
            "Annual_Salary"
        ]
    ]
)

# Conditional column
df["Salary_Category"] = np.where(
    df["Salary"] >= 60000,
    "High",
    "Normal"
)

print("\nSalary Category:")
print(
    df[
        [
            "Name",
            "Salary",
            "Salary_Category"
        ]
    ]
)

# Aggregation
print("\nSalary Aggregation:")
print("Total:", df["Salary"].sum())
print("Average:", df["Salary"].mean())
print("Minimum:", df["Salary"].min())
print("Maximum:", df["Salary"].max())
print("Count:", df["Salary"].count())

# Multiple aggregation
print("\nMultiple Aggregations:")
print(
    df["Salary"].agg(
        [
            "sum",
            "mean",
            "min",
            "max",
            "count"
        ]
    )
)

# GroupBy
print("\nAverage Salary by Department:")
print(
    df.groupby(
        "Department"
    )["Salary"].mean()
)

print("\nDepartment-wise Salary Summary:")
print(
    df.groupby(
        "Department"
    )["Salary"].agg(
        [
            "count",
            "sum",
            "mean",
            "min",
            "max"
        ]
    )
)

# GroupBy multiple columns
print("\nCity and Department-wise Average Salary:")
print(
    df.groupby(
        ["City", "Department"]
    )["Salary"].mean()
)

# Duplicate check
print("\nDuplicate Rows:")
print(df.duplicated())

print("\nNumber of Duplicate Rows:")
print(df.duplicated().sum())

# Remove duplicates
df = df.drop_duplicates()

# Apply and Lambda
df["Salary_With_Bonus"] = df[
    "Salary"
].apply(
    lambda salary: salary * 1.10
)

print("\nSalary with 10% Bonus:")
print(
    df[
        [
            "Name",
            "Salary",
            "Salary_With_Bonus"
        ]
    ]
)

# DateTime operations
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

print("\nJoining Date:")
print(df["Joining_Date"])

df["Joining_Year"] = df[
    "Joining_Date"
].dt.year

df["Joining_Month"] = df[
    "Joining_Date"
].dt.month

df["Joining_Day"] = df[
    "Joining_Date"
].dt.day

print("\nDateTime Parts:")
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

# Rename columns
df = df.rename(
    columns={
        "Name": "Employee_Name"
    }
)

print("\nRenamed Column:")
print(df.columns)

# Drop column
df = df.drop(
    columns=["Joining_Day"]
)

print("\nAfter Removing Joining_Day:")
print(df.columns)

# Reset index
df = df.reset_index(drop=True)

print("\nReset Index:")
print(df)

print("\n" + "=" * 60)
print("PANDAS PRACTICAL COMPLETED")
print("=" * 60)