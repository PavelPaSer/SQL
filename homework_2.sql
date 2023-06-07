DROP DATABASE IF EXISTS `vk`;
CREATE DATABASE `vk`;
USE `vk`;

-- Задание 2
DROP TABLE IF EXISTS news;
CREATE TABLE news (
  id INT PRIMARY KEY,
  title VARCHAR(100),
  content TEXT,
  publish_date DATE
);

-- Создание таблицы "Album"
DROP TABLE IF EXISTS сatalog;
CREATE TABLE сatalog (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  category VARCHAR(50),
  price DECIMAL(10, 2),
  description TEXT
);
-- Задание 3

-- Вставка данных в таблицу "news"
INSERT INTO news (id, title, content, publish_date) VALUES
  (1, 'Breaking News', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2023-05-01'),
  (2, 'New Product Launch', 'Nulla convallis libero sed fringilla interdum.', '2023-05-05'),
  (3, 'Upcoming Event Announcement', 'Donec eu est in velit ullamcorper vehicula.', '2023-05-10'),
  (4, 'Industry Insights', 'Sed aliquam massa eu pharetra ultricies.', '2023-05-15'),
  (5, 'Company Milestone', 'Vestibulum posuere dolor vel nulla aliquet, vitae bibendum sem maximus.', '2023-05-20'),
  (6, 'Interview with CEO', 'Nam fermentum risus sit amet maximus condimentum.', '2023-05-25'),
  (7, 'New Feature Release', 'Proin eget nisl cursus, sagittis neque nec, commodo leo.', '2023-05-28'),
  (8, 'Community Spotlight', 'Phasellus iaculis elit in dapibus venenatis.', '2023-06-02'),
  (9, 'Product Tutorial', 'Pellentesque mattis tellus non orci auctor feugiat.', '2023-06-05'),
  (10, 'Industry Conference', 'Aenean in augue ultrices, rhoncus turpis nec, ullamcorper risus.', '2023-06-10');

 -- Вставка данных в таблицу "catalog"
 INSERT INTO сatalog (id, name, category, price, description) VALUES
  (1, 'Product A', 'Category 1', 10.99, 'Description of Product A'),
  (2, 'Product B', 'Category 2', 25.50, 'Description of Product B'),
  (3, 'Product C', 'Category 1', 8.75, 'Description of Product C'),
  (4, 'Product D', 'Category 3', 19.99, 'Description of Product D'),
  (5, 'Product E', 'Category 2', 14.50, 'Description of Product E'),
  (6, 'Product F', 'Category 1', 12.25, 'Description of Product F'),
  (7, 'Product G', 'Category 3', 29.99, 'Description of Product G'),
  (8, 'Product H', 'Category 2', 9.99, 'Description of Product H'),
  (9, 'Product I', 'Category 1', 17.50, 'Description of Product I'),
  (10, 'Product J', 'Category 3', 22.75, 'Description of Product J');