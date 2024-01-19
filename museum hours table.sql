create table museum_hours
(museum_id   int,
day          varchar(255),
open         varchar(255),
close        varchar(255)
);

select *
from museum_hours;

insert into museum_hours values
(30, 'Sunday', '10:30:AM', '05:30:PM'),
(30, 'Monday', '10:30:AM', '05:30:PM'),
(30, 'Tuesday', '10:30:AM', '05:30:PM'),
(30, 'Wednesday', '10:30:AM', '05:30:PM'),
(30, 'Thusday', '10:30:AM', '05:30:PM'),
(30, 'Friday', '10:30:AM', '05:30:PM'),
(30, 'Saturday', '10:30:AM', '07:00:PM'),
(31, 'Sunday', '11:00:AM', '06:00:PM'),
(31, 'Monday', '11:00:AM', '06:00:PM'),
(31, 'Tuesday', '11:00:AM', '06:00:PM'),
(31, 'Wednesday', '11:00:AM', '06:00:PM'),
(31, 'Thusday', '11:00:AM', '06:00:PM'),
(31, 'Friday', '11:00:AM', '06:00:PM'),
(31, 'Saturday', '11:00:AM', '06:00:PM'),
(32, 'Sunday', '10:00:AM', '05:00:PM'),
(32, 'Monday', '10:00:AM', '05:00:PM'),
(32, 'Tuesday', '10:00:AM', '05:00:PM'),
(32, 'Wednesday', '10:00:AM', '05:00:PM'),
(32, 'Thusday', '10:00:AM', '05:00:PM'),
(32, 'Friday', '10:00:AM', '05:00:PM'),
(32, 'Saturday', '10:00:AM', '05:00:PM'),
(33, 'Sunday', '10:00:AM', '06:00:PM'),
(33, 'Tuesday', '10:00:AM', '08:00:PM'),
(33, 'Wednesday', '10:00:AM', '06:00:PM'),
(33, 'Thursday', '10:00:AM', '06:00:PM'),
(33, 'Friday', '10:00:AM', '06:00:PM'),
(33, 'Saturday', '10:00:AM', '06:00:PM'),
(34, 'Sunday', '11:00:AM', '06:00:PM'),
(34, 'Tuesday', '11:00:AM', '08:00:PM'),
(34, 'Wednesday', '11:00:AM', '06:00:PM'),
(34, 'Thursday', '11:00:AM', '06:00:PM'),
(34, 'Friday', '11:00:AM', '08:00:PM'),
(34, 'Saturday', '11:00:AM', '08:00:PM'),
(35, 'Sunday', '10:00:AM', '05:30:PM'),
(35, 'Monday', '10:00:AM', '05:30:PM'),
(35, 'Tuesday', '10:00:AM', '05:00:PM'),
(35, 'Wednesday', '10:00:AM', '05:00:PM'),
(35, 'Thursday', '10:00:AM', '05:00:PM'),
(35, 'Friday', '10:00:AM', '09:00:PM'),
(35, 'Saturday', '10:00:AM', '09:00:PM'),
(36, 'Sunday', '10:00:AM', '06:00:PM'),
(36, 'Tuesday', '10:00:AM', '06:00:PM'),
(36, 'Wednesday', '10:00:AM', '06:00:PM'),
(36, 'Thursday', '10:00:AM', '08:00:PM'),
(36, 'Friday', '10:00:AM', '08:00:PM'),
(36, 'Saturday', '10:00:AM', '06:00:PM'),
(37, 'Sunday', '10:00:AM', '06:30:PM'),
(37, 'Monday', '10:00:AM', '06:30:PM'),
(37, 'Wednesday', '10:00:AM', '06:30:PM'),
(37, 'Thursday', '10:00:AM', '06:30:PM'),
(37, 'Friday', '10:00:AM', '06:30:PM'),
(37, 'Saturday', '10:00:AM', '06:30:PM'),
(38, 'Monday', '09:30:AM', '05:30:PM'),
(38, 'Wednesday', '09:30:AM', '05:30:PM'),
(38, 'Thursday', '09:30:AM', '05:30:PM'),
(38, 'Friday', '09:30:AM', '05:30:PM'),
(38, 'Saturday', '09:30:AM', '05:30:PM'),
(39, 'Sunday', '10:00:AM', '05:00:PM'),
(39, 'Monday', '10:00:AM', '05:00:PM'),
(39, 'Thursday', '10:00:AM', '05:00:PM'),
(39, 'Friday', '10:00:AM', '09:00:PM'),
(39, 'Saturday', '10:00:AM', '05:00:PM'),
(40, 'Sunday', '09:00:AM', '06:00:PM'),
(40, 'Monday', '09:00:AM', '06:00:PM'),
(40, 'Wednesday', '09:00:AM', '06:00:PM'),
(40, 'Thursday', '09:00:AM', '06:00:PM'),
(40, 'Friday', '09:00:AM', '09:45:PM'),
(40, 'Saturday', '09:00:AM', '06:00:PM'),
(41, 'Sunday', '10:00:AM', '05:00:PM'),
(41, 'Monday', '10:00:AM', '05:00:PM'),
(41, 'Tuesday', '10:00:AM', '05:00:PM'),
(41, 'Wednesday', '10:00:AM', '05:00:PM'),
(41, 'Thursday', '10:00:AM', '05:00:PM'),
(41, 'Friday', '10:00:AM', '05:00:PM'),
(41, 'Saturday', '10:00:AM', '05:00:PM'),
(42, 'Sunday', '10:00:AM', '05:00:PM'),
(42, 'Monday', '10:00:AM', '05:00:PM'),
(42, 'Wednesday', '10:00:AM', '05:00:PM'),
(42, 'Thursday', '10:00:AM', '05:00:PM'),
(42, 'Friday', '10:00:AM', '05:00:PM'),
(42, 'Saturday', '10:00:AM', '05:00:PM'),
(43, 'Sunday', '09:00:AM', '05:00:PM'),
(43, 'Monday', '09:00:AM', '05:00:PM'),
(43, 'Tuesday', '09:00:AM', '05:00:PM'),
(43, 'Wednesday', '09:00:AM', '05:00:PM'),
(43, 'Thursday', '09:00:AM', '05:00:PM'),
(43, 'Friday', '09:00:AM', '05:00:PM'),
(43, 'Saturday', '09:00:AM', '05:00:PM'),
(44, 'Sunday', '10:00:AM', '05:00:PM'),
(44, 'Monday', '10:00:AM', '05:00:PM'),
(44, 'Tuesday', '04:00:PM', '09:00:PM'),
(44, 'Wednesday', '10:00:AM', '05:00:PM'),
(44, 'Thursday', '10:00:AM', '05:00:PM'),
(44, 'Friday', '10:00:AM', '02:00:PM'),
(44, 'Saturday', '10:00:AM', '05:00:PM'),
(45, 'Sunday', '10:00:AM', '06:00:PM'),
(45, 'Tuesday', '10:00:AM', '06:00:PM'),
(45, 'Wednesday', '10:00:AM', '08:00:PM'),
(45, 'Thursday', '10:00:AM', '08:00:PM'),
(45, 'Friday', '10:00:AM', '06:00:PM'),
(45, 'Saturday', '10:00:AM', '06:00:PM'),
(46, 'Sunday', '10:00:AM', '05:00:PM'),
(46, 'Monday', '10:00:AM', '05:00:PM'),
(46, 'Wednesday', '10:00:AM', '05:00:PM'),
(46, 'Thursday', '10:00:AM', '05:00:PM'),
(46, 'Friday', '10:00:AM', '05:00:PM'),
(46, 'Saturday', '10:00:AM', '05:00:PM'),
(47, 'Sunday', '10:00:AM', '06:00:PM'),
(47, 'Monday', '10:00:AM', '06:00:PM'),
(47, 'Tuesday', '10:00:AM', '06:00:PM'),
(47, 'Wednesday', '10:00:AM', '06:00:PM'),
(47, 'Thursday', '10:00:AM', '06:00:PM'),
(47, 'Friday', '10:00:AM', '09:00:PM'),
(47, 'Saturday', '10:00:AM', '06:00:PM'),
(48, 'Sunday', '10:00:AM', '06:00:PM'),
(48, 'Monday', '01:00:PM', '06:00:PM'),
(48, 'Tuesday', '10:00:AM', '06:00:PM'),
(48, 'Wednesday', '10:00:AM', '06:00:PM'),
(48, 'Thursday', '10:00:AM', '06:00:PM'),
(48, 'Friday', '10:00:AM', '06:00:PM'),
(48, 'Saturday', '10:00:AM', '06:00:PM'),
(49, 'Sunday', '09:30:AM', '06:00:PM'),
(49, 'Tuesday', '09:30:AM', '06:00:PM'),
(49, 'Wednesday', '09:30:AM', '06:00:PM'),
(49, 'Thursday', '09:30:AM', '09:45:PM'),
(49, 'Friday', '09:30:AM', '06:00:PM'),
(49, 'Saturday', '09:30:AM', '06:00:PM'),
(50, 'Sunday', '10:00:AM', '07:00:PM'),
(50, 'Monday', '10:00:AM', '08:00:PM'),
(50, 'Tuesday', '10:00:AM', '08:00:PM'),
(50, 'Wednesday', '10:00:AM', '08:00:PM'),
(50, 'Thursday', '10:00:AM', '08:00:PM'),
(50, 'Friday', '10:00:AM', '08:00:PM'),
(50, 'Saturday', '10:00:AM', '08:00:PM'),
(51, 'Sunday', '11:00:AM', '05:00:PM'),
(51, 'Monday', '11:00:AM', '05:00:PM'),
(51, 'Thursday', '11:00:AM', '05:00:PM'),
(51, 'Friday', '11:00:AM', '05:00:PM'),
(51, 'Saturday', '11:00:AM', '05:00:PM'),
(52, 'Sunday', '10:00:AM', '06:00:PM'),
(52, 'Tuesday', '10:00:AM', '06:00:PM'),
(52, 'Wednesday', '10:00:AM', '06:00:PM'),
(52, 'Thursday', '10:00:AM', '06:00:PM'),
(52, 'Friday', '10:00:AM', '06:00:PM'),
(52, 'Saturday', '10:00:AM', '06:00:PM'),
(53, 'Sunday', '10:00:AM', '05:00:PM'),
(53, 'Tuesday', '10:00:AM', '05:00:PM'),
(53, 'Wednesday', '10:00:AM', '05:00:PM'),
(53, 'Thursday', '10:00:AM', '05:00:PM'),
(53, 'Friday', '10:00:AM', '05:00:PM'),
(53, 'Saturday', '10:00:AM', '05:00:PM'),
(54, 'Sunday', '12:30:PM', '06:00:PM'),
(54, 'Wednesday', '11:00:AM', '05:00:PM'),
(54, 'Thursday', '11:00:AM', '09:00:PM'),
(54, 'Friday', '11:00:AM', '06:00:PM'),
(54, 'Saturday', '11:00:AM', '06:00:PM'),
(55, 'Sunday', '10:00:AM', '05:30:PM'),
(55, 'Tuesday', '10:00:AM', '05:30:PM'),
(55, 'Wednesday', '10:00:AM', '05:30:PM'),
(55, 'Thursday', '10:00:AM', '05:30:PM'),
(55, 'Friday', '10:00:AM', '05:30:PM'),
(55, 'Saturday', '10:00:AM', '08:00:PM'),
(56, 'Sunday', '10:00:AM', '07:00:PM'),
(56, 'Tuesday', '10:00:AM', '07:00:PM'),
(56, 'Wednesday', '10:00:AM', '07:00:PM'),
(56, 'Thursday', '10:00:AM', '07:00:PM'),
(56, 'Friday', '10:00:AM', '07:00:PM'),
(56, 'Saturday', '10:00:AM', '07:00:PM'),
(57, 'Sunday', '09:00:AM', '06:00:PM'),
(57, 'Monday', '09:00:AM', '06:00:PM'),
(57, 'Tuesday', '09:00:AM', '06:00:PM'),
(57, 'Wednesday', '09:00:AM', '06:00:PM'),
(57, 'Thursday', '09:00:AM', '06:00:PM'),
(57, 'Friday', '09:00:AM', '06:00:PM'),
(57, 'Saturday', '09:00:AM', '06:00:PM'),
(58, 'Sunday', '11:00:AM', '06:00:PM'),
(58, 'Tuesday', '11:00:AM', '06:00:PM'),
(58, 'Wednesday', '11:00:AM', '06:00:PM'),
(58, 'Thursday', '11:00:AM', '06:00:PM'),
(58, 'Friday', '11:00:AM', '06:00:PM'),
(58, 'Saturday', '11:00:AM', '06:00:PM'),
(59, 'Sunday', '11:00:AM', '05:00:PM'),
(59, 'Wednesday', '11:00:AM', '05:00:PM'),
(59, 'Thursday', '11:00:AM', '05:00:PM'),
(59, 'Friday', '11:00:AM', '08:00:PM'),
(59, 'Saturday', '11:00:AM', '08:00:PM'),
(60, 'Sunday', '10:00:AM', '07:00:PM'),
(60, 'Monday', '11:00:AM', '06:00:PM'),
(60, 'Tuesday', '11:00:AM', '06:00:PM'),
(60, 'Thursday', '11:00:AM', '06:00:PM'),
(60, 'Friday', '11:00:AM', '08:00:PM'),
(60, 'Saturday', '10:00:AM', '07:00:PM'),
(61, 'Sunday', '11:00:AM', '06:00:PM'),
(61, 'Monday', '11:00:AM', '06:00:PM'),
(61, 'Tuesday', '11:00:AM', '06:00:PM'),
(61, 'Wednesday', '11:00:AM', '06:00:PM'),
(61, 'Thursday', '11:00:AM', '06:00:PM'),
(61, 'Friday', '11:00:AM', '06:00:PM'),
(61, 'Saturday', '11:00:AM', '08:00:PM'),
(62, 'Sunday', '10:00:AM', '06:00:PM'),
(62, 'Monday', '10:00:AM', '06:00:PM'),
(62, 'Tuesday', '10:00:AM', '06:00:PM'),
(62, 'Wednesday', '10:00:AM', '06:00:PM'),
(62, 'Thursday', '10:00:AM', '06:00:PM'),
(62, 'Friday', '10:00:AM', '06:00:PM'),
(62, 'Saturday', '10:00:AM', '06:00:PM'),
(63, 'Sunday', '11:00:AM', '04:00:PM'),
(63, 'Tuesday', '11:00:AM', '04:00:PM'),
(63, 'Wednesday', '11:00:AM', '04:00:PM'),
(63, 'Thursday', '11:00:AM', '04:00:PM'),
(63, 'Friday', '11:00:AM', '04:00:PM'),
(63, 'Saturday', '11:00:AM', '04:00:PM'),
(64, 'Sunday', '10:00:AM', '06:00:PM'),
(64, 'Monday', '10:00:AM', '06:00:PM'),
(64, 'Wednesday', '10:00:AM', '06:00:PM'),
(64, 'Thursday', '10:00:AM', '06:00:PM'),
(64, 'Friday', '10:00:AM', '06:00:PM'),
(64, 'Saturday', '10:00:AM', '06:00:PM'),
(65, 'Sunday', '09:30:AM', '05:15:PM'),
(65, 'Tuesday', '09:30:AM', '05:15:PM'),
(65, 'Wednesday', '09:30:AM', '05:15:PM'),
(65, 'Thursday', '09:30:AM', '05:15:PM'),
(65, 'Friday', '09:30:AM', '05:15:PM'),
(65, 'Saturday', '09:30:AM', '05:15:PM'),
(66, 'Sunday', '11:30:AM', '07:00:PM'),
(66, 'Monday', '11:30:AM', '07:00:PM'),
(66, 'Tuesday', '11:30:AM', '07:00:PM'),
(66, 'Wednesday', '11:30:AM', '07:00:PM'),
(66, 'Thursday', '11:30:AM', '07:00:PM'),
(66, 'Friday', '11:30:AM', '07:00:PM'),
(66, 'Saturday', '11:30:AM', '07:00:PM'),
(67, 'Sunday', '10:00:AM', '05:00:PM'),
(67, 'Monday', '10:00:AM', '05:00:PM'),
(67, 'Thursday', '10:00:AM', '05:00:PM'),
(67, 'Friday', '11:00:AM', '08:45:PM'),
(67, 'Saturday', '10:00:AM', '05:00:PM'),
(68, 'Sunday', '11:00:AM', '05:00:PM'),
(68, 'Monday', '11:00:AM', '05:00:PM'),
(68, 'Thursday', '11:00:AM', '08:00:PM'),
(68, 'Friday', '11:00:AM', '05:00:PM'),
(68, 'Saturday', '11:00:AM', '05:00:PM'),
(69, 'Sunday', '10:00:AM', '04:30:PM'),
(69, 'Tuesday', '10:00:AM', '04:30:PM'),
(69, 'Wednesday', '10:00:AM', '04:30:PM'),
(69, 'Thusday', '10:00:AM', '04:30:PM'),
(69, 'Friday', '10:00:AM', '09:00:PM'),
(69, 'Saturday', '10:00:AM', '04:30:PM'),
(70, 'Sunday', '08:15:AM', '06:30:PM'),
(70, 'Tuesday', '08:15:AM', '06:30:PM'),
(70, 'Wednesday', '08:15:AM', '06:30:PM'),
(70, 'Thusday', '08:15:AM', '06:30:PM'),
(70, 'Friday', '08:15:AM', '06:30:PM'),
(70, 'Saturday', '08:15:AM', '06:30:PM'),
(71, 'Sunday', '09:00:AM', '03:30:PM'),
(71, 'Tuesday', '09:00:AM', '03:30:PM'),
(71, 'Wednesday', '09:00:AM', '05:00:PM'),
(71, 'Thusday', '09:00:AM', '05:00:PM'),
(71, 'Friday', '09:00:AM', '03:30:PM'),
(71, 'Saturday', '09:00:AM', '03:30:PM'),
(72, 'Sunday', '10:00:AM', '06:00:PM'),
(72, 'Tuesday', '10:00:AM', '06:00:PM'),
(72, 'Wednesday', '10:00:AM', '06:00:PM'),
(72, 'Thusday', '10:00:AM', '09:00:PM'),
(72, 'Friday', '10:00:AM', '06:00:PM'),
(72, 'Saturday', '10:00:AM', '05:00:PM'),
(73, 'Sunday', '10:00:AM', '05:00:PM'),
(73, 'Wednesday', '10:00:AM', '05:00:PM'),
(73, 'Thusday', '01:00:PM', '08 :00:PM'),
(73, 'Friday', '10:00:AM', '05:00:PM'),
(73, 'Saturday', '10:00:AM', '05:00:PM'),
(74, 'Sunday', '10:00:AM', '05:00:PM'),
(74, 'Tuesday', '10:00:AM', '05:00:PM'),
(74, 'Wednesday', '10:00:AM', '05:00:PM'),
(74, 'Thusday', '10:00:AM', '05:00:PM'),
(74, 'Friday', '10:00:AM', '05:00:PM'),
(74, 'Saturday', '10:00:AM', '05:00:PM'),
(75, 'Sunday', '10:00:AM', '05:00:PM'),
(75, 'Tuesday', '10:00:AM', '05:00:PM'),
(75, 'Wednesday', '10:00:AM', '05:00:PM'),
(75, 'Thusday', '10:00:AM', '05:00:PM'),
(75, 'Friday', '10:00:AM', '05:00:PM'),
(75, 'Saturday', '10:00:AM', '05:00:PM'),
(76, 'Sunday', '10:00:AM', '05:00:PM'),
(76, 'Tuesday', '10:00:AM', '05:00:PM'),
(76, 'Wednesday', '10:00:AM', '05:00:PM'),
(76, 'Thusday', '10:00:AM', '09:00:PM'),
(76, 'Friday', '10:00:AM', '05:00:PM'),
(76, 'Saturday', '10:00:AM', '05:00:PM'),
(77, 'Sunday', '12:00:PM', '05:00:PM'),
(77, 'Tuesday', '10:00:AM', '05:00:PM'),
(77, 'Wednesday', '10:00:AM', '05:00:PM'),
(77, 'Thusday', '10:00:AM', '09:00:PM'),
(77, 'Friday', '10:00:AM', '05:00:PM'),
(77, 'Saturday', '12:00:PM', '08:00:PM'),
(78, 'Sunday', '10:00:AM', '05:00:PM'),
(78, 'Tuesday', '10:00:AM', '05:00:PM'),
(78, 'Wednesday', '10:00:AM', '05:00:PM'),
(78, 'Thusday', '10:00:AM', '05:00:PM'),
(78, 'Friday', '10:00:AM', '05:00:PM'),
(78, 'Saturday', '10:00:AM', '05:00:PM'),
(79, 'Sunday', '10:00:AM', '05:00:PM'),
(79, 'Tuesday', '10:00:AM', '08:00:PM'),
(79, 'Wednesday', '10:00:AM', '08:00:PM'),
(79, 'Thusday', '10:00:AM', '05:00:PM'),
(79, 'Friday', '10:00:AM', '05:00:PM'),
(79, 'Saturday', '10:00:AM', '05:00:PM'),
(80, 'Sunday', '11:00:AM', '05:00:PM'),
(80, 'Tuesday', '11:00:AM', '08:00:PM'),
(80, 'Wednesday', '11:00:AM', '08:00:PM'),
(80, 'Thusday', '11:00:AM', '05:00:PM'),
(80, 'Friday', '11:00:AM', '09:00:PM'),
(80, 'Saturday', '11:00:AM', '05:00:PM'),
(80, 'Saturday', '11:00:AM', '05:00:PM'),
(81, 'Sunday', '10:00:AM', '05:00:PM'),
(81, 'Tuesday', '10:00:AM', '09:00:PM'),
(81, 'Wednesday', '10:00:AM', '05:00:PM'),
(81, 'Thusday', '10:00:AM', '05:00:PM'),
(81, 'Friday', '10:00:AM', '05:00:PM'),
(81, 'Saturday', '10:00:AM', '05:00:PM'),
(82, 'Sunday', '10:00:AM', '06:00:PM'),
(82, 'Monday', '10:00:AM', '06:00:PM'),
(82, 'Tuesday', '10:00:AM', '09:00:PM'),
(82, 'Wednesday', '10:00:AM', '06:00:PM'),
(82, 'Thursday', '10:00:AM', '06:00:PM'),
(82, 'Friday', '10:00:AM', '06:00:PM'),
(82, 'Saturday', '10:00:AM', '06:00:PM'),
(83, 'Sunday', '12:00:PM', '05:00:PM'),
(83, 'Tuesday', '10:00:AM', '05:00:PM'),
(83, 'Wednesday', '10:00:AM', '05:00:PM'),
(83, 'Thusday', '10:00:AM', '05:00:PM'),
(83, 'Friday', '10:00:AM', '05:00:PM'),
(83, 'Saturday', '10:00:AM', '05:00:PM'),
(84, 'Sunday', '10:00:AM', '06:00:PM'),
(84, 'Monday', '10:00:AM', '06:00:PM'),
(84, 'Tuesday', '10:00:AM', '06:00:PM'),
(84, 'Wednesday', '10:00:AM', '06:00:PM'),
(84, 'Thursday', '10:00:AM', '06:00:PM'),
(84, 'Friday', '10:00:AM', '06:00:PM'),
(84, 'Saturday', '10:00:AM', '06:00:PM'),
(85, 'Sunday', '12:00:PM', '07:00:PM'),
(85, 'Monday', '12:00:PM', '05:00:PM'),
(85, 'Thursday', '12:00:PM', '05:00:PM'),
(85, 'Friday', '12:00:PM', '05:00:PM'),
(85, 'Saturday', '12:00:PM', '05:00:PM'),
(86, 'Sunday', '10:00:AM', '06:00:PM'),
(86, 'Monday', '10:00:AM', '06:00:PM'),
(86, 'Tuesday', '10:00:AM', '06:00:PM'),
(86, 'Wednesday', '10:00:AM', '06:00:PM'),
(86, 'Thursday', '10:00:AM', '06:00:PM'),
(86, 'Friday', '10:00:AM', '06:00:PM'),
(86, 'Saturday', '10:00:AM', '06:00:PM');

select *
from museum_hours;