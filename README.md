# 🔗 CodTech SQL Internship – Task 1

### 🧠 SQL Joins Practice

---

## 📝 Objective
Perform **INNER**, **LEFT**, **RIGHT**, and **FULL OUTER JOINS** on sample tables to understand how to combine data meaningfully across related entities.

---

## 🧩 Dataset Structure

```plaintext
📦 employees
- emp_id (PK)
- emp_name
- dept_id (FK)

📦 departments
- dept_id (PK)
- dept_name
```

---

## 🧠 SQL Joins Included

| Join Type | Purpose |
|-----------|---------|
| INNER JOIN | Matches only rows with related keys in both tables |
| LEFT JOIN  | All employees with or without department info |
| RIGHT JOIN | All departments with or without employees |
| FULL JOIN  | All employees and departments whether matched or not |

---

## 📁 Files in this Folder

- `dataset.sql` – Table creation and sample data
- `join_queries.sql` – Join operations and their use cases
- `README.md` – Description and documentation

