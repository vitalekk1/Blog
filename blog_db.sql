-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 26 2022 г., 17:22
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'new category', '2022-09-23 06:20:29', '2022-09-23 09:58:41', '2022-09-23 09:58:41'),
(2, 'Home', '2022-09-23 08:02:02', '2022-09-23 08:02:02', NULL),
(3, 'Cats', '2022-09-23 08:02:20', '2022-09-23 08:02:20', NULL),
(4, 'Dogs', '2022-09-23 09:17:23', '2022-09-23 09:58:38', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'Some message1', NULL, '2022-09-25 05:13:06'),
(3, 2, 2, 'Nice bike', '2022-09-25 12:15:33', '2022-09-25 12:15:33'),
(4, 3, 2, 'Woooooowwwww very nice', '2022-09-12 17:29:31', '2022-09-12 17:29:31'),
(5, 2, 2, 'Привет Сашулька)))', '2022-09-25 14:44:20', '2022-09-25 14:44:20');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_09_120708_create_categories_table', 1),
(6, '2022_09_09_120830_create_posts_table', 1),
(7, '2022_09_09_120930_create_tags_table', 1),
(8, '2022_09_09_121042_create_post_tags_table', 1),
(10, '2022_09_23_115903_add_column_soft_deletes_to_categories_table', 2),
(12, '2022_09_23_140644_add_soft_delete_to_tags_table', 3),
(14, '2022_09_23_143555_add_soft_delete_to_posts_table', 4),
(16, '2022_09_23_165652_add_columns_for_images_to_posts_table', 5),
(18, '2022_09_24_121918_add_soft_deletes_to_users_table', 6),
(20, '2022_09_24_143014_add_column_role_to_users_table', 7),
(21, '2022_09_24_185145_create_jobs_table', 8),
(23, '2022_09_25_071508_create_post_user_likes_table', 9),
(25, '2022_09_25_074323_create_comments_table', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `preview_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `category_id`, `created_at`, `updated_at`, `deleted_at`, `preview_image`, `main_image`) VALUES
(1, 'post number 1', '<p><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><u>hello m</u>y f<strike>riend</strike></font></p>', 4, '2022-09-23 13:35:07', '2022-09-25 05:51:54', NULL, 'images/QyuAWRva3bU8WzEKdDHOaiRtIqHVxOMb363FmdSS.jpg', 'images/ea7NcZiYeKlh9kPEvgD4cp4hWVmOTkDfqbAShAlS.jpg'),
(2, 'hello', '<p>hello my friend</p>', 4, '2022-09-23 14:15:34', '2022-09-24 06:53:25', NULL, 'images/OhNFnB34fxwRMX1uV3eGmjX8ARiSjHgtHDzNXnve.jpg', 'images/jc5I4FdAFI3DFg9M3wMZ9AdAwFxSynY0azlyrbah.jpg'),
(3, 'post with tags edited', '<p>bla b<u>la alb al</u>vb</p>', 2, '2022-09-23 15:43:07', '2022-09-24 06:16:18', NULL, 'images/ZscE14E0AW8CFnNTXg308jtiUiV1ymYS0iriNOUf.jpg', 'images/5YH1fYt2CvZito9DGT3v1URI3SUdiX2gSHNJt415.jpg'),
(4, 'Post number 4', '<p><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">text for post</font></p>', 3, '2022-09-24 07:09:38', '2022-09-25 13:42:45', NULL, 'images/cQTo8Yj7iK2KWPP3bsmWnTaChiAEYXps3H3J8v2v.jpg', 'images/hZfWSrBygSmFQCg8dgvAn3O3TRUyDOgsKG6FDFUu.jpg'),
(5, 'Hi hi', '<p>dsfsdfd<font color=\"#000000\" style=\"background-color: rgb(231, 99, 99);\">gdsgs</font></p>', 4, '2022-09-25 05:57:54', '2022-09-25 13:42:34', NULL, 'images/NQarg3XLfd3CWhfN7AveFIgNAfUSZgTXyMCCKMzd.jpg', 'images/OxhrcG868J28HmLM8i3Rm0ms0RD9tD9dUqaQh8gu.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 3, 4, NULL, NULL),
(3, 3, 5, NULL, NULL),
(4, 4, 4, NULL, NULL),
(5, 1, 4, NULL, NULL),
(6, 5, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `post_user_likes`
--

CREATE TABLE `post_user_likes` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_user_likes`
--

INSERT INTO `post_user_likes` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 2, 1, NULL, NULL),
(3, 2, 2, NULL, NULL),
(4, 5, 4, NULL, NULL),
(5, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Homes', '2022-09-23 11:05:15', '2022-09-23 11:08:49', '2022-09-23 11:08:49'),
(3, 'animals', '2022-09-23 11:09:00', '2022-09-23 11:09:00', NULL),
(4, 'Hobbi', '2022-09-23 15:21:34', '2022-09-23 15:21:34', NULL),
(5, 'home animals', '2022-09-23 15:21:44', '2022-09-23 15:21:44', NULL),
(6, 'car', '2022-09-23 15:21:55', '2022-09-23 15:21:55', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role` smallint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `role`) VALUES
(1, 'vitalekk1', 'vitalikkakanov@yandex.ru', NULL, '$2y$10$tZs7fU..C1L3GJ1gJrC.i.oNjX9Tmzge333bTYFIVX28S52xgV6LW', NULL, '2022-09-24 09:11:52', '2022-09-24 12:00:20', NULL, 0),
(2, 'ocheesec', 'vitalikkakanov55@gmail.com', NULL, '$2y$10$02b//EYPjAYVFsjdVaZ92eFe04l4qRLhSN9ljOb.ubHrSAQ0tWZK6', NULL, '2022-09-24 11:48:36', '2022-09-24 11:48:36', NULL, 1),
(3, 'Виталий', 'dimakakanov@mail.ru', NULL, '$2y$10$Cl6jEM6PvEUlBLRLMX3Nse7/jj2ftXH2XmpOmAUXb3yv4O7cLlvMO', NULL, '2022-09-24 15:31:43', '2022-09-24 15:31:43', NULL, NULL),
(4, 'vitaliy', 'vitalikkakanov12@yandex.ru', NULL, '$2y$10$R5B0frQeKbrZQAxDzJKtCu7CgogyGDtInbzaZfpHHBYVdauzvIgqC', NULL, '2022-09-24 15:37:52', '2022-09-24 15:37:52', NULL, NULL),
(5, 'vitalik kakanov', 'vitalikkakanov11@yandex.ru', NULL, '$2y$10$H0H7.8c1xQu1W6Yzp0kUQuEOJ3dQxcNUkhSX3Giohe8QTQvPVDYmi', NULL, '2022-09-24 15:56:05', '2022-09-24 15:56:05', NULL, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_idx` (`post_id`),
  ADD KEY `comments_user_idx` (`user_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_idx` (`category_id`);

--
-- Индексы таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_idx` (`post_id`),
  ADD KEY `post_tag_tag_idx` (`tag_id`);

--
-- Индексы таблицы `post_user_likes`
--
ALTER TABLE `post_user_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pul_post_idx` (`post_id`),
  ADD KEY `pul_user_idx` (`user_id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `post_user_likes`
--
ALTER TABLE `post_user_likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_users_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `post_category_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ограничения внешнего ключа таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tag_post_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tag_tag_fk` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Ограничения внешнего ключа таблицы `post_user_likes`
--
ALTER TABLE `post_user_likes`
  ADD CONSTRAINT `pul_post_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `pul_users_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
