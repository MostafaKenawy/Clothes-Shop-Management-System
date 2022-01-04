-- drop table if exists `clothing_db`;
-- create database `clothing_db`;
-- use `clothing_db`;

-- we created the database in php files

-- --------------------------------------------------------

--
-- Table structure for table `items`
--
drop table if exists `items`;
create table `items` (
  `id` int(30) not null,
  `item_code` varchar(100) not null,
  `name` varchar(200) not null,
  `description` text not null,
  `size` varchar(10) not null,
  `price` float not null,
  `date_created` datetime not null default current_timestamp()
);
--
-- Dumping data for table `items`
--
insert into `items` (`id`, `item_code`, `name`, `description`, `size`, `price`, `date_created`) values
(1, '309874256222', 'Sample Shirt', 'Sample only', 'M', 500, '2020-11-04 09:51:01'),
(2, '774420957142', 'sample 1', 'sample 1', 'XS', 250, '2020-11-04 10:58:59');


-- --------------------------------------------------------

--
-- Table structure for table `receiving`
--
drop table if exists `receiving`;
create table `receiving` (
  `id` int(30) not null,
  `supplier_id` int(30) not null,
  `description` text not null,
  `total_cost` float not null,
  `inventory_ids` text not null,
  `date_created` datetime not null default current_timestamp()
);
--
-- Dumping data for table `receiving`
--
insert into `receiving` (`id`, `supplier_id`, `description`, `total_cost`, `inventory_ids`, `date_created`) values
(1, 1, '', 215000, '7,9', '2020-11-04 14:56:18');


-- --------------------------------------------------------

--
-- Table structure for table `sales`
--
drop table if exists `sales`;
create table `sales` (
  `id` int(30) not null,
  `user_id` int(30) not null,
  `total_amount` float not null,
  `amount_tendered` int(30) not null,
  `inventory_ids` text not null,
  `date_created` datetime not null default current_timestamp()
);
--
-- Dumping data for table `sales`
--
insert into `sales` (`id`, `user_id`, `total_amount`, `amount_tendered`, `inventory_ids`, `date_created`) values
(1, 1, 1500, 1500, '10,11', '2020-11-05 08:36:52'),
(2, 1, 750, 1000, '12', '2020-11-05 08:37:13');


-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--
drop table if exists `stocks`;
create table `stocks` (
  `id` int(30) not null,
  `item_id` int(30) not null,
  `type` tinyint(1) not null comment '1= in,2=out',
  `qty` int(30) not null,
  `price` float not null,
  `date_created` datetime not null defualt current_timestamp()
);
--
-- Dumping data for table `stocks`
--
insert into `stocks` (`id`, `item_id`, `type`, `qty`, `price`, `date_created`) values
(7, 2, 1, 500, 250, '2020-11-04 15:55:03'),
(9, 1, 1, 500, 180, '2020-11-04 15:55:29'),
(10, 2, 2, 2, 250, '2020-11-05 08:36:52'),
(11, 1, 2, 2, 500, '2020-11-05 08:36:52'),
(12, 2, 2, 3, 250, '2020-11-05 08:37:13');


-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--
drop table if exists `suppliers`;
create table `suppliers` (
  `id` int(30) not null,
  `name` varchar(200) not null,
  `address` text not null,
  `contact` varchar(50) not null,
  `date_created` datetime not null default current_timestamp()
);
--
-- Dumping data for table `suppliers`
--
insert into `suppliers` (`id`, `name`, `address`, `contact`, `date_created`) values
(1, 'ABC Apparel', 'CBD St., EFG City', '+6948 8542 623', '2020-11-04 09:33:26'),
(2, 'Men Apparel', 'Sample Address', '65524556', '2020-11-04 09:33:48'),
(3, 'Ladies Apparel', 'Company address', '65524556', '2020-11-04 09:34:15'),
(4, 'Trends Apparel', 'Sample Address', '8747808787', '2020-11-04 09:34:37');


-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--
drop table if exists `system_settings`; 
create table `system_settings` (
  `id` int(30) not null,
  `name` text not null,
  `email` varchar(200) not null,
  `contact` varchar(20) not null,
  `cover_img` text not null,
  `about_content` text not null
);

--
-- Dumping data for table `system_settings`
--

insert into `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) value
(1, 'Clothing Store Management System', '', '', '', '');


-- --------------------------------------------------------

--
-- Table structure for table `users`
--
drop table if exists `users` ;
create table `users` (
  `id` int(30) not null,
  `name` text not null,
  `username` varchar(200) not null,
  `password` text not null,
  `type` tinyint(1) not null comment '1=Admin,2=Staff'
);
--
-- Dumping data for table `users`
--
insert into `users` (`id`, `name`, `username`, `password`, `type`) values
(1, 'admin', 'admin', '0192023a7bbd73250516f069df18b500', 1);

--
--
-- -----------------------------------------Indexes for dumped tables
--
--
-- Indexes for table `items`
--
alter table `items`
  add primary key (`id`);
  
--
-- Indexes for table `receiving`
--
alter table `receiving`
  add primary key (`id`);
  
--
-- Indexes for table `sales`
--
alter table `sales`
  add primary key (`id`);
  
--
-- Indexes for table `stocks`
--
alter table `stocks`
  add primary key (`id`);
  
--
-- Indexes for table `suppliers`
--
alter table `suppliers`
  add primary key (`id`);
  
--
-- Indexes for table `system_settings`
--
alter table `system_settings`
  add primary key (`id`);
  
--
-- Indexes for table `users`
--
alter table `users`
  add primary key (`id`);

--
-- -----------------------------------------AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `items`
--
alter table `items`
  modify `id` int(30) not null auto_increment, auto_increment=3;
  
--
-- AUTO_INCREMENT for table `receiving`
--
alter table `receiving`
  modify `id` int(30) not null auto_increment, auto_increment=2;
  
--
-- AUTO_INCREMENT for table `sales`
--
alter table `sales`
 modify `id` int(30) not null auto_increment, auto_increment=3;
 
--
-- AUTO_INCREMENT for table `stocks`
--
alter table `stocks`
  modify `id` int(30) not null auto_increment, auto_increment=13;
  
--
-- AUTO_INCREMENT for table `suppliers`
--
alter table `suppliers`
  modify `id` int(30) not null auto_increment, auto_increment=5;
  
--
-- AUTO_INCREMENT for table `system_settings`
--
alter table `system_settings`
  modify `id` int(30) not null auto_increment, auto_increment=2;
  
--
-- AUTO_INCREMENT for table `users`
--
alter table `users`
  modify `id` int(30) not null auto_increment, auto_increment=2;
commit;
