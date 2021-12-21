SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Muskan Jahan', 'muskan123@gmail.com', 5000),
(2, 'Noor Jahan', 'noor123@gmail.com', 50000),
(3, 'Aman', 'aman773@gmail.com', 40000),
(4, 'Samaira', 'samaira21@gmail.com', 50000),
(5, 'Lochan', 'lochan80@gmail.com', 40000),
(6, 'Ketan', 'ketan11@gmail.com', 30000),
(7, 'Marry', 'marry56@gmail.com', 50000),
(8, 'Rishi', 'rishi94@gmail.com', 40000),
(9, 'Trupti', 'trupti@gmail.com', 30000),
(10, 'Sneha', 'sneha@gmail.com', 50000);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;

ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;
