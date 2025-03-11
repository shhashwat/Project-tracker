-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2025 at 02:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `project_name` varchar(255) DEFAULT '',
  `description` text DEFAULT NULL,
  `current_status` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `expected_go_live` date DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `commercials` varchar(400) DEFAULT NULL,
  `benefits_of_project` text DEFAULT NULL,
  `payment_made_till_date` date DEFAULT NULL,
  `last_date_of_payment` date DEFAULT NULL,
  `breakup_of_payment_made_along_with_dates` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `po_issue_date` date DEFAULT NULL,
  `po_acceptance_date` date DEFAULT NULL,
  `validity_of_po_from_date` date DEFAULT NULL,
  `validity_of_po_to_date` date DEFAULT NULL,
  `sla_date` date DEFAULT NULL,
  `activity_description` text DEFAULT NULL,
  `rfp_floating_date` varchar(255) DEFAULT NULL,
  `task_owner` varchar(255) DEFAULT NULL,
  `user_department` varchar(255) DEFAULT NULL,
  `business_impact` text DEFAULT NULL,
  `actual_go_live_date` date DEFAULT NULL,
  `delay` text DEFAULT NULL,
  `reason_for_delay` text DEFAULT NULL,
  `remarks_by_project_lead` text DEFAULT NULL,
  `strategic_alignment` text DEFAULT NULL,
  `dependence` text DEFAULT NULL,
  `uat_start_date` date DEFAULT NULL,
  `uat_end_date` date DEFAULT NULL,
  `percentage_complete` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_name`, `description`, `current_status`, `status`, `vendor`, `expected_go_live`, `category`, `commercials`, `benefits_of_project`, `payment_made_till_date`, `last_date_of_payment`, `breakup_of_payment_made_along_with_dates`, `priority`, `po_issue_date`, `po_acceptance_date`, `validity_of_po_from_date`, `validity_of_po_to_date`, `sla_date`, `activity_description`, `rfp_floating_date`, `task_owner`, `user_department`, `business_impact`, `actual_go_live_date`, `delay`, `reason_for_delay`, `remarks_by_project_lead`, `strategic_alignment`, `dependence`, `uat_start_date`, `uat_end_date`, `percentage_complete`, `created_at`, `updated_at`) VALUES
(1, 'Interoperable Card-less Cash Withdrawal (ICCW)and  Interoperable Card-less Cash Deposit (ICCD)', 'Interoperable Card-less Cash Withdrawal (ICCW) and  Interoperable Card-less Cash Deposit (ICCD) shall facilitate customers who are live on UPI, to withdraw and deposit cash from any participating banks’ ATMs without using their card.', '1. PO issued to M/s Hitachi for acquirer.\r\n2. The functionality is live for issuer where Bank\'s customer can go to other Bank ATM  and withdraw using any UPI application.\r\n3. The UAT infrastructure is provided to M/s Hitachi.\r\n4. The roles and responsibilites of the relevant stakeholders viz., EFT Switch, CBS, ATM Vendors, UPI Switch has been finalised.\r\n5. Code development and integration with existing modules is in progress.', 'In-Progress', 'Hitachi', '2025-05-03', 'Customer-Centric', '2466000.00', NULL, NULL, NULL, NULL, NULL, '2024-12-04', '2024-12-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:20:28'),
(2, 'Harit (Agriculture e-Marketplace)', 'Development & Implementation of e-marketplace for facilitating trade of perishable / non-perishable agriculture goods and services', '1. PO issued to M/s Hitachi for acquirer. \r\n2. The functionality is live for issuer where Bank\'s customer can go to other Bank ATM  and withdraw using any UPI application. \r\n3. The UAT infrastructure is provided to M/s Hitachi.\r\n4. The roles and responsibilites of the relevant stakeholders viz., EFT Switch, CBS, ATM Vendors, UPI Switch has been finalised\r\n5. Code development and integration with existing modules is in progress.', 'In-Progress', 'YARS Enterprise Pvt. Ltd.', '2025-02-28', 'Customer-Centric', 'No Commercials involved', NULL, NULL, NULL, NULL, NULL, '2023-07-25', '2024-02-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:21:04'),
(3, 'Mobile App for Employee Attendance', 'Employee Attendance App for apprientice, field functionaries, bussiness correspondents, agents, CSP, etc, including multi-language support and geo-tagging features.', '1. Approach has been finalised for field functionaries, agents and business correspondants\r\n2. UAT environment has been provided and deployment of solution is in progress.', 'In-Progress', 'YARS Enterprise Pvt. Ltd.', '2025-03-25', 'Staff-Centric', '24,50,000', NULL, NULL, NULL, NULL, NULL, '2024-09-30', '2025-01-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:21:35'),
(4, 'Entity Locker', 'Ministry of Electronics and Information technology (MeitY) and DFS implemented an Entity Locker service and  to tap the critical Government-to-Business (G2B) domain and allows corporate entities, organizations, MSME enterprises and other non-individual agencies to avail the benefits of Entity Locker.', '1.	Bank is LIVE with Entity Locker as an Issuer with two services- \r\nâ€¢	Current Account Statement\r\nâ€¢	Loan Account Statement\r\n2.	Development  and UAT of Loan Interest Certificate is completed.\r\n3. Loan Interest Certificate will be moved to production by 15-02-2025', 'Completed', 'LoanTap Technologies Pvt. Ltd.', '2025-01-09', 'Compliance', '9,50,000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:31:07'),
(5, 'Balance Confirmation', 'Balance Certificate in a standardised format of ICAI (Institue of Chartered Accountant of India) will be issued to Statutory auditors through Balance confirmation portal developed by NeSL. ', '1.	Balance Confirmation portal is developed by NeSL and the related technical documents are shared to Bank.\r\n2.	 Change Request has been given to MIS department and IT Department (Software) to develop and integrate the functionality.\r\n3.	DBD team in coordination with MIS team and Software team. \r\nthe mapping of the Database Tables for Account Related information required in Balance Certificate is finalised. \r\n4.	The in-house software team has initiated the development of APIs.', 'In-progress', 'In House', '2025-04-30', 'Back Office and Compliance', 'No Commercials involved', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:36:15'),
(6, 'Digital Insurance', 'This platform leverages data analytics and AI/ML tools to deliver personalized insurance experience, streamline operations, and optimize cost. It enables customers and branch users to seamlessly purchase policies, manage leads, and customer servicing while benefiting from tailored insurance recommendations via Assisted as well as Do-It-Yourself (DIY) modes. ', 'In CUG:\r\n\r\n1.	 Five LIC products â€“ Jeevan Akshay, Jeevan Shanti, Jeevan Utsav, Nivesh plus, Pension plus are moved to the production and are under CUG.\r\n\r\n2.	Other Modules which are moved to the production are as underneath\r\nâ€¢	Purchase Journey, \r\nâ€¢	ADMIN Module, \r\nâ€¢	User Management, \r\nâ€¢	Customer 360,\r\nâ€¢	Sales Report \r\n\r\n3.	UAT sign off for three more products from United India Insurance is received and expected to be deploy in production by 14-02-2025\r\n\r\n4. The following products are in UAT. \r\na)	Bajaj Allianz (BAGIC) â€“ 5 insurance products\r\nb)	Manipal Cigna â€“ 4 insurance Produ', 'Completed', 'Zopper ', '2025-01-16', 'Customer Centric and Back Office', '2,89,00,000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:36:15'),
(7, 'Trading Account Opening', 'This solution integrates the account opening process, allowing clients to open Demat Account/ Trading accounts seamlessly through Internet banking/ Mobile Banking \n', '1.	Development, Deployment, Integration and Testing of Trading account opening completed with Trading partner- Aditya Birla Money & Religare.\r\n2.	VA,PT and API audit completed for the solution.\r\n3.	Trading Account Opening facility from Aditya Birla Money is made LIVE through Internet Banking ', 'Completed', 'Aditya Birla Religare', '2025-08-02', 'Customer Centric', 'Revenue Sharing Model', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:36:15'),
(8, 'Payment Hub', 'The Bank has on-boarded M/s. NorthaKross Technologies Pvt. Ltd for providing Payment Hub Solution for on-boarding and monitoring of various Payment Aggregators for Internet Banking payment mode Transactions.', '1.Easebuzz as a payment aggregator is live on 09/11/2024\r\n2.Developement of PayU as a payment aggregator is in progress\r\n3.Discussion on integration of NTT DATA and CC Avenue payment aggregators is in progress.', 'Completed', 'North Ackross', '2024-09-11', 'Back Office', 'Revenue Sharing Model', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:36:15'),
(9, 'Lifestyle Banking', 'Lifestyle banking is a revamped version of current mobile banking application. This application allows customers to manage their finances and access additional services related to lifestyle activities such as travel, shopping, and dining. ', '1. Requirement Gathering, Gap Analysis completed and FSD sign off for MVP-1(as envisaged in RFP) has been given to M/s i-Exceed ( partner for Life-Style Banking Solution )\r\n2. Infra for UAT setup has been provided and UAT testing is in progress. 3.Discussion for Production hardware sizing and setup with all concerned stakeholders have been completed. Hardware delivery is completed. VA Scan production server is in progress.', 'In-progress', 'iExceed', '2025-03-15', 'Customer Centric', '67,72,83,507', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:36:15'),
(10, 'UPI Lite', 'With UPI Lite feature customers can enjoy instant payments upto Rs. 500/- per transaction with minimal process time. Customer can make multiple payments without any hassel of entering UPI PIN each time. This is a wallet based facility. ', 'Go-live date: 20/12/2024', 'Completed', 'Sarvatra Technologies Pvt. Ltd.', NULL, 'Customer Centric', '10,02,000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:12:18'),
(11, 'AI Based Predictive Analysis', 'This project leverages AI and machine learning to analyze historical data, identify patterns, and make accurate predictions. By utilizing advanced algorithms, it helps in forecasting trends, detecting risks, and making data-driven decisions. The goal is to enhance efficiency, optimize business strategies, and improve overall decision-making by providing actionable insights. ', 'Following use cases were made live \r\n1. Due past days risk index : 23-01-2025\r\n2. NPA Forecasting : 28-06-2024\r\n3. Debt collection prediction for housing loan borrowers. : 24-05-2024\r\n4. Stress prediction for housing loan borrowers.24-05-2024\r\n', 'Completed', 'Cyborg Intell', '2024-05-24', 'Back Office', '1,93,50,000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:36:15'),
(12, 'AI Based Interactive Voice Assistance', 'AI-powered interactive voice assistant to enhance customer engagement through automated outbound calls. This AI-driven bot proactively reaches out to customers, informing them about various Bank services. Our goal is to improve the customer experience by making our outreach more efficient, accessible, and personalized. This initiative strengthens our digital services and drives innovation by optimizing outbound calling, increasing efficiency, reducing costs, and delivering a seamless and personalized banking experience.\n\n', 'Following use cases were made live \r\n1. Due past days risk index : 23-01-2025\r\n2. NPA Forecasting : 28-06-2024\r\n3. Debt collection prediction for housing loan borrowers. : 24-05-2024\r\n4. Stress prediction for housing loan borrowers.24-05-2024\r\n', 'Completed', 'Saarthi.ai', '2024-07-30', 'Customer Centric and Back Office', '1,15,50,000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:43:16'),
(13, 'Judicial Officer Interest subvention for vehicle loan', 'The solution provides interest subvention amount to Rajasthan Gov. for Vehicle loans of Raj Gov Employees through API', 'Following use cases were made live:\r\n1. Credit card use cases for pre-due, sma0,sma1,sma2 and NPA customers : 18-01-2025  \r\n2. Welcome Calling - New Loan Accounts: 02-01-2025\r\n3. Debt collection call for SMA (0, 1 and 2) account holders : 10-10-2024\r\n4. Reminder for Inoperative Accounts : 04-10-2024\r\n5. Reminder for Nomination Registration for Deposit Accounts: 04-10-2024\r\n6. Welcome Calling - New CIF:   30-07-2024 ', 'In-progress', 'ScoreMe Solution Pvt. Ltd.', '2025-03-15', 'Customer Centric', '5,00,000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:43:16'),
(14, 'CBDC (Central Bank Digital Currency)', 'Digital Rupee is India\'s Central Bank Digital Currency (CBDC):  Digital Rupee is issued by RBI in Digital form and offers features similar to physical cash. It is stored in the user\'s digital wallet and can be used to receive/ send money, and / or make payment for transactions, just like any physical note', '1. Approach for the solution has been finalised\r\n2. The development for the same has been completed\r\n3. Testing is in progress by Raj Gov. employees', 'In-progress', 'Sarvatra Technologies Pvt. Ltd.', '2025-02-14', 'Customer Centric', '2,46,70,000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:43:16'),
(15, 'Intelligent Document Processing on POC Basis', 'This POC solutions is designed to address the evolving needs of Bank, aim to efficiently extract and process data from various document types and integration of APIs services for OCR extraction, masking, signature detection, and face matching and handling a wide array of documents. Implementation of ‘Intelligent Document Processing’ involves use of below mentioned services which are part of API based document validation module:\n•	Aadhaar verification\n•	PAN verification\n•Passport verification', '1.	UAT setup for DTSP and RTSP is completed.\r\n2.	Certification completed & sign off received from NPCI with new UAT set-up of NPCI.\r\n3.	Production setup is in progress for both DTSP and RTSP components of CBDC project. \r\n4. CBDC Blockchian synchronisation is completed in prod setup \r\n5. IS Audit and VA, PT is completed and closure of reported observations is in progress. \r\n6. CBDC- UPI Interoperatability is completed and will be deployed at UPI switch end by 12-02-2025\r\n7. Current Account opening process for UPI interoperatability is in progress in co-ordination with FMA Dept.', 'In-progress', 'PixDynamics', '2025-02-28', 'Back Office', 'No Commercials involved', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:43:16'),
(16, 'QR Sound Box Solution on POC Basis for 1000 Soundboxes', 'This solution is to integrate QR codes with soundboxes that will be availed by Merchants directly from Branches. There are additional facilities like Mobile application for merchants to track transaction details and Banker portal for branches to track the status of soundboxes like idle, active/inactive. ', '1. UAT environment is provided to M/s PixDynamics team.\r\n2. The solution is deployed in UAT environment and integration with LLMS is completed. \r\n3. LLMS Team has tested the functionality for documents for Aadhaar and PAN\r\n4. Testing for passport is underway by LLMS team.', 'In-progress', 'NPST', '2025-03-15', 'Customer Centric', '12,75,000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:43:16'),
(17, 'Bulk Payment System', 'This project enables corporate customers to make multiple payments simultaneously through their ERP system and using NPCI platform to a large number of recipients. This bulk payment solution reduces manual effort and provides one stop solution to corporate customers for processing bulk payments. ', '1.	PO was issued on 21.11.2024 to NPST.\r\n2.	Initial discussion and requirement gathering has been completed. \r\n3.	All APIs along with integration document are shared with NPST.\r\n4.	FSD review and finalisation is in progress. \r\n5.	Development and deployment of the solution in UAT enviornment is in progress.', 'In-progress', 'Vanghee', '2025-03-31', 'Customer Centric', 'No Commercials involved', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:43:16'),
(18, 'Pre-Qualified Personal Loan (PQPL) ', 'Pre-qualified personal loans are instant loans that are disbursed to select customers. It requires minimum documentation and no collateral or security. Bank has developed an STP journey for ETB customers and offer loans up to 5 Lakhs through various digital channels i.e. MahaMobile, Internet Banking and Bank’s Corporate website.', '1. PAPL journey was made live for Staff and few pilot zones.\n2. The journey was kept on hold for want of BSA(Bank Statement Analyser) \n3. The BSA server is now deployed in Bank\'s environment.\n4. The testing of the functionality is in progress by Digital B', 'In-progress', 'ScoreMe Solution Pvt. Ltd.', '2025-02-17', 'Customer Centric', '17,50,000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:14:36'),
(19, 'GST Credit Scheme for ETB and NTB customers', 'GST credit scheme is a need based working capital requirement upto Rs. 25 lakhs for trading/ services/ manufacturing activity. A MSME unit borrower should have valid GST returns (GSTR-1)/ provisional registration (GSTR-25) or Final Registration for being eligible for the credit scheme. Bank intends to develop a STP journey for renewal of GST Credit Scheme for MSME units from Rs. 10 Lakhs to Rs. 25 Lakhs', '1. PAPL journey was made live for Staff and few pilot zones.\r\n2. The journey was kept on hold for want of BSA(Bank Statement Analyser) \r\n3. The BSA server is now deployed in Banks environment.\r\n4. The testing of the functionality is in progress by Digital Business Zone', 'In-progress', 'ScoreMe Solution Pvt. Ltd.', '2025-02-28', 'Customer Centric', 'ETB: 24,00,000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:43:16'),
(20, 'Vehicle Loan for ETB and NTB customers', 'The current process of Vehicle Financing involves physical processing of applications and in-person verification of documents which leads to higher TAT and human errors. Bank intends to develop a Digital Vehicle Loan journey by automating the existing process for reducing the TAT, errors, overhead cost and enhance customer experience. ', '1. Digital Journey for e-GST Credit Scheme for ETB customer was made live on 08/07/2024\r\n2.  Approach for the NTB functionality has been finalised\r\n3. Digital Journey for e-GST Credit Scheme for NTB customers is under development.\r\n', 'In-progress', 'ScoreMe Solution Pvt. Ltd.', '2025-02-28', 'Customer', 'ETB: 24,00,000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:43:16'),
(21, 'e-OTS Phase-I and Phase-II', 'One-time Settlement is a mechanism employed by lenders/banks to recover money from customers unable to pay.', '1.  Digital Journey for Vehcile Loan for ETB customer was made live on 03/08/2024\r\n2.  Approach finalisation for NTB journey is in progress \r\n3.  Vendor is simultaneously working on account aggregator  and e-NACH integration for both ETB and NTB journeys.', 'ETB Journey : Completed\nNTB: In-progress', 'ScoreMe Solution Pvt. Ltd.', '2025-03-15', 'Customer Centric', 'Phase-1: 17,50,000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:43:16'),
(22, 'Gold Loan Journey for Customers and Branch Assisted', 'Bank developed a branch assisted Gold Loan Journey in 3 phases for ETB and NTB customers. The 3 phases are as follows:\n1.	Customer to enter basic details, select the gold loan scheme and book the slot in the nearest branch for availing Gold Loan.\n2.	Development for appraiser portal to capture jewellery details and e-sign the appraiser certificate.\n3.	Issuance of loan sanction letter and instant loan disbursement', '1. e-OTS Phase 1 was made live on 08/02/2024\r\n2. Approach has been finalised for Phase II\r\n3. Development for e-OTS Phase -II for closure of accounts through digital journey is in progress.', 'ETB Journey : Completed\nNTB: In-progress\n', 'ScoreMe Solution Pvt. Ltd.', '2025-08-02', 'Customer Centric', 'Phase-2:\n24,00,000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:43:16'),
(23, 'Implementation of MUDRA STP ETB for NTB customers', 'Implementation of platform for Straight Through Process (STP) journey for MSME Shishu, Kishor, Tarun .', '1. Digital Gold Loan journey Phase-I was made live on 08/07/2024.\r\n2. Development for advancement suggested under gold loan digital journey in branch module is completed\r\n3. Further changes suggested by Retail Gold Vertical is under development.', 'ETB Journey : Completed\nNTB: In-progress\n', 'ScoreMe Solution Pvt. Ltd.', '2025-08-02', 'Customer Centric', 'ETB: 24,00,0000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:43:16'),
(24, 'Aadhaar Based SB account Opening', 'The bank is implementing changes in Online Account Opening Digital Journey to enhance security and compliance. Additionally, customers identity will be authenticated by sending OTP to mobile number registered with Aadhaar number.', '1. Mudra STP Journey for ETB customers were made live on 08/02/2024\r\n2. Development for Mudra STP Journey for NTB upto Rs. 10 Lakh is completed\r\n3. Testing for the same is in progress by MSME and DBZ', 'In-progress\n', 'Kiya.ai', '2025-02-28', 'Customer Centric', 'ETB: 13,50,000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:43:16'),
(25, 'e-NACH', 'e-NACH Sponsor Module: Bank is implementing e-NACH Sponsor Module for providing, facility for initiating e-mandate for EMI registration for New to the Bank customers.', '1. The integration of Aadhaar auth API has been completed.\r\n2. The integration of CKYC search API at code level is completed \r\n3. UAT is in progress by Digital Banking and Operations Dept.', 'In-progress', 'Adroit', '2025-03-15', 'Customer Centric', '21,28,000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:43:16'),
(26, 'Generative AI', 'POC for Generative AI with M/s PixDynamics\n\n\n\n', '1.	Development has been completed by Adroit.\r\n2.	UAT is completed by Operation Dept. and Digital Banking Team.\r\n3. VA and Source Code is completed, Penetration Testing is in progress. ', 'In-progress', 'PixDynamics', '2025-02-15', 'Staff', 'No Commmercials involved', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:43:16'),
(27, 'Earned Salary Advance for Rajasthan Got. employee', 'Platform for Rajasthan Govt. employee to avail Salary advance', '1.POC process is initiated and detailed scope is shared along with use cases with M/s PixDynamics.\r\n2. Following use cases are proposed for implementation: \r\na. Chatbot Support for Employees: AI-driven support for various banking guidelines from RBI, GOI, NPCI, IBA, DFS, State Government, etc.\r\nb.Sentiment Analysis: AI-driven social media monitoring to understand customer feedback and improve services.\r\n3.  Dedicated instance for GenAI has been deployed by PixDyanmics on their cloud.\r\n4. Model training for first use case is in progress.', 'In-progress', 'ScoreMe Solution Pvt. Ltd.', '2025-03-15', 'Customer Centric', '15,00,000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:43:16'),
(28, 'Corporate Salary Account Opening', 'Platform for Corporate salary employee for opening of saving account using VCIP functionality.', '1. Development is completed\r\n2. UAT is completed by Digital Banking\r\n3. Testing by IFMS (Rajasthan Govt.) is in progress.', 'In-progress', 'ScoreMe Solution Pvt. Ltd.', '2025-02-28', 'Customer Centric', '17,50,000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:43:16'),
(29, 'Kisan Tatkal Loan', 'Farmers can avail loan upto Rs.50,000/-though Digital Platform without visiting Branch', '1. Development is completed\r\n2. UAT is in progress by Digital Banking and Operations Dept.\r\n3. Development of revised API for CIF creation is in progress at CBS end in co-ordination with Operations Dept.', 'In-progress', 'LoanTap Technologies Pvt. Ltd.', '2025-02-28', 'Customer Centric', '14,03,000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:43:16'),
(30, 'ATL- Dairy Loan (In-Principle Sanction)', 'Farmers can apply for dairy loan through digital platform and avail in-principle sanction. Branch will complete the further processing of loan.', '1. Development is completed\n2. UAT is in progress by Agriculture Dept.', 'In-progress', 'LoanTap Technologies Pvt. Ltd.', '2025-03-15', 'Customer Centric', '6,50,000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:19:19'),
(31, 'Early Warning Signals (EWS) ', 'Implementation & Maintenance of Early Warning Signals (EWS) with Web EWS Tool, Daily EWS AlertS, Configurable Alerts Tracking, Data Integration - Bank Internal Data & External Data, etc.', '1. PO issued dated 14/01/2025\n2. PO accepted dated 21/01/2025\n3. approach finalisation by vendor and Cre Mon Team is in progress', 'In-progress', 'Eagle Peak Intel Private Limited', '0000-00-00', 'Back Office', '1,95,00,000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 09:29:32', '2025-03-11 11:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `project_tracker_header__2_`
--

CREATE TABLE `project_tracker_header__2_` (
  `COL 1` varchar(3) DEFAULT NULL,
  `COL 2` varchar(94) DEFAULT NULL,
  `COL 3` varchar(527) DEFAULT NULL,
  `COL 4` varchar(10) DEFAULT NULL,
  `COL 5` varchar(10) DEFAULT NULL,
  `COL 6` varchar(10) DEFAULT NULL,
  `COL 7` varchar(32) DEFAULT NULL,
  `COL 8` varchar(10) DEFAULT NULL,
  `COL 9` varchar(10) DEFAULT NULL,
  `COL 10` varchar(10) DEFAULT NULL,
  `COL 11` varchar(10) DEFAULT NULL,
  `COL 12` varchar(10) DEFAULT NULL,
  `COL 13` varchar(23) DEFAULT NULL,
  `COL 14` varchar(32) DEFAULT NULL,
  `COL 15` varchar(10) DEFAULT NULL,
  `COL 16` varchar(10) DEFAULT NULL,
  `COL 17` varchar(10) DEFAULT NULL,
  `COL 18` varchar(10) DEFAULT NULL,
  `COL 19` varchar(41) DEFAULT NULL,
  `COL 20` varchar(10) DEFAULT NULL,
  `COL 21` varchar(732) DEFAULT NULL,
  `COL 22` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `project_tracker_header__2_`
--

INSERT INTO `project_tracker_header__2_` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`, `COL 12`, `COL 13`, `COL 14`, `COL 15`, `COL 16`, `COL 17`, `COL 18`, `COL 19`, `COL 20`, `COL 21`, `COL 22`) VALUES
('dvd', 'Interoperable Card-less Cash Withdrawal (ICCW)and  Interoperable Card-less Cash Deposit (ICCD)', 'Interoperable Card-less Cash Withdrawal (ICCW) and  Interoperable Card-less Cash Deposit (ICCD) shall facilitate customers who are live on UPI, to withdraw and deposit cash from any participating banks’ ATMs without using their card.  ', '', '', '', 'Hitachi', '12-04-2024', '12-09-2024', '', '', '', '24,66,000', 'Customer Centric', '', '', '', '', 'In-progress', '', '1. PO issued to M/s Hitachi for acquirer. \n2. The functionality is live for issuer where Bank\'s customer can go to other Bank ATM  and withdraw using any UPI application. \n3. The UAT infrastructure is provided to M/s Hitachi.\n4. The roles and responsibilites of the relevant stakeholders viz., EFT Switch, CBS, ATM Vendors, UPI Switch has been finalised\n5. Code development and integration with existing modules is in progress. ', 'ICCW: 31-05-2025\nICCD: 31-07-2025'),
('', 'Harit (Agriculture e-Marketplace)', 'Development & Implementation of e-marketplace for facilitating trade of perishable / non-perishable agriculture goods and services', '', '', '', 'YARS Enterprise Pvt. Ltd.', '25-07-2023', '02-08-2024', '', '', '', 'No Commercials involved', 'Customer Centric', '', '', '', '', 'In-progress', '', '1.	Development of Buyer, Seller and Buyer Agent module is completed.\n2. The functionality has been deployed in UAT and testing by Digital Banking Team is in progress\n3. Post successful testing the IS Audit process i.e. VA, PT, Source code will be initioated. ', '2/28/2025'),
('', 'Mobile App for Employee Attendance', 'Employee Attendance App for apprientice, field functionaries, bussiness correspondents, agents, CSP, etc, including multi-language support and geo-tagging features. ', '', '', '', 'YARS Enterprise Pvt. Ltd.', '30-09-2024', '01-09-2025', '', '', '', '24,50,000', 'Staff Centric', '', '', '', '', 'In-progress', '', '1. Approach has been finalised for field functionaries, agents and business correspondants\n2. UAT environment has been provided and deployment of solution is in progress. ', '3/25/2025'),
('', 'Entity Locker', 'Ministry of Electronics and Information technology (MeitY) and DFS implemented an Entity Locker service and  to tap the critical Government-to-Business (G2B) domain and allows corporate entities, organizations, MSME enterprises and other non-individual agencies to avail the benefits of Entity Locker.', '', '', '', 'LoanTap Technologies Pvt. Ltd.', '', '', '', '', '', '9,50,000', 'Compliance', '', '', '', '', 'Completed', '', '1.	Bank is LIVE with Entity Locker as an Issuer with two services- \n•	Current Account Statement\n•	Loan Account Statement\n2.	Development  and UAT of Loan Interest Certificate is completed.\n3. Loan Interest Certificate will be moved to production by 15-02-2025', '01-09-2025'),
('', 'Balance Confirmation', 'Balance Certificate in a standardised format of ICAI (Institue of Chartered Accountant of India) will be issued to Statutory auditors through Balance confirmation portal developed by NeSL. ', '', '', '', 'In House', '', '', '', '', '', 'No Commercials involved', 'Back Office and Compliance', '', '', '', '', 'In-progress', '', '1.	Balance Confirmation portal is developed by NeSL and the related technical documents are shared to Bank.\n2.	 Change Request has been given to MIS department and IT Department (Software) to develop and integrate the functionality.\n3.	DBD team in coordination with MIS team and Software team. \nthe mapping of the Database Tables for Account Related information required in Balance Certificate is finalised. \n4.	The in-house software team has initiated the development of APIs.', '4/30/2025'),
('', 'Digital Insurance', 'This platform leverages data analytics and AI/ML tools to deliver personalized insurance experience, streamline operations, and optimize cost. It enables customers and branch users to seamlessly purchase policies, manage leads, and customer servicing while benefiting from tailored insurance recommendations via Assisted as well as Do-It-Yourself (DIY) modes. ', '', '', '', 'Zopper ', '', '', '', '', '', '2,89,00,000', 'Customer Centric and Back Office', '', '', '', '', 'Completed', '', 'In CUG:\n\n1.	 Five LIC products – Jeevan Akshay, Jeevan Shanti, Jeevan Utsav, Nivesh plus, Pension plus are moved to the production and are under CUG.\n\n2.	Other Modules which are moved to the production are as underneath\n•	Purchase Journey, \n•	ADMIN Module, \n•	User Management, \n•	Customer 360,\n•	Sales Report \n\n3.	UAT sign off for three more products from United India Insurance is received and expected to be deploy in production by 14-02-2025\n\n4. The following products are in UAT. \na)	Bajaj Allianz (BAGIC) – 5 insurance products\nb)	Manipal Cigna – 4 insurance Products\nc)	United India – 2 insurance products.\nd)	AVIVA Life Insurance – 4 insurance products.\ne)	Dashboard Module\nf)	Marketing Module\ng)	Recon and Commission Module.', ' 16-01-2025\n'),
('', 'Trading Account Opening', 'This solution integrates the account opening process, allowing clients to open Demat Account/ Trading accounts seamlessly through Internet banking/ Mobile Banking \n', '', '', '', 'Aditya Birla Religare', '', '', '', '', '', 'Revenue Sharing Model', 'Customer Centric', '', '', '', '', 'Completed', '', '1.	Development, Deployment, Integration and Testing of Trading account opening completed with Trading partner- Aditya Birla Money & Religare.\n2.	VA,PT and API audit completed for the solution.\n3.	Trading Account Opening facility from Aditya Birla Money is made LIVE through Internet Banking ', '02-08-2025'),
('', 'Payment Hub', 'The Bank has on-boarded M/s. NorthaKross Technologies Pvt. Ltd for providing Payment Hub Solution for on-boarding and monitoring of various Payment Aggregators for Internet Banking payment mode Transactions.', '', '', '', 'North Ackross', '', '', '', '', '', 'Revenue Sharing Model', 'Back Office', '', '', '', '', 'Completed', '', '1.Easebuzz as a payment aggregator is live on 09/11/2024\n2.Developement of PayU as a payment aggregator is in progress\n3.Discussion on integration of NTT DATA and CC Avenue payment aggregators is in progress. ', '11-09-2024'),
('', 'Lifestyle Banking', 'Lifestyle banking is a revamped version of current mobile banking application. This application allows customers to manage their finances and access additional services related to lifestyle activities such as travel, shopping, and dining. ', '', '', '', 'iExceed', '', '', '', '', '', '67,72,83,507', 'Customer Centric', '', '', '', '', 'In-progress', '', '1. Requirement Gathering, Gap Analysis completed and FSD sign off for MVP-1(as envisaged in RFP) has been given to M/s i-Exceed ( partner for Life-Style Banking Solution )\n2. Infra for UAT setup has been provided and UAT testing is in progress. 3.Discussion for Production hardware sizing and setup with all concerned stakeholders have been completed. Hardware delivery is completed. VA Scan production server is in progress.', '3/15/2025'),
('', 'UPI Lite', 'With UPI Lite feature customers can enjoy instant payments upto Rs. 500/- per transaction with minimal process time. Customer can make multiple payments without any hassel of entering UPI PIN each time. This is a wallet based facility. ', '', '', '', 'Sarvatra Technologies Pvt. Ltd.', '', '', '', '', '', '10,02,000', 'Customer Centric', '', '', '', '', 'Completed', '', 'Go-live date: 20/12/2024', 'NA'),
('', 'AI Based Predictive Analysis', 'This project leverages AI and machine learning to analyze historical data, identify patterns, and make accurate predictions. By utilizing advanced algorithms, it helps in forecasting trends, detecting risks, and making data-driven decisions. The goal is to enhance efficiency, optimize business strategies, and improve overall decision-making by providing actionable insights. ', '', '', '', 'Cyborg Intell', '', '', '', '', '', '1,93,50,000', 'Back Office', '', '', '', '', 'Completed', '', 'Following use cases were made live \n1. Due past days risk index : 23-01-2025\n2. NPA Forecasting : 28-06-2024\n3. Debt collection prediction for housing loan borrowers. : 24-05-2024\n4. Stress prediction for housing loan borrowers.24-05-2024\n\n', '5/24/2024'),
('', 'AI Based Interactive Voice Assistance', 'AI-powered interactive voice assistant to enhance customer engagement through automated outbound calls. This AI-driven bot proactively reaches out to customers, informing them about various Bank services. Our goal is to improve the customer experience by making our outreach more efficient, accessible, and personalized. This initiative strengthens our digital services and drives innovation by optimizing outbound calling, increasing efficiency, reducing costs, and delivering a seamless and personalized banking experience.\n\n', '', '', '', 'Saarthi.ai', '', '', '', '', '', '1,15,50,000', 'Customer Centric and Back Office', '', '', '', '', 'Completed', '', 'Following use cases were made live:\n1. Credit card use cases for pre-due, sma0,sma1,sma2 and NPA customers : 18-01-2025  \n2. Welcome Calling - New Loan Accounts: 02-01-2025\n3. Debt collection call for SMA (0, 1 and 2) account holders : 10-10-2024\n4. Reminder for Inoperative Accounts : 04-10-2024\n5. Reminder for Nomination Registration for Deposit Accounts: 04-10-2024\n6. Welcome Calling - New CIF:   30-07-2024 \n', '7/30/2024'),
('', 'Judicial Officer Interest subvention for vehicle loan', 'The solution provides interest subvention amount to Rajasthan Gov. for Vehicle loans of Raj Gov Employees through API', '', '', '', 'ScoreMe Solution Pvt. Ltd.', '', '', '', '', '', '5,00,000', 'Customer Centric', '', '', '', '', 'In-progress', '', '1. Approach for the solution has been finalised\n2. The development for the same has been completed\n3. Testing is in progress by Raj Gov. employees', '3/15/2025'),
('', 'CBDC (Central Bank Digital Currency)', 'Digital Rupee is India\'s Central Bank Digital Currency (CBDC):  Digital Rupee is issued by RBI in Digital form and offers features similar to physical cash. It is stored in the user\'s digital wallet and can be used to receive/ send money, and / or make payment for transactions, just like any physical note', '', '', '', 'Sarvatra Technologies Pvt. Ltd.', '', '', '', '', '', '2,46,70,000', 'Customer Centric', '', '', '', '', 'In-progress', '', '1.	UAT setup for DTSP and RTSP is completed.\n2.	Certification completed & sign off received from NPCI with new UAT set-up of NPCI.\n3.	Production setup is in progress for both DTSP and RTSP components of CBDC project. \n4. CBDC Blockchian synchronisation is completed in prod setup \n5. IS Audit and VA, PT is completed and closure of reported observations is in progress. \n6. CBDC- UPI Interoperatability is completed and will be deployed at UPI switch end by 12-02-2025\n7. Current Account opening process for UPI interoperatability is in progress in co-ordination with FMA Dept.', '2/14/2025'),
('', 'Intelligent Document Processing on POC Basis', 'This POC solutions is designed to address the evolving needs of Bank, aim to efficiently extract and process data from various document types and integration of APIs services for OCR extraction, masking, signature detection, and face matching and handling a wide array of documents. Implementation of ‘Intelligent Document Processing’ involves use of below mentioned services which are part of API based document validation module:\n•	Aadhaar verification\n•	PAN verification\n•Passport verification', '', '', '', 'PixDynamics', '', '', '', '', '', 'No Commercials involved', 'Back Office', '', '', '', '', 'In-progress', '', '1. UAT environment is provided to M/s PixDynamics team.\n2. The solution is deployed in UAT environment and integration with LLMS is completed. \n3. LLMS Team has tested the functionality for documents for Aadhaar and PAN\n4. Testing for passport is underway by LLMS team.', '2/28/2025'),
('', 'QR Sound Box Solution on POC Basis for 1000 Soundboxes', 'This solution is to integrate QR codes with soundboxes that will be availed by Merchants directly from Branches. There are additional facilities like Mobile application for merchants to track transaction details and Banker portal for branches to track the status of soundboxes like idle, active/inactive. ', '', '', '', 'NPST', '', '', '', '', '', '12,75,000', 'Customer Centric', '', '', '', '', 'In-progress', '', '1.	PO was issued on 21.11.2024 to NPST.\n2.	Initial discussion and requirement gathering has been completed. \n3.	All APIs along with integration document are shared with NPST.\n4.	FSD review and finalisation is in progress. \n5.	Development and deployment of the solution in UAT enviornment is in progress. ', '3/15/2025'),
('', 'Bulk Payment System', 'This project enables corporate customers to make multiple payments simultaneously through their ERP system and using NPCI platform to a large number of recipients. This bulk payment solution reduces manual effort and provides one stop solution to corporate customers for processing bulk payments. ', '', '', '', 'Vanghee', '', '', '', '', '', 'No Commercials involved', 'Customer Centric', '', '', '', '', 'In-progress', '', '1. Approval from CIO for this POC has been received.\n2. Approach finalisation for deployment of the solution is in progress. ', '3/31/2025'),
('', 'Pre-Qualified Personal Loan (PQPL) ', 'Pre-qualified personal loans are instant loans that are disbursed to select customers. It requires minimum documentation and no collateral or security. Bank has developed an STP journey for ETB customers and offer loans up to 5 Lakhs through various digital channels i.e. MahaMobile, Internet Banking and Bank’s Corporate website.', '', '', '', 'ScoreMe Solution Pvt. Ltd.', '', '', '', '', '', '17,50,000', 'Customer Centric', '', '', '', '', 'In-progress', '', '1. PAPL journey was made live for Staff and few pilot zones.\n2. The journey was kept on hold for want of BSA(Bank Statement Analyser) \n3. The BSA server is now deployed in Bank\'s environment.\n4. The testing of the functionality is in progress by Digital Business Zone', '2/17/2025'),
('', 'GST Credit Scheme for ETB and NTB customers', 'GST credit scheme is a need based working capital requirement upto Rs. 25 lakhs for trading/ services/ manufacturing activity. A MSME unit borrower should have valid GST returns (GSTR-1)/ provisional registration (GSTR-25) or Final Registration for being eligible for the credit scheme. Bank intends to develop a STP journey for renewal of GST Credit Scheme for MSME units from Rs. 10 Lakhs to Rs. 25 Lakhs', '', '', '', 'ScoreMe Solution Pvt. Ltd.', '', '', '', '', '', 'ETB: 24,00,000', 'Customer Centric', '', '', '', '', 'In-progress', '', '1. Digital Journey for e-GST Credit Scheme for ETB customer was made live on 08/07/2024\n2.  Approach for the NTB functionality has been finalised\n3. Digital Journey for e-GST Credit Scheme for NTB customers is under development.\n', '2/28/2025'),
('', 'Vehicle Loan for ETB and NTB customers', 'The current process of Vehicle Financing involves physical processing of applications and in-person verification of documents which leads to higher TAT and human errors. Bank intends to develop a Digital Vehicle Loan journey by automating the existing process for reducing the TAT, errors, overhead cost and enhance customer experience. ', '', '', '', 'ScoreMe Solution Pvt. Ltd.', '', '', '', '', '', 'ETB: 24,00,000', 'Customer', '', '', '', '', 'In-progress', '', '1.  Digital Journey for Vehcile Loan for ETB customer was made live on 03/08/2024\n2.  Approach finalisation for NTB journey is in progress \n3.  Vendor is simultaneously working on account aggregator  and e-NACH integration for both ETB and NTB journeys. ', '2/28/2025'),
('', 'e-OTS Phase-I and Phase-II', 'One-time Settlement is a mechanism employed by lenders/banks to recover money from customers unable to pay.', '', '', '', 'ScoreMe Solution Pvt. Ltd.', '', '', '', '', '', 'Phase-1: 17,50,000', 'Customer Centric', '', '', '', '', 'ETB Journey : Completed\nNTB: In-progress', '', '1. e-OTS Phase 1 was made live on 08/02/2024\n2. Approach has been finalised for Phase II\n3. Development for e-OTS Phase -II for closure of accounts through digital journey is in progress.\n', '3/15/2025'),
('', 'Gold Loan Journey for Customers and Branch Assisted', 'Bank developed a branch assisted Gold Loan Journey in 3 phases for ETB and NTB customers. The 3 phases are as follows:\n1.	Customer to enter basic details, select the gold loan scheme and book the slot in the nearest branch for availing Gold Loan.\n2.	Development for appraiser portal to capture jewellery details and e-sign the appraiser certificate.\n3.	Issuance of loan sanction letter and instant loan disbursement', '', '', '', 'ScoreMe Solution Pvt. Ltd.', '', '', '', '', '', 'Phase-1: 24,00,000', 'Customer Centric', '', '', '', '', 'ETB Journey : Completed\nNTB: In-progress\n', '', '1. Digital Gold Loan journey Phase-I was made live on 08/07/2024.\n2. Development for advancement suggested under gold loan digital journey in branch module is completed\n3. Further changes suggested by Retail Gold Vertical is under development.  ', '02-08-2025'),
('', 'Implementation of MUDRA STP ETB for NTB customers', 'Implementation of platform for Straight Through Process (STP) journey for MSME Shishu, Kishor, Tarun .', '', '', '', 'ScoreMe Solution Pvt. Ltd.', '', '', '', '', '', 'ETB: 24,00,000', 'Customer Centric', '', '', '', '', 'ETB Journey : Completed\nNTB: In-progress\n', '', '1. Mudra STP Journey for ETB customers were made live on 08/02/2024\n2. Development for Mudra STP Journey for NTB upto Rs. 10 Lakh is completed\n3. Testing for the same is in progress by MSME and DBZ', '02-08-2025'),
('', 'Aadhaar Based SB account Opening', 'The bank is implementing changes in Online Account Opening Digital Journey to enhance security and compliance. Additionally, customers identity will be authenticated by sending OTP to mobile number registered with Aadhaar number.', '', '', '', 'Kiya.ai', '', '', '', '', '', 'ETB:13,50,000', 'Customer Centric', '', '', '', '', 'In-progress\n', '', '1. The integration of Aadhaar auth API has been completed.\n2. The integration of CKYC search API at code level is completed \n3. UAT is in progress by Digital Banking and Operations Dept. ', '2/28/2025'),
('', 'e-NACH', 'e-NACH Sponsor Module: Bank is implementing e-NACH Sponsor Module for providing, facility for initiating e-mandate for EMI registration for New to the Bank customers.', '', '', '', 'Adroit', '', '', '', '', '', '21,28,000', 'Customer Centric', '', '', '', '', 'In-progress', '', '1.	Development has been completed by Adroit.\n2.	UAT is completed by Operation Dept. and Digital Banking Team.\n3. VA and Source Code is completed, Penetration Testing is in progress. \n', '2/28/2025'),
('', 'Generative AI', 'POC for Generative AI with M/s PixDynamics\n\n\n\n', '', '', '', 'PixDynamics', '', '', '', '', '', 'No Commercials involved', 'Staff', '', '', '', '', 'In-progress', '', '1.POC process is initiated and detailed scope is shared along with use cases with M/s PixDynamics.\n2. Following use cases are proposed for implementation: \na. Chatbot Support for Employees: AI-driven support for various banking guidelines from RBI, GOI, NPCI, IBA, DFS, State Government, etc.\nb.Sentiment Analysis: AI-driven social media monitoring to understand customer feedback and improve services.\n3.  Dedicated instance for GenAI has been deployed by PixDyanmics on their cloud.\n4. Model training for first use case is in progress.', '3/15/2025'),
('', 'Earned Salary Advance for Rajasthan Got. employee', 'Platform for Rajasthan Govt. employee to avail Salary advance', '', '', '', 'ScoreMe Solution Pvt. Ltd.', '', '', '', '', '', '15,00,000', 'Customer Centric', '', '', '', '', 'In-progress', '', '1. Development is completed\n2. UAT is completed by Digital Banking\n3. Testing by IFMS (Rajasthan Govt.) is in progress.', '2/15/2025'),
('', 'Corporate Salary Account Opening', 'Platform for Corporate salary employee for opening of saving account using VCIP functionality.', '', '', '', 'ScoreMe Solution Pvt. Ltd.', '', '', '', '', '', '17,50,000', 'Customer Centric', '', '', '', '', 'In-progress', '', '1. Development is completed\n2. UAT is in progress by Digital Banking and Operations Dept.\n3. Development of revised API for CIF creation is in progress at CBS end in co-ordination with Operations Dept.', '3/15/2025'),
('', 'Kisan Tatkal Loan', 'Farmers can avail loan upto Rs.50,000/-though Digital Platform without visiting Branch', '', '', '', 'LoanTap Technologies Pvt. Ltd.', '', '', '', '', '', '14,03,000', 'Customer Centric', '', '', '', '', 'In-progress', '', '1. Development is completed\n2. UAT is in progress by Agriculture Dept.', '2/28/2025'),
('', 'ATL- Dairy Loan (In-Principle Sanction)', 'Farmers can apply for dairy loan through digital platform and avail in-principle sanction. Branch will complete the further processing of loan.', '', '', '', 'LoanTap Technologies Pvt. Ltd.', '', '', '', '', '', '6,50,000', 'Customer Centric', '', '', '', '', 'In-progress', '', '1. Development is completed\n2. UAT is in progress by Agriculture Dept.', '2/28/2025'),
('', 'Early Warning Signals (EWS) ', 'Implementation & Maintenance of Early Warning Signals (EWS) with Web EWS Tool, Daily EWS AlertS, Configurable Alerts Tracking, Data Integration - Bank Internal Data & External Data, etc.', '', '', '', 'Eagle Peak Intel Private Limited', '', '', '', '', '', '1,95,00,000', 'Back Office', '', '', '', '', 'In-progress', '', '1. PO issued dated 14/01/2025\n2. PO accepted dated 21/01/2025\n3. approach finalisation by vendor and Cre Mon Team is in progress', '3/15/2025');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
