# 🧹 Task 1: Data Cleaning and Preprocessing

## 📌 Objective
Clean and prepare a raw dataset containing missing values, duplicates, and inconsistent formats using **Python (Pandas)** or **Excel**.

---

## 🛠 Tools Used
- Python (pandas)
- Jupyter Notebook / VS Code
- Excel (optional)

---

## 📂 Dataset
Dataset used: **Netflix Movies and TV Shows**

---

## 🔧 Steps Performed

### 1. **Checked Schema**
- Used `df.info()` and `df.dtypes` to inspect column names, null counts, and data types.

### 2. **Handled Missing Values**
- Identified missing values using `df.isnull().sum()`.
- Filled or dropped nulls depending on the context using:
  ```python
  df.fillna(value, inplace=True)  # or
  df.dropna(inplace=True)

### 3. **Removed Duplicates**
- Removed duplicate rows using:
  ```python
  df.drop_duplicates(inplace=True)

### 4. **Standardized Text Columns**
- Converted values to consistent casing and removed whitespaces:
  ```python
  df['country'] = df['country'].str.title().str.strip()

### 5. **Fixed Date Formats**
- Converted inconsistent date strings to uniform format yyyy-mm-dd using:
  ```python
  df['date'] = pd.to_datetime(df['date'], dayfirst=True)

### 6. **Renamed Columns**
- Renamed headers to lowercase and snake_case format:
  ```python
  df.columns = df.columns.str.lower().str.replace(' ', '_')

### 7. **Checked & Fixed Data Types**
- Cast columns to appropriate types:
  ```python
  df['date'] = pd.to_datetime(df['date'])
