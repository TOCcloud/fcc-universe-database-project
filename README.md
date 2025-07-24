# 🌌 freeCodeCamp Universe Database Project

This is a PostgreSQL-based database project created for the **Relational Database Certification** on [freeCodeCamp](https://www.freecodecamp.org/). It models a fictional but astronomically inspired universe including **galaxies**, **stars**, **planets**, **moons**, and **celestial bodies**.

---

## 📁 Project Files

- `universe.sql` – Contains the full database schema and sample data.
- `README.md` – Documentation and project overview (this file).

---

## 🧱 Database Structure

The database includes the following entities:

1. **Galaxy**
2. **Star** – linked to `galaxy`
3. **Planet** – linked to `star`
4. **Moon** – linked to `planet`
5. **Celestial** – standalone celestial bodies (e.g., comets, black holes)

Each table contains:

- Auto-incrementing `id`
- Descriptive fields such as age, size, name, alias, and existence status
- Boolean fields for livability and current existence
- Proper foreign key relationships between celestial levels (galaxy → star → planet → moon)

---

## 🔗 Relationships

- Each **star** belongs to a **galaxy**
- Each **planet** belongs to a **star**
- Each **moon** belongs to a **planet**

This ensures data normalization and referential integrity.

---

## 🚀 How to Use

### 1. Setup PostgreSQL locally or on an online SQL editor (like pgAdmin or ElephantSQL)

### 2. Import the `universe.sql` file

In psql terminal:

```bash
psql -U your_username -d your_database -f universe.sql
```

Or via pgAdmin:

1. Open your database
2. Right-click → "Restore" or "Query Tool"
3. Load and run `universe.sql`

---

## 🧪 Sample Data Overview

- **6 galaxies** including Milky Way, Andromeda, Triangulum
- **6 stars** including Sun, Sirius, Betelgeuse
- **13 planets** including Earth, Mars, Kepler-452b
- **21 moons** including Moon, Europa, Titan
- **4 celestial bodies** like Black Holes and Asteroids

---

## 📚 Learning Outcomes

✔ SQL table creation  
✔ Primary and foreign keys  
✔ Relational modeling  
✔ Data types (`numeric`, `boolean`, `varchar`)  
✔ Data insertion and logical grouping  

## 👤 Author

Built by Toluwalope Osisiogu as part of the **Relational Database Certification** on freeCodeCamp.
