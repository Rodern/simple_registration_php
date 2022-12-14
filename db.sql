--
-- Database: `sr_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `data_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`data_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;