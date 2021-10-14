-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 14 2021 г., 20:19
-- Версия сервера: 8.0.19
-- Версия PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `stage2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_actiondom`
--

CREATE TABLE `modx_access_actiondom` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_actions`
--

CREATE TABLE `modx_access_actions` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_category`
--

CREATE TABLE `modx_access_category` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_context`
--

CREATE TABLE `modx_access_context` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_context`
--

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'modUserGroup', 0, 9999, 3),
(2, 'mgr', 'modUserGroup', 1, 0, 2),
(3, 'web', 'modUserGroup', 1, 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_elements`
--

CREATE TABLE `modx_access_elements` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_media_source`
--

CREATE TABLE `modx_access_media_source` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_menus`
--

CREATE TABLE `modx_access_menus` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_namespace`
--

CREATE TABLE `modx_access_namespace` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_permissions`
--

CREATE TABLE `modx_access_permissions` (
  `id` int UNSIGNED NOT NULL,
  `template` int UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_permissions`
--

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_weblink', 'perm.delete_weblink_desc', 1),
(22, 1, 'delete_symlink', 'perm.delete_symlink_desc', 1),
(23, 1, 'delete_static_resource', 'perm.delete_static_resource_desc', 1),
(24, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(25, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(26, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(27, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(28, 1, 'delete_template', 'perm.delete_template_desc', 1),
(29, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(30, 1, 'delete_role', 'perm.delete_role_desc', 1),
(31, 1, 'delete_user', 'perm.delete_user_desc', 1),
(32, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(33, 1, 'directory_create', 'perm.directory_create_desc', 1),
(34, 1, 'directory_list', 'perm.directory_list_desc', 1),
(35, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(36, 1, 'directory_update', 'perm.directory_update_desc', 1),
(37, 1, 'edit_category', 'perm.edit_category_desc', 1),
(38, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(39, 1, 'edit_context', 'perm.edit_context_desc', 1),
(40, 1, 'edit_document', 'perm.edit_document_desc', 1),
(41, 1, 'edit_weblink', 'perm.edit_weblink_desc', 1),
(42, 1, 'edit_symlink', 'perm.edit_symlink_desc', 1),
(43, 1, 'edit_static_resource', 'perm.edit_static_resource_desc', 1),
(44, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(45, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(46, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(47, 1, 'edit_role', 'perm.edit_role_desc', 1),
(48, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(49, 1, 'edit_template', 'perm.edit_template_desc', 1),
(50, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(51, 1, 'edit_user', 'perm.edit_user_desc', 1),
(52, 1, 'element_tree', 'perm.element_tree_desc', 1),
(53, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(54, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(55, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(56, 1, 'export_static', 'perm.export_static_desc', 1),
(57, 1, 'file_create', 'perm.file_create_desc', 1),
(58, 1, 'file_list', 'perm.file_list_desc', 1),
(59, 1, 'file_manager', 'perm.file_manager_desc', 1),
(60, 1, 'file_remove', 'perm.file_remove_desc', 1),
(61, 1, 'file_tree', 'perm.file_tree_desc', 1),
(62, 1, 'file_update', 'perm.file_update_desc', 1),
(63, 1, 'file_upload', 'perm.file_upload_desc', 1),
(64, 1, 'file_unpack', 'perm.file_unpack_desc', 1),
(65, 1, 'file_view', 'perm.file_view_desc', 1),
(66, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(67, 1, 'frames', 'perm.frames_desc', 1),
(68, 1, 'help', 'perm.help_desc', 1),
(69, 1, 'home', 'perm.home_desc', 1),
(70, 1, 'import_static', 'perm.import_static_desc', 1),
(71, 1, 'languages', 'perm.languages_desc', 1),
(72, 1, 'lexicons', 'perm.lexicons_desc', 1),
(73, 1, 'list', 'perm.list_desc', 1),
(74, 1, 'load', 'perm.load_desc', 1),
(75, 1, 'logout', 'perm.logout_desc', 1),
(76, 1, 'logs', 'perm.logs_desc', 1),
(77, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(78, 1, 'menu_security', 'perm.menu_security_desc', 1),
(79, 1, 'menu_site', 'perm.menu_site_desc', 1),
(80, 1, 'menu_support', 'perm.menu_support_desc', 1),
(81, 1, 'menu_system', 'perm.menu_system_desc', 1),
(82, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(83, 1, 'menu_trash', 'perm.menu_trash_desc', 1),
(84, 1, 'menu_user', 'perm.menu_user_desc', 1),
(85, 1, 'menus', 'perm.menus_desc', 1),
(86, 1, 'messages', 'perm.messages_desc', 1),
(87, 1, 'namespaces', 'perm.namespaces_desc', 1),
(88, 1, 'new_category', 'perm.new_category_desc', 1),
(89, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(90, 1, 'new_context', 'perm.new_context_desc', 1),
(91, 1, 'new_document', 'perm.new_document_desc', 1),
(92, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(93, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(94, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(95, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(96, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(97, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(98, 1, 'new_role', 'perm.new_role_desc', 1),
(99, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(100, 1, 'new_template', 'perm.new_template_desc', 1),
(101, 1, 'new_tv', 'perm.new_tv_desc', 1),
(102, 1, 'new_user', 'perm.new_user_desc', 1),
(103, 1, 'packages', 'perm.packages_desc', 1),
(104, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(105, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(106, 1, 'policy_new', 'perm.policy_new_desc', 1),
(107, 1, 'policy_save', 'perm.policy_save_desc', 1),
(108, 1, 'policy_view', 'perm.policy_view_desc', 1),
(109, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(110, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(111, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(112, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(113, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(114, 1, 'property_sets', 'perm.property_sets_desc', 1),
(115, 1, 'providers', 'perm.providers_desc', 1),
(116, 1, 'publish_document', 'perm.publish_document_desc', 1),
(117, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(118, 1, 'remove', 'perm.remove_desc', 1),
(119, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(120, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(121, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(122, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(123, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(124, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(125, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(126, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(127, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(128, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(129, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(130, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(131, 1, 'save', 'perm.save_desc', 1),
(132, 1, 'save_category', 'perm.save_category_desc', 1),
(133, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(134, 1, 'save_context', 'perm.save_context_desc', 1),
(135, 1, 'save_document', 'perm.save_document_desc', 1),
(136, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(137, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(138, 1, 'save_role', 'perm.save_role_desc', 1),
(139, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(140, 1, 'save_template', 'perm.save_template_desc', 1),
(141, 1, 'save_tv', 'perm.save_tv_desc', 1),
(142, 1, 'save_user', 'perm.save_user_desc', 1),
(143, 1, 'search', 'perm.search_desc', 1),
(144, 1, 'set_sudo', 'perm.set_sudo_desc', 1),
(145, 1, 'settings', 'perm.settings_desc', 1),
(146, 1, 'events', 'perm.events_desc', 1),
(147, 1, 'source_save', 'perm.source_save_desc', 1),
(148, 1, 'source_delete', 'perm.source_delete_desc', 1),
(149, 1, 'source_edit', 'perm.source_edit_desc', 1),
(150, 1, 'source_view', 'perm.source_view_desc', 1),
(151, 1, 'sources', 'perm.sources_desc', 1),
(152, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(153, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(154, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(155, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(156, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(157, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(158, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(159, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(160, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(161, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(162, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(163, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(164, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(165, 1, 'view', 'perm.view_desc', 1),
(166, 1, 'view_category', 'perm.view_category_desc', 1),
(167, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(168, 1, 'view_context', 'perm.view_context_desc', 1),
(169, 1, 'view_document', 'perm.view_document_desc', 1),
(170, 1, 'view_element', 'perm.view_element_desc', 1),
(171, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(172, 1, 'view_offline', 'perm.view_offline_desc', 1),
(173, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(174, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(175, 1, 'view_role', 'perm.view_role_desc', 1),
(176, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(177, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(178, 1, 'view_template', 'perm.view_template_desc', 1),
(179, 1, 'view_tv', 'perm.view_tv_desc', 1),
(180, 1, 'view_user', 'perm.view_user_desc', 1),
(181, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(182, 1, 'workspaces', 'perm.workspaces_desc', 1),
(183, 2, 'add_children', 'perm.add_children_desc', 1),
(184, 2, 'copy', 'perm.copy_desc', 1),
(185, 2, 'create', 'perm.create_desc', 1),
(186, 2, 'delete', 'perm.delete_desc', 1),
(187, 2, 'list', 'perm.list_desc', 1),
(188, 2, 'load', 'perm.load_desc', 1),
(189, 2, 'move', 'perm.move_desc', 1),
(190, 2, 'publish', 'perm.publish_desc', 1),
(191, 2, 'remove', 'perm.remove_desc', 1),
(192, 2, 'save', 'perm.save_desc', 1),
(193, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(194, 2, 'undelete', 'perm.undelete_desc', 1),
(195, 2, 'unpublish', 'perm.unpublish_desc', 1),
(196, 2, 'view', 'perm.view_desc', 1),
(197, 3, 'load', 'perm.load_desc', 1),
(198, 3, 'list', 'perm.list_desc', 1),
(199, 3, 'view', 'perm.view_desc', 1),
(200, 3, 'save', 'perm.save_desc', 1),
(201, 3, 'remove', 'perm.remove_desc', 1),
(202, 4, 'add_children', 'perm.add_children_desc', 1),
(203, 4, 'create', 'perm.create_desc', 1),
(204, 4, 'copy', 'perm.copy_desc', 1),
(205, 4, 'delete', 'perm.delete_desc', 1),
(206, 4, 'list', 'perm.list_desc', 1),
(207, 4, 'load', 'perm.load_desc', 1),
(208, 4, 'remove', 'perm.remove_desc', 1),
(209, 4, 'save', 'perm.save_desc', 1),
(210, 4, 'view', 'perm.view_desc', 1),
(211, 5, 'create', 'perm.create_desc', 1),
(212, 5, 'copy', 'perm.copy_desc', 1),
(213, 5, 'list', 'perm.list_desc', 1),
(214, 5, 'load', 'perm.load_desc', 1),
(215, 5, 'remove', 'perm.remove_desc', 1),
(216, 5, 'save', 'perm.save_desc', 1),
(217, 5, 'view', 'perm.view_desc', 1),
(218, 6, 'load', 'perm.load_desc', 1),
(219, 6, 'list', 'perm.list_desc', 1),
(220, 6, 'view', 'perm.view_desc', 1),
(221, 6, 'save', 'perm.save_desc', 1),
(222, 6, 'remove', 'perm.remove_desc', 1),
(223, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(224, 6, 'copy', 'perm.copy_desc', 1),
(225, 7, 'list', 'perm.list_desc', 1),
(226, 7, 'load', 'perm.load_desc', 1),
(227, 7, 'view', 'perm.view_desc', 1),
(228, 1, 'formit', 'To view the formit package.', 1),
(229, 1, 'formit_encryptions', 'To view the formit package, encriptions part.', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policies`
--

CREATE TABLE `modx_access_policies` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `parent` int UNSIGNED NOT NULL DEFAULT '0',
  `template` int UNSIGNED NOT NULL DEFAULT '0',
  `class` varchar(191) NOT NULL DEFAULT '',
  `data` text,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_policies`
--

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'MODX Resource Policy with all attributes.', 0, 2, '', '{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(2, 'Administrator', 'Context administration policy with all permissions.', 0, 1, '', '{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_weblink\":true,\"delete_symlink\":true,\"delete_static_resource\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_weblink\":true,\"edit_symlink\":true,\"edit_static_resource\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"events\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menus\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"set_sudo\":true,\"settings\":true,\"sources\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true,\"formit\":true,\"formit_encryptions\":true}', 'permissions'),
(3, 'Load Only', 'A minimal policy with permission to load an object.', 0, 3, '', '{\"load\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(4, 'Load, List and View', 'Provides load, list and view permissions only.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(5, 'Object', 'An Object policy with all permissions.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(6, 'Element', 'MODX Element policy with all attributes.', 0, 4, '', '{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(7, 'Content Editor', 'Context administration policy with limited, content-editing related Permissions, but no publishing.', 0, 1, '', '{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"edit_document\":true,\"edit_weblink\":true,\"edit_symlink\":true,\"edit_static_resource\":true,\"frames\":true,\"help\":true,\"home\":true,\"load\":true,\"list\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"view_template\":true,\"new_document\":true,\"new_weblink\":true,\"new_symlink\":true,\"new_static_resource\":true,\"delete_document\":true,\"delete_weblink\":true,\"delete_symlink\":true,\"delete_static_resource\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(8, 'Media Source Admin', 'Media Source administration policy.', 0, 5, '', '{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(9, 'Media Source User', 'Media Source user policy, with basic viewing and using - but no editing - of Media Sources.', 0, 5, '', '{\"load\":true,\"list\":true,\"view\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(10, 'Developer', 'Context administration policy with most Permissions except Administrator and Security functions.', 0, 0, '', '{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_role\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_weblink\":true,\"edit_symlink\":true,\"edit_static_resource\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unpublish_document\":true,\"unlock_element_properties\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_user\":true,\"view_unpublished\":true,\"workspaces\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(11, 'Context', 'A standard Context policy that you can apply when creating Context ACLs for basic read/write and view_unpublished access within a Context.', 0, 6, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(12, 'Hidden Namespace', 'Hidden Namespace policy, will not show Namespace in lists.', 0, 7, '', '{\"load\":false,\"list\":false,\"view\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policy_templates`
--

CREATE TABLE `modx_access_policy_templates` (
  `id` int UNSIGNED NOT NULL,
  `template_group` int UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_policy_templates`
--

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'Context administration policy template with all permissions.', 'permissions'),
(2, 3, 'ResourceTemplate', 'Resource Policy Template with all attributes.', 'permissions'),
(3, 2, 'ObjectTemplate', 'Object Policy Template with all attributes.', 'permissions'),
(4, 4, 'ElementTemplate', 'Element Policy Template with all attributes.', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'Media Source Policy Template with all attributes.', 'permissions'),
(6, 2, 'ContextTemplate', 'Context Policy Template with all attributes.', 'permissions'),
(7, 6, 'NamespaceTemplate', 'Namespace Policy Template with all attributes.', 'permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policy_template_groups`
--

CREATE TABLE `modx_access_policy_template_groups` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_policy_template_groups`
--

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'All admin policy templates.'),
(2, 'Object', 'All Object-based policy templates.'),
(3, 'Resource', 'All Resource-based policy templates.'),
(4, 'Element', 'All Element-based policy templates.'),
(5, 'MediaSource', 'All Media Source-based policy templates.'),
(6, 'Namespace', 'All Namespace based policy templates.');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_resources`
--

CREATE TABLE `modx_access_resources` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_resource_groups`
--

CREATE TABLE `modx_access_resource_groups` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_templatevars`
--

CREATE TABLE `modx_access_templatevars` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actiondom`
--

CREATE TABLE `modx_actiondom` (
  `id` int UNSIGNED NOT NULL,
  `set` int NOT NULL DEFAULT '0',
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(191) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `for_parent` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actions`
--

CREATE TABLE `modx_actions` (
  `id` int UNSIGNED NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `controller` varchar(191) NOT NULL,
  `haslayout` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actions_fields`
--

CREATE TABLE `modx_actions_fields` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(191) NOT NULL DEFAULT '',
  `form` varchar(191) NOT NULL DEFAULT '',
  `other` varchar(191) NOT NULL DEFAULT '',
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_actions_fields`
--

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(9, 'resource/update', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(10, 'resource/update', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(11, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(12, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(13, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(14, 'resource/update', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(15, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(16, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(17, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(18, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(19, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(20, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(21, 'resource/update', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(22, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(23, 'resource/update', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(24, 'resource/update', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(25, 'resource/update', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(26, 'resource/update', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(27, 'resource/update', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(28, 'resource/update', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(29, 'resource/update', 'alias_visible', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(30, 'resource/update', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(31, 'resource/update', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(32, 'resource/update', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 5),
(33, 'resource/update', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(34, 'resource/update', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(35, 'resource/update', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(36, 'resource/update', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(37, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(38, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(39, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(40, 'resource/update', 'modx-symlink-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 1),
(41, 'resource/update', 'modx-weblink-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 2),
(42, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(43, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(44, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(45, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(46, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(47, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(48, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(49, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(50, 'resource/create', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(51, 'resource/create', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(52, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(53, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(54, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(55, 'resource/create', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(56, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(57, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(58, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(59, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(60, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(61, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(62, 'resource/create', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(63, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(64, 'resource/create', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(65, 'resource/create', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(66, 'resource/create', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(67, 'resource/create', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(68, 'resource/create', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(69, 'resource/create', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(70, 'resource/create', 'alias_visible', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(71, 'resource/create', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(72, 'resource/create', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(73, 'resource/create', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 5),
(74, 'resource/create', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(75, 'resource/create', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(76, 'resource/create', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(77, 'resource/create', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(78, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(79, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(80, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_active_users`
--

CREATE TABLE `modx_active_users` (
  `internalKey` int NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int NOT NULL DEFAULT '0',
  `id` int DEFAULT NULL,
  `action` varchar(191) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories`
--

CREATE TABLE `modx_categories` (
  `id` int UNSIGNED NOT NULL,
  `parent` int UNSIGNED DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_categories`
--

INSERT INTO `modx_categories` (`id`, `parent`, `category`, `rank`) VALUES
(1, 0, 'pdoTools', 0),
(2, 0, 'FormIt', 0),
(3, 0, 'AjaxForm', 0),
(4, 0, 'MIGX', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories_closure`
--

CREATE TABLE `modx_categories_closure` (
  `ancestor` int UNSIGNED NOT NULL DEFAULT '0',
  `descendant` int UNSIGNED NOT NULL DEFAULT '0',
  `depth` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_categories_closure`
--

INSERT INTO `modx_categories_closure` (`ancestor`, `descendant`, `depth`) VALUES
(0, 1, 0),
(0, 2, 0),
(0, 3, 0),
(0, 4, 0),
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(4, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_class_map`
--

CREATE TABLE `modx_class_map` (
  `id` int UNSIGNED NOT NULL,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(191) NOT NULL DEFAULT 'name',
  `path` tinytext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:resource'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_class_map`
--

INSERT INTO `modx_class_map` (`id`, `class`, `parent_class`, `name_field`, `path`, `lexicon`) VALUES
(1, 'modDocument', 'modResource', 'pagetitle', '', 'core:resource'),
(2, 'modWebLink', 'modResource', 'pagetitle', '', 'core:resource'),
(3, 'modSymLink', 'modResource', 'pagetitle', '', 'core:resource'),
(4, 'modStaticResource', 'modResource', 'pagetitle', '', 'core:resource'),
(5, 'modTemplate', 'modElement', 'templatename', '', 'core:resource'),
(6, 'modTemplateVar', 'modElement', 'name', '', 'core:resource'),
(7, 'modChunk', 'modElement', 'name', '', 'core:resource'),
(8, 'modSnippet', 'modElement', 'name', '', 'core:resource'),
(9, 'modPlugin', 'modElement', 'name', '', 'core:resource');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_content_type`
--

CREATE TABLE `modx_content_type` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_content_type`
--

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '.html', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', NULL, 0),
(3, 'text', 'plain text content', 'text/plain', '.txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', NULL, 0),
(5, 'javascript', 'javascript content', 'text/javascript', '.js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context`
--

CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` tinytext,
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_context`
--

INSERT INTO `modx_context` (`key`, `name`, `description`, `rank`) VALUES
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0),
('web', 'Website', 'The default front-end context for your web site.', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context_resource`
--

CREATE TABLE `modx_context_resource` (
  `context_key` varchar(191) NOT NULL,
  `resource` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context_setting`
--

CREATE TABLE `modx_context_setting` (
  `context_key` varchar(191) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_context_setting`
--

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', NULL),
('mgr', 'modRequest.class', 'modManagerRequest', 'textfield', 'core', 'system', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard`
--

CREATE TABLE `modx_dashboard` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `hide_trees` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_dashboard`
--

INSERT INTO `modx_dashboard` (`id`, `name`, `description`, `hide_trees`) VALUES
(1, 'Default', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard_widget`
--

CREATE TABLE `modx_dashboard_widget` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(100) NOT NULL,
  `content` mediumtext,
  `namespace` varchar(191) NOT NULL DEFAULT '',
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(191) NOT NULL DEFAULT 'half'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_dashboard_widget`
--

INSERT INTO `modx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `namespace`, `lexicon`, `size`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', 'core', 'core:dashboards', 'half'),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', 'core', 'core:dashboards', 'half'),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', 'core', 'core:dashboards', 'half'),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', 'core', 'core:dashboards', 'half'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', 'core', 'core:dashboards', 'full');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard_widget_placement`
--

CREATE TABLE `modx_dashboard_widget_placement` (
  `dashboard` int UNSIGNED NOT NULL DEFAULT '0',
  `widget` int UNSIGNED NOT NULL DEFAULT '0',
  `rank` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_dashboard_widget_placement`
--

INSERT INTO `modx_dashboard_widget_placement` (`dashboard`, `widget`, `rank`) VALUES
(1, 5, 0),
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_documentgroup_names`
--

CREATE TABLE `modx_documentgroup_names` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `private_memgroup` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `private_webgroup` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_document_groups`
--

CREATE TABLE `modx_document_groups` (
  `id` int UNSIGNED NOT NULL,
  `document_group` int NOT NULL DEFAULT '0',
  `document` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_element_property_sets`
--

CREATE TABLE `modx_element_property_sets` (
  `element` int UNSIGNED NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_extension_packages`
--

CREATE TABLE `modx_extension_packages` (
  `id` int UNSIGNED NOT NULL,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text,
  `table_prefix` varchar(191) NOT NULL DEFAULT '',
  `service_class` varchar(191) NOT NULL DEFAULT '',
  `service_name` varchar(191) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_profiles`
--

CREATE TABLE `modx_fc_profiles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_profiles_usergroups`
--

CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int NOT NULL DEFAULT '0',
  `profile` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_sets`
--

CREATE TABLE `modx_fc_sets` (
  `id` int UNSIGNED NOT NULL,
  `profile` int NOT NULL DEFAULT '0',
  `action` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int NOT NULL DEFAULT '0',
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_formit_forms`
--

CREATE TABLE `modx_formit_forms` (
  `id` int UNSIGNED NOT NULL,
  `form` varchar(255) NOT NULL DEFAULT '',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  `values` text NOT NULL,
  `ip` varchar(100) NOT NULL DEFAULT '',
  `date` int NOT NULL DEFAULT '0',
  `encrypted` tinyint(1) NOT NULL DEFAULT '0',
  `encryption_type` int NOT NULL DEFAULT '1',
  `hash` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_lexicon_entries`
--

CREATE TABLE `modx_lexicon_entries` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(191) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_manager_log`
--

CREATE TABLE `modx_manager_log` (
  `id` int UNSIGNED NOT NULL,
  `user` int UNSIGNED NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT NULL,
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(191) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2021-10-11 18:38:08', 'login', 'modContext', 'mgr'),
(2, 1, '2021-10-11 18:59:12', 'resource_update', 'modResource', '1'),
(3, 1, '2021-10-11 19:02:44', 'template_update', 'modTemplate', '1'),
(4, 1, '2021-10-11 19:02:47', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(5, 1, '2021-10-11 19:03:23', 'template_update', 'modTemplate', '1'),
(6, 1, '2021-10-11 19:03:26', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(7, 1, '2021-10-11 19:03:39', 'template_update', 'modTemplate', '1'),
(8, 1, '2021-10-11 19:03:42', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(9, 1, '2021-10-11 19:07:27', 'resource_update', 'modResource', '1'),
(10, 1, '2021-10-11 19:08:24', 'template_update', 'modTemplate', '1'),
(11, 1, '2021-10-11 19:08:26', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(12, 1, '2021-10-11 19:08:44', 'template_update', 'modTemplate', '1'),
(13, 1, '2021-10-11 19:08:46', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(14, 1, '2021-10-11 19:09:42', 'template_update', 'modTemplate', '1'),
(15, 1, '2021-10-11 19:09:44', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(16, 1, '2021-10-11 19:09:50', 'template_update', 'modTemplate', '1'),
(17, 1, '2021-10-11 19:09:53', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(18, 1, '2021-10-11 19:16:27', 'chunk_update', 'modChunk', '5'),
(19, 1, '2021-10-11 19:16:30', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(20, 1, '2021-10-11 19:17:36', 'chunk_update', 'modChunk', '5'),
(21, 1, '2021-10-11 19:17:39', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(22, 1, '2021-10-11 19:19:02', 'chunk_update', 'modChunk', '5'),
(23, 1, '2021-10-11 19:19:04', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(24, 1, '2021-10-11 19:21:17', 'chunk_update', 'modChunk', '5'),
(25, 1, '2021-10-11 19:21:20', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(26, 1, '2021-10-11 19:21:41', 'chunk_update', 'modChunk', '5'),
(27, 1, '2021-10-11 19:21:43', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(28, 1, '2021-10-11 19:23:21', 'chunk_create', 'modChunk', '6'),
(29, 1, '2021-10-11 19:24:12', 'chunk_update', 'modChunk', '6'),
(30, 1, '2021-10-11 19:24:15', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(31, 1, '2021-10-11 19:28:10', 'resource_update', 'modResource', '1'),
(32, 1, '2021-10-11 19:28:21', 'resource_update', 'modResource', '1'),
(33, 1, '2021-10-11 20:15:10', 'resource_update', 'modResource', '1'),
(34, 1, '2021-10-11 20:15:16', 'resource_update', 'modResource', '1'),
(35, 1, '2021-10-11 20:15:53', 'resource_update', 'modResource', '1'),
(36, 1, '2021-10-11 20:17:28', 'chunk_create', 'modChunk', '7'),
(37, 1, '2021-10-11 20:18:48', 'chunk_create', 'modChunk', '8'),
(38, 1, '2021-10-11 20:20:24', 'template_update', 'modTemplate', '1'),
(39, 1, '2021-10-11 20:20:26', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(40, 1, '2021-10-11 20:21:37', 'template_update', 'modTemplate', '1'),
(41, 1, '2021-10-11 20:21:40', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(42, 1, '2021-10-11 20:23:29', 'chunk_update', 'modChunk', '5'),
(43, 1, '2021-10-11 20:23:32', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(44, 1, '2021-10-11 20:28:16', 'resource_update', 'modResource', '1'),
(45, 1, '2021-10-11 20:28:36', 'resource_update', 'modResource', '1'),
(46, 1, '2021-10-11 20:29:03', 'resource_update', 'modResource', '1'),
(47, 1, '2021-10-11 20:32:36', 'chunk_update', 'modChunk', '5'),
(48, 1, '2021-10-11 20:32:38', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(49, 1, '2021-10-11 20:32:50', 'chunk_update', 'modChunk', '5'),
(50, 1, '2021-10-11 20:38:13', 'chunk_update', 'modChunk', '5'),
(51, 1, '2021-10-11 20:38:15', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(52, 1, '2021-10-11 20:38:20', 'chunk_update', 'modChunk', '5'),
(53, 1, '2021-10-11 20:42:58', 'chunk_update', 'modChunk', '5'),
(54, 1, '2021-10-11 20:43:00', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(55, 1, '2021-10-11 20:43:07', 'chunk_update', 'modChunk', '5'),
(56, 1, '2021-10-11 20:43:10', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(57, 1, '2021-10-11 20:44:17', 'chunk_update', 'modChunk', '5'),
(58, 1, '2021-10-11 20:44:19', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(59, 1, '2021-10-11 20:45:06', 'chunk_update', 'modChunk', '5'),
(60, 1, '2021-10-11 20:45:08', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(61, 1, '2021-10-11 20:46:50', 'chunk_update', 'modChunk', '5'),
(62, 1, '2021-10-11 20:46:53', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(63, 1, '2021-10-11 20:47:43', 'chunk_update', 'modChunk', '5'),
(64, 1, '2021-10-11 20:47:45', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(65, 1, '2021-10-11 20:52:44', 'chunk_update', 'modChunk', '5'),
(66, 1, '2021-10-11 20:52:46', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(67, 1, '2021-10-12 21:50:59', 'login', 'modContext', 'mgr'),
(68, 1, '2021-10-12 21:57:58', 'chunk_update', 'modChunk', '7'),
(69, 1, '2021-10-12 21:58:00', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(70, 1, '2021-10-12 21:59:36', 'chunk_update', 'modChunk', '7'),
(71, 1, '2021-10-12 21:59:39', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(72, 1, '2021-10-12 22:03:01', 'chunk_update', 'modChunk', '8'),
(73, 1, '2021-10-12 22:03:03', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(74, 1, '2021-10-12 22:03:35', 'template_update', 'modTemplate', '1'),
(75, 1, '2021-10-12 22:03:38', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(76, 1, '2021-10-12 22:05:39', 'resource_update', 'modResource', '1'),
(77, 1, '2021-10-12 22:07:30', 'resource_update', 'modResource', '1'),
(78, 1, '2021-10-12 22:15:39', 'chunk_update', 'modChunk', '5'),
(79, 1, '2021-10-12 22:15:41', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(80, 1, '2021-10-12 22:16:15', 'chunk_update', 'modChunk', '5'),
(81, 1, '2021-10-12 22:16:17', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(82, 1, '2021-10-12 22:25:04', 'chunk_update', 'modChunk', '5'),
(83, 1, '2021-10-12 22:25:06', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(84, 1, '2021-10-12 22:29:56', 'chunk_update', 'modChunk', '5'),
(85, 1, '2021-10-12 22:29:58', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 5 Default'),
(86, 1, '2021-10-12 22:35:49', 'chunk_update', 'modChunk', '6'),
(87, 1, '2021-10-12 22:35:52', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 6 Default'),
(88, 1, '2021-10-12 22:46:38', 'chunk_update', 'modChunk', '7'),
(89, 1, '2021-10-12 22:46:40', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(90, 1, '2021-10-12 22:46:57', 'chunk_update', 'modChunk', '7'),
(91, 1, '2021-10-12 22:46:59', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(92, 1, '2021-10-12 22:47:30', 'chunk_update', 'modChunk', '7'),
(93, 1, '2021-10-12 22:47:32', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(94, 1, '2021-10-12 22:47:50', 'chunk_update', 'modChunk', '8'),
(95, 1, '2021-10-12 22:47:52', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(96, 1, '2021-10-12 22:48:07', 'chunk_update', 'modChunk', '8'),
(97, 1, '2021-10-12 22:48:10', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(98, 1, '2021-10-12 22:49:56', 'chunk_update', 'modChunk', '7'),
(99, 1, '2021-10-12 22:49:58', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(100, 1, '2021-10-12 22:59:19', 'resource_update', 'modResource', '1'),
(101, 1, '2021-10-12 22:59:45', 'resource_update', 'modResource', '1'),
(102, 1, '2021-10-12 23:03:50', 'resource_update', 'modResource', '1'),
(103, 1, '2021-10-12 23:07:25', 'resource_update', 'modResource', '1'),
(104, 1, '2021-10-12 23:17:38', 'tv_create', 'modTemplateVar', '1'),
(105, 1, '2021-10-12 23:22:36', 'resource_update', 'modResource', '1'),
(106, 1, '2021-10-12 23:22:53', 'resource_update', 'modResource', '1'),
(107, 1, '2021-10-12 23:23:45', 'chunk_create', 'modChunk', '9'),
(108, 1, '2021-10-12 23:24:17', 'chunk_create', 'modChunk', '10'),
(109, 1, '2021-10-12 23:27:13', 'chunk_update', 'modChunk', '7'),
(110, 1, '2021-10-12 23:27:16', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(111, 1, '2021-10-12 23:27:48', 'chunk_update', 'modChunk', '8'),
(112, 1, '2021-10-12 23:27:50', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(113, 1, '2021-10-12 23:29:24', 'chunk_update', 'modChunk', '8'),
(114, 1, '2021-10-12 23:29:26', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(115, 1, '2021-10-12 23:31:03', 'chunk_update', 'modChunk', '7'),
(116, 1, '2021-10-12 23:31:05', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(117, 1, '2021-10-12 23:32:11', 'resource_update', 'modResource', '1'),
(118, 1, '2021-10-12 23:32:26', 'resource_update', 'modResource', '1'),
(119, 1, '2021-10-12 23:33:27', 'resource_update', 'modResource', '1'),
(120, 1, '2021-10-12 23:35:25', 'chunk_update', 'modChunk', '10'),
(121, 1, '2021-10-12 23:35:27', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 10 Default'),
(122, 1, '2021-10-12 23:36:10', 'chunk_delete', 'modChunk', '9'),
(123, 1, '2021-10-12 23:37:34', 'resource_update', 'modResource', '1'),
(124, 1, '2021-10-12 23:38:47', 'resource_update', 'modResource', '1'),
(125, 1, '2021-10-12 23:40:48', 'resource_update', 'modResource', '1'),
(126, 1, '2021-10-12 23:42:32', 'resource_create', 'modDocument', '2'),
(127, 1, '2021-10-12 23:43:03', 'duplicate_resource', 'modDocument', '3'),
(128, 1, '2021-10-12 23:43:16', 'duplicate_resource', 'modDocument', '4'),
(129, 1, '2021-10-12 23:43:29', 'duplicate_resource', 'modDocument', '5'),
(130, 1, '2021-10-12 23:43:40', 'duplicate_resource', 'modDocument', '6'),
(131, 1, '2021-10-12 23:43:51', 'duplicate_resource', 'modDocument', '7'),
(132, 1, '2021-10-12 23:44:32', 'resource_update', 'modResource', '1'),
(133, 1, '2021-10-12 23:45:37', 'resource_update', 'modResource', '1'),
(134, 1, '2021-10-12 23:45:50', 'resource_update', 'modResource', '1'),
(135, 1, '2021-10-12 23:46:09', 'resource_update', 'modResource', '1'),
(136, 1, '2021-10-12 23:46:33', 'resource_update', 'modResource', '1'),
(137, 1, '2021-10-12 23:46:56', 'resource_update', 'modResource', '1'),
(138, 1, '2021-10-12 23:48:15', 'resource_update', 'modResource', '1'),
(139, 1, '2021-10-12 23:48:59', 'resource_update', 'modResource', '2'),
(140, 1, '2021-10-12 23:49:15', 'resource_update', 'modResource', '3'),
(141, 1, '2021-10-12 23:49:38', 'resource_update', 'modResource', '4'),
(142, 1, '2021-10-12 23:49:51', 'resource_update', 'modResource', '5'),
(143, 1, '2021-10-12 23:50:04', 'resource_update', 'modResource', '6'),
(144, 1, '2021-10-12 23:50:17', 'resource_update', 'modResource', '7'),
(145, 1, '2021-10-12 23:50:35', 'resource_update', 'modResource', '1'),
(146, 1, '2021-10-12 23:51:21', 'resource_update', 'modResource', '1'),
(147, 1, '2021-10-12 23:51:36', 'resource_update', 'modResource', '1'),
(148, 1, '2021-10-12 23:53:50', 'duplicate_resource', 'modDocument', '8'),
(149, 1, '2021-10-12 23:54:03', 'duplicate_resource', 'modDocument', '9'),
(150, 1, '2021-10-12 23:54:16', 'duplicate_resource', 'modDocument', '10'),
(151, 1, '2021-10-12 23:54:29', 'duplicate_resource', 'modDocument', '11'),
(152, 1, '2021-10-12 23:56:21', 'resource_update', 'modResource', '1'),
(153, 1, '2021-10-12 23:56:56', 'resource_update', 'modResource', '1'),
(154, 1, '2021-10-13 00:04:08', 'resource_update', 'modResource', '1'),
(155, 1, '2021-10-13 00:04:53', 'chunk_update', 'modChunk', '7'),
(156, 1, '2021-10-13 00:04:55', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(157, 1, '2021-10-13 00:06:17', 'resource_update', 'modResource', '1'),
(158, 1, '2021-10-13 00:07:48', 'chunk_create', 'modChunk', '11'),
(159, 1, '2021-10-13 00:08:37', 'template_update', 'modTemplate', '1'),
(160, 1, '2021-10-13 00:08:39', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(161, 1, '2021-10-13 00:09:26', 'template_update', 'modTemplate', '1'),
(162, 1, '2021-10-13 00:09:28', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(163, 1, '2021-10-13 00:09:58', 'template_update', 'modTemplate', '1'),
(164, 1, '2021-10-13 00:10:00', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(165, 1, '2021-10-13 00:10:40', 'resource_update', 'modResource', '1'),
(166, 1, '2021-10-13 00:46:25', 'chunk_update', 'modChunk', '7'),
(167, 1, '2021-10-13 00:46:27', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(168, 1, '2021-10-14 19:51:35', 'login', 'modContext', 'mgr'),
(169, 1, '2021-10-14 20:14:59', 'chunk_update', 'modChunk', '7'),
(170, 1, '2021-10-14 20:15:01', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 7 Default'),
(171, 1, '2021-10-14 20:15:21', 'chunk_update', 'modChunk', '8'),
(172, 1, '2021-10-14 20:15:23', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources`
--

CREATE TABLE `modx_media_sources` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext,
  `is_stream` tinyint UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_media_sources`
--

INSERT INTO `modx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'sources.modFileMediaSource', 'a:0:{}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources_contexts`
--

CREATE TABLE `modx_media_sources_contexts` (
  `source` int NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources_elements`
--

CREATE TABLE `modx_media_sources_elements` (
  `source` int UNSIGNED NOT NULL DEFAULT '0',
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_media_sources_elements`
--

INSERT INTO `modx_media_sources_elements` (`source`, `object_class`, `object`, `context_key`) VALUES
(1, 'modTemplateVar', 1, 'web');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_membergroup_names`
--

CREATE TABLE `modx_membergroup_names` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `parent` int UNSIGNED NOT NULL DEFAULT '0',
  `rank` int UNSIGNED NOT NULL DEFAULT '0',
  `dashboard` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_membergroup_names`
--

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_member_groups`
--

CREATE TABLE `modx_member_groups` (
  `id` int UNSIGNED NOT NULL,
  `user_group` int UNSIGNED NOT NULL DEFAULT '0',
  `member` int UNSIGNED NOT NULL DEFAULT '0',
  `role` int UNSIGNED NOT NULL DEFAULT '1',
  `rank` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_member_groups`
--

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_menus`
--

CREATE TABLE `modx_menus` (
  `text` varchar(191) NOT NULL DEFAULT '',
  `parent` varchar(191) NOT NULL DEFAULT '',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `menuindex` int UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_menus`
--

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES
('about', 'usernav', 'help', '', '<i class=\"icon-question-circle icon icon-large\"></i>', 7, '', '', 'help', 'core'),
('acls', 'admin', 'security/permission', 'acls_desc', '', 5, '', '', 'access_permissions', 'core'),
('admin', 'usernav', '', '', '<i class=\"icon-gear icon icon-large\"></i>', 6, '', '', 'settings', 'core'),
('bespoke_manager', 'admin', 'security/forms', 'bespoke_manager_desc', '', 1, '', '', 'customize_forms', 'core'),
('components', 'topnav', '', '', '', 2, '', '', 'components', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 8, '', '', 'content_types', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 3, '', '', 'view_context', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 2, '', '', 'dashboards', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 4, '', '', 'actions', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 2, '', '', 'view_eventlog', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('flush_access', 'manage', '', 'flush_access_desc', '', 3, '', 'MODx.msg.confirm({\n    title: _(\'flush_access\')\n    ,text: _(\'flush_access_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/access/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this},\n        \'failure\': {fn:function(response) { Ext.MessageBox.alert(\'failure\', response.responseText); },scope:this},\n    }\n});', 'access_permissions', 'core'),
('flush_sessions', 'manage', '', 'flush_sessions_desc', '', 4, '', 'MODx.msg.confirm({\n    title: _(\'flush_sessions\')\n    ,text: _(\'flush_sessions_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});', 'flush_sessions', 'core'),
('formit', 'components', 'home', 'formit.desc', '', 0, '', '', 'formit', 'formit'),
('import_resources', 'site', 'system/import', 'import_resources_desc', '', 6, '', '', 'import_static', 'core'),
('import_site', 'site', 'system/import/html', 'import_site_desc', '', 5, '', '', 'import_static', 'core'),
('installer', 'components', 'workspaces', 'installer_desc', '', 0, '', '', 'packages', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('logout', 'user', 'security/logout', 'logout_desc', '', 2, '', 'MODx.logout(); return false;', 'logout', 'core'),
('manage', 'topnav', '', '', '', 3, '', '', 'menu_tools', 'core'),
('media', 'topnav', '', 'media_desc', '', 1, '', '', 'file_manager', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('MIGX', 'components', 'index', '', '', 1, '&configs=migxconfigs||packagemanager', '', '', 'migx'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 8, '', '', 'namespaces', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('preview', 'site', '', 'preview_desc', '', 4, '', 'MODx.preview(); return false;', '', 'core'),
('profile', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 6, '', '', 'property_sets', 'core'),
('refreshuris', 'refresh_site', '', 'refreshuris_desc', '', 0, '', 'MODx.refreshURIs(); return false;', 'empty_cache', 'core'),
('refresh_site', 'manage', '', 'refresh_site_desc', '', 1, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('remove_locks', 'manage', '', 'remove_locks_desc', '', 2, '', 'MODx.removeLocks();return false;', 'remove_locks', 'core'),
('reports', 'manage', '', 'reports_desc', '', 5, '', '', 'menu_reports', 'core'),
('resource_groups', 'site', 'security/resourcegroup', 'resource_groups_desc', '', 7, '', '', 'access_permissions', 'core'),
('site', 'topnav', '', '', '', 0, '', '', 'menu_site', 'core'),
('site_schedule', 'reports', 'resource/site_schedule', 'site_schedule_desc', '', 0, '', '', 'view_document', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('user', 'usernav', '', '', '<span id=\"user-avatar\">{$userImage}</span> <span id=\"user-username\">{$username}</span>', 5, '', '', 'menu_user', 'core'),
('usernav', '', '', 'usernav_desc', '', 0, '', '', '', 'core'),
('users', 'manage', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 1, '', '', 'logs', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 3, '', '', 'view_sysinfo', 'core');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_migx_configs`
--

CREATE TABLE `modx_migx_configs` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `formtabs` text NOT NULL,
  `contextmenus` text NOT NULL,
  `actionbuttons` text NOT NULL,
  `columnbuttons` text NOT NULL,
  `filters` text NOT NULL,
  `extended` text NOT NULL,
  `permissions` text NOT NULL,
  `fieldpermissions` text NOT NULL,
  `columns` text NOT NULL,
  `createdby` int NOT NULL DEFAULT '0',
  `createdon` datetime DEFAULT NULL,
  `editedby` int NOT NULL DEFAULT '0',
  `editedon` datetime DEFAULT NULL,
  `deleted` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` datetime DEFAULT NULL,
  `deletedby` int NOT NULL DEFAULT '0',
  `published` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `publishedon` datetime DEFAULT NULL,
  `publishedby` int NOT NULL DEFAULT '0',
  `category` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_migx_configs`
--

INSERT INTO `modx_migx_configs` (`id`, `name`, `formtabs`, `contextmenus`, `actionbuttons`, `columnbuttons`, `filters`, `extended`, `permissions`, `fieldpermissions`, `columns`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `published`, `publishedon`, `publishedby`, `category`) VALUES
(1, 'Photo', '[{\"MIGX_id\":1,\"caption\":\"\\u0424\\u043e\\u0442\\u043e\\u0433\\u0440\\u0430\\u0444\\u0438\\u0438\",\"print_before_tabs\":\"0\",\"fields\":[{\"MIGX_id\":1,\"field\":\"title\",\"caption\":\"\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a\",\"description\":\"\",\"description_is_code\":\"0\",\"inputTV\":\"\",\"inputTVtype\":\"\",\"validation\":\"\",\"configs\":\"\",\"restrictive_condition\":\"\",\"display\":\"\",\"sourceFrom\":\"config\",\"sources\":\"\",\"inputOptionValues\":\"\",\"default\":\"\",\"useDefaultIfEmpty\":\"0\",\"pos\":1},{\"MIGX_id\":2,\"field\":\"image\",\"caption\":\"\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435\",\"description\":\"\",\"description_is_code\":\"0\",\"inputTV\":\"\",\"inputTVtype\":\"image\",\"validation\":\"\",\"configs\":\"\",\"restrictive_condition\":\"\",\"display\":\"\",\"sourceFrom\":\"config\",\"sources\":\"\",\"inputOptionValues\":\"\",\"default\":\"\",\"useDefaultIfEmpty\":\"0\",\"pos\":2},{\"MIGX_id\":3,\"field\":\"description\",\"caption\":\"\\u041f\\u043e\\u0434\\u043f\\u0438\\u0441\\u044c \\u043f\\u043e\\u0434 \\u0437\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043a\\u043e\\u043c\",\"description\":\"\",\"description_is_code\":\"0\",\"inputTV\":\"\",\"inputTVtype\":\"\",\"validation\":\"\",\"configs\":\"\",\"restrictive_condition\":\"\",\"display\":\"\",\"sourceFrom\":\"config\",\"sources\":\"\",\"inputOptionValues\":\"\",\"default\":\"\",\"useDefaultIfEmpty\":\"0\",\"pos\":3}],\"pos\":1}]', '', '', '', '', '{\"migx_add\":\"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u0444\\u043e\\u0442\\u043e\\u0433\\u0440\\u0430\\u0444\\u0438\\u044e\",\"disable_add_item\":\"\",\"add_items_directly\":\"\",\"formcaption\":\"\",\"update_win_title\":\"\",\"win_id\":\"\",\"maxRecords\":\"\",\"addNewItemAt\":\"bottom\",\"media_source_id\":\"\",\"multiple_formtabs\":\"\",\"multiple_formtabs_label\":\"\",\"multiple_formtabs_field\":\"\",\"multiple_formtabs_optionstext\":\"\",\"multiple_formtabs_optionsvalue\":\"\",\"actionbuttonsperrow\":\"4\",\"winbuttonslist\":\"\",\"extrahandlers\":\"\",\"filtersperrow\":\"4\",\"packageName\":\"\",\"classname\":\"\",\"task\":\"\",\"getlistsort\":\"\",\"getlistsortdir\":\"\",\"sortconfig\":\"\",\"gridpagesize\":\"\",\"use_custom_prefix\":\"0\",\"prefix\":\"\",\"grid\":\"\",\"gridload_mode\":\"1\",\"check_resid\":\"1\",\"check_resid_TV\":\"\",\"join_alias\":\"\",\"has_jointable\":\"yes\",\"getlistwhere\":\"\",\"joins\":\"\",\"hooksnippets\":\"\",\"cmpmaincaption\":\"\",\"cmptabcaption\":\"\",\"cmptabdescription\":\"\",\"cmptabcontroller\":\"\",\"winbuttons\":\"\",\"onsubmitsuccess\":\"\",\"submitparams\":\"\"}', '{\"apiaccess\":\"\",\"view\":\"\",\"list\":\"\",\"save\":\"\",\"create\":\"\",\"remove\":\"\",\"delete\":\"\",\"publish\":\"\",\"unpublish\":\"\",\"viewdeleted\":\"\",\"viewunpublished\":\"\"}', '', '[{\"MIGX_id\":\"1\",\"header\":\"\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a\",\"dataIndex\":\"title\",\"width\":\"\",\"sortable\":\"false\",\"show_in_grid\":\"1\",\"customrenderer\":\"\",\"renderer\":\"\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"},{\"MIGX_id\":\"2\",\"header\":\"\\u0424\\u0430\\u0438\\u043b \\u0438\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f\",\"dataIndex\":\"image\",\"width\":\"\",\"sortable\":\"false\",\"show_in_grid\":\"1\",\"customrenderer\":\"\",\"renderer\":\"this.renderImage\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"},{\"MIGX_id\":\"3\",\"header\":\"\\u041f\\u043e\\u0434\\u043f\\u0438\\u0441\\u044c \\u043f\\u043e\\u0434 \\u0437\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043a\\u043e\\u043c\",\"dataIndex\":\"description\",\"width\":\"\",\"sortable\":\"false\",\"show_in_grid\":\"1\",\"customrenderer\":\"\",\"renderer\":\"\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"}]', 1, '2021-10-12 23:11:01', 1, '2021-10-12 23:15:40', 0, NULL, 0, 1, NULL, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_migx_config_elements`
--

CREATE TABLE `modx_migx_config_elements` (
  `id` int UNSIGNED NOT NULL,
  `config_id` int NOT NULL DEFAULT '0',
  `element_id` int NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0',
  `createdby` int NOT NULL DEFAULT '0',
  `createdon` datetime NOT NULL,
  `editedby` int NOT NULL DEFAULT '0',
  `editedon` datetime NOT NULL,
  `deleted` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` datetime NOT NULL,
  `deletedby` int NOT NULL DEFAULT '0',
  `published` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `publishedon` datetime NOT NULL,
  `publishedby` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_migx_elements`
--

CREATE TABLE `modx_migx_elements` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `createdby` int NOT NULL DEFAULT '0',
  `createdon` datetime NOT NULL,
  `editedby` int NOT NULL DEFAULT '0',
  `editedon` datetime NOT NULL,
  `deleted` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` datetime NOT NULL,
  `deletedby` int NOT NULL DEFAULT '0',
  `published` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `publishedon` datetime NOT NULL,
  `publishedby` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_migx_formtabs`
--

CREATE TABLE `modx_migx_formtabs` (
  `id` int UNSIGNED NOT NULL,
  `config_id` int NOT NULL DEFAULT '0',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `print_before_tabs` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `extended` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_migx_formtabs`
--

INSERT INTO `modx_migx_formtabs` (`id`, `config_id`, `caption`, `pos`, `print_before_tabs`, `extended`) VALUES
(1, 1, 'Фотографии', 1, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_migx_formtab_fields`
--

CREATE TABLE `modx_migx_formtab_fields` (
  `id` int UNSIGNED NOT NULL,
  `config_id` int NOT NULL DEFAULT '0',
  `formtab_id` int NOT NULL DEFAULT '0',
  `field` varchar(191) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `pos` int NOT NULL DEFAULT '0',
  `description_is_code` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `inputTV` varchar(255) NOT NULL DEFAULT '',
  `inputTVtype` varchar(255) NOT NULL DEFAULT '',
  `validation` text NOT NULL,
  `configs` varchar(255) NOT NULL DEFAULT '',
  `restrictive_condition` text NOT NULL,
  `display` varchar(255) NOT NULL DEFAULT '',
  `sourceFrom` varchar(255) NOT NULL DEFAULT '',
  `sources` varchar(255) NOT NULL DEFAULT '',
  `inputOptionValues` text NOT NULL,
  `default` text NOT NULL,
  `extended` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_migx_formtab_fields`
--

INSERT INTO `modx_migx_formtab_fields` (`id`, `config_id`, `formtab_id`, `field`, `caption`, `description`, `pos`, `description_is_code`, `inputTV`, `inputTVtype`, `validation`, `configs`, `restrictive_condition`, `display`, `sourceFrom`, `sources`, `inputOptionValues`, `default`, `extended`) VALUES
(1, 1, 1, 'title', 'Заголовок', '', 1, 0, '', '', '', '', '', '', 'config', '', '', '', ''),
(2, 1, 1, 'image', 'Изображение', '', 2, 0, '', 'image', '', '', '', '', 'config', '', '', '', ''),
(3, 1, 1, 'description', 'Подпись под заголовком', '', 3, 0, '', '', '', '', '', '', 'config', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_namespaces`
--

CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  `assets_path` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_namespaces`
--

INSERT INTO `modx_namespaces` (`name`, `path`, `assets_path`) VALUES
('ajaxform', '{core_path}components/ajaxform/', ''),
('core', '{core_path}', '{assets_path}'),
('formit', '{core_path}components/formit/', '{assets_path}components/formit/'),
('migx', '{core_path}components/migx/', '{assets_path}components/migx/'),
('pdotools', '{core_path}components/pdotools/', ''),
('phpthumbon', '{core_path}components/phpthumbon/', ''),
('translit', '{core_path}components/translit/', '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_property_set`
--

CREATE TABLE `modx_property_set` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int NOT NULL DEFAULT '0',
  `description` varchar(191) NOT NULL DEFAULT '',
  `properties` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_messages`
--

CREATE TABLE `modx_register_messages` (
  `topic` int UNSIGNED NOT NULL,
  `id` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int UNSIGNED NOT NULL DEFAULT '0',
  `expires` int NOT NULL DEFAULT '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_queues`
--

CREATE TABLE `modx_register_queues` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `options` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_register_queues`
--

INSERT INTO `modx_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:\"directory\";s:5:\"locks\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_topics`
--

CREATE TABLE `modx_register_topics` (
  `id` int UNSIGNED NOT NULL,
  `queue` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_register_topics`
--

INSERT INTO `modx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2021-10-11 18:39:14', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_session`
--

CREATE TABLE `modx_session` (
  `id` varchar(191) NOT NULL DEFAULT '',
  `access` int UNSIGNED NOT NULL,
  `data` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_session`
--

INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('05dul812tks07v5k5ht6161l078o44e1', 1633973348, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx61645a1fa3c758.12778252_161645a60284fc6.77586711\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:5:{i:0;s:23:\"61645aa29a9ca7.89124820\";i:1;s:23:\"61645ef4c65ef4.41933769\";i:2;s:23:\"61646137994e98.67184200\";i:3;s:23:\"61646549b55ed7.04997865\";i:4;s:23:\"6164740a8afc70.14742926\";}AjaxForm|a:2:{s:32:\"7dc8c182a649a91fdfd463e650a93d13\";a:14:{s:4:\"form\";s:12:\"tpl.AjaxForm\";s:7:\"snippet\";s:6:\"FormIt\";s:12:\"frontend_css\";s:29:\"[[+assetsUrl]]css/default.css\";s:11:\"frontend_js\";s:27:\"[[+assetsUrl]]js/default.js\";s:9:\"actionUrl\";s:24:\"[[+assetsUrl]]action.php\";s:12:\"formSelector\";s:9:\"ajax_form\";s:10:\"objectName\";s:8:\"AjaxForm\";s:5:\"hooks\";s:10:\"spam,email\";s:8:\"emailTpl\";s:12:\"tpl.FormMail\";s:7:\"emailTo\";s:26:\"Elya.Gorbachev27@yandex.by\";s:12:\"emailSubject\";s:37:\"Заказ звонка с сайта\";s:8:\"validate\";s:43:\"name:required,email:required,phone:required\";s:22:\"validationErrorMessage\";s:72:\"Пожалуйста, заполните поля помеченные *\";s:14:\"successMessage\";s:57:\"Ваша заявка успешно отправлена\";}s:32:\"3d4c2d6a3206b970d0dd3ab5fde0ec62\";a:14:{s:4:\"form\";s:12:\"tpl.AjaxForm\";s:7:\"snippet\";s:6:\"FormIt\";s:12:\"frontend_css\";s:29:\"[[+assetsUrl]]css/default.css\";s:11:\"frontend_js\";s:27:\"[[+assetsUrl]]js/default.js\";s:9:\"actionUrl\";s:24:\"[[+assetsUrl]]action.php\";s:12:\"formSelector\";s:9:\"ajax_form\";s:10:\"objectName\";s:8:\"AjaxForm\";s:5:\"hooks\";s:10:\"spam,email\";s:8:\"emailTpl\";s:12:\"tpl.FormMail\";s:7:\"emailTo\";s:26:\"Elya.Gorbachev27@yandex.by\";s:12:\"emailSubject\";s:37:\"Заказ звонка с сайта\";s:8:\"validate\";s:67:\"name:required,email:email:required,phone:required,checkbox:required\";s:22:\"validationErrorMessage\";s:72:\"Пожалуйста, заполните поля помеченные *\";s:14:\"successMessage\";s:57:\"Ваша заявка успешно отправлена\";}}'),
('3bts2siut0u48ripjllismcsrs8h22it', 1634073142, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:2:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:3:{s:4:\"load\";b:1;s:6:\"formit\";b:1;s:18:\"formit_encryptions\";b:0;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}s:3:\"mgr\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:3:{s:4:\"load\";b:1;s:6:\"formit\";b:1;s:18:\"formit_encryptions\";b:0;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}AjaxForm|a:1:{s:32:\"3d4c2d6a3206b970d0dd3ab5fde0ec62\";a:14:{s:4:\"form\";s:12:\"tpl.AjaxForm\";s:7:\"snippet\";s:6:\"FormIt\";s:12:\"frontend_css\";s:29:\"[[+assetsUrl]]css/default.css\";s:11:\"frontend_js\";s:27:\"[[+assetsUrl]]js/default.js\";s:9:\"actionUrl\";s:24:\"[[+assetsUrl]]action.php\";s:12:\"formSelector\";s:9:\"ajax_form\";s:10:\"objectName\";s:8:\"AjaxForm\";s:5:\"hooks\";s:10:\"spam,email\";s:8:\"emailTpl\";s:12:\"tpl.FormMail\";s:7:\"emailTo\";s:26:\"Elya.Gorbachev27@yandex.by\";s:12:\"emailSubject\";s:37:\"Заказ звонка с сайта\";s:8:\"validate\";s:67:\"name:required,email:email:required,phone:required,checkbox:required\";s:22:\"validationErrorMessage\";s:72:\"Пожалуйста, заполните поля помеченные *\";s:14:\"successMessage\";s:57:\"Ваша заявка успешно отправлена\";}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx61645a1fa3c758.12778252_16165d91314bc53.51214489\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:20:{i:0;s:23:\"6165dc10a93772.59375888\";i:1;s:23:\"6165dcd6afe602.98028345\";i:2;s:23:\"6165e40b16ba21.52280612\";i:3;s:23:\"6165e8eda65a10.15520104\";i:4;s:23:\"6165ed77500649.77220702\";i:5;s:23:\"6165f0af69e659.70408877\";i:6;s:23:\"6165f1d5b1a8a2.08915516\";i:7;s:23:\"6165f2f8dd95d9.90480002\";i:8;s:23:\"6165f33b6930e2.99806274\";i:9;s:23:\"6165f3a229e899.94128627\";i:10;s:23:\"6165f4aa919200.64493367\";i:11;s:23:\"6165f4c1f0ceb3.00639913\";i:12;s:23:\"6165f4d7846075.78785345\";i:13;s:23:\"6165f4e896df07.99346708\";i:14;s:23:\"6165f4f59d2541.34035877\";i:15;s:23:\"6165f5026750d8.81685759\";i:16;s:23:\"6165f50e7d4696.92794383\";i:17;s:23:\"6165f89776da06.52566062\";i:18;s:23:\"6165f9b32cbc13.37350544\";i:19;s:23:\"6165fa366fa3c3.96949595\";}modx.user.1.userGroups|a:1:{i:0;i:1;}'),
('3s2nekdkjik4v09ghcd7o5dnto6ejovr', 1634230295, 'AjaxForm|a:1:{s:32:\"3d4c2d6a3206b970d0dd3ab5fde0ec62\";a:14:{s:4:\"form\";s:12:\"tpl.AjaxForm\";s:7:\"snippet\";s:6:\"FormIt\";s:12:\"frontend_css\";s:29:\"[[+assetsUrl]]css/default.css\";s:11:\"frontend_js\";s:27:\"[[+assetsUrl]]js/default.js\";s:9:\"actionUrl\";s:24:\"[[+assetsUrl]]action.php\";s:12:\"formSelector\";s:9:\"ajax_form\";s:10:\"objectName\";s:8:\"AjaxForm\";s:5:\"hooks\";s:10:\"spam,email\";s:8:\"emailTpl\";s:12:\"tpl.FormMail\";s:7:\"emailTo\";s:26:\"Elya.Gorbachev27@yandex.by\";s:12:\"emailSubject\";s:37:\"Заказ звонка с сайта\";s:8:\"validate\";s:67:\"name:required,email:email:required,phone:required,checkbox:required\";s:22:\"validationErrorMessage\";s:72:\"Пожалуйста, заполните поля помеченные *\";s:14:\"successMessage\";s:57:\"Ваша заявка успешно отправлена\";}}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:2:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:3:{s:4:\"load\";b:1;s:6:\"formit\";b:1;s:18:\"formit_encryptions\";b:0;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}s:3:\"mgr\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:3:{s:4:\"load\";b:1;s:6:\"formit\";b:1;s:18:\"formit_encryptions\";b:0;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx61645a1fa3c758.12778252_161686016d4e832.79591859\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('h2pldpkghi40cmq3746ahvqa3mkaqm1g', 1634229999, 'AjaxForm|a:1:{s:32:\"3d4c2d6a3206b970d0dd3ab5fde0ec62\";a:14:{s:4:\"form\";s:12:\"tpl.AjaxForm\";s:7:\"snippet\";s:6:\"FormIt\";s:12:\"frontend_css\";s:29:\"[[+assetsUrl]]css/default.css\";s:11:\"frontend_js\";s:27:\"[[+assetsUrl]]js/default.js\";s:9:\"actionUrl\";s:24:\"[[+assetsUrl]]action.php\";s:12:\"formSelector\";s:9:\"ajax_form\";s:10:\"objectName\";s:8:\"AjaxForm\";s:5:\"hooks\";s:10:\"spam,email\";s:8:\"emailTpl\";s:12:\"tpl.FormMail\";s:7:\"emailTo\";s:26:\"Elya.Gorbachev27@yandex.by\";s:12:\"emailSubject\";s:37:\"Заказ звонка с сайта\";s:8:\"validate\";s:67:\"name:required,email:email:required,phone:required,checkbox:required\";s:22:\"validationErrorMessage\";s:72:\"Пожалуйста, заполните поля помеченные *\";s:14:\"successMessage\";s:57:\"Ваша заявка успешно отправлена\";}}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:3:{s:4:\"load\";b:1;s:6:\"formit\";b:1;s:18:\"formit_encryptions\";b:0;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_content`
--

CREATE TABLE `modx_site_content` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(191) NOT NULL DEFAULT '',
  `longtitle` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `alias` varchar(191) DEFAULT '',
  `alias_visible` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `link_attributes` varchar(191) NOT NULL DEFAULT '',
  `published` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `pub_date` int NOT NULL DEFAULT '0',
  `unpub_date` int NOT NULL DEFAULT '0',
  `parent` int NOT NULL DEFAULT '0',
  `isfolder` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `template` int NOT NULL DEFAULT '0',
  `menuindex` int NOT NULL DEFAULT '0',
  `searchable` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `cacheable` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `createdby` int NOT NULL DEFAULT '0',
  `createdon` int NOT NULL DEFAULT '0',
  `editedby` int NOT NULL DEFAULT '0',
  `editedon` int NOT NULL DEFAULT '0',
  `deleted` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` int NOT NULL DEFAULT '0',
  `deletedby` int NOT NULL DEFAULT '0',
  `publishedon` int NOT NULL DEFAULT '0',
  `publishedby` int NOT NULL DEFAULT '0',
  `menutitle` varchar(191) NOT NULL DEFAULT '',
  `donthit` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `privateweb` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `privatemgr` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int UNSIGNED NOT NULL DEFAULT '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  `properties` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `alias_visible`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`) VALUES
(1, 'document', 'text/html', 'Тестовое задание', '', '', 'index', 1, '', 1, 0, 0, 0, 1, '', '<div class=\"owl-carousel owl-theme\">\r\n	[[getImageList?\r\n		&tvname=`Photo`\r\n		&tpl=`tplCarouselItem`\r\n	]]\r\n</div>', 1, 1, 0, 1, 1, 1, 1633966641, 1, 1634073040, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(2, 'document', 'text/html', 'Каталог товаров', '', '', 'каталог-товаров', 1, '', 1, 0, 0, 1, 0, '', '', 1, 1, 0, 1, 1, 1, 1634071352, 1, 1634071739, 0, 0, 0, 1634071739, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(3, 'document', 'text/html', 'Новости и акции', '', '', 'каталог-товаров', 1, '', 1, 0, 0, 1, 0, '', '', 1, 1, 0, 1, 1, 1, 1634071383, 1, 1634071755, 0, 0, 0, 1634071755, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(4, 'document', 'text/html', 'Наши услуги', '', '', 'каталог-товаров', 1, '', 1, 0, 0, 1, 0, '', '', 1, 1, 0, 1, 1, 1, 1634071396, 1, 1634071778, 0, 0, 0, 1634071778, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(5, 'document', 'text/html', 'Портфолио', '', '', 'каталог-товаров', 1, '', 1, 0, 0, 1, 0, '', '', 1, 1, 0, 1, 1, 1, 1634071409, 1, 1634071791, 0, 0, 0, 1634071791, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(6, 'document', 'text/html', 'Блог', '', '', 'каталог-товаров', 1, '', 1, 0, 0, 1, 0, '', '', 1, 1, 0, 1, 1, 1, 1634071420, 1, 1634071804, 0, 0, 0, 1634071804, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(7, 'document', 'text/html', 'Контакты', '', '', 'каталог-товаров', 1, '', 1, 0, 0, 1, 0, '', '', 1, 1, 0, 1, 1, 1, 1634071431, 1, 1634071817, 0, 0, 0, 1634071817, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(8, 'document', 'text/html', 'О компании', '', '', 'каталог-товаров', 1, '', 1, 0, 0, 1, 0, '', '', 1, 1, 0, 1, 1, 1, 1634072030, 0, 0, 0, 0, 0, 1634071817, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(9, 'document', 'text/html', 'Отзывы о нас', '', '', 'каталог-товаров', 1, '', 1, 0, 0, 1, 0, '', '', 1, 1, 0, 1, 1, 1, 1634072043, 0, 0, 0, 0, 0, 1634071817, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(10, 'document', 'text/html', 'Доставка и оплата', '', '', 'каталог-товаров', 1, '', 1, 0, 0, 1, 0, '', '', 1, 1, 0, 1, 1, 1, 1634072056, 0, 0, 0, 0, 0, 1634071817, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(11, 'document', 'text/html', 'Дизайнеры', '', '', 'каталог-товаров', 1, '', 1, 0, 0, 1, 0, '', '', 1, 1, 0, 1, 1, 1, 1634072069, 0, 0, 0, 0, 0, 1634071817, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_htmlsnippets`
--

CREATE TABLE `modx_site_htmlsnippets` (
  `id` int UNSIGNED NOT NULL,
  `source` int UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Chunk',
  `editor_type` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 0, 0, 'fiDefaultEmailTpl', 'The default chunk used for the email. Please do not edit this chunk, as this will be overwritten when updating FormIt.', 0, 2, 0, '<p>[[+fields]]</p>', 0, 'a:0:{}', 0, ''),
(2, 0, 0, 'fiDefaultFiarTpl', 'The default chunk used for the autoresponder email. Please do not edit this chunk, as this will be overwritten when updating FormIt.', 0, 2, 0, '<p>Hello [[+name]],</p>\n\n<p>Your message has been received. We will respond as soon as possible. Thank you for contacting us.</p>\n\n<p>NOTE: This is an automatic response; please do not respond to this message directly.</p>\n\n<p>Here is your message:<br />\n[[+message:nl2br]]</p>', 0, 'a:0:{}', 0, ''),
(3, 0, 0, 'fiDefaultOptGroupTpl', 'The default chunk used by the FormItCountryOptions snippet for the select optgroup. Please do not edit this chunk, as this will be overwritten when updating FormIt.', 0, 2, 0, '<optgroup label=\"[[+text]]\">\n    [[+options]]\n</optgroup>', 0, 'a:0:{}', 0, ''),
(4, 0, 0, 'fiDefaultOptionTpl', 'The default chunk used by the FormItCountryOptions snippet for the select option. Please do not edit this chunk, as this will be overwritten when updating FormIt.', 0, 2, 0, '<option value=\"[[+value]]\"[[+selected]]>[[+text]]</option>', 0, 'a:0:{}', 0, ''),
(5, 1, 0, 'tpl.AjaxForm', '', 0, 3, 0, '<form id=\"callback\" action=\"#\" method=\"post\">\n	<div class=\"input-group\">\n		<label for=\"email\">E-mail:<span class=\"required\">*</span></label>\n		<input id=\"email\" type=\"email\" name=\"email\"  value=\"[[+fi.email]]\" placeholder=\"example@mail.ru\">\n		<span id=\"email_error\" class=\"error error_email\">[[+fi.error.email]]</span>\n	</div>\n	<div class=\"input-group\">\n		<label for=\"phone\">Телефон:<span class=\"required\">*</span></label>\n		<input id=\"phone\" type=\"tel\" name=\"phone\" pattern=\"375[0-9]{9}\"  value=\"[[+fi.phone]]\" placeholder=\"375(XX)XXX-XX-XX\">\n		<span id=\"phone_error\" class=\"error error_phone\">[[+fi.error.phone]]</span>\n	</div>\n	<div class=\"input-group\">\n		<label for=\"message\">Сообщение:</label>\n		<textarea id=\"message\" type=\"text\" name=\"message\"></textarea>\n	</div>\n	<div class=\"input-group\">\n		<button id=\"submit\">Отправить</button>\n	</div>\n</form>\n\n\n', 0, 'a:0:{}', 0, 'core/components/ajaxform/elements/chunks/chunk.example.tpl'),
(6, 1, 0, 'tpl.FormMail', '', 0, 0, 0, '<h1>Новая заявка</h1>\n<p>Email: [[+email]]</p>\n<p>Телефон: [[+phone]]</p>\n<p>Сообщение: [[+message]]</p>', 0, 'a:0:{}', 0, ''),
(7, 1, 0, 'header', 'Шапка сайта', 0, 0, 0, '<!DOCTYPE html>\n<html>\n	<head>\n		<meta charset=\"[[++modx_charset]]\" />\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=[[++modx_charset]]\" />\n		<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n		<title>[[*pagetitle]] - [[++site_name]]</title>\n                <base href=\"[[!++site_url]]\" />\n		<script src=\"manager/templates/zadanie/js/jquery-3.6.0.min.js\"></script>\n		<link rel=\"stylesheet\" href=\"manager/templates/zadanie/css/jquery.modal.min.css\" type=\"text/css\" />\n		<link rel=\"stylesheet\" href=\"manager/templates/zadanie/css/font-awesome.min.css\">\n		<link rel=\"stylesheet\" href=\"manager/templates/zadanie/css/owl.carousel.min.css\">\n		<link rel=\"stylesheet\" href=\"manager/templates/zadanie/css/owl.theme.default.min.css\">\n		<link type=\"text/css\" rel=\"stylesheet\" href=\"manager/templates/zadanie/css/mmenu.css\" />\n		<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css\" />\n		<link rel=\"stylesheet\" href=\"manager/templates/zadanie/css/style.css\" type=\"text/css\" />\n	</head>\n	<body>\n		<div id=\"modal\" class=\"modal\">\n			<div class=\"cont\">\n				<div class=\"img\"></div>\n				<div class=\"forma\">\n					<h2>ОБРАТНАЯ СВЯЗЬ</h2>\n					[[!AjaxForm?\n						&snippet=`FormIt`\n						&hooks=`spam,email`\n						&form=`tpl.AjaxForm`\n						&emailTpl=`tpl.FormMail`\n						&emailTo=`Elya.Gorbachev27@yandex.by`\n						&emailSubject=`Заказ звонка с сайта`\n						&validate=`name:required,email:email:required,phone:required,checkbox:required`\n						&validationErrorMessage=`Пожалуйста, заполните поля помеченные *`\n						&successMessage=`Ваша заявка успешно отправлена`\n					]]\n				</div>\n			</div>\n		</div>\n		<div class=\"header\">\n			<a href=\"#menu\" class=\"title\"><span></span><span></span><span></span><span></span></a><span>СИЯНИЕ</span>\n			<a href=\"#modal\" rel=\"modal:open\" class=\"mobile\"><i class=\"fa fa-phone\" aria-hidden=\"true\"></i></a>\n		</div>', 0, 'a:0:{}', 0, ''),
(8, 1, 0, 'footer', 'Подвал сайта', 0, 0, 0, '		<script src=\"manager/templates/zadanie/js/jquery-3.6.0.min.js\"></script>\n		<script src=\"manager/templates/zadanie/js/owl.carousel.min.js\"></script>\n		<script src=\"manager/templates/zadanie/js/mmenu.js\"></script>\n		<script src=\"manager/templates/zadanie/js/jquery.modal.min.js\"></script>\n		<script src=\"manager/templates/zadanie/js/script.js\"></script>\n	</body>\n</html>', 0, 'a:0:{}', 0, ''),
(10, 1, 0, 'tplCarouselItem', '', 0, 0, 0, '<div class=\"item [[+idx:is=`1`:then=`active`]]\">\n  <img src=\"[[+image]]\" alt=\"[[+title]]\">\n  <div class=\"text\">\n    <div class=\"title\">\n      <h3>[[+title]]</h3>\n      <h4>[[+description]]</h3>\n    </div>\n    <a href=\"#\" class=\"buts\">Подробнее →</a>\n  </div>\n</div>', 0, 'a:0:{}', 0, ''),
(11, 1, 0, 'container_left', '', 0, 0, 0, '<div class=\"container_left\">\n	<div class=\"logo\"></div>\n	<p class=\"desc\">Интернет магазин отделочных материалов и дизайна.</p>\n	<nav id=\"menu\">\n		[[pdoMenu?\n			&parents=`1`\n			&level=`0`\n		]]\n	</nav>\n	<nav id=\"menu-desktop\">\n		[[pdoMenu?\n			&parents=`1`\n			&level=`0`\n			&resources=`-8,-9,-10,-11`\n		]]\n	</nav>\n	<div class=\"block\">\n		[[pdoMenu?\n			&parents=`1`\n			&level=`0`\n			&resources=`8,9,10,11`\n		]]\n	</div>\n	<div class=\"number\">\n		<a href=\"tel://\" class=\"phone\">+7 (4822) 648-080</a>\n		<a href=\"#modal\"  class=\"btn\" rel=\"modal:open\">Заказать звонок</a>\n	</div>	\n</div>', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugins`
--

CREATE TABLE `modx_site_plugins` (
  `id` int UNSIGNED NOT NULL,
  `source` int UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `disabled` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_plugins`
--

INSERT INTO `modx_site_plugins` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `static`, `static_file`) VALUES
(1, 1, 0, 'pdoTools', '', 0, 1, 0, '/** @var modX $modx */\r\nswitch ($modx->event->name) {\r\n\r\n    case \'OnMODXInit\':\r\n        $fqn = $modx->getOption(\'pdoTools.class\', null, \'pdotools.pdotools\', true);\r\n        $path = $modx->getOption(\'pdotools_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\r\n        $modx->loadClass($fqn, $path, false, true);\r\n\r\n        $fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\r\n        $path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\r\n        $modx->loadClass($fqn, $path, false, true);\r\n        break;\r\n\r\n    case \'OnSiteRefresh\':\r\n        /** @var pdoTools $pdoTools */\r\n        if ($pdoTools = $modx->getService(\'pdoTools\')) {\r\n            if ($pdoTools->clearFileCache()) {\r\n                $modx->log(modX::LOG_LEVEL_INFO, $modx->lexicon(\'refresh_default\') . \': pdoTools\');\r\n            }\r\n        }\r\n        break;\r\n\r\n    case \'OnWebPagePrerender\':\r\n        $parser = $modx->getParser();\r\n        if ($parser instanceof pdoParser) {\r\n            foreach ($parser->pdoTools->ignores as $key => $val) {\r\n                $modx->resource->_output = str_replace($key, $val, $modx->resource->_output);\r\n            }\r\n        }\r\n        break;\r\n}', 0, NULL, 0, '', 0, 'core/components/pdotools/elements/plugins/plugin.pdotools.php'),
(2, 0, 0, 'FormIt', '', 0, 2, 0, '/**\n * FormIt\n *\n * Copyright 2009-2017 by Sterc <modx@sterc.nl>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * FormIt plugin\n *\n * @package formit\n */\n\n$formit = $modx->getService(\n    \'formit\',\n    \'FormIt\',\n    $modx->getOption(\'formit.core_path\', null, $modx->getOption(\'core_path\').\'components/formit/\') .\'model/formit/\',\n    array()\n);\n\nif (!($formit instanceof FormIt)) {\n    return;\n}\n\nswitch ($modx->event->name) {\n    case \'OnManagerPageBeforeRender\':\n        // If migration status is false, show migrate alert message bar in manager\n        if (method_exists(\'FormIt\',\'encryptionMigrationStatus\')) {\n            if (!$formit->encryptionMigrationStatus()) {\n                $modx->lexicon->load(\'formit:mgr\');\n                $properties = array(\'message\' => $modx->lexicon(\'formit.migrate_alert\'));\n                $chunk = $formit->_getTplChunk(\'migrate/alert\');\n                if ($chunk) {\n                    $modx->regClientStartupHTMLBlock($chunk->process($properties));\n                    $modx->regClientCSS($formit->config[\'cssUrl\'] . \'migrate.css\');\n                }\n            }\n        }\n}', 0, 'a:0:{}', 0, '', 0, ''),
(3, 0, 0, 'MIGX', '', 0, 4, 0, '$corePath = $modx->getOption(\'migx.core_path\',null,$modx->getOption(\'core_path\').\'components/migx/\');\n$assetsUrl = $modx->getOption(\'migx.assets_url\', null, $modx->getOption(\'assets_url\') . \'components/migx/\');\nswitch ($modx->event->name) {\n    case \'OnTVInputRenderList\':\n        $modx->event->output($corePath.\'elements/tv/input/\');\n        break;\n    case \'OnTVInputPropertiesList\':\n        $modx->event->output($corePath.\'elements/tv/inputoptions/\');\n        break;\n\n        case \'OnDocFormPrerender\':\n        $modx->controller->addCss($assetsUrl.\'css/mgr.css\');\n        break; \n \n    /*          \n    case \'OnTVOutputRenderList\':\n        $modx->event->output($corePath.\'elements/tv/output/\');\n        break;\n    case \'OnTVOutputRenderPropertiesList\':\n        $modx->event->output($corePath.\'elements/tv/properties/\');\n        break;\n    \n    case \'OnDocFormPrerender\':\n        $assetsUrl = $modx->getOption(\'colorpicker.assets_url\',null,$modx->getOption(\'assets_url\').\'components/colorpicker/\'); \n        $modx->regClientStartupHTMLBlock(\'<script type=\"text/javascript\">\n        Ext.onReady(function() {\n            \n        });\n        </script>\');\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorPicker.js\');\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorMenu.js\');\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorPickerField.js\');		\n        $modx->regClientCSS($assetsUrl.\'resources/css/colorpicker.css\');\n        break;\n     */\n}\nreturn;', 0, 'a:0:{}', 0, '', 0, ''),
(4, 0, 0, 'MIGXquip', '', 0, 4, 0, '$quipCorePath = $modx->getOption(\'quip.core_path\', null, $modx->getOption(\'core_path\') . \'components/quip/\');\n//$assetsUrl = $modx->getOption(\'migx.assets_url\', null, $modx->getOption(\'assets_url\') . \'components/migx/\');\nswitch ($modx->event->name)\n{\n\n    case \'OnDocFormPrerender\':\n\n        \n        require_once $quipCorePath . \'model/quip/quip.class.php\';\n        $modx->quip = new Quip($modx);\n\n        $modx->lexicon->load(\'quip:default\');\n        $quipconfig = $modx->toJson($modx->quip->config);\n        \n        $js = \"\n        Quip.config = Ext.util.JSON.decode(\'{$quipconfig}\');\n        console.log(Quip);\";\n\n        //$modx->controller->addCss($assetsUrl . \'css/mgr.css\');\n        $modx->controller->addJavascript($modx->quip->config[\'jsUrl\'].\'quip.js\');\n        $modx->controller->addHtml(\'<script type=\"text/javascript\">\' . $js . \'</script>\');\n        break;\n\n}\nreturn;', 0, 'a:0:{}', 1, '', 0, ''),
(5, 0, 0, 'migxResizeOnUpload', '', 0, 4, 0, '/**\n * migxResizeOnUpload Plugin\n *\n * Events: OnFileManagerUpload\n * Author: Bruno Perner <b.perner@gmx.de>\n * Modified to read multiple configs from mediasource-property\n * \n * First Author: Vasiliy Naumkin <bezumkin@yandex.ru>\n * Required: PhpThumbOf snippet for resizing images\n * \n * Example: mediasource - property \'resizeConfig\':\n * [{\"alias\":\"origin\",\"w\":\"500\",\"h\":\"500\",\"far\":1},{\"alias\":\"thumb\",\"w\":\"150\",\"h\":\"150\",\"far\":1}]\n */\n\nif ($modx->event->name != \'OnFileManagerUpload\') {\n    return;\n}\n\n\n$file = $modx->event->params[\'files\'][\'file\'];\n$directory = $modx->event->params[\'directory\'];\n\nif ($file[\'error\'] != 0) {\n    return;\n}\n\n$name = $file[\'name\'];\n//$extensions = explode(\',\', $modx->getOption(\'upload_images\'));\n\n$source = $modx->event->params[\'source\'];\n\nif ($source instanceof modMediaSource) {\n    //$dirTree = $modx->getOption(\'dirtree\', $_REQUEST, \'\');\n    //$modx->setPlaceholder(\'docid\', $resource_id);\n    $source->initialize();\n    $basePath = str_replace(\'/./\', \'/\', $source->getBasePath());\n    //$cachepath = $cachepath . $dirTree;\n    $baseUrl = $modx->getOption(\'site_url\') . $source->getBaseUrl();\n    //$baseUrl = $baseUrl . $dirTree;\n    $sourceProperties = $source->getPropertyList();\n\n    //echo \'<pre>\' . print_r($sourceProperties, 1) . \'</pre>\';\n    //$allowedExtensions = $modx->getOption(\'allowedFileTypes\', $sourceProperties, \'\');\n    //$allowedExtensions = empty($allowedExtensions) ? \'jpg,jpeg,png,gif\' : $allowedExtensions;\n    //$maxFilesizeMb = $modx->getOption(\'maxFilesizeMb\', $sourceProperties, \'8\');\n    //$maxFiles = $modx->getOption(\'maxFiles\', $sourceProperties, \'0\');\n    //$thumbX = $modx->getOption(\'thumbX\', $sourceProperties, \'100\');\n    //$thumbY = $modx->getOption(\'thumbY\', $sourceProperties, \'100\');\n    $resizeConfigs = $modx->getOption(\'resizeConfigs\', $sourceProperties, \'\');\n    $resizeConfigs = $modx->fromJson($resizeConfigs);\n    $thumbscontainer = $modx->getOption(\'thumbscontainer\', $sourceProperties, \'thumbs/\');\n    $imageExtensions = $modx->getOption(\'imageExtensions\', $sourceProperties, \'jpg,jpeg,png,gif,JPG\');\n    $imageExtensions = explode(\',\', $imageExtensions);\n    //$uniqueFilenames = $modx->getOption(\'uniqueFilenames\', $sourceProperties, false);\n    //$onImageUpload = $modx->getOption(\'onImageUpload\', $sourceProperties, \'\');\n    //$onImageRemove = $modx->getOption(\'onImageRemove\', $sourceProperties, \'\');\n    $cleanalias = $modx->getOption(\'cleanFilename\', $sourceProperties, false);\n\n}\n\nif (is_array($resizeConfigs) && count($resizeConfigs) > 0) {\n    foreach ($resizeConfigs as $rc) {\n        if (isset($rc[\'alias\'])) {\n            $filePath = $basePath . $directory;\n            $filePath = str_replace(\'//\',\'/\',$filePath);\n            if ($rc[\'alias\'] == \'origin\') {\n                $thumbPath = $filePath;\n            } else {\n                $thumbPath = $filePath . $rc[\'alias\'] . \'/\';\n                $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\n                if (!@mkdir($thumbPath, $permissions, true)) {\n                    $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $thumbPath));\n                } else {\n                    chmod($thumbPath, $permissions);\n                }\n\n            }\n\n\n            $filename = $filePath . $name;\n            $thumbname = $thumbPath . $name;\n            $ext = substr(strrchr($name, \'.\'), 1);\n            if (in_array($ext, $imageExtensions)) {\n                $sizes = getimagesize($filename);\n                echo $sizes[0]; \n                //$format = substr($sizes[\'mime\'], 6);\n                if ($sizes[0] > $rc[\'w\'] || $sizes[1] > $rc[\'h\']) {\n                    if ($sizes[0] < $rc[\'w\']) {\n                        $rc[\'w\'] = $sizes[0];\n                    }\n                    if ($sizes[1] < $rc[\'h\']) {\n                        $rc[\'h\'] = $sizes[1];\n                    }\n                    $type = $sizes[0] > $sizes[1] ? \'landscape\' : \'portrait\';\n                    if (isset($rc[\'far\']) && $rc[\'far\'] == \'1\' && isset($rc[\'w\']) && isset($rc[\'h\'])) {\n                        if ($type = \'landscape\') {\n                            unset($rc[\'h\']);\n                        }else {\n                            unset($rc[\'w\']);\n                        }\n                    }\n\n                    $options = \'\';\n                    foreach ($rc as $k => $v) {\n                        if ($k != \'alias\') {\n                            $options .= \'&\' . $k . \'=\' . $v;\n                        }\n                    }\n                    $resized = $modx->runSnippet(\'phpthumbof\', array(\'input\' => $filePath . $name, \'options\' => $options));\n                    rename(MODX_BASE_PATH . substr($resized, 1), $thumbname);\n                }\n            }\n\n\n        }\n    }\n}', 0, 'a:0:{}', 0, '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugin_events`
--

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int NOT NULL DEFAULT '0',
  `event` varchar(191) NOT NULL DEFAULT '',
  `priority` int NOT NULL DEFAULT '0',
  `propertyset` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_plugin_events`
--

INSERT INTO `modx_site_plugin_events` (`pluginid`, `event`, `priority`, `propertyset`) VALUES
(1, 'OnMODXInit', -100, 0),
(1, 'OnSiteRefresh', 0, 0),
(1, 'OnWebPagePrerender', -100, 0),
(2, 'OnManagerPageBeforeRender', 0, 0),
(3, 'OnDocFormPrerender', 0, 0),
(3, 'OnTVInputPropertiesList', 0, 0),
(3, 'OnTVInputRenderList', 0, 0),
(4, 'OnDocFormPrerender', 0, 0),
(5, 'OnFileManagerUpload', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_snippets`
--

CREATE TABLE `modx_site_snippets` (
  `id` int UNSIGNED NOT NULL,
  `source` int UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_snippets`
--

INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(1, 1, 0, 'pdoResources', '', 0, 1, 0, '/** @var array $scriptProperties */\r\n/** @var modX $modx */\r\nif (isset($parents) && $parents === \'\') {\r\n    $scriptProperties[\'parents\'] = $modx->resource->id;\r\n}\r\nif (!empty($returnIds)) {\r\n    $scriptProperties[\'return\'] = $return = \'ids\';\r\n} elseif (!isset($return)) {\r\n    $scriptProperties[\'return\'] = $return = \'chunks\';\r\n}\r\n\r\n// Adding extra parameters into special place so we can put them in a results\r\n/** @var modSnippet $snippet */\r\n$additionalPlaceholders = $properties = [];\r\nif (isset($this) && $this instanceof modSnippet && $this->get(\'properties\')) {\r\n    $properties = $this->get(\'properties\');\r\n}\r\nelseif ($snippet = $modx->getObject(\'modSnippet\', [\'name\' => \'pdoResources\'])) {\r\n    $properties = $snippet->get(\'properties\');\r\n}\r\nif (!empty($properties)) {\r\n    foreach ($scriptProperties as $k => $v) {\r\n        if (!isset($properties[$k])) {\r\n            $additionalPlaceholders[$k] = $v;\r\n        }\r\n    }\r\n}\r\n$scriptProperties[\'additionalPlaceholders\'] = $additionalPlaceholders;\r\n\r\n/** @var pdoFetch $pdoFetch */\r\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\r\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\r\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\r\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\r\n} else {\r\n    return false;\r\n}\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n$output = $pdoFetch->run();\r\n\r\n$log = \'\';\r\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\r\n    $log .= \'<pre class=\"pdoResourcesLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\r\n}\r\n\r\n// Return output\r\nif (!empty($returnIds)) {\r\n    $modx->setPlaceholder(\'pdoResources.log\', $log);\r\n    if (!empty($toPlaceholder)) {\r\n        $modx->setPlaceholder($toPlaceholder, $output);\r\n    } else {\r\n        return $output;\r\n    }\r\n} elseif ($return === \'data\') {\r\n    return $output;\r\n} elseif (!empty($toSeparatePlaceholders)) {\r\n    $output[\'log\'] = $log;\r\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\r\n} else {\r\n    $output .= $log;\r\n\r\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\r\n        $output = $pdoFetch->getChunk($tplWrapper, array_merge($additionalPlaceholders, [\'output\' => $output]),\r\n            $pdoFetch->config[\'fastMode\']);\r\n    }\r\n\r\n    if (!empty($toPlaceholder)) {\r\n        $modx->setPlaceholder($toPlaceholder, $output);\r\n    } else {\r\n        return $output;\r\n    }\r\n}', 0, 'a:47:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"returnIds\";a:7:{s:4:\"name\";s:9:\"returnIds\";s:4:\"desc\";s:23:\"pdotools_prop_returnIds\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:11:\"publishedon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"sortbyTV\";a:7:{s:4:\"name\";s:8:\"sortbyTV\";s:4:\"desc\";s:22:\"pdotools_prop_sortbyTV\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"sortbyTVType\";a:7:{s:4:\"name\";s:12:\"sortbyTVType\";s:4:\"desc\";s:26:\"pdotools_prop_sortbyTVType\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"sortdirTV\";a:7:{s:4:\"name\";s:9:\"sortdirTV\";s:4:\"desc\";s:23:\"pdotools_prop_sortdirTV\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:28:\"pdotools_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"tvFilters\";a:7:{s:4:\"name\";s:9:\"tvFilters\";s:4:\"desc\";s:23:\"pdotools_prop_tvFilters\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:21:\"tvFiltersAndDelimiter\";a:7:{s:4:\"name\";s:21:\"tvFiltersAndDelimiter\";s:4:\"desc\";s:35:\"pdotools_prop_tvFiltersAndDelimiter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\",\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:20:\"tvFiltersOrDelimiter\";a:7:{s:4:\"name\";s:20:\"tvFiltersOrDelimiter\";s:4:\"desc\";s:34:\"pdotools_prop_tvFiltersOrDelimiter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:2:\"||\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"idx\";a:7:{s:4:\"name\";s:3:\"idx\";s:4:\"desc\";s:17:\"pdotools_prop_idx\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"first\";a:7:{s:4:\"name\";s:5:\"first\";s:4:\"desc\";s:19:\"pdotools_prop_first\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"last\";a:7:{s:4:\"name\";s:4:\"last\";s:4:\"desc\";s:18:\"pdotools_prop_last\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplFirst\";a:7:{s:4:\"name\";s:8:\"tplFirst\";s:4:\"desc\";s:22:\"pdotools_prop_tplFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplLast\";a:7:{s:4:\"name\";s:7:\"tplLast\";s:4:\"desc\";s:21:\"pdotools_prop_tplLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplOdd\";a:7:{s:4:\"name\";s:6:\"tplOdd\";s:4:\"desc\";s:20:\"pdotools_prop_tplOdd\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplCondition\";a:7:{s:4:\"name\";s:12:\"tplCondition\";s:4:\"desc\";s:26:\"pdotools_prop_tplCondition\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplOperator\";a:7:{s:4:\"name\";s:11:\"tplOperator\";s:4:\"desc\";s:25:\"pdotools_prop_tplOperator\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:10:{i:0;a:2:{s:4:\"text\";s:11:\"is equal to\";s:5:\"value\";s:2:\"==\";}i:1;a:2:{s:4:\"text\";s:15:\"is not equal to\";s:5:\"value\";s:2:\"!=\";}i:2;a:2:{s:4:\"text\";s:9:\"less than\";s:5:\"value\";s:1:\"<\";}i:3;a:2:{s:4:\"text\";s:21:\"less than or equal to\";s:5:\"value\";s:2:\"<=\";}i:4;a:2:{s:4:\"text\";s:24:\"greater than or equal to\";s:5:\"value\";s:2:\">=\";}i:5;a:2:{s:4:\"text\";s:8:\"is empty\";s:5:\"value\";s:5:\"empty\";}i:6;a:2:{s:4:\"text\";s:12:\"is not empty\";s:5:\"value\";s:6:\"!empty\";}i:7;a:2:{s:4:\"text\";s:7:\"is null\";s:5:\"value\";s:4:\"null\";}i:8;a:2:{s:4:\"text\";s:11:\"is in array\";s:5:\"value\";s:7:\"inarray\";}i:9;a:2:{s:4:\"text\";s:10:\"is between\";s:5:\"value\";s:7:\"between\";}}s:5:\"value\";s:2:\"==\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"conditionalTpls\";a:7:{s:4:\"name\";s:15:\"conditionalTpls\";s:4:\"desc\";s:29:\"pdotools_prop_conditionalTpls\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"loadModels\";a:7:{s:4:\"name\";s:10:\"loadModels\";s:4:\"desc\";s:24:\"pdotools_prop_loadModels\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoresources.php'),
(2, 1, 0, 'pdoUsers', '', 0, 1, 0, '/** @var array $scriptProperties */\r\n/** @var pdoFetch $pdoFetch */\r\n/** @var modX $modx */\r\nif (!empty($returnIds)) {\r\n    $scriptProperties[\'return\'] = $return = \'ids\';\r\n} elseif (!isset($return)) {\r\n    $scriptProperties[\'return\'] = $return = \'chunks\';\r\n}\r\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\r\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\r\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\r\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\r\n} else {\r\n    return false;\r\n}\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n\r\n$class = \'modUser\';\r\n$profile = \'modUserProfile\';\r\n$member = \'modUserGroupMember\';\r\n\r\n// Start building \"Where\" expression\r\n$where = [];\r\nif (empty($showInactive)) {\r\n    $where[$class . \'.active\'] = 1;\r\n}\r\nif (empty($showBlocked)) {\r\n    $where[$profile . \'.blocked\'] = 0;\r\n}\r\n\r\n// Add users profiles and groups\r\n$innerJoin = [\r\n    $profile => [\'alias\' => $profile, \'on\' => \"$class.id = $profile.internalKey\"],\r\n];\r\n\r\n// Filter by users, groups and roles\r\n$tmp = [\r\n    \'users\' => [\r\n        \'class\' => $class,\r\n        \'name\' => \'username\',\r\n        \'join\' => $class . \'.id\',\r\n    ],\r\n    \'groups\' => [\r\n        \'class\' => \'modUserGroup\',\r\n        \'name\' => \'name\',\r\n        \'join\' => $member . \'.user_group\',\r\n    ],\r\n    \'roles\' => [\r\n        \'class\' => \'modUserGroupRole\',\r\n        \'name\' => \'name\',\r\n        \'join\' => $member . \'.role\',\r\n    ],\r\n];\r\nforeach ($tmp as $k => $p) {\r\n    if (!empty($$k)) {\r\n        $$k = array_map(\'trim\', explode(\',\', $$k));\r\n        ${$k . \'_in\'} = ${$k . \'_out\'} = $fetch_in = $fetch_out = [];\r\n        foreach ($$k as $v) {\r\n            if (is_numeric($v)) {\r\n                if ($v[0] == \'-\') {\r\n                    ${$k . \'_out\'}[] = abs($v);\r\n                } else {\r\n                    ${$k . \'_in\'}[] = abs($v);\r\n                }\r\n            } else {\r\n                if ($v[0] == \'-\') {\r\n                    $fetch_out[] = $v;\r\n                } else {\r\n                    $fetch_in[] = $v;\r\n                }\r\n            }\r\n        }\r\n\r\n        if (!empty($fetch_in) || !empty($fetch_out)) {\r\n            $q = $modx->newQuery($p[\'class\'], [$p[\'name\'] . \':IN\' => array_merge($fetch_in, $fetch_out)]);\r\n            $q->select(\'id,\' . $p[\'name\']);\r\n            $tstart = microtime(true);\r\n            if ($q->prepare() && $q->stmt->execute()) {\r\n                $modx->queryTime += microtime(true) - $tstart;\r\n                $modx->executedQueries++;\r\n                while ($row = $q->stmt->fetch(PDO::FETCH_ASSOC)) {\r\n                    if (in_array($row[$p[\'name\']], $fetch_in)) {\r\n                        ${$k . \'_in\'}[] = $row[\'id\'];\r\n                    } else {\r\n                        ${$k . \'_out\'}[] = $row[\'id\'];\r\n                    }\r\n                }\r\n            }\r\n        }\r\n\r\n        if (!empty(${$k . \'_in\'})) {\r\n            $where[$p[\'join\'] . \':IN\'] = ${$k . \'_in\'};\r\n        }\r\n        if (!empty(${$k . \'_out\'})) {\r\n            $where[$p[\'join\'] . \':NOT IN\'] = ${$k . \'_out\'};\r\n        }\r\n    }\r\n}\r\n\r\nif (!empty($groups_in) || !empty($groups_out) || !empty($roles_in) || !empty($roles_out)) {\r\n    $innerJoin[$member] = [\'alias\' => $member, \'on\' => \"$class.id = $member.member\"];\r\n}\r\n\r\n// Fields to select\r\n$select = [\r\n    $profile => implode(\',\', array_diff(array_keys($modx->getFieldMeta($profile)), [\'sessionid\'])),\r\n    $class => implode(\',\', array_diff(array_keys($modx->getFieldMeta($class)), [\'password\', \'cachepwd\', \'salt\', \'session_stale\', \'remote_key\', \'remote_data\', \'hash_class\'])),\r\n];\r\n\r\n// Add custom parameters\r\nforeach ([\'where\', \'innerJoin\', \'select\'] as $v) {\r\n    if (!empty($scriptProperties[$v])) {\r\n        $tmp = $scriptProperties[$v];\r\n        if (!is_array($tmp)) {\r\n            $tmp = json_decode($tmp, true);\r\n        }\r\n        if (is_array($tmp)) {\r\n            $$v = array_merge($$v, $tmp);\r\n        }\r\n    }\r\n    unset($scriptProperties[$v]);\r\n}\r\n$pdoFetch->addTime(\'Conditions prepared\');\r\n\r\n$default = [\r\n    \'class\' => $class,\r\n    \'innerJoin\' => json_encode($innerJoin),\r\n    \'where\' => json_encode($where),\r\n    \'select\' => json_encode($select),\r\n    \'groupby\' => $class . \'.id\',\r\n    \'sortby\' => $class . \'.id\',\r\n    \'sortdir\' => \'ASC\',\r\n    \'fastMode\' => false,\r\n    \'return\' => $return,\r\n    \'disableConditions\' => true,\r\n];\r\n\r\nif (!empty($users_in) && (empty($scriptProperties[\'sortby\']) || $scriptProperties[\'sortby\'] == $class . \'.id\')) {\r\n    $scriptProperties[\'sortby\'] = \"find_in_set(`$class`.`id`,\'\" . implode(\',\', $users_in) . \"\')\";\r\n    $scriptProperties[\'sortdir\'] = \'\';\r\n}\r\n\r\n// Merge all properties and run!\r\n$pdoFetch->addTime(\'Query parameters ready\');\r\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\r\n$output = $pdoFetch->run();\r\n\r\n$log = \'\';\r\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\r\n    $log .= \'<pre class=\"pdoUsersLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\r\n}\r\n\r\n// Return output\r\nif (!empty($returnIds)) {\r\n    $modx->setPlaceholder(\'pdoUsers.log\', $log);\r\n    if (!empty($toPlaceholder)) {\r\n        $modx->setPlaceholder($toPlaceholder, $output);\r\n    } else {\r\n        return $output;\r\n    }\r\n} elseif ($return === \'data\') {\r\n    return $output;\r\n} elseif (!empty($toSeparatePlaceholders)) {\r\n    $output[\'log\'] = $log;\r\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\r\n} else {\r\n    $output .= $log;\r\n\r\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\r\n        $output = $pdoFetch->getChunk($tplWrapper, [\'output\' => $output], $pdoFetch->config[\'fastMode\']);\r\n    }\r\n\r\n    if (!empty($toPlaceholder)) {\r\n        $modx->setPlaceholder($toPlaceholder, $output);\r\n    } else {\r\n        return $output;\r\n    }\r\n}', 0, 'a:30:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"returnIds\";a:7:{s:4:\"name\";s:9:\"returnIds\";s:4:\"desc\";s:23:\"pdotools_prop_returnIds\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"modUser.id\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"groups\";a:7:{s:4:\"name\";s:6:\"groups\";s:4:\"desc\";s:20:\"pdotools_prop_groups\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"roles\";a:7:{s:4:\"name\";s:5:\"roles\";s:4:\"desc\";s:19:\"pdotools_prop_roles\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"users\";a:7:{s:4:\"name\";s:5:\"users\";s:4:\"desc\";s:19:\"pdotools_prop_users\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"showInactive\";a:7:{s:4:\"name\";s:12:\"showInactive\";s:4:\"desc\";s:26:\"pdotools_prop_showInactive\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showBlocked\";a:7:{s:4:\"name\";s:11:\"showBlocked\";s:4:\"desc\";s:25:\"pdotools_prop_showBlocked\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"idx\";a:7:{s:4:\"name\";s:3:\"idx\";s:4:\"desc\";s:17:\"pdotools_prop_idx\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"first\";a:7:{s:4:\"name\";s:5:\"first\";s:4:\"desc\";s:19:\"pdotools_prop_first\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"last\";a:7:{s:4:\"name\";s:4:\"last\";s:4:\"desc\";s:18:\"pdotools_prop_last\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplFirst\";a:7:{s:4:\"name\";s:8:\"tplFirst\";s:4:\"desc\";s:22:\"pdotools_prop_tplFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplLast\";a:7:{s:4:\"name\";s:7:\"tplLast\";s:4:\"desc\";s:21:\"pdotools_prop_tplLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplOdd\";a:7:{s:4:\"name\";s:6:\"tplOdd\";s:4:\"desc\";s:20:\"pdotools_prop_tplOdd\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplCondition\";a:7:{s:4:\"name\";s:12:\"tplCondition\";s:4:\"desc\";s:26:\"pdotools_prop_tplCondition\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplOperator\";a:7:{s:4:\"name\";s:11:\"tplOperator\";s:4:\"desc\";s:25:\"pdotools_prop_tplOperator\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:10:{i:0;a:2:{s:4:\"text\";s:11:\"is equal to\";s:5:\"value\";s:2:\"==\";}i:1;a:2:{s:4:\"text\";s:15:\"is not equal to\";s:5:\"value\";s:2:\"!=\";}i:2;a:2:{s:4:\"text\";s:9:\"less than\";s:5:\"value\";s:1:\"<\";}i:3;a:2:{s:4:\"text\";s:21:\"less than or equal to\";s:5:\"value\";s:2:\"<=\";}i:4;a:2:{s:4:\"text\";s:24:\"greater than or equal to\";s:5:\"value\";s:2:\">=\";}i:5;a:2:{s:4:\"text\";s:8:\"is empty\";s:5:\"value\";s:5:\"empty\";}i:6;a:2:{s:4:\"text\";s:12:\"is not empty\";s:5:\"value\";s:6:\"!empty\";}i:7;a:2:{s:4:\"text\";s:7:\"is null\";s:5:\"value\";s:4:\"null\";}i:8;a:2:{s:4:\"text\";s:11:\"is in array\";s:5:\"value\";s:7:\"inarray\";}i:9;a:2:{s:4:\"text\";s:10:\"is between\";s:5:\"value\";s:7:\"between\";}}s:5:\"value\";s:2:\"==\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"conditionalTpls\";a:7:{s:4:\"name\";s:15:\"conditionalTpls\";s:4:\"desc\";s:29:\"pdotools_prop_conditionalTpls\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdousers.php'),
(3, 1, 0, 'pdoCrumbs', '', 0, 1, 0, '/** @var array $scriptProperties */\r\n/** @var pdoFetch $pdoFetch */\r\n/** @var modX $modx */\r\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\r\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\r\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\r\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\r\n} else {\r\n    return false;\r\n}\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n\r\nif (!isset($from) || $from == \'\') {\r\n    $from = 0;\r\n}\r\nif (empty($to)) {\r\n    $to = $modx->resource->id;\r\n}\r\nif (empty($direction)) {\r\n    $direction = \'ltr\';\r\n}\r\nif ($outputSeparator == \'&nbsp;&rarr;&nbsp;\' && $direction == \'rtl\') {\r\n    $outputSeparator = \'&nbsp;&larr;&nbsp;\';\r\n}\r\nif ($limit == \'\') {\r\n    $limit = 10;\r\n}\r\n\r\n// For compatibility with BreadCrumb\r\nif (!empty($maxCrumbs)) {\r\n    $limit = $maxCrumbs;\r\n}\r\nif (!empty($containerTpl)) {\r\n    $tplWrapper = $containerTpl;\r\n}\r\nif (!empty($currentCrumbTpl)) {\r\n    $tplCurrent = $currentCrumbTpl;\r\n}\r\nif (!empty($linkCrumbTpl)) {\r\n    $scriptProperties[\'tpl\'] = $linkCrumbTpl;\r\n}\r\nif (!empty($maxCrumbTpl)) {\r\n    $tplMax = $maxCrumbTpl;\r\n}\r\nif (isset($showBreadCrumbsAtHome)) {\r\n    $showAtHome = $showBreadCrumbsAtHome;\r\n}\r\nif (isset($showHomeCrumb)) {\r\n    $showHome = $showHomeCrumb;\r\n}\r\nif (isset($showCurrentCrumb)) {\r\n    $showCurrent = $showCurrentCrumb;\r\n}\r\n// --\r\n$fastMode = !empty($fastMode);\r\n$siteStart = $modx->getOption(\'siteStart\', $scriptProperties, $modx->getOption(\'site_start\'));\r\n\r\nif (empty($showAtHome) && $modx->resource->id == $siteStart) {\r\n    return \'\';\r\n}\r\n\r\n$class = $modx->getOption(\'class\', $scriptProperties, \'modResource\');\r\n// Start building \"Where\" expression\r\n$where = array();\r\nif (empty($showUnpublished) && empty($showUnPub)) {\r\n    $where[\'published\'] = 1;\r\n}\r\nif (empty($showHidden)) {\r\n    $where[\'hidemenu\'] = 0;\r\n}\r\nif (empty($showDeleted)) {\r\n    $where[\'deleted\'] = 0;\r\n}\r\nif (!empty($hideContainers) && empty($showContainer)) {\r\n    $where[\'isfolder\'] = 0;\r\n}\r\n\r\n$resource = ($to == $modx->resource->id)\r\n    ? $modx->resource\r\n    : $modx->getObject($class, $to);\r\n\r\nif (!$resource) {\r\n    $message = \'Could not build breadcrumbs to resource \"\' . $to . \'\"\';\r\n\r\n    return \'\';\r\n}\r\n\r\nif (!empty($customParents)) {\r\n    $customParents = is_array($customParents) ? $customParents : array_map(\'trim\', explode(\',\', $customParents));\r\n    $parents = is_array($customParents) ? array_reverse($customParents) : array();\r\n}\r\nif (empty($parents)) {\r\n    $parents = $modx->getParentIds($resource->id, $limit, array(\'context\' => $resource->get(\'context_key\')));\r\n}\r\nif (!empty($showHome)) {\r\n    $parents[] = $siteStart;\r\n}\r\n\r\n$ids = array($resource->id);\r\nforeach ($parents as $parent) {\r\n    if (!empty($parent)) {\r\n        $ids[] = $parent;\r\n    }\r\n    if (!empty($from) && $parent == $from) {\r\n        break;\r\n    }\r\n}\r\n$where[\'id:IN\'] = $ids;\r\n\r\nif (!empty($exclude)) {\r\n    $where[\'id:NOT IN\'] = array_map(\'trim\', explode(\',\', $exclude));\r\n}\r\n\r\n// Fields to select\r\n$resourceColumns = array_keys($modx->getFieldMeta($class));\r\n$select = array($class => implode(\',\', $resourceColumns));\r\n\r\n// Add custom parameters\r\nforeach (array(\'where\', \'select\') as $v) {\r\n    if (!empty($scriptProperties[$v])) {\r\n        $tmp = $scriptProperties[$v];\r\n        if (!is_array($tmp)) {\r\n            $tmp = json_decode($tmp, true);\r\n        }\r\n        if (is_array($tmp)) {\r\n            $$v = array_merge($$v, $tmp);\r\n        }\r\n    }\r\n    unset($scriptProperties[$v]);\r\n}\r\n$pdoFetch->addTime(\'Conditions prepared\');\r\n\r\n// Default parameters\r\n$default = array(\r\n    \'class\' => $class,\r\n    \'where\' => json_encode($where),\r\n    \'select\' => json_encode($select),\r\n    \'groupby\' => $class . \'.id\',\r\n    \'sortby\' => \"find_in_set(`$class`.`id`,\'\" . implode(\',\', $ids) . \"\')\",\r\n    \'sortdir\' => \'\',\r\n    \'return\' => \'data\',\r\n    \'totalVar\' => \'pdocrumbs.total\',\r\n    \'disableConditions\' => true,\r\n);\r\n\r\n// Merge all properties and run!\r\n$pdoFetch->addTime(\'Query parameters ready\');\r\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\r\n$rows = $pdoFetch->run();\r\n\r\n$output = [];\r\nif (!empty($rows) && is_array($rows)) {\r\n    if (strtolower($direction) == \'ltr\') {\r\n        $rows = array_reverse($rows);\r\n    }\r\n\r\n    foreach ($rows as $row) {\r\n        if (!empty($useWeblinkUrl) && $row[\'class_key\'] == \'modWebLink\') {\r\n            $row[\'link\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\r\n                ? $pdoFetch->makeUrl((int)trim($row[\'content\'], \'[]~ \'), $row)\r\n                : $row[\'content\'];\r\n        } else {\r\n            $row[\'link\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\r\n        }\r\n\r\n        $row = array_merge(\r\n            $scriptProperties,\r\n            $row,\r\n            [\'idx\' => $pdoFetch->idx++]\r\n        );\r\n        if (empty($row[\'menutitle\'])) {\r\n            $row[\'menutitle\'] = $row[\'pagetitle\'];\r\n        }\r\n\r\n        if (isset($return) && $return === \'data\') {\r\n            $output[] = $row;\r\n            continue;\r\n        }\r\n        if ($row[\'id\'] == $resource->id && empty($showCurrent)) {\r\n            continue;\r\n        } elseif ($row[\'id\'] == $resource->id && !empty($tplCurrent)) {\r\n            $tpl = $tplCurrent;\r\n        } elseif ($row[\'id\'] == $siteStart && !empty($tplHome)) {\r\n            $tpl = $tplHome;\r\n        } else {\r\n            $tpl = $pdoFetch->defineChunk($row);\r\n        }\r\n        $output[] = empty($tpl)\r\n            ? \'<pre>\' . $pdoFetch->getChunk(\'\', $row) . \'</pre>\'\r\n            : $pdoFetch->getChunk($tpl, $row, $fastMode);\r\n    }\r\n}\r\nif (isset($return) && $return === \'data\') {\r\n    return $output;\r\n}\r\n\r\n$pdoFetch->addTime(\'Chunks processed\');\r\n\r\nif (count($output) == 1 && !empty($hideSingle)) {\r\n    $pdoFetch->addTime(\'The only result was hidden, because the parameter \"hideSingle\" activated\');\r\n    $output = array();\r\n}\r\n\r\n$log = \'\';\r\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\r\n    $log .= \'<pre class=\"pdoCrumbsLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\r\n}\r\n\r\nif (!empty($toSeparatePlaceholders)) {\r\n    $output[\'log\'] = $log;\r\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\r\n} else {\r\n    $output = implode($outputSeparator, $output);\r\n    if ($pdoFetch->idx >= $limit && !empty($tplMax) && !empty($output)) {\r\n        $output = ($direction == \'ltr\')\r\n            ? $pdoFetch->getChunk($tplMax, array(), $fastMode) . $output\r\n            : $output . $pdoFetch->getChunk($tplMax, array(), $fastMode);\r\n    }\r\n    $output .= $log;\r\n\r\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\r\n        $output = $pdoFetch->getChunk($tplWrapper, array(\'output\' => $output, \'crumbs\' => $output), $fastMode);\r\n    }\r\n\r\n    if (!empty($toPlaceholder)) {\r\n        $modx->setPlaceholder($toPlaceholder, $output);\r\n    } else {\r\n        return $output;\r\n    }\r\n}', 0, 'a:31:{s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"from\";a:7:{s:4:\"name\";s:4:\"from\";s:4:\"desc\";s:18:\"pdotools_prop_from\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:2:\"to\";a:7:{s:4:\"name\";s:2:\"to\";s:4:\"desc\";s:16:\"pdotools_prop_to\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"customParents\";a:7:{s:4:\"name\";s:13:\"customParents\";s:4:\"desc\";s:27:\"pdotools_prop_customParents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"exclude\";a:7:{s:4:\"name\";s:7:\"exclude\";s:4:\"desc\";s:21:\"pdotools_prop_exclude\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:79:\"@INLINE <li class=\"breadcrumb-item\"><a href=\"[[+link]]\">[[+menutitle]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplCurrent\";a:7:{s:4:\"name\";s:10:\"tplCurrent\";s:4:\"desc\";s:24:\"pdotools_prop_tplCurrent\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:62:\"@INLINE <li class=\"breadcrumb-item active\">[[+menutitle]]</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplMax\";a:7:{s:4:\"name\";s:6:\"tplMax\";s:4:\"desc\";s:20:\"pdotools_prop_tplMax\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:65:\"@INLINE <li class=\"breadcrumb-item disabled\">&nbsp;...&nbsp;</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplHome\";a:7:{s:4:\"name\";s:7:\"tplHome\";s:4:\"desc\";s:21:\"pdotools_prop_tplHome\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:47:\"@INLINE <ol class=\"breadcrumb\">[[+output]]</ol>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showCurrent\";a:7:{s:4:\"name\";s:11:\"showCurrent\";s:4:\"desc\";s:25:\"pdotools_prop_showCurrent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"showHome\";a:7:{s:4:\"name\";s:8:\"showHome\";s:4:\"desc\";s:22:\"pdotools_prop_showHome\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showAtHome\";a:7:{s:4:\"name\";s:10:\"showAtHome\";s:4:\"desc\";s:24:\"pdotools_prop_showAtHome\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"hideSingle\";a:7:{s:4:\"name\";s:10:\"hideSingle\";s:4:\"desc\";s:24:\"pdotools_prop_hideSingle\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"direction\";a:7:{s:4:\"name\";s:9:\"direction\";s:4:\"desc\";s:23:\"pdotools_prop_direction\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:3:\"ltr\";s:4:\"text\";s:19:\"Left To Right (ltr)\";}i:1;a:2:{s:5:\"value\";s:3:\"rtl\";s:4:\"text\";s:19:\"Right To Left (rtl)\";}}s:5:\"value\";s:3:\"ltr\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdocrumbs.php');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(4, 1, 0, 'pdoField', '', 0, 1, 0, '/** @var array $scriptProperties */\r\n/** @var modX $modx */\r\nif (!empty($input)) {\r\n    $id = $input;\r\n}\r\nif (!isset($default)) {\r\n    $default = \'\';\r\n}\r\nif (!isset($output)) {\r\n    $output = \'\';\r\n}\r\n$class = $modx->getOption(\'class\', $scriptProperties, \'modResource\', true);\r\n$isResource = $class == \'modResource\' || in_array($class, $modx->getDescendants(\'modResource\'));\r\n\r\nif (empty($field)) {\r\n    $field = \'pagetitle\';\r\n}\r\n$top = isset($top) ? (int)$top : 0;\r\n$topLevel = isset($topLevel) ? (int)$topLevel : 0;\r\nif (!empty($options)) {\r\n    $options = trim($options);\r\n    if ($options[0] == \'{\') {\r\n        $tmp = json_decode($options, true);\r\n        if (is_array($tmp)) {\r\n            extract($tmp);\r\n            $scriptProperties = array_merge($scriptProperties, $tmp);\r\n        }\r\n    } else {\r\n        $field = $options;\r\n    }\r\n}\r\nif (empty($id)) {\r\n    if (!empty($modx->resource)) {\r\n        $id = $modx->resource->id;\r\n    } else {\r\n        return \'You must specify an id of \' . $class;\r\n    }\r\n}\r\nif (!isset($context)) {\r\n    $context = \'\';\r\n}\r\n\r\n// Gets the parent from root of context, if specified\r\nif ($isResource && $id && ($top || $topLevel)) {\r\n    // Select needed context for parents functionality\r\n    if (empty($context)) {\r\n        $q = $modx->newQuery($class, $id);\r\n        $q->select(\'context_key\');\r\n        $tstart = microtime(true);\r\n        if ($q->prepare() && $q->stmt->execute()) {\r\n            $modx->queryTime += microtime(true) - $tstart;\r\n            $modx->executedQueries++;\r\n            $context = $q->stmt->fetch(PDO::FETCH_COLUMN);\r\n        }\r\n    }\r\n    // Original pdoField logic\r\n    if (empty($ultimate)) {\r\n        if ($topLevel) {\r\n            $pids = $modx->getChildIds(0, $topLevel, [\'context\' => $context]);\r\n            $pid = $id;\r\n            while (true) {\r\n                $tmp = $modx->getParentIds($pid, 1, [\'context\' => $context]);\r\n                if (!$pid = current($tmp)) {\r\n                    break;\r\n                } elseif (in_array($pid, $pids)) {\r\n                    $id = $pid;\r\n                    break;\r\n                }\r\n            }\r\n        } elseif ($top) {\r\n            $pid = $id;\r\n            for ($i = 1; $i <= $top; $i++) {\r\n                $tmp = $modx->getParentIds($pid, 1, [\'context\' => $context]);\r\n                if (!$pid = current($tmp)) {\r\n                    break;\r\n                }\r\n                $id = $pid;\r\n            }\r\n        }\r\n    }\r\n    // UltimateParent logic\r\n    // https://github.com/splittingred/UltimateParent/blob/develop/core/components/ultimateparent/snippet.ultimateparent.php\r\n    elseif ($id != $top) {\r\n        $pid = $id;\r\n        $pids = $modx->getParentIds($id, 10, [\'context\' => $context]);\r\n        if (!$topLevel || count($pids) >= $topLevel) {\r\n            while ($parentIds = $modx->getParentIds($id, 1, [\'context\' => $context])) {\r\n                $pid = array_pop($parentIds);\r\n                if ($pid == $top) {\r\n                    break;\r\n                }\r\n                $id = $pid;\r\n                $parentIds = $modx->getParentIds($id, 10, [\'context\' => $context]);\r\n                if ($topLevel && count($parentIds) < $topLevel) {\r\n                    break;\r\n                }\r\n            }\r\n        }\r\n    }\r\n}\r\n\r\n/** @var pdoFetch $pdoFetch */\r\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\r\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\r\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\r\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\r\n} else {\r\n    return false;\r\n}\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n\r\n$where = [$class . \'.id\' => $id];\r\n// Add custom parameters\r\nforeach (array(\'where\') as $v) {\r\n    if (!empty($scriptProperties[$v])) {\r\n        $tmp = $scriptProperties[$v];\r\n        if (!is_array($tmp)) {\r\n            $tmp = json_decode($tmp, true);\r\n        }\r\n        if (is_array($tmp)) {\r\n            $$v = array_merge($$v, $tmp);\r\n        }\r\n    }\r\n    unset($scriptProperties[$v]);\r\n}\r\n$pdoFetch->addTime(\'Conditions prepared\');\r\n\r\n// Fields to select\r\n$resourceColumns = array_keys($modx->getFieldMeta($class));\r\n$field = strtolower($field);\r\nif (in_array($field, $resourceColumns)) {\r\n    $scriptProperties[\'select\'] = [$class => $field];\r\n    $scriptProperties[\'includeTVs\'] = \'\';\r\n} elseif ($isResource) {\r\n    $scriptProperties[\'select\'] = [$class => \'id\'];\r\n    $scriptProperties[\'includeTVs\'] = $field;\r\n}\r\n// Additional default field\r\nif (!empty($default)) {\r\n    $default = strtolower($default);\r\n    if (in_array($default, $resourceColumns)) {\r\n        $scriptProperties[\'select\'][$class] .= \',\' . $default;\r\n    } elseif ($isResource) {\r\n        $scriptProperties[\'includeTVs\'] = empty($scriptProperties[\'includeTVs\'])\r\n            ? $default\r\n            : $scriptProperties[\'includeTVs\'] . \',\' . $default;\r\n    }\r\n}\r\n\r\n$scriptProperties[\'disableConditions\'] = true;\r\nif ($row = $pdoFetch->getObject($class, $where, $scriptProperties)) {\r\n    foreach ($row as $k => $v) {\r\n        if (strtolower($k) == $field && $v != \'\') {\r\n            $output = $v;\r\n            break;\r\n        }\r\n    }\r\n\r\n    if (empty($output) && !empty($default)) {\r\n        foreach ($row as $k => $v) {\r\n            if (strtolower($k) == $default && $v != \'\') {\r\n                $output = $v;\r\n                break;\r\n            }\r\n        }\r\n    }\r\n}\r\n\r\nif (!empty($toPlaceholder)) {\r\n    $modx->setPlaceholder($toPlaceholder, $output);\r\n} else {\r\n    return $output;\r\n}', 0, 'a:12:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"field\";a:7:{s:4:\"name\";s:5:\"field\";s:4:\"desc\";s:19:\"pdotools_prop_field\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"pagetitle\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:27:\"pdotools_prop_field_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"top\";a:7:{s:4:\"name\";s:3:\"top\";s:4:\"desc\";s:17:\"pdotools_prop_top\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"topLevel\";a:7:{s:4:\"name\";s:8:\"topLevel\";s:4:\"desc\";s:22:\"pdotools_prop_topLevel\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"default\";a:7:{s:4:\"name\";s:7:\"default\";s:4:\"desc\";s:27:\"pdotools_prop_field_default\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"output\";a:7:{s:4:\"name\";s:6:\"output\";s:4:\"desc\";s:26:\"pdotools_prop_field_output\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"ultimate\";a:7:{s:4:\"name\";s:8:\"ultimate\";s:4:\"desc\";s:22:\"pdotools_prop_ultimate\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdofield.php'),
(5, 1, 0, 'pdoSitemap', '', 0, 1, 0, '/** @var array $scriptProperties */\r\n/** @var pdoFetch $pdoFetch */\r\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\r\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\r\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\r\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\r\n} else {\r\n    return false;\r\n}\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n\r\n// Default variables\r\nif (empty($tpl)) {\r\n    $tpl = \"@INLINE \\n<url>\\n\\t<loc>[[+url]]</loc>\\n\\t<lastmod>[[+date]]</lastmod>\\n\\t<changefreq>[[+update]]</changefreq>\\n\\t<priority>[[+priority]]</priority>\\n</url>\";\r\n}\r\nif (empty($tplWrapper)) {\r\n    $tplWrapper = \"@INLINE <?xml version=\\\"1.0\\\" encoding=\\\"[[++modx_charset]]\\\"?>\\n<urlset xmlns=\\\"[[+schema]]\\\">\\n[[+output]]\\n</urlset>\";\r\n}\r\nif (empty($sitemapSchema)) {\r\n    $sitemapSchema = \'http://www.sitemaps.org/schemas/sitemap/0.9\';\r\n}\r\nif (empty($outputSeparator)) {\r\n    $outputSeparator = \"\\n\";\r\n}\r\nif (empty($cacheKey)) {\r\n    $scriptProperties[\'cacheKey\'] = \'sitemap/\' . substr(md5(json_encode($scriptProperties)), 0, 6);\r\n}\r\n\r\n// Convert parameters from GoogleSiteMap if exists\r\nif (!empty($itemTpl)) {\r\n    $tpl = $itemTpl;\r\n}\r\nif (!empty($containerTpl)) {\r\n    $tplWrapper = $containerTpl;\r\n}\r\nif (!empty($allowedtemplates)) {\r\n    $scriptProperties[\'templates\'] = $allowedtemplates;\r\n}\r\nif (!empty($maxDepth)) {\r\n    $scriptProperties[\'depth\'] = $maxDepth;\r\n}\r\nif (isset($hideDeleted)) {\r\n    $scriptProperties[\'showDeleted\'] = !$hideDeleted;\r\n}\r\nif (isset($published)) {\r\n    $scriptProperties[\'showUnpublished\'] = !$published;\r\n}\r\nif (isset($searchable)) {\r\n    $scriptProperties[\'showUnsearchable\'] = !$searchable;\r\n}\r\nif (!empty($googleSchema)) {\r\n    $sitemapSchema = $googleSchema;\r\n}\r\nif (!empty($excludeResources)) {\r\n    $tmp = array_map(\'trim\', explode(\',\', $excludeResources));\r\n    foreach ($tmp as $v) {\r\n        if (!empty($scriptProperties[\'resources\'])) {\r\n            $scriptProperties[\'resources\'] .= \',-\' . $v;\r\n        } else {\r\n            $scriptProperties[\'resources\'] = \'-\' . $v;\r\n        }\r\n    }\r\n}\r\nif (!empty($excludeChildrenOf)) {\r\n    $tmp = array_map(\'trim\', explode(\',\', $excludeChildrenOf));\r\n    foreach ($tmp as $v) {\r\n        if (!empty($scriptProperties[\'parents\'])) {\r\n            $scriptProperties[\'parents\'] .= \',-\' . $v;\r\n        } else {\r\n            $scriptProperties[\'parents\'] = \'-\' . $v;\r\n        }\r\n    }\r\n}\r\nif (!empty($startId)) {\r\n    if (!empty($scriptProperties[\'parents\'])) {\r\n        $scriptProperties[\'parents\'] .= \',\' . $startId;\r\n    } else {\r\n        $scriptProperties[\'parents\'] = $startId;\r\n    }\r\n}\r\nif (!empty($sortBy)) {\r\n    $scriptProperties[\'sortby\'] = $sortBy;\r\n}\r\nif (!empty($sortDir)) {\r\n    $scriptProperties[\'sortdir\'] = $sortDir;\r\n}\r\nif (!empty($priorityTV)) {\r\n    if (!empty($scriptProperties[\'includeTVs\'])) {\r\n        $scriptProperties[\'includeTVs\'] .= \',\' . $priorityTV;\r\n    } else {\r\n        $scriptProperties[\'includeTVs\'] = $priorityTV;\r\n    }\r\n}\r\nif (!empty($itemSeparator)) {\r\n    $outputSeparator = $itemSeparator;\r\n}\r\n//---\r\n\r\n\r\n$class = \'modResource\';\r\n$where = [];\r\nif (empty($showHidden)) {\r\n    $where[] = [\r\n        $class . \'.hidemenu\' => 0,\r\n        \'OR:\' . $class . \'.class_key:IN\' => [\'Ticket\', \'Article\'],\r\n    ];\r\n}\r\nif (empty($context)) {\r\n    $scriptProperties[\'context\'] = $modx->context->key;\r\n}\r\n\r\n$select = [$class => \'id,editedon,createdon,context_key,class_key,uri\'];\r\nif (!empty($useWeblinkUrl)) {\r\n    $select[$class] .= \',content\';\r\n}\r\n// Add custom parameters\r\nforeach ([\'where\', \'select\'] as $v) {\r\n    if (!empty($scriptProperties[$v])) {\r\n        $tmp = $scriptProperties[$v];\r\n        if (!is_array($tmp)) {\r\n            $tmp = json_decode($tmp, true);\r\n        }\r\n        if (is_array($tmp)) {\r\n            $$v = array_merge($$v, $tmp);\r\n        }\r\n    }\r\n    unset($scriptProperties[$v]);\r\n}\r\n$pdoFetch->addTime(\'Conditions prepared\');\r\n\r\n// Default parameters\r\n$default = [\r\n    \'class\' => $class,\r\n    \'where\' => json_encode($where),\r\n    \'select\' => json_encode($select),\r\n    \'sortby\' => \"{$class}.parent ASC, {$class}.menuindex\",\r\n    \'sortdir\' => \'ASC\',\r\n    \'return\' => \'data\',\r\n    \'scheme\' => \'full\',\r\n    \'limit\' => 0,\r\n];\r\n// Merge all properties and run!\r\n$pdoFetch->addTime(\'Query parameters ready\');\r\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\r\n\r\nif (!empty($cache)) {\r\n    $data = $pdoFetch->getCache($scriptProperties);\r\n}\r\nif (!isset($return)) {\r\n    $return = \'chunks\';\r\n}\r\nif (empty($data)) {\r\n    $now = time();\r\n    $data = $urls = [];\r\n    $rows = $pdoFetch->run();\r\n    foreach ($rows as $row) {\r\n        if (!empty($useWeblinkUrl) && $row[\'class_key\'] == \'modWebLink\') {\r\n            $row[\'url\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\r\n                ? $pdoFetch->makeUrl((int)trim($row[\'content\'], \'[]~ \'), $row)\r\n                : $row[\'content\'];\r\n        } else {\r\n            $row[\'url\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\r\n        }\r\n        unset($row[\'content\']);\r\n        $time = !empty($row[\'editedon\'])\r\n            ? $row[\'editedon\']\r\n            : $row[\'createdon\'];\r\n        $row[\'date\'] = date(\'c\', $time);\r\n\r\n        $datediff = floor(($now - $time) / 86400);\r\n        if ($datediff <= 1) {\r\n            $row[\'priority\'] = \'1.0\';\r\n            $row[\'update\'] = \'daily\';\r\n        } elseif (($datediff > 1) && ($datediff <= 7)) {\r\n            $row[\'priority\'] = \'0.75\';\r\n            $row[\'update\'] = \'weekly\';\r\n        } elseif (($datediff > 7) && ($datediff <= 30)) {\r\n            $row[\'priority\'] = \'0.50\';\r\n            $row[\'update\'] = \'weekly\';\r\n        } else {\r\n            $row[\'priority\'] = \'0.25\';\r\n            $row[\'update\'] = \'monthly\';\r\n        }\r\n        if (!empty($priorityTV) && !empty($row[$priorityTV])) {\r\n            $row[\'priority\'] = $row[$priorityTV];\r\n        }\r\n\r\n        // Fix possible duplicates made by modWebLink\r\n        if (!empty($urls[$row[\'url\']])) {\r\n            if ($urls[$row[\'url\']] > $row[\'date\']) {\r\n                continue;\r\n            }\r\n        }\r\n        $urls[$row[\'url\']] = $row[\'date\'];\r\n\r\n        // Add item to output\r\n        if ($return === \'data\') {\r\n            $data[$row[\'url\']] = $row;\r\n        } else {\r\n            $data[$row[\'url\']] = $pdoFetch->parseChunk($tpl, $row);\r\n            if (strpos($data[$row[\'url\']], \'[[\') !== false) {\r\n                $modx->parser->processElementTags(\'\', $data[$row[\'url\']], true, true, \'[[\', \']]\', array(), 10);\r\n            }\r\n        }\r\n    }\r\n    $pdoFetch->addTime(\'Rows processed\');\r\n    if (!empty($cache)) {\r\n        $pdoFetch->setCache($data, $scriptProperties);\r\n    }\r\n}\r\n\r\nif ($return === \'data\') {\r\n    $output = $data;\r\n} else {\r\n    $output = implode($outputSeparator, $data);\r\n    $output = $pdoFetch->getChunk($tplWrapper, [\r\n        \'schema\' => $sitemapSchema,\r\n        \'output\' => $output,\r\n        \'items\' => $output,\r\n    ]);\r\n    $pdoFetch->addTime(\'Rows wrapped\');\r\n\r\n    if ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\r\n        $output .= \'<pre class=\"pdoSitemapLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\r\n    }\r\n}\r\nif (!empty($forceXML)) {\r\n    header(\"Content-Type:text/xml\");\r\n    @session_write_close();\r\n    exit($output);\r\n} else {\r\n    return $output;\r\n}', 0, 'a:24:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:145:\"@INLINE <url>\n	<loc>[[+url]]</loc>\n	<lastmod>[[+date]]</lastmod>\n	<changefreq>[[+update]]</changefreq>\n	<priority>[[+priority]]</priority>\n</url>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:110:\"@INLINE <?xml version=\"1.0\" encoding=\"[[++modx_charset]]\"?>\n<urlset xmlns=\"[[+schema]]\">\n[[+output]]\n</urlset>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"templates\";a:7:{s:4:\"name\";s:9:\"templates\";s:4:\"desc\";s:23:\"pdotools_prop_templates\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"sitemapSchema\";a:7:{s:4:\"name\";s:13:\"sitemapSchema\";s:4:\"desc\";s:27:\"pdotools_prop_sitemapSchema\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:43:\"http://www.sitemaps.org/schemas/sitemap/0.9\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"hideUnsearchable\";a:7:{s:4:\"name\";s:16:\"hideUnsearchable\";s:4:\"desc\";s:30:\"pdotools_prop_hideUnsearchable\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"asc\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"forceXML\";a:7:{s:4:\"name\";s:8:\"forceXML\";s:4:\"desc\";s:22:\"pdotools_prop_forceXML\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"cacheKey\";a:7:{s:4:\"name\";s:8:\"cacheKey\";s:4:\"desc\";s:22:\"pdotools_prop_cacheKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdositemap.php'),
(6, 1, 0, 'pdoNeighbors', '', 0, 1, 0, '/** @var array $scriptProperties */\r\n/** @var pdoFetch $pdoFetch */\r\n/** @var modX $modx */\r\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\r\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\r\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\r\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\r\n} else {\r\n    return false;\r\n}\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n\r\nif (empty($id)) {\r\n    $id = $modx->resource->id;\r\n}\r\nif (empty($limit)) {\r\n    $limit = 1;\r\n}\r\nif (!isset($outputSeparator)) {\r\n    $outputSeparator = \"\\n\";\r\n}\r\n$fastMode = !empty($fastMode);\r\n\r\n$class = \'modResource\';\r\n$resource = ($id == $modx->resource->id)\r\n    ? $modx->resource\r\n    : $modx->getObject($class, $id);\r\nif (!$resource) {\r\n    return \'\';\r\n}\r\n\r\n// We need to determine ids of neighbors\r\n$params = $scriptProperties;\r\n$params[\'select\'] = \'id\';\r\n$params[\'limit\'] = 0;\r\nif (!empty($parents) && is_string($parents)) {\r\n    $parents = array_map(\'trim\', explode(\',\', $parents));\r\n    if (!in_array($resource->parent, $parents)) {\r\n        $parents[] = $resource->parent;\r\n    }\r\n    $key = array_search($resource->parent * -1, $parents);\r\n    if ($key !== false) {\r\n        unset($parents[$key]);\r\n    }\r\n    $params[\'parents\'] = implode(\',\', $parents);\r\n    $ids = $pdoFetch->getCollection(\'modResource\', [], $params);\r\n    unset($scriptProperties[\'parents\']);\r\n} else {\r\n    $ids = $pdoFetch->getCollection(\'modResource\', [\'parent\' => $resource->parent], $params);\r\n}\r\n\r\n$found = false;\r\n$prev = $next = [];\r\nforeach ($ids as $v) {\r\n    if ($v[\'id\'] == $id) {\r\n        $found = true;\r\n        continue;\r\n    } elseif (!$found) {\r\n        $prev[] = $v[\'id\'];\r\n    } else {\r\n        $next[] = $v[\'id\'];\r\n        if (count($next) >= $limit) {\r\n            break;\r\n        }\r\n    }\r\n}\r\n$prev = array_splice($prev, $limit * -1);\r\nif (!empty($loop)) {\r\n    if (!count($prev)) {\r\n        $v = end($ids);\r\n        $prev[] = $v[\'id\'];\r\n    } else {\r\n        if (!count($next)) {\r\n            $v = reset($ids);\r\n            $next[] = $v[\'id\'];\r\n        }\r\n    }\r\n}\r\n$ids = array_merge($prev, $next, [$resource->parent]);\r\n$pdoFetch->addTime(\'Found ids of neighbors: \' . implode(\',\', $ids));\r\n\r\n// Query conditions\r\n$where = [$class . \'.id:IN\' => $ids];\r\n\r\n// Fields to select\r\n$resourceColumns = array_keys($modx->getFieldMeta($class));\r\nif (empty($includeContent) && empty($useWeblinkUrl)) {\r\n    $key = array_search(\'content\', $resourceColumns);\r\n    unset($resourceColumns[$key]);\r\n}\r\n$select = [$class => implode(\',\', $resourceColumns)];\r\n\r\n// Add custom parameters\r\nforeach ([\'where\', \'select\'] as $v) {\r\n    if (!empty($scriptProperties[$v])) {\r\n        $tmp = $scriptProperties[$v];\r\n        if (!is_array($tmp)) {\r\n            $tmp = json_decode($tmp, true);\r\n        }\r\n        if (is_array($tmp)) {\r\n            $$v = array_merge($$v, $tmp);\r\n        }\r\n    }\r\n    unset($scriptProperties[$v]);\r\n}\r\n$pdoFetch->addTime(\'Conditions prepared\');\r\n\r\n// Default parameters\r\n$default = [\r\n    \'class\' => $class,\r\n    \'where\' => json_encode($where),\r\n    \'select\' => json_encode($select),\r\n    //\'groupby\' => $class.\'.id\',\r\n    \'sortby\' => $class . \'.menuindex\',\r\n    \'sortdir\' => \'ASC\',\r\n    \'return\' => \'data\',\r\n    \'limit\' => 0,\r\n    \'totalVar\' => \'pdoneighbors.total\',\r\n];\r\n\r\n// Merge all properties and run!\r\nunset($scriptProperties[\'limit\']);\r\n$pdoFetch->addTime(\'Query parameters ready\');\r\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\r\n\r\n$rows = $pdoFetch->run();\r\n$prev = array_flip($prev);\r\n$next = array_flip($next);\r\n\r\nif (!isset($return)) {\r\n    $return = \'chunks\';\r\n}\r\n$output = [\'prev\' => [], \'up\' => [], \'next\' => []];\r\nforeach ($rows as $row) {\r\n    if (empty($row[\'menutitle\'])) {\r\n        $row[\'menutitle\'] = $row[\'pagetitle\'];\r\n    }\r\n    if (!empty($useWeblinkUrl) && $row[\'class_key\'] == \'modWebLink\') {\r\n        $row[\'link\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\r\n            ? $pdoFetch->makeUrl((int)trim($row[\'content\'], \'[]~ \'), $row)\r\n            : $row[\'content\'];\r\n    } else {\r\n        $row[\'link\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\r\n    }\r\n\r\n    if (isset($prev[$row[\'id\']])) {\r\n        if ($return === \'data\') {\r\n            $output[\'prev\'][] = $row;\r\n        } else {\r\n            $output[\'prev\'][] = !empty($tplPrev)\r\n                ? $pdoFetch->getChunk($tplPrev, $row, $fastMode)\r\n                : $pdoFetch->getChunk(\'\', $row);\r\n        }\r\n    } elseif (isset($next[$row[\'id\']])) {\r\n        if ($return === \'data\') {\r\n            $output[\'next\'][] = $row;\r\n        } else {\r\n            $output[\'next\'][] = !empty($tplNext)\r\n                ? $pdoFetch->getChunk($tplNext, $row, $fastMode)\r\n                : $pdoFetch->getChunk(\'\', $row);\r\n        }\r\n    } else {\r\n        if ($return === \'data\') {\r\n            $output[\'up\'][] = $row;\r\n        } else {\r\n            $output[\'up\'][] = !empty($tplUp)\r\n                ? $pdoFetch->getChunk($tplUp, $row, $fastMode)\r\n                : $pdoFetch->getChunk(\'\', $row);\r\n        }\r\n    }\r\n}\r\n$pdoFetch->addTime(\'Chunks processed\');\r\n\r\n$log = \'\';\r\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\r\n    $log .= \'<pre class=\"pdoNeighborsLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\r\n}\r\n\r\nforeach ($output as &$row) {\r\n    $row = implode($outputSeparator, $row);\r\n}\r\n\r\nif (!empty($toSeparatePlaceholders)) {\r\n    $output[\'log\'] = $log;\r\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\r\n} else {\r\n    if (!empty($rows) || !empty($wrapIfEmpty)) {\r\n        $output = !empty($tplWrapper)\r\n            ? $pdoFetch->getChunk($tplWrapper, $output, $fastMode)\r\n            : $pdoFetch->getChunk(\'\', $output);\r\n    } else {\r\n        $output = \'\';\r\n    }\r\n    $output .= $log;\r\n\r\n    if (!empty($toPlaceholder)) {\r\n        $modx->setPlaceholder($toPlaceholder, $output);\r\n    } else {\r\n        return $output;\r\n    }\r\n}', 0, 'a:27:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:29:\"pdotools_prop_neighbors_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"asc\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplPrev\";a:7:{s:4:\"name\";s:7:\"tplPrev\";s:4:\"desc\";s:21:\"pdotools_prop_tplPrev\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:106:\"@INLINE <span class=\"link-prev\"><a href=\"[[+link]]\" class=\"btn btn-light\">&larr; [[+menutitle]]</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"tplUp\";a:7:{s:4:\"name\";s:5:\"tplUp\";s:4:\"desc\";s:19:\"pdotools_prop_tplUp\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:104:\"@INLINE <span class=\"link-up\"><a href=\"[[+link]]\" class=\"btn btn-light\">&uarr; [[+menutitle]]</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplNext\";a:7:{s:4:\"name\";s:7:\"tplNext\";s:4:\"desc\";s:21:\"pdotools_prop_tplNext\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:106:\"@INLINE <span class=\"link-next\"><a href=\"[[+link]]\" class=\"btn btn-light\">[[+menutitle]] &rarr;</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:34:\"pdotools_prop_neighbors_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:93:\"@INLINE <div class=\"neighbors d-flex justify-content-between\">[[+prev]][[+up]][[+next]]</div>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"loop\";a:7:{s:4:\"name\";s:4:\"loop\";s:4:\"desc\";s:18:\"pdotools_prop_loop\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoneighbors.php');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(7, 1, 0, 'pdoPage', '', 0, 1, 0, '/** @var array $scriptProperties */\r\n/** @var modX $modx */\r\n// Default variables\r\nif (empty($pageVarKey)) {\r\n    $pageVarKey = \'page\';\r\n}\r\nif (empty($pageNavVar)) {\r\n    $pageNavVar = \'page.nav\';\r\n}\r\nif (empty($pageCountVar)) {\r\n    $pageCountVar = \'pageCount\';\r\n}\r\nif (empty($totalVar)) {\r\n    $totalVar = \'total\';\r\n}\r\nif (empty($page)) {\r\n    $page = 1;\r\n}\r\nif (empty($pageLimit)) {\r\n    $pageLimit = 5;\r\n} else {\r\n    $pageLimit = (integer)$pageLimit;\r\n}\r\nif (!isset($plPrefix)) {\r\n    $plPrefix = \'\';\r\n}\r\nif (!empty($scriptProperties[\'ajaxMode\'])) {\r\n    $scriptProperties[\'ajax\'] = 1;\r\n}\r\n\r\n// Convert parameters from getPage if exists\r\nif (!empty($namespace)) {\r\n    $plPrefix = $namespace;\r\n}\r\nif (!empty($pageNavTpl)) {\r\n    $scriptProperties[\'tplPage\'] = $pageNavTpl;\r\n}\r\nif (!empty($pageNavOuterTpl)) {\r\n    $scriptProperties[\'tplPageWrapper\'] = $pageNavOuterTpl;\r\n}\r\nif (!empty($pageActiveTpl)) {\r\n    $scriptProperties[\'tplPageActive\'] = $pageActiveTpl;\r\n}\r\nif (!empty($pageFirstTpl)) {\r\n    $scriptProperties[\'tplPageFirst\'] = $pageFirstTpl;\r\n}\r\nif (!empty($pagePrevTpl)) {\r\n    $scriptProperties[\'tplPagePrev\'] = $pagePrevTpl;\r\n}\r\nif (!empty($pageNextTpl)) {\r\n    $scriptProperties[\'tplPageNext\'] = $pageNextTpl;\r\n}\r\nif (!empty($pageLastTpl)) {\r\n    $scriptProperties[\'tplPageLast\'] = $pageLastTpl;\r\n}\r\nif (!empty($pageSkipTpl)) {\r\n    $scriptProperties[\'tplPageSkip\'] = $pageSkipTpl;\r\n}\r\nif (!empty($pageNavScheme)) {\r\n    $scriptProperties[\'scheme\'] = $pageNavScheme;\r\n}\r\nif (!empty($cache_expires)) {\r\n    $scriptProperties[\'cacheTime\'] = $cache_expires;\r\n}\r\n//---\r\n$strictMode = !empty($strictMode);\r\n\r\n$isAjax = !empty($scriptProperties[\'ajax\']) && !empty($_SERVER[\'HTTP_X_REQUESTED_WITH\']) && $_SERVER[\'HTTP_X_REQUESTED_WITH\'] == \'XMLHttpRequest\';\r\nif ($isAjax && !isset($_REQUEST[$pageVarKey])) {\r\n    return;\r\n}\r\n\r\n/** @var pdoPage $pdoPage */\r\n$fqn = $modx->getOption(\'pdoPage.class\', null, \'pdotools.pdopage\', true);\r\n$path = $modx->getOption(\'pdopage_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\r\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\r\n    $pdoPage = new $pdoClass($modx, $scriptProperties);\r\n} else {\r\n    return false;\r\n}\r\n$pdoPage->pdoTools->addTime(\'pdoTools loaded\');\r\n\r\n// Script and styles\r\nif (!$isAjax && !empty($scriptProperties[\'ajaxMode\'])) {\r\n    $pdoPage->loadJsCss();\r\n}\r\n// Removing of default scripts and styles so they do not overwrote nested snippet parameters\r\nif ($snippet = $modx->getObject(\'modSnippet\', [\'name\' => \'pdoPage\'])) {\r\n    $properties = $snippet->get(\'properties\');\r\n    if ($scriptProperties[\'frontend_js\'] == $properties[\'frontend_js\'][\'value\']) {\r\n        unset($scriptProperties[\'frontend_js\']);\r\n    }\r\n    if ($scriptProperties[\'frontend_css\'] == $properties[\'frontend_css\'][\'value\']) {\r\n        unset($scriptProperties[\'frontend_css\']);\r\n    }\r\n}\r\n\r\n// Page\r\nif (isset($_REQUEST[$pageVarKey]) && $strictMode && (!is_numeric($_REQUEST[$pageVarKey]) || ($_REQUEST[$pageVarKey] <= 1 && !$isAjax))) {\r\n    return $pdoPage->redirectToFirst($isAjax);\r\n} elseif (!empty($_REQUEST[$pageVarKey])) {\r\n    $page = (integer)$_REQUEST[$pageVarKey];\r\n}\r\n$scriptProperties[\'page\'] = $page;\r\n$scriptProperties[\'request\'] = $_REQUEST;\r\n$scriptProperties[\'setTotal\'] = true;\r\n\r\n// Limit\r\nif (isset($_REQUEST[\'limit\'])) {\r\n    if (is_numeric($_REQUEST[\'limit\']) && abs($_REQUEST[\'limit\']) > 0) {\r\n        $scriptProperties[\'limit\'] = abs($_REQUEST[\'limit\']);\r\n    } elseif ($strictMode) {\r\n        unset($_GET[\'limit\']);\r\n\r\n        return $pdoPage->redirectToFirst($isAjax);\r\n    }\r\n}\r\nif (!empty($maxLimit) && !empty($scriptProperties[\'limit\']) && $scriptProperties[\'limit\'] > $maxLimit) {\r\n    $scriptProperties[\'limit\'] = $maxLimit;\r\n}\r\n\r\n// Offset\r\n$offset = !empty($scriptProperties[\'offset\']) && $scriptProperties[\'offset\'] > 0\r\n    ? (int)$scriptProperties[\'offset\']\r\n    : 0;\r\n$scriptProperties[\'offset\'] = $page > 1\r\n    ? $scriptProperties[\'limit\'] * ($page - 1) + $offset\r\n    : $offset;\r\nif (!empty($scriptProperties[\'offset\']) && empty($scriptProperties[\'limit\'])) {\r\n    $scriptProperties[\'limit\'] = 10000000;\r\n}\r\n\r\n$cache = !empty($cache) || (!$modx->user->id && !empty($cacheAnonymous));\r\n$url = $pdoPage->getBaseUrl();\r\n$output = $pagination = $total = $pageCount = \'\';\r\n\r\n$data = $cache\r\n    ? $pdoPage->pdoTools->getCache($scriptProperties)\r\n    : [];\r\n\r\nif (empty($data)) {\r\n    $output = $pdoPage->pdoTools->runSnippet($scriptProperties[\'element\'], $scriptProperties);\r\n    if ($output === false) {\r\n        return \'\';\r\n    } elseif (!empty($toPlaceholder)) {\r\n        $output = $modx->getPlaceholder($toPlaceholder);\r\n    }\r\n\r\n    // Pagination\r\n    $total = (int)$modx->getPlaceholder($totalVar);\r\n    $pageCount = !empty($scriptProperties[\'limit\']) && $total > $offset\r\n        ? ceil(($total - $offset) / $scriptProperties[\'limit\'])\r\n        : 0;\r\n\r\n    // Redirect to start if somebody specified incorrect page\r\n    if ($page > 1 && $page > $pageCount && $strictMode) {\r\n        return $pdoPage->redirectToFirst($isAjax);\r\n    }\r\n    if (!empty($pageCount) && $pageCount > 1) {\r\n        $pagination = [\r\n            \'first\' => $page > 1 && !empty($tplPageFirst)\r\n                ? $pdoPage->makePageLink($url, 1, $tplPageFirst)\r\n                : \'\',\r\n            \'prev\' => $page > 1 && !empty($tplPagePrev)\r\n                ? $pdoPage->makePageLink($url, $page - 1, $tplPagePrev)\r\n                : \'\',\r\n            \'pages\' => $pageLimit >= 7 && empty($disableModernPagination)\r\n                ? $pdoPage->buildModernPagination($page, $pageCount, $url)\r\n                : $pdoPage->buildClassicPagination($page, $pageCount, $url),\r\n            \'next\' => $page < $pageCount && !empty($tplPageNext)\r\n                ? $pdoPage->makePageLink($url, $page + 1, $tplPageNext)\r\n                : \'\',\r\n            \'last\' => $page < $pageCount && !empty($tplPageLast)\r\n                ? $pdoPage->makePageLink($url, $pageCount, $tplPageLast)\r\n                : \'\',\r\n        ];\r\n\r\n        if (!empty($pageCount)) {\r\n            foreach ([\'first\', \'prev\', \'next\', \'last\'] as $v) {\r\n                $tpl = \'tplPage\' . ucfirst($v) . \'Empty\';\r\n                if (!empty(${$tpl}) && empty($pagination[$v])) {\r\n                    $pagination[$v] = $pdoPage->pdoTools->getChunk(${$tpl});\r\n                }\r\n            }\r\n        }\r\n    } else {\r\n        $pagination = [\r\n            \'first\' => \'\',\r\n            \'prev\' => \'\',\r\n            \'pages\' => \'\',\r\n            \'next\' => \'\',\r\n            \'last\' => \'\'\r\n        ];\r\n    }\r\n\r\n    $data = [\r\n        \'output\' => $output,\r\n        $pageVarKey => $page,\r\n        $pageCountVar => $pageCount,\r\n        $pageNavVar => !empty($tplPageWrapper)\r\n            ? $pdoPage->pdoTools->getChunk($tplPageWrapper, $pagination)\r\n            : $pdoPage->pdoTools->parseChunk(\'\', $pagination),\r\n        $totalVar => $total,\r\n    ];\r\n    if ($cache) {\r\n        $pdoPage->pdoTools->setCache($data, $scriptProperties);\r\n    }\r\n}\r\n\r\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\r\n    $data[\'output\'] .= \'<pre class=\"pdoPageLog\">\' . print_r($pdoPage->pdoTools->getTime(), 1) . \'</pre>\';\r\n}\r\n\r\nif ($isAjax) {\r\n    if ($pageNavVar != \'pagination\') {\r\n        $data[\'pagination\'] = $data[$pageNavVar];\r\n        unset($data[$pageNavVar]);\r\n    }\r\n    if ($pageCountVar != \'pages\') {\r\n        $data[\'pages\'] = (int)$data[$pageCountVar];\r\n        unset($data[$pageCountVar]);\r\n    }\r\n    if ($pageVarKey != \'page\') {\r\n        $data[\'page\'] = (int)$data[$pageVarKey];\r\n        unset($data[$pageVarKey]);\r\n    }\r\n    if ($totalVar != \'total\') {\r\n        $data[\'total\'] = (int)$data[$totalVar];\r\n        unset($data[$totalVar]);\r\n    }\r\n\r\n    $maxIterations = (integer)$modx->getOption(\'parser_max_iterations\', null, 10);\r\n    $modx->getParser()->processElementTags(\'\', $data[\'output\'], false, false, \'[[\', \']]\', [], $maxIterations);\r\n    $modx->getParser()->processElementTags(\'\', $data[\'output\'], true, true, \'[[\', \']]\', [], $maxIterations);\r\n\r\n    @session_write_close();\r\n    exit(json_encode($data));\r\n} else {\r\n    if (!empty($setMeta)) {\r\n        $charset = $modx->getOption(\'modx_charset\', null, \'UTF-8\');\r\n        $canurl = $pdoPage->pdoTools->config[\'scheme\'] !== \'full\'\r\n            ? rtrim($modx->getOption(\'site_url\'), \'/\') . \'/\' . ltrim($url, \'/\')\r\n            : $url;\r\n        $modx->regClientStartupHTMLBlock(\'<link rel=\"canonical\" href=\"\' . htmlentities($canurl, ENT_QUOTES, $charset) . \'\"/>\');\r\n        if ($data[$pageVarKey] > 1) {\r\n            $prevUrl = $pdoPage->makePageLink($canurl, $data[$pageVarKey] - 1);\r\n            $modx->regClientStartupHTMLBlock(\r\n                \'<link rel=\"prev\" href=\"\' . htmlentities($prevUrl, ENT_QUOTES, $charset) . \'\"/>\'\r\n            );\r\n        }\r\n        if ($data[$pageVarKey] < $data[$pageCountVar]) {\r\n            $nextUrl = $pdoPage->makePageLink($canurl, $data[$pageVarKey] + 1);\r\n            $modx->regClientStartupHTMLBlock(\r\n                \'<link rel=\"next\" href=\"\' . htmlentities($nextUrl, ENT_QUOTES, $charset) . \'\"/>\'\r\n            );\r\n        }\r\n    }\r\n\r\n    $modx->setPlaceholders($data, $plPrefix);\r\n    if (!empty($toPlaceholder)) {\r\n        $modx->setPlaceholder($toPlaceholder, $data[\'output\']);\r\n    } else {\r\n        return $data[\'output\'];\r\n    }\r\n}', 0, 'a:41:{s:8:\"plPrefix\";a:7:{s:4:\"name\";s:8:\"plPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_plPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"maxLimit\";a:7:{s:4:\"name\";s:8:\"maxLimit\";s:4:\"desc\";s:22:\"pdotools_prop_maxLimit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:100;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"page\";a:7:{s:4:\"name\";s:4:\"page\";s:4:\"desc\";s:18:\"pdotools_prop_page\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageVarKey\";a:7:{s:4:\"name\";s:10:\"pageVarKey\";s:4:\"desc\";s:24:\"pdotools_prop_pageVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"page\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"page.total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"pageLimit\";a:7:{s:4:\"name\";s:9:\"pageLimit\";s:4:\"desc\";s:23:\"pdotools_prop_pageLimit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:5;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"element\";a:7:{s:4:\"name\";s:7:\"element\";s:4:\"desc\";s:21:\"pdotools_prop_element\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:12:\"pdoResources\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageNavVar\";a:7:{s:4:\"name\";s:10:\"pageNavVar\";s:4:\"desc\";s:24:\"pdotools_prop_pageNavVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"page.nav\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"pageCountVar\";a:7:{s:4:\"name\";s:12:\"pageCountVar\";s:4:\"desc\";s:26:\"pdotools_prop_pageCountVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"pageCount\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"pageLinkScheme\";a:7:{s:4:\"name\";s:14:\"pageLinkScheme\";s:4:\"desc\";s:28:\"pdotools_prop_pageLinkScheme\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplPage\";a:7:{s:4:\"name\";s:7:\"tplPage\";s:4:\"desc\";s:21:\"pdotools_prop_tplPage\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:88:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">[[+pageNo]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"tplPageWrapper\";a:7:{s:4:\"name\";s:14:\"tplPageWrapper\";s:4:\"desc\";s:28:\"pdotools_prop_tplPageWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:83:\"@INLINE <ul class=\"pagination\">[[+first]][[+prev]][[+pages]][[+next]][[+last]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"tplPageActive\";a:7:{s:4:\"name\";s:13:\"tplPageActive\";s:4:\"desc\";s:27:\"pdotools_prop_tplPageActive\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li class=\"page-item active\"><a class=\"page-link\" href=\"[[+href]]\">[[+pageNo]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplPageFirst\";a:7:{s:4:\"name\";s:12:\"tplPageFirst\";s:4:\"desc\";s:26:\"pdotools_prop_tplPageFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">[[%pdopage_first]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageLast\";a:7:{s:4:\"name\";s:11:\"tplPageLast\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:94:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">[[%pdopage_last]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPagePrev\";a:7:{s:4:\"name\";s:11:\"tplPagePrev\";s:4:\"desc\";s:25:\"pdotools_prop_tplPagePrev\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:84:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">&laquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageNext\";a:7:{s:4:\"name\";s:11:\"tplPageNext\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageNext\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:84:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">&raquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageSkip\";a:7:{s:4:\"name\";s:11:\"tplPageSkip\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageSkip\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:81:\"@INLINE <li class=\"page-item disabled\"><a class=\"page-link\" href=\"#\">...</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:17:\"tplPageFirstEmpty\";a:7:{s:4:\"name\";s:17:\"tplPageFirstEmpty\";s:4:\"desc\";s:31:\"pdotools_prop_tplPageFirstEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:96:\"@INLINE <li class=\"page-item disabled\"><a class=\"page-link\" href=\"#\">[[%pdopage_first]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPageLastEmpty\";a:7:{s:4:\"name\";s:16:\"tplPageLastEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPageLastEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li class=\"page-item disabled\"><a class=\"page-link\" href=\"#\">[[%pdopage_last]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPagePrevEmpty\";a:7:{s:4:\"name\";s:16:\"tplPagePrevEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPagePrevEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:85:\"@INLINE <li class=\"page-item disabled\"><a class=\"page-link\" href=\"#\">&laquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPageNextEmpty\";a:7:{s:4:\"name\";s:16:\"tplPageNextEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPageNextEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:85:\"@INLINE <li class=\"page-item disabled\"><a class=\"page-link\" href=\"#\">&raquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"cacheAnonymous\";a:7:{s:4:\"name\";s:14:\"cacheAnonymous\";s:4:\"desc\";s:28:\"pdotools_prop_cacheAnonymous\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"ajax\";a:7:{s:4:\"name\";s:4:\"ajax\";s:4:\"desc\";s:18:\"pdotools_prop_ajax\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"ajaxMode\";a:7:{s:4:\"name\";s:8:\"ajaxMode\";s:4:\"desc\";s:22:\"pdotools_prop_ajaxMode\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:4:\"text\";s:4:\"None\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"text\";s:7:\"Default\";s:5:\"value\";s:7:\"default\";}i:2;a:2:{s:4:\"text\";s:6:\"Scroll\";s:5:\"value\";s:6:\"scroll\";}i:3;a:2:{s:4:\"text\";s:6:\"Button\";s:5:\"value\";s:6:\"button\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"ajaxElemWrapper\";a:7:{s:4:\"name\";s:15:\"ajaxElemWrapper\";s:4:\"desc\";s:29:\"pdotools_prop_ajaxElemWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"#pdopage\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemRows\";a:7:{s:4:\"name\";s:12:\"ajaxElemRows\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemRows\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:14:\"#pdopage .rows\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"ajaxElemPagination\";a:7:{s:4:\"name\";s:18:\"ajaxElemPagination\";s:4:\"desc\";s:32:\"pdotools_prop_ajaxElemPagination\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:20:\"#pdopage .pagination\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemLink\";a:7:{s:4:\"name\";s:12:\"ajaxElemLink\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemLink\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:22:\"#pdopage .pagination a\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemMore\";a:7:{s:4:\"name\";s:12:\"ajaxElemMore\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemMore\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:18:\"#pdopage .btn-more\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"ajaxTplMore\";a:7:{s:4:\"name\";s:11:\"ajaxTplMore\";s:4:\"desc\";s:25:\"pdotools_prop_ajaxTplMore\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:75:\"@INLINE <button class=\"btn btn-primary btn-more\">[[%pdopage_more]]</button>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"ajaxHistory\";a:7:{s:4:\"name\";s:11:\"ajaxHistory\";s:4:\"desc\";s:25:\"pdotools_prop_ajaxHistory\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:3:{i:0;a:2:{s:4:\"text\";s:4:\"Auto\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"text\";s:7:\"Enabled\";s:5:\"value\";i:1;}i:2;a:2:{s:4:\"text\";s:8:\"Disabled\";s:5:\"value\";i:0;}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"frontend_js\";a:7:{s:4:\"name\";s:11:\"frontend_js\";s:4:\"desc\";s:25:\"pdotools_prop_frontend_js\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:31:\"[[+assetsUrl]]js/pdopage.min.js\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"frontend_css\";a:7:{s:4:\"name\";s:12:\"frontend_css\";s:4:\"desc\";s:26:\"pdotools_prop_frontend_css\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:33:\"[[+assetsUrl]]css/pdopage.min.css\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"setMeta\";a:7:{s:4:\"name\";s:7:\"setMeta\";s:4:\"desc\";s:21:\"pdotools_prop_setMeta\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"strictMode\";a:7:{s:4:\"name\";s:10:\"strictMode\";s:4:\"desc\";s:24:\"pdotools_prop_strictMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdopage.php'),
(8, 1, 0, 'pdoMenu', '', 0, 1, 0, '/** @var array $scriptProperties */\r\n/** @var modX $modx */\r\n\r\n// Convert parameters from Wayfinder if exists\r\nif (isset($startId)) {\r\n    $scriptProperties[\'parents\'] = $startId;\r\n}\r\nif (!empty($includeDocs)) {\r\n    $tmp = array_map(\'trim\', explode(\',\', $includeDocs));\r\n    foreach ($tmp as $v) {\r\n        if (!empty($scriptProperties[\'resources\'])) {\r\n            $scriptProperties[\'resources\'] .= \',\' . $v;\r\n        } else {\r\n            $scriptProperties[\'resources\'] = $v;\r\n        }\r\n    }\r\n}\r\nif (!empty($excludeDocs)) {\r\n    $tmp = array_map(\'trim\', explode(\',\', $excludeDocs));\r\n    foreach ($tmp as $v) {\r\n        if (!empty($scriptProperties[\'resources\'])) {\r\n            $scriptProperties[\'resources\'] .= \',-\' . $v;\r\n        } else {\r\n            $scriptProperties[\'resources\'] = \'-\' . $v;\r\n        }\r\n    }\r\n}\r\n\r\nif (!empty($previewUnpublished) && $modx->hasPermission(\'view_unpublished\')) {\r\n    $scriptProperties[\'showUnpublished\'] = 1;\r\n}\r\n\r\n$scriptProperties[\'depth\'] = empty($level) ? 100 : abs($level) - 1;\r\nif (!empty($contexts)) {\r\n    $scriptProperties[\'context\'] = $contexts;\r\n}\r\nif (empty($scriptProperties[\'context\'])) {\r\n    $scriptProperties[\'context\'] = $modx->resource->context_key;\r\n}\r\n\r\n// Save original parents specified by user\r\n$specified_parents = array_map(\'trim\', explode(\',\', $scriptProperties[\'parents\']));\r\n\r\nif ($scriptProperties[\'parents\'] === \'\') {\r\n    $scriptProperties[\'parents\'] = $modx->resource->id;\r\n} elseif ($scriptProperties[\'parents\'] === 0 || $scriptProperties[\'parents\'] === \'0\') {\r\n    if ($scriptProperties[\'depth\'] !== \'\' && $scriptProperties[\'depth\'] !== 100) {\r\n        $contexts = array_map(\'trim\', explode(\',\', $scriptProperties[\'context\']));\r\n        $parents = array();\r\n        if (!empty($scriptProperties[\'showDeleted\'])) {\r\n            /** @var pdoFetch $pdoFetch */\r\n            $pdoFetch = $modx->getService(\'pdoFetch\');\r\n            foreach ($contexts as $ctx) {\r\n                $parents = array_merge($parents, $pdoFetch->getChildIds(\'modResource\', 0, $scriptProperties[\'depth\'], array(\'context\' => $ctx)));\r\n            }\r\n        } else {\r\n            foreach ($contexts as $ctx) {\r\n                $parents = array_merge($parents, $modx->getChildIds(0, $scriptProperties[\'depth\'], array(\'context\' => $ctx)));\r\n            }\r\n        }\r\n        $scriptProperties[\'parents\'] = !empty($parents) ? implode(\',\', $parents) : \'+0\';\r\n        $scriptProperties[\'depth\'] = 0;\r\n    }\r\n    $scriptProperties[\'includeParents\'] = 1;\r\n    $scriptProperties[\'displayStart\'] = 0;\r\n} else {\r\n    $parents = array_map(\'trim\', explode(\',\', $scriptProperties[\'parents\']));\r\n    $parents_in = $parents_out = array();\r\n    foreach ($parents as $v) {\r\n        if (!is_numeric($v)) {\r\n            continue;\r\n        }\r\n        if ($v[0] == \'-\') {\r\n            $parents_out[] = abs($v);\r\n        } else {\r\n            $parents_in[] = abs($v);\r\n        }\r\n    }\r\n\r\n    if (empty($parents_in)) {\r\n        $scriptProperties[\'includeParents\'] = 1;\r\n        $scriptProperties[\'displayStart\'] = 0;\r\n    }\r\n}\r\n\r\nif (!empty($displayStart)) {\r\n    $scriptProperties[\'includeParents\'] = 1;\r\n}\r\nif (!empty($ph)) {\r\n    $toPlaceholder = $ph;\r\n}\r\nif (!empty($sortOrder)) {\r\n    $scriptProperties[\'sortdir\'] = $sortOrder;\r\n}\r\nif (!empty($sortBy)) {\r\n    $scriptProperties[\'sortby\'] = $sortBy;\r\n}\r\nif (!empty($permissions)) {\r\n    $scriptProperties[\'checkPermissions\'] = $permissions;\r\n}\r\nif (!empty($cacheResults)) {\r\n    $scriptProperties[\'cache\'] = $cacheResults;\r\n}\r\nif (!empty($ignoreHidden)) {\r\n    $scriptProperties[\'showHidden\'] = $ignoreHidden;\r\n}\r\n\r\n$wfTemplates = array(\r\n    \'outerTpl\' => \'tplOuter\',\r\n    \'rowTpl\' => \'tpl\',\r\n    \'parentRowTpl\' => \'tplParentRow\',\r\n    \'parentRowHereTpl\' => \'tplParentRowHere\',\r\n    \'hereTpl\' => \'tplHere\',\r\n    \'innerTpl\' => \'tplInner\',\r\n    \'innerRowTpl\' => \'tplInnerRow\',\r\n    \'innerHereTpl\' => \'tplInnerHere\',\r\n    \'activeParentRowTpl\' => \'tplParentRowActive\',\r\n    \'categoryFoldersTpl\' => \'tplCategoryFolder\',\r\n    \'startItemTpl\' => \'tplStart\',\r\n);\r\nforeach ($wfTemplates as $k => $v) {\r\n    if (isset(${$k})) {\r\n        $scriptProperties[$v] = ${$k};\r\n    }\r\n}\r\n//---\r\n\r\n/** @var pdoMenu $pdoMenu */\r\n$fqn = $modx->getOption(\'pdoMenu.class\', null, \'pdotools.pdomenu\', true);\r\n$path = $modx->getOption(\'pdomenu_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\r\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\r\n    $pdoMenu = new $pdoClass($modx, $scriptProperties);\r\n} else {\r\n    return false;\r\n}\r\n$pdoMenu->pdoTools->addTime(\'pdoTools loaded\');\r\n\r\n$cache = !empty($cache) || (!$modx->user->id && !empty($cacheAnonymous));\r\nif (empty($scriptProperties[\'cache_key\'])) {\r\n    $scriptProperties[\'cache_key\'] = \'pdomenu/\' . sha1(serialize($scriptProperties));\r\n}\r\n\r\n$output = \'\';\r\n$tree = array();\r\nif ($cache) {\r\n    $tree = $pdoMenu->pdoTools->getCache($scriptProperties);\r\n}\r\nif (empty($tree)) {\r\n    $data = $pdoMenu->pdoTools->run();\r\n    $data = $pdoMenu->pdoTools->buildTree($data, \'id\', \'parent\', $specified_parents);\r\n    $tree = array();\r\n    foreach ($data as $k => $v) {\r\n        if (empty($v[\'id\'])) {\r\n            if (!in_array($k, $specified_parents) && !$pdoMenu->checkResource($k)) {\r\n                continue;\r\n            } else {\r\n                $tree = array_merge($tree, $v[\'children\']);\r\n            }\r\n        } else {\r\n            $tree[$k] = $v;\r\n        }\r\n    }\r\n    if ($cache) {\r\n        $pdoMenu->pdoTools->setCache($tree, $scriptProperties);\r\n    }\r\n}\r\nif (isset($return) && $return === \'data\') {\r\n    return $tree;\r\n}\r\nif (!empty($tree)) {\r\n    $output = $pdoMenu->templateTree($tree);\r\n}\r\n\r\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\r\n    $output .= \'<pre class=\"pdoMenuLog\">\' . print_r($pdoMenu->pdoTools->getTime(), 1) . \'</pre>\';\r\n}\r\n\r\nif (!empty($toPlaceholder)) {\r\n    $modx->setPlaceholder($toPlaceholder, $output);\r\n} else {\r\n    return $output;\r\n}', 0, 'a:51:{s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"level\";a:7:{s:4:\"name\";s:5:\"level\";s:4:\"desc\";s:19:\"pdotools_prop_level\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"displayStart\";a:7:{s:4:\"name\";s:12:\"displayStart\";s:4:\"desc\";s:26:\"pdotools_prop_displayStart\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"templates\";a:7:{s:4:\"name\";s:9:\"templates\";s:4:\"desc\";s:23:\"pdotools_prop_templates\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"cacheAnonymous\";a:7:{s:4:\"name\";s:14:\"cacheAnonymous\";s:4:\"desc\";s:28:\"pdotools_prop_cacheAnonymous\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"plPrefix\";a:7:{s:4:\"name\";s:8:\"plPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_plPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"wf.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"previewUnpublished\";a:7:{s:4:\"name\";s:18:\"previewUnpublished\";s:4:\"desc\";s:32:\"pdotools_prop_previewUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"hideSubMenus\";a:7:{s:4:\"name\";s:12:\"hideSubMenus\";s:4:\"desc\";s:26:\"pdotools_prop_hideSubMenus\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"rowIdPrefix\";a:7:{s:4:\"name\";s:11:\"rowIdPrefix\";s:4:\"desc\";s:25:\"pdotools_prop_rowIdPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"firstClass\";a:7:{s:4:\"name\";s:10:\"firstClass\";s:4:\"desc\";s:24:\"pdotools_prop_firstClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"first\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"lastClass\";a:7:{s:4:\"name\";s:9:\"lastClass\";s:4:\"desc\";s:23:\"pdotools_prop_lastClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"last\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"hereClass\";a:7:{s:4:\"name\";s:9:\"hereClass\";s:4:\"desc\";s:23:\"pdotools_prop_hereClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:6:\"active\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"parentClass\";a:7:{s:4:\"name\";s:11:\"parentClass\";s:4:\"desc\";s:25:\"pdotools_prop_parentClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"rowClass\";a:7:{s:4:\"name\";s:8:\"rowClass\";s:4:\"desc\";s:22:\"pdotools_prop_rowClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"outerClass\";a:7:{s:4:\"name\";s:10:\"outerClass\";s:4:\"desc\";s:24:\"pdotools_prop_outerClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"innerClass\";a:7:{s:4:\"name\";s:10:\"innerClass\";s:4:\"desc\";s:24:\"pdotools_prop_innerClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"levelClass\";a:7:{s:4:\"name\";s:10:\"levelClass\";s:4:\"desc\";s:24:\"pdotools_prop_levelClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"selfClass\";a:7:{s:4:\"name\";s:9:\"selfClass\";s:4:\"desc\";s:23:\"pdotools_prop_selfClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"webLinkClass\";a:7:{s:4:\"name\";s:12:\"webLinkClass\";s:4:\"desc\";s:26:\"pdotools_prop_webLinkClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplOuter\";a:7:{s:4:\"name\";s:8:\"tplOuter\";s:4:\"desc\";s:22:\"pdotools_prop_tplOuter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:41:\"@INLINE <ul[[+classes]]>[[+wrapper]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li[[+classes]]><a href=\"[[+link]]\" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplParentRow\";a:7:{s:4:\"name\";s:12:\"tplParentRow\";s:4:\"desc\";s:26:\"pdotools_prop_tplParentRow\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplParentRowHere\";a:7:{s:4:\"name\";s:16:\"tplParentRowHere\";s:4:\"desc\";s:30:\"pdotools_prop_tplParentRowHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplHere\";a:7:{s:4:\"name\";s:7:\"tplHere\";s:4:\"desc\";s:21:\"pdotools_prop_tplHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplInner\";a:7:{s:4:\"name\";s:8:\"tplInner\";s:4:\"desc\";s:22:\"pdotools_prop_tplInner\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplInnerRow\";a:7:{s:4:\"name\";s:11:\"tplInnerRow\";s:4:\"desc\";s:25:\"pdotools_prop_tplInnerRow\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplInnerHere\";a:7:{s:4:\"name\";s:12:\"tplInnerHere\";s:4:\"desc\";s:26:\"pdotools_prop_tplInnerHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"tplParentRowActive\";a:7:{s:4:\"name\";s:18:\"tplParentRowActive\";s:4:\"desc\";s:32:\"pdotools_prop_tplParentRowActive\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:17:\"tplCategoryFolder\";a:7:{s:4:\"name\";s:17:\"tplCategoryFolder\";s:4:\"desc\";s:31:\"pdotools_prop_tplCategoryFolder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplStart\";a:7:{s:4:\"name\";s:8:\"tplStart\";s:4:\"desc\";s:22:\"pdotools_prop_tplStart\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:55:\"@INLINE <h2[[+classes]]>[[+menutitle]]</h2>[[+wrapper]]\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"checkPermissions\";a:7:{s:4:\"name\";s:16:\"checkPermissions\";s:4:\"desc\";s:30:\"pdotools_prop_checkPermissions\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"hereId\";a:7:{s:4:\"name\";s:6:\"hereId\";s:4:\"desc\";s:20:\"pdotools_prop_hereId\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"countChildren\";a:7:{s:4:\"name\";s:13:\"countChildren\";s:4:\"desc\";s:27:\"pdotools_prop_countChildren\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdomenu.php'),
(9, 1, 0, 'pdoTitle', '', 0, 1, 0, '/** @var array $scriptProperties */\r\n/** @var modX $modx */\r\nif (empty($outputSeparator)) {\r\n    $outputSeparator = \' / \';\r\n}\r\nif (empty($titleField)) {\r\n    $titleField = \'longtitle\';\r\n}\r\nif (!isset($pageVarKey)) {\r\n    $pageVarKey = \'page\';\r\n}\r\nif (!isset($queryVarKey)) {\r\n    $queryVarKey = \'query\';\r\n}\r\nif (empty($tplPages)) {\r\n    $tplPages = \'@INLINE [[%pdopage_page]] [[+page]] [[%pdopage_from]] [[+pageCount]]\';\r\n}\r\nif (empty($tplSearch)) {\r\n    $tplSearch = \'@INLINE «[[+mse2_query]]»\';\r\n}\r\nif (empty($minQuery)) {\r\n    $minQuery = 3;\r\n}\r\nif (empty($id)) {\r\n    $id = $modx->resource->id;\r\n}\r\nif (empty($cacheKey)) {\r\n    $cacheKey = \'title_crumbs\';\r\n}\r\nif (!isset($cacheTime)) {\r\n    $cacheTime = 0;\r\n}\r\n/** @var pdoTools $pdoTools */\r\n$fqn = $modx->getOption(\'pdoTools.class\', null, \'pdotools.pdotools\', true);\r\n$path = $modx->getOption(\'pdotools_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\r\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\r\n    $pdoTools = new $pdoClass($modx, $scriptProperties);\r\n} else {\r\n    return false;\r\n}\r\n$modx->lexicon->load(\'pdotools:pdopage\');\r\n\r\n/** @var modResource $resource */\r\n$resource = ($id == $modx->resource->id)\r\n    ? $modx->resource\r\n    : $modx->getObject(\'modResource\', $id);\r\nif (!$resource) {\r\n    return \'\';\r\n}\r\n\r\n$title = [];\r\n$pagetitle = trim($resource->get($titleField));\r\nif (empty($pagetitle)) {\r\n    $pagetitle = $resource->get(\'pagetitle\');\r\n}\r\n\r\n// Add search request if exists\r\nif (!empty($_GET[$queryVarKey]) && strlen($_GET[$queryVarKey]) >= $minQuery && !empty($tplSearch)) {\r\n    $pagetitle .= \' \' . $pdoTools->getChunk($tplSearch, [\r\n            $queryVarKey => $modx->stripTags($_GET[$queryVarKey]),\r\n        ]);\r\n}\r\n$title[] = $pagetitle;\r\n\r\n// Add pagination if exists\r\nif (!empty($_GET[$pageVarKey]) && !empty($tplPages)) {\r\n    $title[] = $pdoTools->getChunk($tplPages, [\r\n        \'page\' => (int)$_GET[$pageVarKey],\r\n    ]);\r\n}\r\n\r\n// Add parents\r\n$cacheKey = $resource->getCacheKey() . \'/\' . $cacheKey;\r\n$cacheOptions = [\'cache_key\' => $modx->getOption(\'cache_resource_key\', null, \'resource\')];\r\n$crumbs = \'\';\r\nif (empty($cache) || !$crumbs = $modx->cacheManager->get($cacheKey, $cacheOptions)) {\r\n    $crumbs = $pdoTools->runSnippet(\'pdoCrumbs\', array_merge(\r\n        [\r\n            \'to\' => $resource->id,\r\n            \'outputSeparator\' => $outputSeparator,\r\n            \'showHome\' => 0,\r\n            \'showAtHome\' => 0,\r\n            \'showCurrent\' => 0,\r\n            \'direction\' => \'rtl\',\r\n            \'tpl\' => \'@INLINE [[+menutitle]]\',\r\n            \'tplCurrent\' => \'@INLINE [[+menutitle]]\',\r\n            \'tplWrapper\' => \'@INLINE [[+output]]\',\r\n            \'tplMax\' => \'\',\r\n            \'tplHome\' => \'\',\r\n        ], $scriptProperties\r\n    ));\r\n}\r\nif (!empty($crumbs)) {\r\n    if (!empty($cache)) {\r\n        $modx->cacheManager->set($cacheKey, $crumbs, $cacheTime, $cacheOptions);\r\n    }\r\n    $title[] = $crumbs;\r\n}\r\n\r\nif (!empty($registerJs)) {\r\n    $config = [\r\n        \'separator\' => $outputSeparator,\r\n        \'tpl\' => str_replace([\'[[+\', \']]\'], [\'{\', \'}\'], $pdoTools->getChunk($tplPages)),\r\n    ];\r\n    /** @noinspection Annotator */\r\n    $modx->regClientStartupScript(\'<script>pdoTitle = \' . json_encode($config) . \';</script>\',\r\n        true);\r\n}\r\n\r\nreturn implode($outputSeparator, $title);', 0, 'a:13:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"exclude\";a:7:{s:4:\"name\";s:7:\"exclude\";s:4:\"desc\";s:21:\"pdotools_prop_exclude\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:25:\"pdotools_prop_title_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"titleField\";a:7:{s:4:\"name\";s:10:\"titleField\";s:4:\"desc\";s:24:\"pdotools_prop_titleField\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"longtitle\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:25:\"pdotools_prop_title_cache\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplPages\";a:7:{s:4:\"name\";s:8:\"tplPages\";s:4:\"desc\";s:22:\"pdotools_prop_tplPages\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:68:\"@INLINE [[%pdopage_page]] [[+page]] [[%pdopage_from]] [[+pageCount]]\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageVarKey\";a:7:{s:4:\"name\";s:10:\"pageVarKey\";s:4:\"desc\";s:24:\"pdotools_prop_pageVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"page\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"tplSearch\";a:7:{s:4:\"name\";s:9:\"tplSearch\";s:4:\"desc\";s:23:\"pdotools_prop_tplSearch\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:27:\"@INLINE «[[+mse2_query]]»\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"queryVarKey\";a:7:{s:4:\"name\";s:11:\"queryVarKey\";s:4:\"desc\";s:25:\"pdotools_prop_queryVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"query\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"minQuery\";a:7:{s:4:\"name\";s:8:\"minQuery\";s:4:\"desc\";s:22:\"pdotools_prop_minQuery\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:35:\"pdotools_prop_title_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\" / \";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"registerJs\";a:7:{s:4:\"name\";s:10:\"registerJs\";s:4:\"desc\";s:24:\"pdotools_prop_registerJs\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdotitle.php');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(10, 1, 0, 'pdoArchive', '', 0, 1, 0, '/** @var modX $modx */\r\n$modx->lexicon->load(\'pdotools:pdoarchive\');\r\n\r\n/** @var array $scriptProperties */\r\n$tplWrapper = $modx->getOption(\'tplWrapper\', $scriptProperties);\r\n$tplYear = $modx->getOption(\'tplYear\', $scriptProperties);\r\n$tplMonth = $modx->getOption(\'tplMonth\', $scriptProperties);\r\n$tplDay = $modx->getOption(\'tplDay\', $scriptProperties);\r\n$tpl = $modx->getOption(\'tpl\', $scriptProperties);\r\n$dateField = $modx->getOption(\'dateField\', $scriptProperties, \'createdon\', true);\r\n$dateFormat = $modx->getOption(\'dateFormat\', $scriptProperties, \'H:i\', true);\r\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \"\\n\");\r\n\r\n// Adding extra parameters into special place so we can put them in a results\r\n/** @var modSnippet $snippet */\r\n$additionalPlaceholders = $properties = [];\r\nif (isset($this) && $this instanceof modSnippet) {\r\n    $properties = $this->get(\'properties\');\r\n} elseif ($snippet = $modx->getObject(\'modSnippet\', [\'name\' => \'pdoResources\'])) {\r\n    $properties = $snippet->get(\'properties\');\r\n}\r\nif (!empty($properties)) {\r\n    foreach ($scriptProperties as $k => $v) {\r\n        if (!isset($properties[$k])) {\r\n            $additionalPlaceholders[$k] = $v;\r\n        }\r\n    }\r\n}\r\n$scriptProperties[\'additionalPlaceholders\'] = $additionalPlaceholders;\r\nif (isset($parents) && $parents === \'\') {\r\n    $scriptProperties[\'parents\'] = $modx->resource->id;\r\n}\r\n$scriptProperties[\'return\'] = \'data\';\r\n/** @var pdoFetch $pdoFetch */\r\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\r\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\r\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\r\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\r\n} else {\r\n    return false;\r\n}\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n$rows = $pdoFetch->run();\r\n\r\n// Process rows\r\n$tree = [];\r\nforeach ($rows as $row) {\r\n    $tmp = $row[$dateField];\r\n    if (!is_numeric($tmp)) {\r\n        $tmp = strtotime($tmp);\r\n    }\r\n    $year = date(\'Y\', $tmp);\r\n    $month = date(\'m\', $tmp);\r\n    $day = date(\'d\', $tmp);\r\n    $tree[$year][$month][$day][] = $row;\r\n}\r\n\r\n$output = \'\';\r\nforeach ($tree as $year => $months) {\r\n    $rows_year = \'\';\r\n    $count_year = 0;\r\n\r\n    foreach ($months as $month => $days) {\r\n        $rows_month = \'\';\r\n        $count_month = 0;\r\n\r\n        foreach ($days as $day => $resources) {\r\n            $rows_day = [];\r\n            $count_day = 0;\r\n            $idx = 1;\r\n\r\n            foreach ($resources as $resource) {\r\n                $resource[\'day\'] = $day;\r\n                $resource[\'month\'] = $month;\r\n                $resource[\'year\'] = $year;\r\n                $resource[\'date\'] = strftime($dateFormat, $resource[$dateField]);\r\n                $resource[\'idx\'] = $idx++;\r\n                $resource[\'menutitle\'] = !empty($resource[\'menutitle\'])\r\n                    ? $resource[\'menutitle\']\r\n                    : $resource[\'pagetitle\'];\r\n                // Add placeholder [[+link]] if specified\r\n                if (!empty($scriptProperties[\'useWeblinkUrl\'])) {\r\n                    if (!isset($resource[\'context_key\'])) {\r\n                        $resource[\'context_key\'] = \'\';\r\n                    }\r\n                    if (isset($resource[\'class_key\']) && ($resource[\'class_key\'] == \'modWebLink\')) {\r\n                        $resource[\'link\'] = isset($resource[\'content\']) && is_numeric(trim($resource[\'content\'], \'[]~ \'))\r\n                            ? $pdoFetch->makeUrl(intval(trim($resource[\'content\'], \'[]~ \')), $resource)\r\n                            : (isset($resource[\'content\']) ? $resource[\'content\'] : \'\');\r\n                    } else {\r\n                        $resource[\'link\'] = $pdoFetch->makeUrl($resource[\'id\'], $resource);\r\n                    }\r\n                } else {\r\n                    $resource[\'link\'] = \'\';\r\n                }\r\n                $tpl = $pdoFetch->defineChunk($resource);\r\n                $rows_day[] = $pdoFetch->getChunk($tpl, $resource);\r\n                $count_year++;\r\n                $count_month++;\r\n                $count_day++;\r\n            }\r\n\r\n            $rows_month .= !empty($tplDay)\r\n                ? $pdoFetch->getChunk($tplDay, [\r\n                    \'day\' => $day,\r\n                    \'month\' => $month,\r\n                    \'year\' => $year,\r\n                    \'count\' => $count_day,\r\n                    \'wrapper\' => implode($outputSeparator, $rows_day),\r\n                ], $pdoFetch->config[\'fastMode\'])\r\n                : implode($outputSeparator, $rows_day);\r\n        }\r\n\r\n        $rows_year .= !empty($tplMonth)\r\n            ? $pdoFetch->getChunk($tplMonth, [\r\n                \'month\' => $month,\r\n                \'month_name\' => $modx->lexicon(\'pdoarchive_month_\' . $month),\r\n                \'year\' => $year,\r\n                \'count\' => $count_month,\r\n                \'wrapper\' => $rows_month,\r\n            ], $pdoFetch->config[\'fastMode\'])\r\n            : $rows_month;\r\n    }\r\n\r\n    $output .= !empty($tplYear)\r\n        ? $pdoFetch->getChunk($tplYear, [\r\n            \'year\' => $year,\r\n            \'count\' => $count_year,\r\n            \'wrapper\' => $rows_year,\r\n        ], $pdoFetch->config[\'fastMode\'])\r\n        : $rows_year;\r\n}\r\n$pdoFetch->addTime(\'Rows processed\');\r\n\r\n// Return output\r\nif (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\r\n    $output = $pdoFetch->getChunk(\r\n        $tplWrapper,\r\n        array_merge($additionalPlaceholders, [\'output\' => $output]),\r\n        $pdoFetch->config[\'fastMode\']\r\n    );\r\n    $pdoFetch->addTime(\'Rows wrapped\');\r\n}\r\n\r\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\r\n    $output .= \'<pre class=\"pdoArchiveLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\r\n}\r\n\r\nif (!empty($toPlaceholder)) {\r\n    $modx->setPlaceholder($toPlaceholder, $output);\r\n} else {\r\n    return $output;\r\n}', 0, 'a:36:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:65:\"@INLINE <li>[[+date]] <a href=\"[[+link]]\">[[+menutitle]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplYear\";a:7:{s:4:\"name\";s:7:\"tplYear\";s:4:\"desc\";s:21:\"pdotools_prop_tplYear\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:71:\"@INLINE <h3>[[+year]] <sup>([[+count]])</sup></h3><ul>[[+wrapper]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplMonth\";a:7:{s:4:\"name\";s:8:\"tplMonth\";s:4:\"desc\";s:22:\"pdotools_prop_tplMonth\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:86:\"@INLINE <li><h4>[[+month_name]] <sup>([[+count]])</sup></h4><ul>[[+wrapper]]</ul></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplDay\";a:7:{s:4:\"name\";s:6:\"tplDay\";s:4:\"desc\";s:20:\"pdotools_prop_tplDay\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:79:\"@INLINE <li><h5>[[+day]] <sup>([[+count]])</sup></h5><ul>[[+wrapper]]</ul></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"dateField\";a:7:{s:4:\"name\";s:9:\"dateField\";s:4:\"desc\";s:23:\"pdotools_prop_dateField\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"createdon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"dateFormat\";a:7:{s:4:\"name\";s:10:\"dateFormat\";s:4:\"desc\";s:24:\"pdotools_prop_dateFormat\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"%H:%M\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"createdon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"sortbyTV\";a:7:{s:4:\"name\";s:8:\"sortbyTV\";s:4:\"desc\";s:22:\"pdotools_prop_sortbyTV\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"sortbyTVType\";a:7:{s:4:\"name\";s:12:\"sortbyTVType\";s:4:\"desc\";s:26:\"pdotools_prop_sortbyTVType\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"sortdirTV\";a:7:{s:4:\"name\";s:9:\"sortdirTV\";s:4:\"desc\";s:23:\"pdotools_prop_sortdirTV\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:28:\"pdotools_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoarchive.php'),
(11, 0, 0, 'FormIt', 'A dynamic form processing snippet.', 0, 2, 0, '/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * FormIt\n *\n * A dynamic form processing Snippet for MODx Revolution.\n *\n * @var modX $modx\n * @var array $scriptProperties\n *\n * @package formit\n */\n\n$modelPath = $modx->getOption(\n    \'formit.core_path\',\n    null,\n    $modx->getOption(\'core_path\', null, MODX_CORE_PATH) . \'components/formit/\'\n) . \'model/formit/\';\n$modx->loadClass(\'FormIt\', $modelPath, true, true);\n$fi = new FormIt($modx, $scriptProperties);\n\n$fi->initialize($modx->context->get(\'key\'));\n$fi->loadRequest();\n\n$fields = $fi->request->prepare();\nreturn $fi->request->handle($fields);', 0, 'a:61:{s:5:\"hooks\";a:7:{s:4:\"name\";s:5:\"hooks\";s:4:\"desc\";s:22:\"prop_formit.hooks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:8:\"preHooks\";a:7:{s:4:\"name\";s:8:\"preHooks\";s:4:\"desc\";s:25:\"prop_formit.prehooks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:9:\"submitVar\";a:7:{s:4:\"name\";s:9:\"submitVar\";s:4:\"desc\";s:26:\"prop_formit.submitvar_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:8:\"validate\";a:7:{s:4:\"name\";s:8:\"validate\";s:4:\"desc\";s:25:\"prop_formit.validate_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:6:\"errTpl\";a:7:{s:4:\"name\";s:6:\"errTpl\";s:4:\"desc\";s:23:\"prop_formit.errtpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:37:\"<span class=\"error\">[[+error]]</span>\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:22:\"validationErrorMessage\";a:7:{s:4:\"name\";s:22:\"validationErrorMessage\";s:4:\"desc\";s:39:\"prop_formit.validationerrormessage_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:96:\"<p class=\"error\">A form validation error occurred. Please check the values you have entered.</p>\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:22:\"validationErrorBulkTpl\";a:7:{s:4:\"name\";s:22:\"validationErrorBulkTpl\";s:4:\"desc\";s:39:\"prop_formit.validationerrorbulktpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:19:\"<li>[[+error]]</li>\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:26:\"trimValuesBeforeValidation\";a:7:{s:4:\"name\";s:26:\"trimValuesBeforeValidation\";s:4:\"desc\";s:43:\"prop_formit.trimvaluesdeforevalidation_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:16:\"customValidators\";a:7:{s:4:\"name\";s:16:\"customValidators\";s:4:\"desc\";s:33:\"prop_formit.customvalidators_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:20:\"clearFieldsOnSuccess\";a:7:{s:4:\"name\";s:20:\"clearFieldsOnSuccess\";s:4:\"desc\";s:37:\"prop_formit.clearfieldsonsuccess_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:14:\"successMessage\";a:7:{s:4:\"name\";s:14:\"successMessage\";s:4:\"desc\";s:31:\"prop_formit.successmessage_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:25:\"successMessagePlaceholder\";a:7:{s:4:\"name\";s:25:\"successMessagePlaceholder\";s:4:\"desc\";s:42:\"prop_formit.successmessageplaceholder_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:17:\"fi.successMessage\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:5:\"store\";a:7:{s:4:\"name\";s:5:\"store\";s:4:\"desc\";s:22:\"prop_formit.store_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:17:\"placeholderPrefix\";a:7:{s:4:\"name\";s:17:\"placeholderPrefix\";s:4:\"desc\";s:34:\"prop_formit.placeholderprefix_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"fi.\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:9:\"storeTime\";a:7:{s:4:\"name\";s:9:\"storeTime\";s:4:\"desc\";s:26:\"prop_formit.storetime_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"300\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:13:\"storeLocation\";a:7:{s:4:\"name\";s:13:\"storeLocation\";s:4:\"desc\";s:30:\"prop_formit.storelocation_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:5:\"cache\";s:4:\"text\";s:16:\"formit.opt_cache\";}i:1;a:2:{s:5:\"value\";s:7:\"session\";s:4:\"text\";s:18:\"formit.opt_session\";}}s:5:\"value\";s:5:\"cache\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:10:\"allowFiles\";a:7:{s:4:\"name\";s:10:\"allowFiles\";s:4:\"desc\";s:27:\"prop_formit.allowfiles_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:15:\"spamEmailFields\";a:7:{s:4:\"name\";s:15:\"spamEmailFields\";s:4:\"desc\";s:32:\"prop_formit.spamemailfields_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:5:\"email\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"spamCheckIp\";a:7:{s:4:\"name\";s:11:\"spamCheckIp\";s:4:\"desc\";s:28:\"prop_formit.spamcheckip_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"recaptchaJs\";a:7:{s:4:\"name\";s:11:\"recaptchaJs\";s:4:\"desc\";s:28:\"prop_formit.recaptchajs_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:2:\"{}\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:14:\"recaptchaTheme\";a:7:{s:4:\"name\";s:14:\"recaptchaTheme\";s:4:\"desc\";s:31:\"prop_formit.recaptchatheme_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:5:\"value\";s:3:\"red\";s:4:\"text\";s:14:\"formit.opt_red\";}i:1;a:2:{s:5:\"value\";s:5:\"white\";s:4:\"text\";s:16:\"formit.opt_white\";}i:2;a:2:{s:5:\"value\";s:5:\"clean\";s:4:\"text\";s:16:\"formit.opt_clean\";}i:3;a:2:{s:5:\"value\";s:10:\"blackglass\";s:4:\"text\";s:21:\"formit.opt_blackglass\";}}s:5:\"value\";s:5:\"clean\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:10:\"redirectTo\";a:7:{s:4:\"name\";s:10:\"redirectTo\";s:4:\"desc\";s:27:\"prop_formit.redirectto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:14:\"redirectParams\";a:7:{s:4:\"name\";s:14:\"redirectParams\";s:4:\"desc\";s:31:\"prop_formit.redirectparams_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"emailTo\";a:7:{s:4:\"name\";s:7:\"emailTo\";s:4:\"desc\";s:24:\"prop_formit.emailto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"emailToName\";a:7:{s:4:\"name\";s:11:\"emailToName\";s:4:\"desc\";s:28:\"prop_formit.emailtoname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:9:\"emailFrom\";a:7:{s:4:\"name\";s:9:\"emailFrom\";s:4:\"desc\";s:26:\"prop_formit.emailfrom_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:13:\"emailFromName\";a:7:{s:4:\"name\";s:13:\"emailFromName\";s:4:\"desc\";s:30:\"prop_formit.emailfromname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"emailReplyTo\";a:7:{s:4:\"name\";s:12:\"emailReplyTo\";s:4:\"desc\";s:29:\"prop_formit.emailreplyto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:16:\"emailReplyToName\";a:7:{s:4:\"name\";s:16:\"emailReplyToName\";s:4:\"desc\";s:33:\"prop_formit.emailreplytoname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"emailCC\";a:7:{s:4:\"name\";s:7:\"emailCC\";s:4:\"desc\";s:24:\"prop_formit.emailcc_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"emailCCName\";a:7:{s:4:\"name\";s:11:\"emailCCName\";s:4:\"desc\";s:28:\"prop_formit.emailccname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:8:\"emailBCC\";a:7:{s:4:\"name\";s:8:\"emailBCC\";s:4:\"desc\";s:25:\"prop_formit.emailbcc_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"emailBCCName\";a:7:{s:4:\"name\";s:12:\"emailBCCName\";s:4:\"desc\";s:29:\"prop_formit.emailbccname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:15:\"emailReturnPath\";a:7:{s:4:\"name\";s:15:\"emailReturnPath\";s:4:\"desc\";s:32:\"prop_formit.emailreturnpath_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"emailSubject\";a:7:{s:4:\"name\";s:12:\"emailSubject\";s:4:\"desc\";s:29:\"prop_formit.emailsubject_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:23:\"emailUseFieldForSubject\";a:7:{s:4:\"name\";s:23:\"emailUseFieldForSubject\";s:4:\"desc\";s:40:\"prop_formit.emailusefieldforsubject_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:9:\"emailHtml\";a:7:{s:4:\"name\";s:9:\"emailHtml\";s:4:\"desc\";s:26:\"prop_formit.emailhtml_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:20:\"emailConvertNewlines\";a:7:{s:4:\"name\";s:20:\"emailConvertNewlines\";s:4:\"desc\";s:37:\"prop_formit.emailconvertnewlines_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:17:\"emailMultiWrapper\";a:7:{s:4:\"name\";s:17:\"emailMultiWrapper\";s:4:\"desc\";s:34:\"prop_formit.emailmultiwrapper_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:10:\"[[+value]]\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:19:\"emailMultiSeparator\";a:7:{s:4:\"name\";s:19:\"emailMultiSeparator\";s:4:\"desc\";s:36:\"prop_formit.emailmultiseparator_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"fiarTpl\";a:7:{s:4:\"name\";s:7:\"fiarTpl\";s:4:\"desc\";s:24:\"prop_formit.fiartpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"fiarToField\";a:7:{s:4:\"name\";s:11:\"fiarToField\";s:4:\"desc\";s:28:\"prop_formit.fiartofield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:5:\"email\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"fiarSubject\";a:7:{s:4:\"name\";s:11:\"fiarSubject\";s:4:\"desc\";s:28:\"prop_formit.fiarsubject_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:30:\"[[++site_name]] Auto-Responder\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fiarFrom\";a:7:{s:4:\"name\";s:8:\"fiarFrom\";s:4:\"desc\";s:25:\"prop_formit.fiarfrom_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"fiarFromName\";a:7:{s:4:\"name\";s:12:\"fiarFromName\";s:4:\"desc\";s:29:\"prop_formit.fiarfromname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"fiarReplyTo\";a:7:{s:4:\"name\";s:11:\"fiarReplyTo\";s:4:\"desc\";s:28:\"prop_formit.fiarreplyto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:15:\"fiarReplyToName\";a:7:{s:4:\"name\";s:15:\"fiarReplyToName\";s:4:\"desc\";s:32:\"prop_formit.fiarreplytoname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:6:\"fiarCC\";a:7:{s:4:\"name\";s:6:\"fiarCC\";s:4:\"desc\";s:23:\"prop_formit.fiarcc_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:10:\"fiarCCName\";a:7:{s:4:\"name\";s:10:\"fiarCCName\";s:4:\"desc\";s:25:\"prop_fiar.fiarccname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"fiarBCC\";a:7:{s:4:\"name\";s:7:\"fiarBCC\";s:4:\"desc\";s:24:\"prop_formit.fiarbcc_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"fiarBCCName\";a:7:{s:4:\"name\";s:11:\"fiarBCCName\";s:4:\"desc\";s:28:\"prop_formit.fiarbccname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fiarHtml\";a:7:{s:4:\"name\";s:8:\"fiarHtml\";s:4:\"desc\";s:25:\"prop_formit.fiarhtml_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"mathMinRange\";a:7:{s:4:\"name\";s:12:\"mathMinRange\";s:4:\"desc\";s:29:\"prop_formit.mathminrange_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:2:\"10\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"mathMaxRange\";a:7:{s:4:\"name\";s:12:\"mathMaxRange\";s:4:\"desc\";s:29:\"prop_formit.mathmaxrange_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"100\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:9:\"mathField\";a:7:{s:4:\"name\";s:9:\"mathField\";s:4:\"desc\";s:26:\"prop_formit.mathfield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:4:\"math\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"mathOp1Field\";a:7:{s:4:\"name\";s:12:\"mathOp1Field\";s:4:\"desc\";s:29:\"prop_formit.mathop1field_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"op1\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"mathOp2Field\";a:7:{s:4:\"name\";s:12:\"mathOp2Field\";s:4:\"desc\";s:29:\"prop_formit.mathop2field_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"op2\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:17:\"mathOperatorField\";a:7:{s:4:\"name\";s:17:\"mathOperatorField\";s:4:\"desc\";s:34:\"prop_formit.mathoperatorfield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:8:\"operator\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"saveTmpFiles\";a:7:{s:4:\"name\";s:12:\"saveTmpFiles\";s:4:\"desc\";s:29:\"prop_formit.savetmpfiles_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:18:\"attachFilesToEmail\";a:7:{s:4:\"name\";s:18:\"attachFilesToEmail\";s:4:\"desc\";s:28:\"prop_formit.attachfiles_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:16:\"storeAttachments\";a:7:{s:4:\"name\";s:16:\"storeAttachments\";s:4:\"desc\";s:34:\"prop_formit.store_attachments_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, ''),
(12, 0, 0, 'FormItRetriever', 'Fetches a form submission for a user for displaying on a thank you page.', 0, 2, 0, '/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * FormItRetriever\n *\n * Retrieves a prior form submission that was stored with the &store property\n * in a FormIt call.\n *\n * @var modX $modx\n * @var array $scriptProperties\n *\n * @package formit\n */\n\n$modelPath = $modx->getOption(\n    \'formit.core_path\',\n    null,\n    $modx->getOption(\'core_path\', null, MODX_CORE_PATH) . \'components/formit/\'\n) . \'model/formit/\';\n$fi = $modx->getService(\'formit\', \'FormIt\', $modelPath, $scriptProperties);\n\n/* setup properties */\n$placeholderPrefix = $modx->getOption(\'placeholderPrefix\', $scriptProperties, \'fi.\');\n$eraseOnLoad = $modx->getOption(\'eraseOnLoad\', $scriptProperties, false);\n$redirectToOnNotFound = $modx->getOption(\'redirectToOnNotFound\', $scriptProperties, false);\n\n/* fetch data from cache and set to placeholders */\n$fi->loadRequest();\n$fi->request->loadDictionary();\n$data = $fi->request->dictionary->retrieve();\nif (!empty($data)) {\n    /* set data to placeholders */\n    foreach ($data as $k => $v) {\n        /*checkboxes & other multi-values are stored as arrays, must be imploded*/\n        if (is_array($v)) {\n            $data[$k] = implode(\',\', $v);\n        }\n    }\n    $modx->toPlaceholders($data, $placeholderPrefix, \'\');\n    \n    /* if set, erase the data on load, otherwise depend on cache expiry time */\n    if ($eraseOnLoad) {\n        $fi->request->dictionary->erase();\n    }\n/* if the data\'s not found, and we want to redirect somewhere if so, do here */\n} elseif (!empty($redirectToOnNotFound)) {\n    $url = $modx->makeUrl($redirectToOnNotFound);\n    $modx->sendRedirect($url);\n}\nreturn \'\';', 0, 'a:4:{s:17:\"placeholderPrefix\";a:7:{s:4:\"name\";s:17:\"placeholderPrefix\";s:4:\"desc\";s:31:\"prop_fir.placeholderprefix_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"fi.\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:20:\"redirectToOnNotFound\";a:7:{s:4:\"name\";s:20:\"redirectToOnNotFound\";s:4:\"desc\";s:34:\"prop_fir.redirecttoonnotfound_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"eraseOnLoad\";a:7:{s:4:\"name\";s:11:\"eraseOnLoad\";s:4:\"desc\";s:25:\"prop_fir.eraseonload_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:13:\"storeLocation\";a:7:{s:4:\"name\";s:13:\"storeLocation\";s:4:\"desc\";s:27:\"prop_fir.storelocation_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:5:\"cache\";s:4:\"text\";s:16:\"formit.opt_cache\";}i:1;a:2:{s:5:\"value\";s:7:\"session\";s:4:\"text\";s:18:\"formit.opt_session\";}}s:5:\"value\";s:5:\"cache\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, ''),
(13, 0, 0, 'FormItIsChecked', 'A custom output filter used with checkboxes/radios for checking checked status.', 0, 2, 0, '/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * FormItIsChecked\n *\n * Custom output filter that returns checked=\"checked\" if the value is set\n *\n * @var string $input\n * @var string $options\n * @var modX $modx\n *\n * @package formit\n */\n$output = \' \';\nif ($input == $options) {\n    $output = \' checked=\"checked\"\';\n}\n$input = $modx->fromJSON($input);\nif (!empty($input) && is_array($input) && in_array($options,$input)) {\n  $output = \' checked=\"checked\"\';\n}\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(14, 0, 0, 'FormItIsSelected', 'A custom output filter used with dropdowns for checking selected status.', 0, 2, 0, '/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * FormItIsChecked\n *\n * Custom output filter that returns checked=\"checked\" if the value is set\n *\n * @var string $input\n * @var string $options\n * @var modX $modx\n *\n * @package formit\n */\n$output = \' \';\nif ($input == $options) {\n    $output = \' selected=\"selected\"\';\n}\n$input = $modx->fromJSON($input);\nif (!empty($input) && is_array($input) && in_array($options,$input)) {\n  $output = \' selected=\"selected\"\';\n}\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(15, 0, 0, 'FormItCountryOptions', 'A utility snippet for generating a dropdown list of countries.', 0, 2, 0, '/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * FormItCountryOptions\n *\n * Automatically generates and outputs a country list for usage in forms\n *\n * @var modX $modx\n * @var array $scriptProperties\n *\n * @package formit\n */\n\n$modelPath = $modx->getOption(\n    \'formit.core_path\',\n    null,\n    $modx->getOption(\'core_path\', null, MODX_CORE_PATH) . \'components/formit/\'\n) . \'model/formit/\';\n$fi = $modx->getService(\'formit\', \'FormIt\', $modelPath, $scriptProperties);\n\n/** @var fiCountryOptions $co */\n$co = $fi->loadModule(\'fiCountryOptions\', \'countryOptions\', $scriptProperties);\n$co->initialize();\n$co->getData();\n$co->loadPrioritized();\n$co->iterate();\nreturn $co->output();', 0, 'a:11:{s:8:\"selected\";a:7:{s:4:\"name\";s:8:\"selected\";s:4:\"desc\";s:23:\"prop_fico.selected_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:18:\"prop_fico.tpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:18:\"fiDefaultOptionTpl\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:10:\"useIsoCode\";a:7:{s:4:\"name\";s:10:\"useIsoCode\";s:4:\"desc\";s:25:\"prop_fico.useisocode_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"prioritized\";a:7:{s:4:\"name\";s:11:\"prioritized\";s:4:\"desc\";s:26:\"prop_fico.prioritized_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"optGroupTpl\";a:7:{s:4:\"name\";s:11:\"optGroupTpl\";s:4:\"desc\";s:26:\"prop_fico.optgrouptpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:20:\"fiDefaultOptGroupTpl\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:20:\"prioritizedGroupText\";a:7:{s:4:\"name\";s:20:\"prioritizedGroupText\";s:4:\"desc\";s:35:\"prop_fico.prioritizedgrouptext_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"allGroupText\";a:7:{s:4:\"name\";s:12:\"allGroupText\";s:4:\"desc\";s:27:\"prop_fico.allgrouptext_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:17:\"selectedAttribute\";a:7:{s:4:\"name\";s:17:\"selectedAttribute\";s:4:\"desc\";s:32:\"prop_fico.selectedattribute_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:20:\" selected=\"selected\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:28:\"prop_fico.toplaceholder_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"country\";a:7:{s:4:\"name\";s:7:\"country\";s:4:\"desc\";s:22:\"prop_fico.country_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:16:\"[[++cultureKey]]\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"limited\";a:7:{s:4:\"name\";s:7:\"limited\";s:4:\"desc\";s:22:\"prop_fico.limited_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, ''),
(16, 0, 0, 'FormItStateOptions', 'A utility snippet for generating a dropdown list of U.S. states.', 0, 2, 0, '/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * FormItStateOptions\n *\n * Automatically generates and outputs a U.S. state list for usage in forms\n *\n * @var modX $modx\n * @var array $scriptProperties\n *\n * @package formit\n */\n\n$modelPath = $modx->getOption(\n    \'formit.core_path\',\n    null,\n    $modx->getOption(\'core_path\', null, MODX_CORE_PATH) . \'components/formit/\'\n) . \'model/formit/\';\n$fi = $modx->getService(\'formit\', \'FormIt\', $modelPath, $scriptProperties);\n\n/** @var fiStateOptions $so */\n$so = $fi->loadModule(\'fiStateOptions\', \'stateOptions\', $scriptProperties);\n$so->initialize();\n$so->getData();\n$so->iterate();\nreturn $so->output();', 0, 'a:6:{s:8:\"selected\";a:7:{s:4:\"name\";s:8:\"selected\";s:4:\"desc\";s:23:\"prop_fiso.selected_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:18:\"prop_fiso.tpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:18:\"fiDefaultOptionTpl\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"useAbbr\";a:7:{s:4:\"name\";s:7:\"useAbbr\";s:4:\"desc\";s:22:\"prop_fiso.useabbr_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:17:\"selectedAttribute\";a:7:{s:4:\"name\";s:17:\"selectedAttribute\";s:4:\"desc\";s:32:\"prop_fiso.selectedattribute_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:20:\" selected=\"selected\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:28:\"prop_fiso.toplaceholder_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"country\";a:7:{s:4:\"name\";s:7:\"country\";s:4:\"desc\";s:22:\"prop_fiso.country_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:16:\"[[++cultureKey]]\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, '');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(17, 0, 0, 'FormItLoadSavedForm', 'Prehook to load previously saved form.', 0, 2, 0, '/**\n * FormIt\n *\n * Copyright 2011-12 by SCHERP Ontwikkeling <info@scherpontwikkeling.nl>\n * Copyright 2015 by Wieger Sloot <modx@sterc.nl>\n * Copyright 2016 by YJ Tso <yj@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * A custom FormIt prehook for fetching saved form data. - Based on FormItSaveForm\n *\n * @var modX $modx\n * @var array $scriptProperties\n * @var FormIt $formit\n * @var fiHooks $hook\n * \n * @package formit\n */\n/* setup default properties */\n// If prehook fails do we continue?\n$return = $modx->getOption(\'returnValueOnFail\', $formit->config, true);\n$formEncrypt = $modx->getOption(\'formEncrypt\', $formit->config, false);\n$formFields = $modx->getOption(\'formFields\', $formit->config, false);\n$fieldNames = $modx->getOption(\'fieldNames\', $formit->config, false);\n$updateSavedForm = $modx->getOption(\'updateSavedForm\', $formit->config, false); // true, false, \'1\', \'0\', or \'values\'\n// If FormIt config says don\'t update, don\'t do it\nif (!$updateSavedForm) return $return;\n// In order to load form values, the user must provide the hash key somehow\n// Usually with a $_GET parameter, but a property in $formit->config will override.\n$formHashKeyField = $modx->getOption(\'savedFormHashKeyField\', $formit->config, \'savedFormHashKey\');\n$formHashKey = \'\';\nif (isset($_GET[$formHashKeyField])) $formHashKey = (string) $_GET[$formHashKeyField];\nif ($hook->getValue($formHashKeyField)) $formHashKey = (string) $hook->getValue($formHashKeyField);\nif (isset($formit->config[$formHashKeyField])) $formHashKey = $formit->config[$formHashKeyField];\n// our hashing methods return 32 chars. if no valid hash key we\'re done here.\nif (strlen($formHashKey) !== 32) return $return;\n\n// Try to fetch the saved form\n$savedForm = $modx->getObject(\'FormItForm\', array(\'hash\' => $formHashKey));\nif (!$savedForm) return $return;\n\nif ($formFields) {\n    $formFields = explode(\',\', $formFields);\n    foreach($formFields as $k => $v) {\n        $formFields[$k] = trim($v);\n    }\n}\n\n// Initialize the data array\n// Handle encryption\nif ($formEncrypt) {\n    $encrypted_data = $savedForm->get(\'values\');\n    $data = $savedForm->decrypt($encrypted_data);\n} else {\n    $data = $savedForm->get(\'values\');\n}\nif (is_string($data)) $data = $modx->fromJSON($data);\nif (!is_array($data)) return $return;\n\n//Change the fieldnames\nif ($fieldNames) {\n    $newDataArray = array();\n    $fieldLabels = array();\n    $formFieldNames = explode(\',\', $fieldNames);\n    foreach($formFieldNames as $formFieldName){\n        list($name, $label) = explode(\'==\', $formFieldName);\n        // reverse order from FormItSaveForm snippet\n        $fieldLabels[trim($label)] = trim($name);\n    }\n    foreach ($data as $key => $value) {\n        if ($fieldLabels[$key]) {\n            $newDataArray[$fieldLabels[$key]] = $value;\n        }else{\n            $newDataArray[$key] = $value;\n        }\n    }\n    $data = $newDataArray;\n}\n\n// Always pass back in the provided hash key\n$data[$formHashKeyField] = $formHashKey;\n$hook->setValues($data);\nreturn true;', 0, 'a:0:{}', '', 0, ''),
(18, 0, 0, 'phpthumbon', 'Создание превьюх картинок', 0, 0, 0, '/**\r\n * phpThumbOn\r\n * Создание превьюх картинок\r\n *\r\n * Copyright 2013 by Agel_Nash <Agel_Nash@xaker.ru>\r\n *\r\n * @category images\r\n * @license GNU General Public License (GPL), http://www.gnu.org/copyleft/gpl.html\r\n * @author Agel_Nash <Agel_Nash@xaker.ru>\r\n */\r\n\r\nif(empty($modx) || !($modx instanceof modX)) return \'\';\r\n\r\n$componentPath = (string)$modx->getOption(\'phpthumbon.core_path\', null, $modx->getOption(\'core_path\').\'components/phpthumbon/\');\r\n\r\nif(!isset($modx->phpThumbOn)){\r\n    $modx->phpThumbOn = $modx->getService(\"phpthumbon\",\"phpThumbOn\",$componentPath.\'model/phpthumbon/\', $scriptProperties);\r\n}\r\n\r\nif(!($flag = ($modx->phpThumbOn instanceof phpThumbOn))){\r\n    $modx->phpThumbOn = null;\r\n}\r\nreturn $flag ? $modx->phpThumbOn->run($scriptProperties) : $modx->getOption(\'phpthumbon.noimage\', $scriptProperties);', 0, 'a:2:{s:5:\"input\";a:7:{s:4:\"name\";s:5:\"input\";s:4:\"desc\";s:16:\"phpthumbon.input\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:21:\"phpthumbon:properties\";s:4:\"area\";s:0:\"\";}s:7:\"options\";a:7:{s:4:\"name\";s:7:\"options\";s:4:\"desc\";s:17:\"phpthumbon.folder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:21:\"phpthumbon:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, ''),
(19, 1, 0, 'AjaxForm', '', 0, 3, 0, '/** @var array $scriptProperties */\n/** @var AjaxForm $AjaxForm */\nif (!$modx->loadClass(\'ajaxform\', MODX_CORE_PATH . \'components/ajaxform/model/ajaxform/\', false, true)) {\n    return false;\n}\n$AjaxForm = new AjaxForm($modx, $scriptProperties);\n\n$snippet = $modx->getOption(\'snippet\', $scriptProperties, \'FormIt\', true);\n$tpl = $modx->getOption(\'form\', $scriptProperties, \'tpl.AjaxForm.example\', true);\n$formSelector = $modx->getOption(\'formSelector\', $scriptProperties, \'ajax_form\', true);\n$objectName = $modx->getOption(\'objectName\', $scriptProperties, \'AjaxForm\', true);\n$AjaxForm->loadJsCss($objectName);\n\n/** @var pdoTools $pdo */\nif (class_exists(\'pdoTools\') && $pdo = $modx->getService(\'pdoTools\')) {\n    $content = $pdo->getChunk($tpl, $scriptProperties);\n} else {\n    $content = $modx->getChunk($tpl, $scriptProperties);\n}\nif (empty($content)) {\n    return $modx->lexicon(\'af_err_chunk_nf\', array(\'name\' => $tpl));\n}\n\n// Add selector to tag form\nif (preg_match(\'#<form.*?class=(?:\"|\\\')(.*?)(?:\"|\\\')#i\', $content, $matches)) {\n    $classes = explode(\' \', $matches[1]);\n    if (!in_array($formSelector, $classes)) {\n        $classes[] = $formSelector;\n        $classes = preg_replace(\n            \'#class=(?:\"|\\\')\' . $matches[1] . \'(?:\"|\\\')#i\',\n            \'class=\"\' . implode(\' \', $classes) . \'\"\',\n            $matches[0]\n        );\n        $content = str_ireplace($matches[0], $classes, $content);\n    }\n} else {\n    $content = str_ireplace(\'<form\', \'<form class=\"\' . $formSelector . \'\"\', $content);\n}\n\n// Add method = post\nif (preg_match(\'#<form.*?method=(?:\"|\\\')(.*?)(?:\"|\\\')#i\', $content)) {\n    $content = preg_replace(\'#<form(.*?)method=(?:\"|\\\')(.*?)(?:\"|\\\')#i\', \'<form\\\\1method=\"post\"\', $content);\n} else {\n    $content = str_ireplace(\'<form\', \'<form method=\"post\"\', $content);\n}\n\n// Add action for form processing\n$hash = md5(http_build_query($scriptProperties));\n$action = \'<input type=\"hidden\" name=\"af_action\" value=\"\' . $hash . \'\" />\';\nif ((stripos($content, \'</form>\') !== false)) {\n    if (preg_match(\'#<input.*?name=(?:\"|\\\')af_action(?:\"|\\\').*?>#i\', $content, $matches)) {\n        $content = str_ireplace($matches[0], \'\', $content);\n    }\n    $content = str_ireplace(\'</form>\', \"\\n\\t$action\\n</form>\", $content);\n}\n\n// Save settings to user`s session\n$_SESSION[\'AjaxForm\'][$hash] = $scriptProperties;\n\n// Call snippet for preparation of form\n$action = !empty($_REQUEST[\'af_action\'])\n    ? $_REQUEST[\'af_action\']\n    : $hash;\n\n$AjaxForm->process($action, $_REQUEST);\n\n// Return chunk\nreturn $content;', 0, 'a:7:{s:4:\"form\";a:7:{s:4:\"name\";s:4:\"form\";s:4:\"desc\";s:18:\"ajaxform_prop_form\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:20:\"tpl.AjaxForm.example\";s:7:\"lexicon\";s:19:\"ajaxform:properties\";s:4:\"area\";s:0:\"\";}s:7:\"snippet\";a:7:{s:4:\"name\";s:7:\"snippet\";s:4:\"desc\";s:21:\"ajaxform_prop_snippet\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:6:\"FormIt\";s:7:\"lexicon\";s:19:\"ajaxform:properties\";s:4:\"area\";s:0:\"\";}s:12:\"frontend_css\";a:7:{s:4:\"name\";s:12:\"frontend_css\";s:4:\"desc\";s:26:\"ajaxform_prop_frontend_css\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:29:\"[[+assetsUrl]]css/default.css\";s:7:\"lexicon\";s:19:\"ajaxform:properties\";s:4:\"area\";s:0:\"\";}s:11:\"frontend_js\";a:7:{s:4:\"name\";s:11:\"frontend_js\";s:4:\"desc\";s:25:\"ajaxform_prop_frontend_js\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:27:\"[[+assetsUrl]]js/default.js\";s:7:\"lexicon\";s:19:\"ajaxform:properties\";s:4:\"area\";s:0:\"\";}s:9:\"actionUrl\";a:7:{s:4:\"name\";s:9:\"actionUrl\";s:4:\"desc\";s:23:\"ajaxform_prop_actionUrl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:24:\"[[+assetsUrl]]action.php\";s:7:\"lexicon\";s:19:\"ajaxform:properties\";s:4:\"area\";s:0:\"\";}s:12:\"formSelector\";a:7:{s:4:\"name\";s:12:\"formSelector\";s:4:\"desc\";s:26:\"ajaxform_prop_formSelector\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"ajax_form\";s:7:\"lexicon\";s:19:\"ajaxform:properties\";s:4:\"area\";s:0:\"\";}s:10:\"objectName\";a:7:{s:4:\"name\";s:10:\"objectName\";s:4:\"desc\";s:24:\"ajaxform_prop_objectName\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"AjaxForm\";s:7:\"lexicon\";s:19:\"ajaxform:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/ajaxform/elements/snippets/snippet.ajaxform.php'),
(20, 0, 0, 'getImageList', '', 0, 4, 0, '/**\n * getImageList\n *\n * Copyright 2009-2014 by Bruno Perner <b.perner@gmx.de>\n *\n * getImageList is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * getImageList is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * getImageList; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * getImageList\n *\n * display Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string for MODx Revolution \n *\n * @version 1.4\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2009-2014\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n/*example: <ul>[[!getImageList? &tvname=`myTV`&tpl=`@CODE:<li>[[+idx]]<img src=\"[[+imageURL]]\"/><p>[[+imageAlt]]</p></li>`]]</ul>*/\n/* get default properties */\n\n$allow_request = (bool)$modx->getOption(\'allowRequest\', $scriptProperties, false);\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n$inherit_children_tvname = $modx->getOption(\'inherit_children_tvname\', $scriptProperties, \'\');\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\n$wrapperTpl = $modx->getOption(\'wrapperTpl\', $scriptProperties, \'\');\n$emptyTpl = $modx->getOption(\'emptyTpl\', $scriptProperties, \'\'); \n$limit = $modx->getOption(\'limit\', $scriptProperties, \'0\');\n$offset = $modx->getOption(\'offset\', $scriptProperties, 0);\n$totalVar = $modx->getOption(\'totalVar\', $scriptProperties, \'total\');\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\n$preselectLimit = $modx->getOption(\'preselectLimit\', $scriptProperties, 0); // when random preselect important images\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$sort = $modx->getOption(\'sort\', $scriptProperties, \'\');\n$sort = !empty($sort) ? $modx->fromJSON($sort) : array();\n$toSeparatePlaceholders = $modx->getOption(\'toSeparatePlaceholders\', $scriptProperties, false);\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \'\');\n$splitSeparator = $modx->getOption(\'splitSeparator\', $scriptProperties, \'\');\n$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'MIGX_id\');\n$toJsonPlaceholder = $modx->getOption(\'toJsonPlaceholder\', $scriptProperties, false);\n$jsonVarKey = $modx->getOption(\'jsonVarKey\', $scriptProperties, \'migx_outputvalue\');\n$outputvalue = $modx->getOption(\'value\', $scriptProperties, \'\');\nif ($allow_request) {\n    $outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n}\n$docidVarKey = $modx->getOption(\'docidVarKey\', $scriptProperties, \'migx_docid\');\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\nif ($allow_request) {\n    $docid = isset($_REQUEST[$docidVarKey]) ? $_REQUEST[$docidVarKey] : $docid;\n}\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\n$reverse = $modx->getOption(\'reverse\', $scriptProperties, \'0\');\n$sumFields = $modx->getOption(\'sumFields\', $scriptProperties, \'\');\n$sumPrefix = $modx->getOption(\'sumPrefix\', $scriptProperties, \'summary_\');\n$addfields = $modx->getOption(\'addfields\', $scriptProperties, \'\');\n$addfields = !empty($addfields) ? explode(\',\', $addfields) : null;\n//split json into parts\n$splits = $modx->fromJson($modx->getOption(\'splits\', $scriptProperties, 0));\n$splitTpl = $modx->getOption(\'splitTpl\', $scriptProperties, \'\');\n$splitSeparator = $modx->getOption(\'splitSeparator\', $scriptProperties, \'\');\n$inheritFrom = $modx->getOption(\'inheritFrom\', $scriptProperties, \'\'); //commaseparated list of resource-ids or/and the keyword \'parents\' where to inherit from\n$inheritFrom = !empty($inheritFrom) ? explode(\',\', $inheritFrom) : \'\';\n\n$modx->setPlaceholder(\'docid\', $docid);\n\n$base_path = $modx->getOption(\'base_path\', null, MODX_BASE_PATH);\n$base_url = $modx->getOption(\'base_url\', null, MODX_BASE_URL);\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : \'web\';\n\nif (!empty($tvname)) {\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\n\n        /*\n        *   get inputProperties\n        */\n\n\n        $properties = $tv->get(\'input_properties\');\n        $properties = isset($properties[\'formtabs\']) ? $properties : $tv->getProperties();\n\n        $migx->config[\'configs\'] = $modx->getOption(\'configs\', $properties, \'\');\n        if (!empty($migx->config[\'configs\'])) {\n            $migx->loadConfigs();\n            // get tabs from file or migx-config-table\n            $formtabs = $migx->getTabs();\n        }\n        if (empty($formtabs) && isset($properties[\'formtabs\'])) {\n            //try to get formtabs and its fields from properties\n            $formtabs = $modx->fromJSON($properties[\'formtabs\']);\n        }\n\n        if (!empty($properties[\'basePath\'])) {\n            if ($properties[\'autoResourceFolders\'] == \'true\') {\n                $scriptProperties[\'base_path\'] = $base_path . $properties[\'basePath\'] . $docid . \'/\';\n                $scriptProperties[\'base_url\'] = $base_url . $properties[\'basePath\'] . $docid . \'/\';\n            } else {\n                $scriptProperties[\'base_path\'] = $base_path . $properties[\'base_path\'];\n                $scriptProperties[\'base_url\'] = $base_url . $properties[\'basePath\'];\n            }\n        }\n        if ($jsonVarKey == \'migx_outputvalue\' && !empty($properties[\'jsonvarkey\'])) {\n            $jsonVarKey = $properties[\'jsonvarkey\'];\n            $outputvalue = $allow_request && isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n        }\n\n        if (empty($outputvalue)) {\n            $outputvalue = $tv->renderOutput($docid);\n            if (empty($outputvalue) && !empty($inheritFrom)) {\n                foreach ($inheritFrom as $from) {\n                    if ($from == \'parents\') {\n                        if (!empty($inherit_children_tvname)){\n                            //try to get items from optional MIGX-TV for children\n                            if ($inh_tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inherit_children_tvname))) {\n                                $outputvalue = $inh_tv->processInheritBinding(\'\', $docid);    \n                            }\n                        }\n                        $outputvalue = empty($outputvalue) ? $tv->processInheritBinding(\'\', $docid) : $outputvalue;\n                    } else {\n                        $outputvalue = $tv->renderOutput($from);\n                    }\n                    if (!empty($outputvalue)) {\n                        break;\n                    }\n                }\n            }\n        }\n\n\n        /*\n        *   get inputTvs \n        */\n        $inputTvs = array();\n        if (is_array($formtabs)) {\n\n            //multiple different Forms\n            // Note: use same field-names and inputTVs in all forms\n            $inputTvs = $migx->extractInputTvs($formtabs);\n        }\n        if ($migx->source = $tv->getSource($migx->working_context, false)) {\n            $migx->source->initialize();\n        }\n\n    }\n\n\n}\n\nif (empty($outputvalue)) {\n    $modx->setPlaceholder($totalVar, 0);\n    return \'\';\n}\n\n//echo $outputvalue.\'<br/><br/>\';\n\n$items = $modx->fromJSON($outputvalue);\n\n// where filter\nif (is_array($where) && count($where) > 0) {\n    $items = $migx->filterItems($where, $items);\n}\n$modx->setPlaceholder($totalVar, count($items));\n\nif (!empty($reverse)) {\n    $items = array_reverse($items);\n}\n\n// sort items\nif (is_array($sort) && count($sort) > 0) {\n    $items = $migx->sortDbResult($items, $sort);\n}\n\n$summaries = array();\n$output = \'\';\n$items = $offset > 0 ? array_slice($items, $offset) : $items;\n$count = count($items);\n\nif ($count > 0) {\n    $limit = $limit == 0 || $limit > $count ? $count : $limit;\n    $preselectLimit = $preselectLimit > $count ? $count : $preselectLimit;\n    //preselect important items\n    $preitems = array();\n    if ($randomize && $preselectLimit > 0) {\n        for ($i = 0; $i < $preselectLimit; $i++) {\n            $preitems[] = $items[$i];\n            unset($items[$i]);\n        }\n        $limit = $limit - count($preitems);\n    }\n\n    //shuffle items\n    if ($randomize) {\n        shuffle($items);\n    }\n\n    //limit items\n    $count = count($items);\n    $tempitems = array();\n\n    for ($i = 0; $i < $limit; $i++) {\n        if ($i >= $count) {\n            break;\n        }\n        $tempitems[] = $items[$i];\n    }\n    $items = $tempitems;\n\n    //add preselected items and schuffle again\n    if ($randomize && $preselectLimit > 0) {\n        $items = array_merge($preitems, $items);\n        shuffle($items);\n    }\n\n    $properties = array();\n    foreach ($scriptProperties as $property => $value) {\n        $properties[\'property.\' . $property] = $value;\n    }\n\n    $idx = 0;\n    $output = array();\n    $template = array();\n    $count = count($items);\n\n    foreach ($items as $key => $item) {\n        $formname = isset($item[\'MIGX_formname\']) ? $item[\'MIGX_formname\'] . \'_\' : \'\';\n        $fields = array();\n        foreach ($item as $field => $value) {\n            if (is_array($value)) {\n                if (is_array($value[0])) {\n                    //nested array - convert to json\n                    $value = $modx->toJson($value);\n                } else {\n                    $value = implode(\'||\', $value); //handle arrays (checkboxes, multiselects)\n                }\n            }\n\n\n            $inputTVkey = $formname . $field;\n\n            if ($processTVs && isset($inputTvs[$inputTVkey])) {\n                if (isset($inputTvs[$inputTVkey][\'inputTV\']) && $tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$inputTVkey][\'inputTV\']))) {\n\n                } else {\n                    $tv = $modx->newObject(\'modTemplateVar\');\n                    $tv->set(\'type\', $inputTvs[$inputTVkey][\'inputTVtype\']);\n                }\n                $inputTV = $inputTvs[$inputTVkey];\n\n                $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\n                //don\'t manipulate any urls here\n                $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\n                $tv->set(\'default_text\', $value);\n\n                // $value = $tv->renderOutput($docid); breaks if the TV used in MIGX is also assigned to this Template,\n                // example tv: imageLogo is assigned to the template and imageLogo is assigned to the MIGX TV as a result\n                // only the value of the imageLogo is returned for the MIGX TV instance\n                // need to override default MODX method: $value = $tv->renderOutput($docid);\n                /* process any TV commands in value */\n                $tv_value = $tv->processBindings($value, $docid);\n                $params = $tv->get(\'output_properties\');\n                if (empty($params) || $params === null) {\n                    $params = [];\n                }\n                /* run prepareOutput to allow for custom overriding */\n                $tv_value = $tv->prepareOutput($tv_value, $docid);\n                /* find the render */\n                $outputRenderPaths = $tv->getRenderDirectories(\'OnTVOutputRenderList\',\'output\');\n                $value = $tv->getRender($params, $tv_value, $outputRenderPaths, \'output\', $docid, $tv->get(\'display\'));\n                // End override of $value = $tv->renderOutput($docid);\n				\n                //set option back\n                $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\n                //now manipulate urls\n                if ($mediasource = $migx->getFieldSource($inputTV, $tv)) {\n                    $mTypes = explode(\',\', $mTypes);\n                    if (!empty($value) && in_array($tv->get(\'type\'), $mTypes)) {\n                        //$value = $mediasource->prepareOutputUrl($value);\n                        $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\n                    }\n                }\n\n            }\n            $fields[$field] = $value;\n\n        }\n\n        if (!empty($addfields)) {\n            foreach ($addfields as $addfield) {\n                $addfield = explode(\':\', $addfield);\n                $addname = $addfield[0];\n                $adddefault = isset($addfield[1]) ? $addfield[1] : \'\';\n                $fields[$addname] = $adddefault;\n            }\n        }\n\n        if (!empty($sumFields)) {\n            $sumFields = is_array($sumFields) ? $sumFields : explode(\',\', $sumFields);\n            foreach ($sumFields as $sumField) {\n                if (isset($fields[$sumField])) {\n                    $summaries[$sumPrefix . $sumField] = $summaries[$sumPrefix . $sumField] + $fields[$sumField];\n                    $fields[$sumPrefix . $sumField] = $summaries[$sumPrefix . $sumField];\n                }\n            }\n        }\n\n\n        if ($toJsonPlaceholder) {\n            $output[] = $fields;\n        } else {\n            $fields[\'_alt\'] = $idx % 2;\n            $idx++;\n            $fields[\'_first\'] = $idx == 1 ? true : \'\';\n            $fields[\'_last\'] = $idx == $limit ? true : \'\';\n            $fields[\'idx\'] = $idx;\n            $rowtpl = \'\';\n            //get changing tpls from field\n            if (substr($tpl, 0, 7) == \"@FIELD:\") {\n                $tplField = substr($tpl, 7);\n                $rowtpl = $fields[$tplField];\n            }\n\n            if ($fields[\'_first\'] && !empty($tplFirst)) {\n                $rowtpl = $tplFirst;\n            }\n            if ($fields[\'_last\'] && empty($rowtpl) && !empty($tplLast)) {\n                $rowtpl = $tplLast;\n            }\n            $tplidx = \'tpl_\' . $idx;\n            if (empty($rowtpl) && !empty($$tplidx)) {\n                $rowtpl = $$tplidx;\n            }\n            if ($idx > 1 && empty($rowtpl)) {\n                $divisors = $migx->getDivisors($idx);\n                if (!empty($divisors)) {\n                    foreach ($divisors as $divisor) {\n                        $tplnth = \'tpl_n\' . $divisor;\n                        if (!empty($$tplnth)) {\n                            $rowtpl = $$tplnth;\n                            if (!empty($rowtpl)) {\n                                break;\n                            }\n                        }\n                    }\n                }\n            }\n\n            if ($count == 1 && isset($tpl_oneresult)) {\n                $rowtpl = $tpl_oneresult;\n            }\n\n            $fields = array_merge($fields, $properties);\n\n            if (!empty($rowtpl)) {\n                $template = $migx->getTemplate($tpl, $template);\n                $fields[\'_tpl\'] = $template[$tpl];\n            } else {\n                $rowtpl = $tpl;\n\n            }\n            $template = $migx->getTemplate($rowtpl, $template);\n\n\n            if ($template[$rowtpl]) {\n                $chunk = $modx->newObject(\'modChunk\');\n                $chunk->setCacheable(false);\n                $chunk->setContent($template[$rowtpl]);\n\n\n                if (!empty($placeholdersKeyField) && isset($fields[$placeholdersKeyField])) {\n                    $output[$fields[$placeholdersKeyField]] = $chunk->process($fields);\n                } else {\n                    $output[] = $chunk->process($fields);\n                }\n            } else {\n                if (!empty($placeholdersKeyField)) {\n                    $output[$fields[$placeholdersKeyField]] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n                } else {\n                    $output[] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n                }\n            }\n        }\n\n\n    }\n}\n\nif (count($summaries) > 0) {\n    $modx->toPlaceholders($summaries);\n}\n\n\nif ($toJsonPlaceholder) {\n    $modx->setPlaceholder($toJsonPlaceholder, $modx->toJson($output));\n    return \'\';\n}\n\nif (!empty($toSeparatePlaceholders)) {\n    $modx->toPlaceholders($output, $toSeparatePlaceholders);\n    return \'\';\n}\n/*\nif (!empty($outerTpl))\n$o = parseTpl($outerTpl, array(\'output\'=>implode($outputSeparator, $output)));\nelse \n*/\n\nif ($count > 0 && $splits > 0) {\n    $size = ceil($count / $splits);\n    $chunks = array_chunk($output, $size);\n    $output = array();\n    foreach ($chunks as $chunk) {\n        $o = implode($outputSeparator, $chunk);\n        $output[] = $modx->getChunk($splitTpl, array(\'output\' => $o));\n    }\n    $outputSeparator = $splitSeparator;\n}\n\nif (is_array($output)) {\n    $o = implode($outputSeparator, $output);\n} else {\n    $o = $output;\n}\n\nif (!empty($o) && !empty($wrapperTpl)) {\n    $template = $migx->getTemplate($wrapperTpl);\n    if ($template[$wrapperTpl]) {\n        $chunk = $modx->newObject(\'modChunk\');\n        $chunk->setCacheable(false);\n        $chunk->setContent($template[$wrapperTpl]);\n        $properties[\'output\'] = $o;\n        $o = $chunk->process($properties);\n    }\n}\n\nif (empty($o) && !empty($emptyTpl)) {\n    $template = $migx->getTemplate($emptyTpl);\n    if ($template[$emptyTpl]) {\n        $chunk = $modx->newObject(\'modChunk\');\n        $chunk->setCacheable(false);\n        $chunk->setContent($template[$emptyTpl]);\n        $o = $chunk->process($properties);\n    }\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $o);\n    return \'\';\n}\n\nreturn $o;', 0, 'a:0:{}', '', 0, ''),
(21, 0, 0, 'migxGetRelations', '', 0, 4, 0, '$id = $modx->getOption(\'id\', $scriptProperties, $modx->resource->get(\'id\'));\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, \'\');\n$element = $modx->getOption(\'element\', $scriptProperties, \'getResources\');\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \',\');\n$sourceWhere = $modx->getOption(\'sourceWhere\', $scriptProperties, \'\');\n$ignoreRelationIfEmpty = $modx->getOption(\'ignoreRelationIfEmpty\', $scriptProperties, false);\n$inheritFromParents = $modx->getOption(\'inheritFromParents\', $scriptProperties, false);\n$parentIDs = $inheritFromParents ? array_merge(array($id), $modx->getParentIds($id)) : array($id);\n\n$packageName = \'resourcerelations\';\n\n$packagepath = $modx->getOption(\'core_path\') . \'components/\' . $packageName . \'/\';\n$modelpath = $packagepath . \'model/\';\n\n$modx->addPackage($packageName, $modelpath, $prefix);\n$classname = \'rrResourceRelation\';\n$output = \'\';\n\nforeach ($parentIDs as $id) {\n    if (!empty($id)) {\n        $output = \'\';\n                \n        $c = $modx->newQuery($classname, array(\'target_id\' => $id, \'published\' => \'1\'));\n        $c->select($modx->getSelectColumns($classname, $classname));\n\n        if (!empty($sourceWhere)) {\n            $sourceWhere_ar = $modx->fromJson($sourceWhere);\n            if (is_array($sourceWhere_ar)) {\n                $where = array();\n                foreach ($sourceWhere_ar as $key => $value) {\n                    $where[\'Source.\' . $key] = $value;\n                }\n                $joinclass = \'modResource\';\n                $joinalias = \'Source\';\n                $selectfields = \'id\';\n                $selectfields = !empty($selectfields) ? explode(\',\', $selectfields) : null;\n                $c->leftjoin($joinclass, $joinalias);\n                $c->select($modx->getSelectColumns($joinclass, $joinalias, $joinalias . \'_\', $selectfields));\n                $c->where($where);\n            }\n        }\n\n        //$c->prepare(); echo $c->toSql();\n        if ($c->prepare() && $c->stmt->execute()) {\n            $collection = $c->stmt->fetchAll(PDO::FETCH_ASSOC);\n        }\n        \n        foreach ($collection as $row) {\n            $ids[] = $row[\'source_id\'];\n        }\n        $output = implode($outputSeparator, $ids);\n    }\n    if (!empty($output)){\n        break;\n    }\n}\n\n\nif (!empty($element)) {\n    if (empty($output) && $ignoreRelationIfEmpty) {\n        return $modx->runSnippet($element, $scriptProperties);\n    } else {\n        $scriptProperties[\'resources\'] = $output;\n        $scriptProperties[\'parents\'] = \'9999999\';\n        return $modx->runSnippet($element, $scriptProperties);\n    }\n\n\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n    return \'\';\n}\n\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(22, 0, 0, 'migx', '', 0, 4, 0, '$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\n$limit = $modx->getOption(\'limit\', $scriptProperties, \'0\');\n$offset = $modx->getOption(\'offset\', $scriptProperties, 0);\n$totalVar = $modx->getOption(\'totalVar\', $scriptProperties, \'total\');\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\n$preselectLimit = $modx->getOption(\'preselectLimit\', $scriptProperties, 0); // when random preselect important images\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$sortConfig = $modx->getOption(\'sortConfig\', $scriptProperties, \'\');\n$sortConfig = !empty($sortConfig) ? $modx->fromJSON($sortConfig) : array();\n$configs = $modx->getOption(\'configs\', $scriptProperties, \'\');\n$configs = !empty($configs) ? explode(\',\',$configs):array();\n$toSeparatePlaceholders = $modx->getOption(\'toSeparatePlaceholders\', $scriptProperties, false);\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \'\');\n//$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'MIGX_id\');\n$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'id\');\n$toJsonPlaceholder = $modx->getOption(\'toJsonPlaceholder\', $scriptProperties, false);\n$jsonVarKey = $modx->getOption(\'jsonVarKey\', $scriptProperties, \'migx_outputvalue\');\n$outputvalue = $modx->getOption(\'value\', $scriptProperties, \'\');\n$outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n$docidVarKey = $modx->getOption(\'docidVarKey\', $scriptProperties, \'migx_docid\');\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\n$docid = isset($_REQUEST[$docidVarKey]) ? $_REQUEST[$docidVarKey] : $docid;\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\n\n$base_path = $modx->getOption(\'base_path\', null, MODX_BASE_PATH);\n$base_url = $modx->getOption(\'base_url\', null, MODX_BASE_URL);\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n//$modx->migx = &$migx;\n$defaultcontext = \'web\';\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\n\nif (!empty($tvname))\n{\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname)))\n    {\n\n        /*\n        *   get inputProperties\n        */\n\n\n        $properties = $tv->get(\'input_properties\');\n        $properties = isset($properties[\'configs\']) ? $properties : $tv->getProperties();\n        $cfgs = $modx->getOption(\'configs\',$properties,\'\');\n        if (!empty($cfgs)){\n            $cfgs = explode(\',\',$cfgs);\n            $configs = array_merge($configs,$cfgs);\n           \n        }\n        \n    }\n}\n\n\n\n//$migx->config[\'configs\'] = implode(\',\',$configs);\n$migx->loadConfigs(false,true,array(\'configs\'=>implode(\',\',$configs)));\n$migx->customconfigs = array_merge($migx->customconfigs,$scriptProperties);\n\n\n\n// get tabs from file or migx-config-table\n$formtabs = $migx->getTabs();\nif (empty($formtabs))\n{\n    //try to get formtabs and its fields from properties\n    $formtabs = $modx->fromJSON($properties[\'formtabs\']);\n}\n\nif ($jsonVarKey == \'migx_outputvalue\' && !empty($properties[\'jsonvarkey\']))\n{\n    $jsonVarKey = $properties[\'jsonvarkey\'];\n    $outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n}\n\n$outputvalue = $tv && empty($outputvalue) ? $tv->renderOutput($docid) : $outputvalue;\n/*\n*   get inputTvs \n*/\n$inputTvs = array();\nif (is_array($formtabs))\n{\n\n    //multiple different Forms\n    // Note: use same field-names and inputTVs in all forms\n    $inputTvs = $migx->extractInputTvs($formtabs);\n}\n\nif ($tv)\n{\n    $migx->source = $tv->getSource($migx->working_context, false);\n}\n\n//$task = $modx->migx->getTask();\n$filename = \'getlist.php\';\n$processorspath = $migx->config[\'processorsPath\'] . \'mgr/\';\n$filenames = array();\n$scriptProperties[\'start\'] = $modx->getOption(\'offset\', $scriptProperties, 0);\nif ($processor_file = $migx->findProcessor($processorspath, $filename, $filenames))\n{\n    include ($processor_file);\n    //todo: add getlist-processor for default-MIGX-TV\n}\n\n$items = isset($rows) && is_array($rows) ? $rows : array();\n$modx->setPlaceholder($totalVar, isset($count) ? $count : 0);\n\n$properties = array();\nforeach ($scriptProperties as $property => $value)\n{\n    $properties[\'property.\' . $property] = $value;\n}\n\n$idx = 0;\n$output = array();\nforeach ($items as $key => $item)\n{\n\n    $fields = array();\n    foreach ($item as $field => $value)\n    {\n        $value = is_array($value) ? implode(\'||\', $value) : $value; //handle arrays (checkboxes, multiselects)\n        if ($processTVs && isset($inputTvs[$field]))\n        {\n            if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$field][\'inputTV\'])))\n            {\n\n            } else\n            {\n                $tv = $modx->newObject(\'modTemplateVar\');\n                $tv->set(\'type\', $inputTvs[$field][\'inputTVtype\']);\n            }\n            $inputTV = $inputTvs[$field];\n\n            $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\n            //don\'t manipulate any urls here\n            $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\n            $tv->set(\'default_text\', $value);\n            $value = $tv->renderOutput($docid);\n            //set option back\n            $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\n            //now manipulate urls\n            if ($mediasource = $migx->getFieldSource($inputTV, $tv))\n            {\n                $mTypes = explode(\',\', $mTypes);\n                if (!empty($value) && in_array($tv->get(\'type\'), $mTypes))\n                {\n                    //$value = $mediasource->prepareOutputUrl($value);\n                    $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\n                }\n            }\n\n        }\n        $fields[$field] = $value;\n\n    }\n    if ($toJsonPlaceholder)\n    {\n        $output[] = $fields;\n    } else\n    {\n        $fields[\'_alt\'] = $idx % 2;\n        $idx++;\n        $fields[\'_first\'] = $idx == 1 ? true : \'\';\n        $fields[\'_last\'] = $idx == $limit ? true : \'\';\n        $fields[\'idx\'] = $idx;\n        $rowtpl = $tpl;\n        //get changing tpls from field\n        if (substr($tpl, 0, 7) == \"@FIELD:\")\n        {\n            $tplField = substr($tpl, 7);\n            $rowtpl = $fields[$tplField];\n        }\n\n        if (!isset($template[$rowtpl]))\n        {\n            if (substr($rowtpl, 0, 6) == \"@FILE:\")\n            {\n                $template[$rowtpl] = file_get_contents($modx->config[\'base_path\'] . substr($rowtpl, 6));\n            } elseif (substr($rowtpl, 0, 6) == \"@CODE:\")\n            {\n                $template[$rowtpl] = substr($tpl, 6);\n            } elseif ($chunk = $modx->getObject(\'modChunk\', array(\'name\' => $rowtpl), true))\n            {\n                $template[$rowtpl] = $chunk->getContent();\n            } else\n            {\n                $template[$rowtpl] = false;\n            }\n        }\n\n        $fields = array_merge($fields, $properties);\n\n        if ($template[$rowtpl])\n        {\n            $chunk = $modx->newObject(\'modChunk\');\n            $chunk->setCacheable(false);\n            $chunk->setContent($template[$rowtpl]);\n            if (!empty($placeholdersKeyField) && isset($fields[$placeholdersKeyField]))\n            {\n                $output[$fields[$placeholdersKeyField]] = $chunk->process($fields);\n            } else\n            {\n                $output[] = $chunk->process($fields);\n            }\n        } else\n        {\n            if (!empty($placeholdersKeyField))\n            {\n                $output[$fields[$placeholdersKeyField]] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n            } else\n            {\n                $output[] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n            }\n        }\n    }\n\n\n}\n\n\nif ($toJsonPlaceholder)\n{\n    $modx->setPlaceholder($toJsonPlaceholder, $modx->toJson($output));\n    return \'\';\n}\n\nif (!empty($toSeparatePlaceholders))\n{\n    $modx->toPlaceholders($output, $toSeparatePlaceholders);\n    return \'\';\n}\n/*\nif (!empty($outerTpl))\n$o = parseTpl($outerTpl, array(\'output\'=>implode($outputSeparator, $output)));\nelse \n*/\nif (is_array($output))\n{\n    $o = implode($outputSeparator, $output);\n} else\n{\n    $o = $output;\n}\n\nif (!empty($toPlaceholder))\n{\n    $modx->setPlaceholder($toPlaceholder, $o);\n    return \'\';\n}\n\nreturn $o;', 0, 'a:0:{}', '', 0, ''),
(23, 0, 0, 'migxLoopCollection', '', 0, 4, 0, '/*\ngetXpdoInstanceAndAddPackage - properties\n\n$prefix\n$usecustomprefix\n$packageName\n\n\nprepareQuery - properties:\n\n$limit\n$offset\n$totalVar\n$where\n$queries\n$sortConfig\n$groupby\n$joins\n$selectfields\n$classname\n$debug\n\nrenderOutput - properties:\n\n$tpl\n$wrapperTpl\n$toSeparatePlaceholders\n$toPlaceholder\n$outputSeparator\n$placeholdersKeyField\n$toJsonPlaceholder\n$jsonVarKey\n$addfields\n\n*/\n\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n//$modx->migx = &$migx;\n\n$xpdo = $migx->getXpdoInstanceAndAddPackage($scriptProperties);\n\n$defaultcontext = \'web\';\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\n\n$c = $migx->prepareQuery($xpdo,$scriptProperties);\n$rows = $migx->getCollection($c);\n\n$output = $migx->renderOutput($rows,$scriptProperties);\n\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(24, 0, 0, 'migxResourceMediaPath', '', 0, 4, 0, '/**\n * @name migxResourceMediaPath\n * @description Dynamically calculates the upload path for a given resource\n * \n * This Snippet is meant to dynamically calculate your baseBath attribute\n * for custom Media Sources.  This is useful if you wish to shepard uploaded\n * images to a folder dedicated to a given resource.  E.g. page 123 would \n * have its own images that page 456 could not reference.\n *\n * USAGE:\n * [[migxResourceMediaPath? &pathTpl=`assets/businesses/{id}/`]]\n * [[migxResourceMediaPath? &pathTpl=`assets/test/{breadcrumb}`]]\n * [[migxResourceMediaPath? &pathTpl=`assets/test/{breadcrumb}` &breadcrumbdepth=`2`]]\n *\n * PARAMETERS\n * &pathTpl string formatting string specifying the file path. \n *		Relative to MODX base_path\n *		Available placeholders: {id}, {pagetitle}, {parent}\n * &docid (optional) integer page id\n * &createFolder (optional) boolean whether or not to create\n */\n$pathTpl = $modx->getOption(\'pathTpl\', $scriptProperties, \'\');\n$docid = $modx->getOption(\'docid\', $scriptProperties, \'\');\n$createfolder = $modx->getOption(\'createFolder\', $scriptProperties, false);\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n\n$path = \'\';\n$createpath = false;\n\nif (empty($pathTpl)) {\n    $modx->log(MODX_LOG_LEVEL_ERROR, \'[migxResourceMediaPath]: pathTpl not specified.\');\n    return;\n}\n\nif (empty($docid) && $modx->getPlaceholder(\'mediasource_docid\')) {\n    // placeholder was set by some script\n    // warning: the parser may not render placeholders, e.g. &docid=`[[*parent]]` may fail\n    $docid = $modx->getPlaceholder(\'mediasource_docid\');\n}\n\nif (empty($docid) && $modx->getPlaceholder(\'docid\')) {\n    // placeholder was set by some script\n    // warning: the parser may not render placeholders, e.g. &docid=`[[*parent]]` may fail\n    $docid = $modx->getPlaceholder(\'docid\');\n}\nif (empty($docid)) {\n\n    //on frontend\n    if (is_object($modx->resource)) {\n        $docid = $modx->resource->get(\'id\');\n    }\n    //on backend\n    else {\n        $createpath = $createfolder;\n        // We do this to read the &id param from an Ajax request\n        $parsedUrl = parse_url($_SERVER[\'HTTP_REFERER\']);\n        parse_str($parsedUrl[\'query\'], $parsedQuery);\n\n        if (isset($parsedQuery[\'amp;id\'])) {\n            $docid = (int)$parsedQuery[\'amp;id\'];\n        } elseif (isset($parsedQuery[\'id\'])) {\n            $docid = (int)$parsedQuery[\'id\'];\n        }\n    }\n}\n\nif (empty($docid)) {\n    $modx->log(MODX_LOG_LEVEL_ERROR, \'[migxResourceMediaPath]: docid could not be determined.\');\n    return;\n}\n\nif ($resource = $modx->getObject(\'modResource\', $docid)) {\n    $path = $pathTpl;\n    $ultimateParent = \'\';\n    if (strstr($path, \'{breadcrumb}\') || strstr($path, \'{ultimateparent}\')) {\n        $depth = $modx->getOption(\'breadcrumbdepth\', $scriptProperties, 10);\n        $ctx = $resource->get(\'context_key\');\n        $parentids = $modx->getParentIds($docid, $depth, array(\'context\' => $ctx));\n        $breadcrumbdepth = $modx->getOption(\'breadcrumbdepth\', $scriptProperties, count($parentids));\n        $breadcrumbdepth = $breadcrumbdepth > count($parentids) ? count($parentids) : $breadcrumbdepth;\n        if (count($parentids) > 1) {\n            $parentids = array_reverse($parentids);\n            $parentids[] = $docid;\n            $ultimateParent = $parentids[1];\n        } else {\n            $ultimateParent = $docid;\n            $parentids = array();\n            $parentids[] = $docid;\n        }\n    }\n\n    if (strstr($path, \'{breadcrumb}\')) {\n        $breadcrumbpath = \'\';\n        for ($i = 1; $i <= $breadcrumbdepth; $i++) {\n            $breadcrumbpath .= $parentids[$i] . \'/\';\n        }\n        $path = str_replace(\'{breadcrumb}\', $breadcrumbpath, $path);\n    }\n    \n    if (!empty($tvname)){\n        $path = str_replace(\'{tv_value}\', $resource->getTVValue($tvname), $path);    \n    }\n    $path = str_replace(\'{id}\', $docid, $path);\n    $path = str_replace(\'{pagetitle}\', $resource->get(\'pagetitle\'), $path);\n    $path = str_replace(\'{alias}\', $resource->get(\'alias\'), $path);\n    $path = str_replace(\'{parent}\', $resource->get(\'parent\'), $path);\n    $path = str_replace(\'{context_key}\', $resource->get(\'context_key\'), $path);\n    $path = str_replace(\'{ultimateparent}\', $ultimateParent, $path);\n    if ($template = $resource->getOne(\'Template\')) {\n        $path = str_replace(\'{templatename}\', $template->get(\'templatename\'), $path);\n    }\n    if ($user = $modx->user) {\n        $path = str_replace(\'{username}\', $modx->user->get(\'username\'), $path);\n        $path = str_replace(\'{userid}\', $modx->user->get(\'id\'), $path);\n    }\n\n    $fullpath = $modx->getOption(\'base_path\') . $path;\n\n    if ($createpath && !file_exists($fullpath)) {\n\n        $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\n        if (!@mkdir($fullpath, $permissions, true)) {\n            $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $fullpath));\n        } else {\n            chmod($fullpath, $permissions);\n        }\n    }\n\n    return $path;\n} else {\n    $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: resource not found (page id %s).\', $docid));\n    return;\n}', 0, 'a:0:{}', '', 0, ''),
(25, 0, 0, 'migxImageUpload', '', 0, 4, 0, 'return include $modx->getOption(\'core_path\').\'components/migx/model/imageupload/imageupload.php\';', 0, 'a:0:{}', '', 0, ''),
(26, 0, 0, 'migxChunklistToJson', '', 0, 4, 0, '$category = $modx->getOption(\'category\', $scriptProperties, \'\');\n$format = $modx->getOption(\'format\', $scriptProperties, \'json\');\n\n$classname = \'modChunk\';\n$rows = array();\n$output = \'\';\n\n$c = $modx->newQuery($classname);\n$c->select($modx->getSelectColumns($classname, $classname, \'\', array(\'id\', \'name\')));\n$c->sortby(\'name\');\n\nif (!empty($category)) {\n    $c->where(array(\'category\' => $category));\n}\n//$c->prepare();echo $c->toSql();\nif ($collection = $modx->getCollection($classname, $c)) {\n    $i = 0;\n\n    switch ($format) {\n        case \'json\':\n            foreach ($collection as $object) {\n                $row[\'MIGX_id\'] = (string )$i;\n                $row[\'name\'] = $object->get(\'name\');\n                $row[\'selected\'] = \'0\';\n                $rows[] = $row;\n                $i++;\n            }\n            $output = $modx->toJson($rows);\n            break;\n        \n        case \'optionlist\':\n            foreach ($collection as $object) {\n                $rows[] = $object->get(\'name\');\n                $i++;\n            }\n            $output = implode(\'||\',$rows);      \n        break;\n            \n    }\n\n\n}\n\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(27, 0, 0, 'migxSwitchDetailChunk', '', 0, 4, 0, '//[[migxSwitchDetailChunk? &detailChunk=`detailChunk` &listingChunk=`listingChunk`]]\n\n\n$properties[\'migx_id\'] = $modx->getOption(\'migx_id\',$_GET,\'\');\n\nif (!empty($properties[\'migx_id\'])){\n    $output = $modx->getChunk($detailChunk,$properties);\n}\nelse{\n    $output = $modx->getChunk($listingChunk);\n}\n\nreturn $output;', 0, 'a:0:{}', '', 0, '');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(28, 0, 0, 'getSwitchColumnCol', '', 0, 4, 0, '$scriptProperties = $_REQUEST;\n$col = \'\';\n// special actions, for example the showSelector - action\n$tempParams = $modx->getOption(\'tempParams\', $scriptProperties, \'\');\n\nif (!empty($tempParams)) {\n    $tempParams = $modx->fromJson($tempParams);\n    $col = $modx->getOption(\'col\', $tempParams, \'\');\n}\n\nreturn $col;', 0, 'a:0:{}', '', 0, ''),
(29, 0, 0, 'getDayliMIGXrecord', '', 0, 4, 0, '/**\n * getDayliMIGXrecord\n *\n * Copyright 2009-2011 by Bruno Perner <b.perner@gmx.de>\n *\n * getDayliMIGXrecord is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * getDayliMIGXrecord is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * getDayliMIGXrecord; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * getDayliMIGXrecord\n *\n * display Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string for MODx Revolution \n *\n * @version 1.0\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2012\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n/*example: [[!getDayliMIGXrecord? &tvname=`myTV`&tpl=`@CODE:<img src=\"[[+image]]\"/>` &randomize=`1`]]*/\n/* get default properties */\n\n\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$sort = $modx->getOption(\'sort\', $scriptProperties, \'\');\n$sort = !empty($sort) ? $modx->fromJSON($sort) : array();\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n$migx->working_context = $modx->resource->get(\'context_key\');\n\nif (!empty($tvname)) {\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\n\n        /*\n        *   get inputProperties\n        */\n\n\n        $properties = $tv->get(\'input_properties\');\n        $properties = isset($properties[\'formtabs\']) ? $properties : $tv->getProperties();\n\n        $migx->config[\'configs\'] = $properties[\'configs\'];\n        $migx->loadConfigs();\n        // get tabs from file or migx-config-table\n        $formtabs = $migx->getTabs();\n        if (empty($formtabs)) {\n            //try to get formtabs and its fields from properties\n            $formtabs = $modx->fromJSON($properties[\'formtabs\']);\n        }\n\n        //$tv->setCacheable(false);\n        //$outputvalue = $tv->renderOutput($docid);\n        \n        $tvresource = $modx->getObject(\'modTemplateVarResource\', array(\n            \'tmplvarid\' => $tv->get(\'id\'),\n            \'contentid\' => $docid,\n            ));\n\n\n        $outputvalue = $tvresource->get(\'value\');\n        \n        /*\n        *   get inputTvs \n        */\n        $inputTvs = array();\n        if (is_array($formtabs)) {\n\n            //multiple different Forms\n            // Note: use same field-names and inputTVs in all forms\n            $inputTvs = $migx->extractInputTvs($formtabs);\n        }\n        $migx->source = $tv->getSource($migx->working_context, false);\n\n        if (empty($outputvalue)) {\n            return \'\';\n        }\n\n        $items = $modx->fromJSON($outputvalue);\n\n\n        //is there an active item for the current date?\n        $activedate = $modx->getOption(\'activedate\', $scriptProperties, strftime(\'%Y/%m/%d\'));\n        //$activedate = $modx->getOption(\'activedate\', $_GET, strftime(\'%Y/%m/%d\'));\n        $activewhere = array();\n        $activewhere[\'activedate\'] = $activedate;\n        $activewhere[\'activated\'] = \'1\';\n        $activeitems = $migx->filterItems($activewhere, $items);\n\n        if (count($activeitems) == 0) {\n\n            $activeitems = array();\n            // where filter\n            if (is_array($where) && count($where) > 0) {\n                $items = $migx->filterItems($where, $items);\n            }\n\n            $tempitems = array();\n            $count = count($items);\n            $emptycount = 0;\n            $latestdate = $activedate;\n            $nextdate = strtotime($latestdate);\n            foreach ($items as $item) {\n                //empty all dates and active-states which are older than today\n                if (!empty($item[\'activedate\']) && $item[\'activedate\'] < $activedate) {\n                    $item[\'activated\'] = \'0\';\n                    $item[\'activedate\'] = \'\';\n                }\n                if (empty($item[\'activedate\'])) {\n                    $emptycount++;\n                }\n                if ($item[\'activedate\'] > $latestdate) {\n                    $latestdate = $item[\'activedate\'];\n                    $nextdate = strtotime($latestdate) + (24 * 60 * 60);\n                }\n                if ($item[\'activedate\'] == $activedate) {\n                    $item[\'activated\'] = \'1\';\n                    $activeitems[] = $item;\n                }\n                $tempitems[] = $item;\n            }\n\n            //echo \'<pre>\' . print_r($tempitems, 1) . \'</pre>\';\n\n            $items = $tempitems;\n\n\n            //are there more than half of all items with empty activedates\n\n            if ($emptycount >= $count / 2) {\n\n                // sort items\n                if (is_array($sort) && count($sort) > 0) {\n                    $items = $migx->sortDbResult($items, $sort);\n                }\n                if (count($items) > 0) {\n                    //shuffle items\n                    if ($randomize) {\n                        shuffle($items);\n                    }\n                }\n\n                $tempitems = array();\n                foreach ($items as $item) {\n                    if (empty($item[\'activedate\'])) {\n                        $item[\'activedate\'] = strftime(\'%Y/%m/%d\', $nextdate);\n                        $nextdate = $nextdate + (24 * 60 * 60);\n                        if ($item[\'activedate\'] == $activedate) {\n                            $item[\'activated\'] = \'1\';\n                            $activeitems[] = $item;\n                        }\n                    }\n\n                    $tempitems[] = $item;\n                }\n\n                $items = $tempitems;\n            }\n\n            //$resource = $modx->getObject(\'modResource\', $docid);\n            //echo $modx->toJson($items);\n            $sort = \'[{\"sortby\":\"activedate\"}]\';\n            $items = $migx->sortDbResult($items, $modx->fromJson($sort));\n\n            //echo \'<pre>\' . print_r($items, 1) . \'</pre>\';\n\n            $tv->setValue($docid, $modx->toJson($items));\n            $tv->save();\n\n        }\n    }\n\n}\n\n\n$properties = array();\nforeach ($scriptProperties as $property => $value) {\n    $properties[\'property.\' . $property] = $value;\n}\n\n$output = \'\';\n\nforeach ($activeitems as $key => $item) {\n\n    $fields = array();\n    foreach ($item as $field => $value) {\n        $value = is_array($value) ? implode(\'||\', $value) : $value; //handle arrays (checkboxes, multiselects)\n        if ($processTVs && isset($inputTvs[$field])) {\n            if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$field][\'inputTV\']))) {\n\n            } else {\n                $tv = $modx->newObject(\'modTemplateVar\');\n                $tv->set(\'type\', $inputTvs[$field][\'inputTVtype\']);\n            }\n            $inputTV = $inputTvs[$field];\n\n            $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\n            //don\'t manipulate any urls here\n            $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\n            $tv->set(\'default_text\', $value);\n            $value = $tv->renderOutput($docid);\n            //set option back\n            $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\n            //now manipulate urls\n            if ($mediasource = $migx->getFieldSource($inputTV, $tv)) {\n                $mTypes = explode(\',\', $mTypes);\n                if (!empty($value) && in_array($tv->get(\'type\'), $mTypes)) {\n                    //$value = $mediasource->prepareOutputUrl($value);\n                    $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\n                }\n            }\n\n        }\n        $fields[$field] = $value;\n\n    }\n\n    $rowtpl = $tpl;\n    //get changing tpls from field\n    if (substr($tpl, 0, 7) == \"@FIELD:\") {\n        $tplField = substr($tpl, 7);\n        $rowtpl = $fields[$tplField];\n    }\n\n    if (!isset($template[$rowtpl])) {\n        if (substr($rowtpl, 0, 6) == \"@FILE:\") {\n            $template[$rowtpl] = file_get_contents($modx->config[\'base_path\'] . substr($rowtpl, 6));\n        } elseif (substr($rowtpl, 0, 6) == \"@CODE:\") {\n            $template[$rowtpl] = substr($tpl, 6);\n        } elseif ($chunk = $modx->getObject(\'modChunk\', array(\'name\' => $rowtpl), true)) {\n            $template[$rowtpl] = $chunk->getContent();\n        } else {\n            $template[$rowtpl] = false;\n        }\n    }\n\n    $fields = array_merge($fields, $properties);\n\n    if ($template[$rowtpl]) {\n        $chunk = $modx->newObject(\'modChunk\');\n        $chunk->setCacheable(false);\n        $chunk->setContent($template[$rowtpl]);\n        $output .= $chunk->process($fields);\n\n    } else {\n        $output .= \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n\n    }\n\n\n}\n\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n    return \'\';\n}\n\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(30, 0, 0, 'filterbytag', '', 0, 4, 0, 'if (!is_array($subject)) {\n    $subject = explode(\',\',str_replace(array(\'||\',\' \'),array(\',\',\'\'),$subject));\n}\n\nreturn (in_array($operand,$subject));', 0, 'a:0:{}', '', 0, ''),
(31, 0, 0, 'migxObjectMediaPath', '', 0, 4, 0, '$pathTpl = $modx->getOption(\'pathTpl\', $scriptProperties, \'\');\n$objectid = $modx->getOption(\'objectid\', $scriptProperties, \'\');\n$createfolder = $modx->getOption(\'createFolder\', $scriptProperties, \'1\');\n$path = \'\';\n$createpath = false;\nif (empty($objectid) && $modx->getPlaceholder(\'objectid\')) {\n    // placeholder was set by some script on frontend for example\n    $objectid = $modx->getPlaceholder(\'objectid\');\n}\nif (empty($objectid) && isset($_REQUEST[\'object_id\'])) {\n    $objectid = $_REQUEST[\'object_id\'];\n}\n\n\n\nif (empty($objectid)) {\n\n    //set Session - var in fields.php - processor\n    if (isset($_SESSION[\'migxWorkingObjectid\'])) {\n        $objectid = $_SESSION[\'migxWorkingObjectid\'];\n        $createpath = !empty($createfolder);\n    }\n\n}\n\n\n$path = str_replace(\'{id}\', $objectid, $pathTpl);\n\n$fullpath = $modx->getOption(\'base_path\') . $path;\n\nif ($createpath && !file_exists($fullpath)) {\n        $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\n        if (!@mkdir($fullpath, $permissions, true)) {\n            $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $fullpath));\n        }\n        else{\n            chmod($fullpath, $permissions); \n        }\n}\n\nreturn $path;', 0, 'a:0:{}', '', 0, ''),
(32, 0, 0, 'exportMIGX2db', '', 0, 4, 0, '/**\n * exportMIGX2db\n *\n * Copyright 2014 by Bruno Perner <b.perner@gmx.de>\n * \n * Sponsored by Simon Wurster <info@wurster-medien.de>\n *\n * exportMIGX2db is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * exportMIGX2db is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * exportMIGX2db; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * exportMIGX2db\n *\n * export Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string to db-table \n *\n * @version 1.0\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2014\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n/*\n[[!exportMIGX2db? \n&tvname=`references` \n&resources=`25` \n&packageName=`projekte`\n&classname=`Projekt` \n&migx_id_field=`migx_id` \n&renamed_fields=`{\"Firmen-URL\":\"Firmen_url\",\"Projekt-URL\":\"Projekt_URL\",\"main-image\":\"main_image\"}`\n]]\n*/\n\n\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n$resources = $modx->getOption(\'resources\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : \'\'));\n$resources = explode(\',\', $resources);\n$prefix = isset($scriptProperties[\'prefix\']) ? $scriptProperties[\'prefix\'] : null;\n$packageName = $modx->getOption(\'packageName\', $scriptProperties, \'\');\n$classname = $modx->getOption(\'classname\', $scriptProperties, \'\');\n$value = $modx->getOption(\'value\', $scriptProperties, \'\');\n$migx_id_field = $modx->getOption(\'migx_id_field\', $scriptProperties, \'\');\n$pos_field = $modx->getOption(\'pos_field\', $scriptProperties, \'\');\n$renamed_fields = $modx->getOption(\'renamed_fields\', $scriptProperties, \'\');\n\n$packagepath = $modx->getOption(\'core_path\') . \'components/\' . $packageName .\n    \'/\';\n$modelpath = $packagepath . \'model/\';\n\n$modx->addPackage($packageName, $modelpath, $prefix);\n$added = 0;\n$modified = 0;\n\nforeach ($resources as $docid) {\n    \n    $outputvalue = \'\';\n    if (count($resources)==1){\n        $outputvalue = $value;    \n    }\n    \n    if (!empty($tvname)) {\n        if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\n\n            $outputvalue = empty($outputvalue) ? $tv->renderOutput($docid) : $outputvalue;\n        }\n    }\n\n    if (!empty($outputvalue)) {\n        $renamed = !empty($renamed_fields) ? $modx->fromJson($renamed_fields) : array();\n\n        $items = $modx->fromJSON($outputvalue);\n        $pos = 1;\n        $searchfields = array();\n        if (is_array($items)) {\n            foreach ($items as $fields) {\n                $search = array();\n                if (!empty($migx_id_field)) {\n                    $search[$migx_id_field] = $fields[\'MIGX_id\'];\n                }\n                if (!empty($resource_id_field)) {\n                    $search[$resource_id_field] = $docid;\n                }\n                if (!empty($migx_id_field) && $object = $modx->getObject($classname, $search)) {\n                    $mode = \'mod\';\n                } else {\n                    $object = $modx->newObject($classname);\n                    $object->fromArray($search);\n                    $mode = \'add\';\n                }\n                foreach ($fields as $field => $value) {\n                    $fieldname = array_key_exists($field, $renamed) ? $renamed[$field] : $field;\n                    $object->set($fieldname, $value);\n                }\n                if (!empty($pos_field)) {\n                    $object->set($pos_field,$pos) ;\n                }                \n                if ($object->save()) {\n                    if ($mode == \'add\') {\n                        $added++;\n                    } else {\n                        $modified++;\n                    }\n                }\n                $pos++;\n            }\n            \n        }\n    }\n}\n\n\nreturn $added . \' rows added to db, \' . $modified . \' existing rows actualized\';', 0, 'a:0:{}', '', 0, ''),
(33, 0, 0, 'preparedatewhere', '', 0, 4, 0, '$name = $modx->getOption(\'name\', $scriptProperties, \'\');\n$date = $modx->getOption($name . \'_date\', $_REQUEST, \'\');\n$dir = str_replace(\'T\', \' \', $modx->getOption($name . \'_dir\', $_REQUEST, \'\'));\n\nif (!empty($date) && !empty($dir) && $dir != \'all\') {\n    switch ($dir) {\n        case \'=\':\n            $where = array(\n            \'enddate:>=\' => strftime(\'%Y-%m-%d 00:00:00\',strtotime($date)),\n            \'startdate:<=\' => strftime(\'%Y-%m-%d 23:59:59\',strtotime($date))\n            );\n            break;\n        case \'>=\':\n            $where = array(\n            \'enddate:>=\' => strftime(\'%Y-%m-%d 00:00:00\',strtotime($date))\n            );\n            break;\n        case \'<=\':\n            $where = array(\n            \'startdate:<=\' => strftime(\'%Y-%m-%d 23:59:59\',strtotime($date))\n            );            \n            break;\n\n    }\n\n    return $modx->toJson($where);\n}', 0, 'a:0:{}', '', 0, ''),
(34, 0, 0, 'migxJsonToPlaceholders', '', 0, 4, 0, '$value = $modx->getOption(\'value\',$scriptProperties,\'\');\r\n$prefix = $modx->getOption(\'prefix\',$scriptProperties,\'\');\r\n\r\n//$modx->setPlaceholders($modx->fromJson($value),$prefix,\'\',true);\r\n\r\n$values = json_decode($value, true);\r\n\r\n$it = new RecursiveIteratorIterator(new RecursiveArrayIterator($values));\r\n\r\nif (is_array($values)){\r\n    foreach ($it as $key => $value){\r\n        $value = $value == null ? \'\' : $value;\r\n        $modx->setPlaceholder($prefix . $key, $value);\r\n    }\r\n}', 0, 'a:0:{}', '', 0, ''),
(35, 0, 0, 'migxGetCollectionTree', '', 0, 4, 0, '/**\n * migxGetCollectionTree\n *\n * Copyright 2014 by Bruno Perner <b.perner@gmx.de>\n *\n * migxGetCollectionTree is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * migxGetCollectionTree is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * migxGetCollectionTree; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * migxGetCollectionTree\n *\n *          display nested items from different objects. The tree-schema is defined by a json-property. \n *\n * @version 1.0.0\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2014\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n$treeSchema = $modx->getOption(\'treeSchema\', $scriptProperties, \'\');\n$treeSchema = $modx->fromJson($treeSchema);\n\n$scriptProperties[\'current\'] = $modx->getOption(\'current\', $scriptProperties, \'\');\n$scriptProperties[\'currentClassname\'] = $modx->getOption(\'currentClassname\', $scriptProperties, \'\');\n$scriptProperties[\'currentKeyField\'] = $modx->getOption(\'currentKeyField\', $scriptProperties, \'id\');\n$return = $modx->getOption(\'return\', $scriptProperties, \'parsed\'); //parsed,json,arrayprint\n\n/*\nExamples:\n\nGet Resource-Tree, 4 levels deep\n\n[[!migxGetCollectionTree?\n&current=`57`\n&currentClassname=`modResource`\n&treeSchema=`\n{\n\"classname\": \"modResource\",\n\"debug\": \"1\",\n\"tpl\": \"mgctResourceTree\",\n\"wrapperTpl\": \"@CODE:<ul>[[+output]]</ul>\",\n\"selectfields\": \"id,pagetitle\",\n\"where\": {\n\"parent\": \"0\",\n\"published\": \"1\",\n\"deleted\": \"0\"\n},\n\"_branches\": [{\n\"alias\": \"children\",\n\"classname\": \"modResource\",\n\"local\": \"parent\",\n\"foreign\": \"id\",\n\"tpl\": \"mgctResourceTree\",\n\"debug\": \"1\",\n\"selectfields\": \"id,pagetitle,parent\",\n\"_branches\": [{\n\"alias\": \"children\",\n\"classname\": \"modResource\",\n\"local\": \"parent\",\n\"foreign\": \"id\",\n\"tpl\": \"mgctResourceTree\",\n\"debug\": \"1\",\n\"selectfields\": \"id,pagetitle,parent\",\n\"where\": {\n\"published\": \"1\",\n\"deleted\": \"0\"\n},\n\"_branches\": [{\n\"alias\": \"children\",\n\"classname\": \"modResource\",\n\"local\": \"parent\",\n\"foreign\": \"id\",\n\"tpl\": \"mgctResourceTree\",\n\"debug\": \"1\",\n\"selectfields\": \"id,pagetitle,parent\",\n\"where\": {\n\"published\": \"1\",\n\"deleted\": \"0\"\n}\n}]\n}]\n}]\n}\n`]]\n\nthe chunk mgctResourceTree:\n<li class=\"[[+_activelabel]] [[+_currentlabel]]\" ><a href=\"[[~[[+id]]]]\">[[+pagetitle]]([[+id]])</a></li>\n[[+innercounts.children:gt=`0`:then=`\n<ul>[[+innerrows.children]]</ul>\n`:else=``]]\n\nget all Templates and its Resources:\n\n[[!migxGetCollectionTree?\n&treeSchema=`\n{\n\"classname\": \"modTemplate\",\n\"debug\": \"1\",\n\"tpl\": \"@CODE:<h3>[[+templatename]]</h3><ul>[[+innerrows.resource]]</ul>\",\n\"selectfields\": \"id,templatename\",\n\"_branches\": [{\n\"alias\": \"resource\",\n\"classname\": \"modResource\",\n\"local\": \"template\",\n\"foreign\": \"id\",\n\"tpl\": \"@CODE:<li>[[+pagetitle]]([[+id]])</li>\",\n\"debug\": \"1\",\n\"selectfields\": \"id,pagetitle,template\"\n}]\n}\n`]]\n*/\n\nif (!class_exists(\'MigxGetCollectionTree\')) {\n    class MigxGetCollectionTree\n    {\n        function __construct(modX & $modx, array $config = array())\n        {\n            $this->modx = &$modx;\n            $this->config = $config;\n        }\n\n        function getBranch($branch, $foreigns = array(), $level = 1)\n        {\n\n            $rows = array();\n\n            if (count($foreigns) > 0) {\n                $modx = &$this->modx;\n\n                $local = $modx->getOption(\'local\', $branch, \'\');\n                $where = $modx->getOption(\'where\', $branch, array());\n                $where = !empty($where) && !is_array($where) ? $modx->fromJSON($where) : $where;\n                $where[] = array($local . \':IN\' => $foreigns);\n\n                $branch[\'where\'] = $modx->toJson($where);\n\n                $level++;\n                /*\n                if ($levelFromCurrent > 0){\n                $levelFromCurrent++;    \n                }\n                */\n\n                $rows = $this->getRows($branch, $level);\n            }\n\n            return $rows;\n        }\n\n        function getRows($scriptProperties, $level)\n        {\n            $migx = &$this->migx;\n            $modx = &$this->modx;\n\n            $current = $modx->getOption(\'current\', $this->config, \'\');\n            $currentKeyField = $modx->getOption(\'currentKeyField\', $this->config, \'id\');\n            $currentlabel = $modx->getOption(\'currentlabel\', $this->config, \'current\');\n            $classname = $modx->getOption(\'classname\', $scriptProperties, \'\');\n			$sortResult = $modx->getOption(\'sortResult\', $scriptProperties, \'\');\n            $currentClassname = !empty($this->config[\'currentClassname\']) ? $this->config[\'currentClassname\'] : $classname;\n\n            $activelabel = $modx->getOption(\'activelabel\', $this->config, \'active\');\n            $return = $modx->getOption(\'return\', $this->config, \'parsed\');\n\n            $xpdo = $migx->getXpdoInstanceAndAddPackage($scriptProperties);\n            $c = $migx->prepareQuery($xpdo, $scriptProperties);\n            $rows = $migx->getCollection($c);\n\n            $branches = $modx->getOption(\'_branches\', $scriptProperties, array());\n\n            $collectedSubrows = array();\n            foreach ($branches as $branch) {\n                $foreign = $modx->getOption(\'foreign\', $branch, \'\');\n                $local = $modx->getOption(\'local\', $branch, \'\');\n                $alias = $modx->getOption(\'alias\', $branch, \'\');\n                //$activeonly = $modx->getOption(\'activeonly\', $branch, \'\');\n                $foreigns = array();\n                foreach ($rows as $row) {\n                    $foreigns[] = $row[$foreign];\n                }\n\n                $subrows = $this->getBranch($branch, $foreigns, $level);\n                foreach ($subrows as $subrow) {\n\n                    $collectedSubrows[$subrow[$local]][] = $subrow;\n                    $subrow[\'_active\'] = $modx->getOption(\'_active\', $subrow, \'0\');\n                    /*\n                    if (!empty($activeonly) && $subrow[\'_active\'] != \'1\') {\n                    $output = \'\';\n                    } else {\n                    $collectedSubrows[$subrow[$local]][] = $subrow;\n                    }\n                    */\n                    if ($subrow[\'_active\'] == \'1\') {\n                        //echo \'active subrow:<pre>\' . print_r($subrow,1) . \'</pre>\';\n                        $activesubrow[$subrow[$local]] = true;\n                    }\n                    if ($subrow[\'_current\'] == \'1\') {\n                        //echo \'active subrow:<pre>\' . print_r($subrow,1) . \'</pre>\';\n                        $currentsubrow[$subrow[$local]] = true;\n                    }\n\n\n                }\n                //insert subrows\n                $temprows = $rows;\n                $rows = array();\n                foreach ($temprows as $row) {\n                    if (isset($collectedSubrows[$row[$foreign]])) {\n                        $row[\'_active\'] = \'0\';\n                        $row[\'_currentparent\'] = \'0\';\n                        if (isset($activesubrow[$row[$foreign]]) && $activesubrow[$row[$foreign]]) {\n                            $row[\'_active\'] = \'1\';\n                            //echo \'active row:<pre>\' . print_r($row,1) . \'</pre>\';\n                        }\n                        if (isset($currentsubrow[$row[$foreign]]) && $currentsubrow[$row[$foreign]]) {\n                            $row[\'_currentparent\'] = \'1\';\n                            //echo \'active row:<pre>\' . print_r($row,1) . \'</pre>\';\n                        }\n\n                        //render innerrows\n                        //$output = $migx->renderOutput($collectedSubrows[$row[$foreign]],$scriptProperties);\n                        //$output = $collectedSubrows[$row[$foreign]];\n\n                        $row[\'innercounts.\' . $alias] = count($collectedSubrows[$row[$foreign]]);\n                        $row[\'_scriptProperties\'][$alias] = $branch;\n                        /*\n                        switch ($return) {\n                        case \'parsed\':\n                        $output = $migx->renderOutput($collectedSubrows[$row[$foreign]], $branch);\n                        //$subbranches = $modx->getOption(\'_branches\', $branch, array());\n                        //if there are any placeholders left with the same alias from subbranch, remove them\n                        $output = str_replace(\'[[+innerrows.\' . $alias . \']]\', \'\', $output);\n                        break;\n                        case \'json\':\n                        case \'arrayprint\':\n                        $output = $collectedSubrows[$row[$foreign]];\n                        break;\n                        }\n                        */\n                        $output = $collectedSubrows[$row[$foreign]];\n\n                        $row[\'innerrows.\' . $alias] = $output;\n\n                    }\n                    $rows[] = $row;\n                }\n\n            }\n\n            $temprows = $rows;\n            $rows = array();\n            foreach ($temprows as $row) {\n                //add additional placeholders\n                $row[\'_level\'] = $level;\n                $row[\'_active\'] = $modx->getOption(\'_active\', $row, \'0\');\n                if ($currentClassname == $classname && $row[$currentKeyField] == $current) {\n                    $row[\'_current\'] = \'1\';\n                    $row[\'_currentlabel\'] = $currentlabel;\n                    $row[\'_active\'] = \'1\';\n                } else {\n                    $row[\'_current\'] = \'0\';\n                    $row[\'_currentlabel\'] = \'\';\n                }\n                if ($row[\'_active\'] == \'1\') {\n                    $row[\'_activelabel\'] = $activelabel;\n                } else {\n                    $row[\'_activelabel\'] = \'\';\n                }\n                $rows[] = $row;\n            }\n\n            if (!empty($sortResult) && is_array($sortResult)){\n                $rows = $migx->sortDbResult($rows, $sortResult);\n			}\n\n            return $rows;\n        }\n\n        function renderRow($row, $levelFromCurrent = 0)\n        {\n            $migx = &$this->migx;\n            $modx = &$this->modx;\n            $return = $modx->getOption(\'return\', $this->config, \'parsed\');\n            $branchProperties = $modx->getOption(\'_scriptProperties\', $row, array());\n            $current = $modx->getOption(\'_current\', $row, \'0\');\n            $currentparent = $modx->getOption(\'_currentparent\', $row, \'0\');\n            $levelFromCurrent = $current == \'1\' ? 1 : $levelFromCurrent;\n            $row[\'_levelFromCurrent\'] = $levelFromCurrent;\n            foreach ($branchProperties as $alias => $properties) {\n                $innerrows = $modx->getOption(\'innerrows.\' . $alias, $row, array());\n                $subrows = $this->renderRows($innerrows, $properties, $levelFromCurrent, $currentparent);\n                if ($return == \'parsed\') {\n                    $subrows = $migx->renderOutput($subrows, $properties);\n                }\n                $row[\'innerrows.\' . $alias] = $subrows;\n            }\n\n            return $row;\n        }\n\n        function renderRows($rows, $scriptProperties, $levelFromCurrent = 0, $siblingOfCurrent = \'0\')\n        {\n\n            $modx = &$this->modx;\n            $temprows = $rows;\n            $rows = array();\n            if ($levelFromCurrent > 0) {\n                $levelFromCurrent++;\n            }\n            foreach ($temprows as $row) {\n                $row[\'_siblingOfCurrent\'] = $siblingOfCurrent;\n                $row = $this->renderRow($row, $levelFromCurrent);\n                $rows[] = $row;\n            }\n            return $rows;\n        }\n    }\n}\n\n$instance = new MigxGetCollectionTree($modx, $scriptProperties);\n\nif (is_array($treeSchema)) {\n    $scriptProperties = $treeSchema;\n\n    $migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\n    if (!($migx instanceof Migx))\n        return \'\';\n\n    $defaultcontext = \'web\';\n    $migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\n    $instance->migx = &$migx;\n\n    $level = 1;\n    $scriptProperties[\'alias\'] = \'row\';\n    $rows = $instance->getRows($scriptProperties, $level);\n\n    $row = array();\n    $row[\'innercounts.row\'] = count($rows);\n    $row[\'innerrows.row\'] = $rows;\n    $row[\'_scriptProperties\'][\'row\'] = $scriptProperties;\n\n    $rows = $instance->renderRow($row);\n\n    $output = \'\';\n    switch ($return) {\n        case \'parsed\':\n            $output = $modx->getOption(\'innerrows.row\', $rows, \'\');\n            break;\n        case \'json\':\n            $output = $modx->toJson($rows);\n            break;\n        case \'arrayprint\':\n            $output = \'<pre>\' . print_r($rows, 1) . \'</pre>\';\n            break;\n    }\n\n    return $output;\n\n}', 0, 'a:0:{}', '', 0, ''),
(36, 0, 0, 'migxIsNewObject', '', 0, 4, 0, 'if (isset($_REQUEST[\'object_id\']) && $_REQUEST[\'object_id\']==\'new\'){\n    return 1;\n}', 0, 'a:0:{}', '', 0, ''),
(37, 0, 0, 'migx_example_validate', '', 0, 4, 0, '$properties = &$modx->getOption(\'scriptProperties\', $scriptProperties, array());\n$object = &$modx->getOption(\'object\', $scriptProperties, null);\n$postvalues = &$modx->getOption(\'postvalues\', $scriptProperties, array());\n$form_field = $modx->getOption(\'form_field\', $scriptProperties, array());\n$value = $modx->getOption(\'value\', $scriptProperties, \'\');\n$validation_type = $modx->getOption(\'validation_type\', $scriptProperties, \'\');\n$result = \'\';\nswitch ($validation_type) {\n    case \'gt25\':\n        if ((int) $value > 25) {\n        } else {\n            $error_message = $validation_type; // may be custom validation message\n            $error[\'caption\'] = $form_field;\n            $error[\'validation_type\'] = $error_message;\n            $result[\'error\'] = $error;\n            $result = $modx->toJson($result);\n        }\n        break;\n}\nreturn $result;', 0, 'a:0:{}', '', 0, ''),
(38, 0, 0, 'migxHookAftercollectmigxitems', '', 0, 4, 0, '$configs = $modx->getOption(\'configs\', $_REQUEST, \'\');\n\n$rows = $modx->getOption(\'rows\', $scriptProperties, array());\n$newrows = array();\n\n\nif (is_array($rows)) {\n    $max_id = 0;\n    $dbfields = array();\n    $existing_dbfields = array();\n    foreach ($rows as $key => $row) {\n        if (isset($row[\'MIGX_id\']) && $row[\'MIGX_id\'] > $max_id) {\n            $max_id = $row[\'MIGX_id\'];\n        }\n        if (isset($row[\'selected_dbfields\']) && isset($row[\'existing_dbfields\'])) {\n            $dbfields = is_array($row[\'selected_dbfields\']) ? $row[\'selected_dbfields\'] : array($row[\'selected_dbfields\']);\n            \n            $existing_dbfields = explode(\'||\', $row[\'existing_dbfields\']);\n            //echo \'<pre>\' . print_r($existing_dbfields,1) . \'</pre>\';die();\n\n        } else {\n            $newrows[] = $row;\n        }\n\n    }\n\n    foreach ($dbfields as $dbfield) {\n        if (!empty($dbfield) && !in_array($dbfield, $existing_dbfields)) {\n            $max_id++;\n            $newrow = array();\n            $newrow[\'MIGX_id\'] = $max_id;\n\n            switch ($configs) {\n                case \'migxformtabfields\':\n                    $newrow[\'field\'] = $dbfield;\n                    $newrow[\'caption\'] = $dbfield;\n                    break;\n                case \'migxcolumns\':\n                    $newrow[\'dataIndex\'] = $dbfield;\n                    $newrow[\'header\'] = $dbfield;\n                    break;                    \n            }\n\n\n            $newrows[] = $newrow;\n        }\n    }\n\n\n}\n\n\nreturn json_encode($newrows);', 0, 'a:0:{}', '', 0, ''),
(39, 0, 0, 'migxAutoPublish', '', 0, 4, 0, '$classnames = explode(\',\', $modx->getOption(\'classnames\',$scriptProperties,\'\'));\n$packageName = $modx->getOption(\'packageName\',$scriptProperties,\'\');\n\nswitch ($mode) {\n    case \'datetime\' :\n        $timeNow = strftime(\'%Y-%m-%d %H:%M:%S\');\n        break;\n    case \'unixtime\' :\n        $timeNow = time();\n        break;\n    default :\n        $timeNow = strftime(\'%Y-%m-%d %H:%M:%S\');\n        break;\n}\n\n$modx->addPackage($packageName, $modx->getOption(\'core_path\') . \'components/\' . $packageName . \'/model/\');\n\nforeach ($classnames as $classname) {\n    if (!empty($classname)) {\n        $tblResource = $modx->getTableName($classname);\n        if (!$result = $modx->exec(\"UPDATE {$tblResource} SET published=1,publishedon=pub_date,pub_date=null WHERE pub_date < \'{$timeNow}\' AND pub_date > 0 AND published=0\")) {\n            $modx->log(modX::LOG_LEVEL_ERROR, \'Error while refreshing resource publishing data: \' . print_r($modx->errorInfo(), true));\n        }\n        if (!$result = $modx->exec(\"UPDATE $tblResource SET published=0,unpub_date=null WHERE unpub_date < \'{$timeNow}\' AND unpub_date IS NOT NULL AND unpub_date > 0 AND published=1\")) {\n            $modx->log(modX::LOG_LEVEL_ERROR, \'Error while refreshing resource unpublishing data: \' . print_r($modx->errorInfo(), true));\n        }\n    }\n\n}\n$modx->cacheManager->refresh();', 0, 'a:0:{}', '', 0, ''),
(40, 0, 0, 'migxGetObject', '', 0, 4, 0, '/*\ngetXpdoInstanceAndAddPackage - properties\n\n$prefix\n$usecustomprefix\n$packageName\n\n\nprepareQuery - properties:\n\n$limit\n$offset\n$totalVar\n$where\n$queries\n$sortConfig\n$groupby\n$joins\n$selectfields\n$classname\n$debug\n\nrenderOutput - properties:\n\n$tpl\n$wrapperTpl\n$toSeparatePlaceholders\n$toPlaceholder\n$outputSeparator\n$placeholdersKeyField\n$toJsonPlaceholder\n$jsonVarKey\n$addfields\n\nmigxGetObject - properties\n\n$id\n$toPlaceholders - if not empty, output to placeholders with specified prefix or print the array, if \'print_r\' is the property-value\n\n*/\n\n$id = $modx->getOption(\'id\',$scriptProperties,\'\');\n$scriptProperties[\'limit\'] = 1;\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n//$modx->migx = &$migx;\n\n$xpdo = $migx->getXpdoInstanceAndAddPackage($scriptProperties);\n\n$defaultcontext = \'web\';\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\n\n$c = $migx->prepareQuery($xpdo,$scriptProperties);\nif (!empty($id)){\n    $c->where(array(\'id\'=>$id));\n	$c->prepare();\n}	\n$rows = $migx->getCollection($c);\n\n$output = $migx->renderOutput($rows,$scriptProperties);\n\nreturn $output;', 0, 'a:0:{}', '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_templates`
--

CREATE TABLE `modx_site_templates` (
  `id` int UNSIGNED NOT NULL,
  `source` int UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Template',
  `editor_type` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `template_type` int NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 0, 0, 'Шаблон', 'Шаблон', 0, 0, '', 0, '[[$header]]\n<div class=\"container\">\n   [[$container_left]]\n   <div class=\"container_right\">\n      [[*content]]\n   </div>\n</div>\n[[$footer]]\n', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvars`
--

CREATE TABLE `modx_site_tmplvars` (
  `id` int UNSIGNED NOT NULL,
  `source` int UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `locked` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  `static` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_tmplvars`
--

INSERT INTO `modx_site_tmplvars` (`id`, `source`, `property_preprocess`, `type`, `name`, `caption`, `description`, `editor_type`, `category`, `locked`, `elements`, `rank`, `display`, `default_text`, `properties`, `input_properties`, `output_properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'migx', 'Photo', '', '', 0, 0, 0, '', 0, 'default', '', 'a:0:{}', 'a:7:{s:7:\"configs\";s:5:\"Photo\";s:8:\"formtabs\";s:0:\"\";s:7:\"columns\";s:0:\"\";s:7:\"btntext\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";}', 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_access`
--

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int UNSIGNED NOT NULL,
  `tmplvarid` int NOT NULL DEFAULT '0',
  `documentgroup` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_contentvalues`
--

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int UNSIGNED NOT NULL,
  `tmplvarid` int NOT NULL DEFAULT '0',
  `contentid` int NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_tmplvar_contentvalues`
--

INSERT INTO `modx_site_tmplvar_contentvalues` (`id`, `tmplvarid`, `contentid`, `value`) VALUES
(1, 1, 1, '[{\"MIGX_id\":\"1\",\"title\":\"\\u0414\\u0435\\u043a\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u044b\\u0435 \\u043f\\u043e\\u043a\\u0440\\u044b\\u0442\\u0438\\u044f\",\"image\":\"manager\\/templates\\/zadanie\\/img\\/photo.png\",\"description\":\"\\u041e\\u0442 \\u043b\\u0443\\u0447\\u0448\\u0438\\u0445 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439\"},{\"MIGX_id\":\"2\",\"title\":\"\\u0414\\u0435\\u043a\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u044b\\u0435 \\u043f\\u043e\\u043a\\u0440\\u044b\\u0442\\u0438\\u044f\",\"image\":\"manager\\/templates\\/zadanie\\/img\\/photo.png\",\"description\":\"\\u041e\\u0442 \\u043b\\u0443\\u0447\\u0448\\u0438\\u0445 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439\"},{\"MIGX_id\":\"3\",\"title\":\"\\u0414\\u0435\\u043a\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u044b\\u0435 \\u043f\\u043e\\u043a\\u0440\\u044b\\u0442\\u0438\\u044f\",\"image\":\"manager\\/templates\\/zadanie\\/img\\/photo.png\",\"description\":\"\\u041e\\u0442 \\u043b\\u0443\\u0447\\u0448\\u0438\\u0445 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439\"},{\"MIGX_id\":\"4\",\"title\":\"\\u0414\\u0435\\u043a\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u044b\\u0435 \\u043f\\u043e\\u043a\\u0440\\u044b\\u0442\\u0438\\u044f\",\"image\":\"manager\\/templates\\/zadanie\\/img\\/photo.png\",\"description\":\"\\u041e\\u0442 \\u043b\\u0443\\u0447\\u0448\\u0438\\u0445 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439\"}]');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_templates`
--

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int NOT NULL DEFAULT '0',
  `templateid` int NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_tmplvar_templates`
--

INSERT INTO `modx_site_tmplvar_templates` (`tmplvarid`, `templateid`, `rank`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_eventnames`
--

CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`) VALUES
('OnBeforeCacheUpdate', 4, 'System'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnBeforeRegisterClientScripts', 5, 'System'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnBeforeUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnBeforeWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnCacheUpdate', 4, 'System'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategorySave', 1, 'Categories'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkSave', 1, 'Chunks'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextSave', 1, 'Contexts'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnElementNotFound', 1, 'System'),
('OnEmptyTrash', 1, 'Resources'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnInitCulture', 1, 'Internationalization'),
('OnLoadWebDocument', 5, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnManagerPageAfterRender', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMODXInit', 5, 'System'),
('OnPackageInstall', 2, 'Package Manager'),
('OnPackageRemove', 2, 'Package Manager'),
('OnPackageUninstall', 2, 'Package Manager'),
('OnPageNotFound', 1, 'System'),
('OnPageUnauthorized', 1, 'Security'),
('OnParseDocument', 5, 'System'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginSave', 1, 'Plugins'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceCacheUpdate', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnSiteRefresh', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnTempFormDelete', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserActivate', 1, 'Users'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserNotFound', 1, 'Users'),
('OnUserProfileBeforeRemove', 1, 'User Profiles'),
('OnUserProfileBeforeSave', 1, 'User Profiles'),
('OnUserProfileRemove', 1, 'User Profiles'),
('OnUserProfileSave', 1, 'User Profiles'),
('OnUserRemove', 1, 'Users'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnUserSave', 1, 'Users'),
('OnWebAuthentication', 3, 'Security'),
('OnWebLogin', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnWebPageComplete', 5, 'System'),
('OnWebPageInit', 5, 'System'),
('OnWebPagePrerender', 5, 'System'),
('pdoToolsOnFenomInit', 6, 'pdoTools');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_settings`
--

CREATE TABLE `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', NULL),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', NULL),
('allow_tv_eval', '1', 'combo-boolean', 'core', 'system', NULL),
('anonymous_sessions', '1', 'combo-boolean', 'core', 'session', NULL),
('archive_with', '', 'combo-boolean', 'core', 'system', NULL),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', NULL),
('automatic_template_assignment', 'parent', 'textfield', 'core', 'site', NULL),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', NULL),
('auto_check_pkg_updates_cache_expire', '15', 'textfield', 'core', 'system', NULL),
('auto_isfolder', '1', 'combo-boolean', 'core', 'site', NULL),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', NULL),
('base_help_url', '//docs.modx.com/help/', 'textfield', 'core', 'manager', NULL),
('blocked_minutes', '60', 'textfield', 'core', 'authentication', NULL),
('cache_action_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_db', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_db_session', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_session_lifetime', '', 'textfield', 'core', 'caching', NULL),
('cache_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_format', '0', 'textfield', 'core', 'caching', NULL),
('cache_handler', 'xPDOFileCache', 'textfield', 'core', 'caching', NULL),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_clear_partial', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', NULL),
('clear_cache_refresh_trees', '0', 'combo-boolean', 'core', 'caching', NULL),
('compress_css', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js_max_files', '10', 'textfield', 'core', 'manager', NULL),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', NULL),
('container_suffix', '/', 'textfield', 'core', 'furls', NULL),
('context_tree_sort', '1', 'combo-boolean', 'core', 'manager', NULL),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', NULL),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', NULL),
('cultureKey', 'ru', 'modx-combo-language', 'core', 'language', '2021-10-11 15:37:21'),
('date_timezone', '', 'textfield', 'core', 'system', NULL),
('debug', '', 'textfield', 'core', 'system', NULL),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', NULL),
('default_context', 'web', 'modx-combo-context', 'core', 'site', NULL),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', NULL),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', NULL),
('default_media_source_type', 'sources.modFileMediaSource', 'modx-combo-source-type', 'core', 'manager', NULL),
('default_per_page', '20', 'textfield', 'core', 'manager', NULL),
('default_template', '1', 'modx-combo-template', 'core', 'site', NULL),
('default_username', '(anonymous)', 'textfield', 'core', 'session', NULL),
('editor_css_path', '', 'textfield', 'core', 'editor', NULL),
('editor_css_selectors', '', 'textfield', 'core', 'editor', NULL),
('emailsender', 'Elya.Gorbachev27@yandex.by', 'textfield', 'core', 'authentication', '2021-10-11 15:37:21'),
('emailsubject', 'Your login details', 'textfield', 'core', 'authentication', NULL),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', NULL),
('enable_gravatar', '1', 'combo-boolean', 'core', 'manager', NULL),
('error_log_filename', 'error.log', 'textfield', 'core', 'system', NULL),
('error_log_filepath', '', 'textfield', 'core', 'system', NULL),
('error_page', '1', 'textfield', 'core', 'site', NULL),
('failed_login_attempts', '5', 'textfield', 'core', 'authentication', NULL),
('feed_modx_news', 'https://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', NULL),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('feed_modx_security', 'https://forums.modx.com/board.xml?board=294', 'textfield', 'core', 'system', NULL),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('fe_editor_lang', 'en', 'modx-combo-language', 'core', 'language', NULL),
('filemanager_path', '', 'textfield', 'core', 'file', NULL),
('filemanager_path_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('filemanager_url', '', 'textfield', 'core', 'file', NULL),
('filemanager_url_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('forgot_login_email', '<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('formit.attachment.mediasource', '1', 'modx-combo-source', 'formit', 'formit', NULL),
('formit.attachment.path', '', 'textfield', 'formit', 'formit', NULL),
('formit.cleanform.days', '30', 'textfield', 'formit', 'formit', NULL),
('formit.exclude_contexts', 'mgr', 'textfield', 'formit', 'formit', NULL),
('formit.form_encryptkey', 'modx61645a1fa3c758.12778252', 'textfield', 'formit', 'formit', '2021-10-11 15:43:36'),
('formit.max_chars_textfield', '125', 'textfield', 'formit', 'formit', NULL),
('formit.recaptcha_private_key', '', 'textfield', 'formit', 'formit_recaptcha', NULL),
('formit.recaptcha_public_key', '', 'textfield', 'formit', 'formit_recaptcha', NULL),
('formit.recaptcha_use_ssl', '0', 'combo-boolean', 'formit', 'formit_recaptcha', NULL),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', NULL),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', NULL),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_max_length', '0', 'textfield', 'core', 'furls', NULL),
('friendly_alias_realtime', '0', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', NULL),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_translit', 'none', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class', 'modx.translit.modTransliterate', 'textfield', 'core', 'furls', '2021-10-11 15:44:31'),
('friendly_alias_translit_class_path', '{core_path}components/translit/model/', 'textfield', 'core', 'furls', '2021-10-11 15:44:31'),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', NULL),
('friendly_urls', '0', 'combo-boolean', 'core', 'furls', NULL),
('friendly_urls_strict', '0', 'combo-boolean', 'core', 'furls', NULL),
('global_duplicate_uri_check', '0', 'combo-boolean', 'core', 'furls', NULL),
('hidemenu_default', '0', 'combo-boolean', 'core', 'site', NULL),
('inline_help', '1', 'combo-boolean', 'core', 'manager', NULL),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', NULL),
('locale', '', 'textfield', 'core', 'language', NULL),
('lock_ttl', '360', 'textfield', 'core', 'system', NULL),
('log_deprecated', '1', 'combo-boolean', 'core', 'system', NULL),
('log_level', '1', 'textfield', 'core', 'system', NULL),
('log_snippet_not_found', '1', 'combo-boolean', 'core', 'site', NULL),
('log_target', 'FILE', 'textfield', 'core', 'system', NULL),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', NULL),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', NULL),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_autotls', '1', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', NULL),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', NULL),
('mail_smtp_port', '587', 'textfield', 'core', 'mail', NULL),
('mail_smtp_prefix', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_timeout', '10', 'textfield', 'core', 'mail', NULL),
('mail_smtp_user', '', 'textfield', 'core', 'mail', NULL),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', NULL),
('main_nav_parent', 'topnav', 'textfield', 'core', 'manager', NULL),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', NULL),
('manager_direction', 'ltr', 'textfield', 'core', 'language', NULL),
('manager_favicon_url', '', 'textfield', 'core', 'manager', NULL),
('manager_js_cache_file_locking', '1', 'combo-boolean', 'core', 'manager', NULL),
('manager_js_cache_max_age', '3600', 'textfield', 'core', 'manager', NULL),
('manager_js_document_root', '', 'textfield', 'core', 'manager', NULL),
('manager_js_zlib_output_compression', '0', 'combo-boolean', 'core', 'manager', NULL),
('manager_language', 'ru', 'modx-combo-language', 'core', 'language', '2021-10-11 15:37:21'),
('manager_lang_attribute', 'ru', 'textfield', 'core', 'language', '2021-10-11 15:37:21'),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', NULL),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', NULL),
('manager_time_format', 'g:i a', 'textfield', 'core', 'manager', NULL),
('manager_use_fullname', '', 'combo-boolean', 'core', 'manager', NULL),
('manager_week_start', '0', 'textfield', 'core', 'manager', NULL),
('mgr_source_icon', 'icon-folder-open-o', 'textfield', 'core', 'manager', NULL),
('mgr_tree_icon_context', 'tree-context', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', NULL),
('modx_browser_tree_hide_files', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_tree_hide_tooltips', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', NULL),
('parser_class', 'pdoParser', 'textfield', 'core', 'site', NULL),
('parser_class_path', '{core_path}components/pdotools/model/pdotools/', 'textfield', 'core', 'site', NULL),
('parser_recurse_uncacheable', '1', 'combo-boolean', 'core', 'system', NULL),
('password_generated_length', '10', 'textfield', 'core', 'authentication', NULL),
('password_min_length', '8', 'textfield', 'core', 'authentication', NULL),
('pdoFetch.class', 'pdotools.pdofetch', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdofetch_class_path', '{core_path}components/pdotools/model/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdoTools.class', 'pdotools.pdotools', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdotools_class_path', '{core_path}components/pdotools/model/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdotools_elements_path', '{core_path}elements/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_cache', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_default', '1', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_modx', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_options', '', 'textarea', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_parser', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_php', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_save_on_errors', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('phpthumbon.cache_dir', 'cache_image', 'textfield', 'phpthumbon', 'path', NULL),
('phpthumbon.error_mode', '1', 'numberfield', 'phpthumbon', 'general', NULL),
('phpthumbon.ext', 'jpeg', 'textfield', 'phpthumbon', 'general', NULL),
('phpthumbon.images_dir', 'images', 'textfield', 'phpthumbon', 'paths', NULL),
('phpthumbon.make_cachename', '', 'textfield', 'phpthumbon', 'general', NULL),
('phpthumbon.noimage', '{assets_path}components/phpthumbon/noimage.jpg', 'textfield', 'phpthumbon', 'path', NULL),
('phpthumbon.noimage_cache', '{assets_path}components/phpthumbon/cache/', 'textfield', 'phpthumbon', 'path', NULL),
('phpthumbon.quality', '96', 'numberfield', 'phpthumbon', 'general', NULL),
('phpthumbon.queue', '0', 'numberfield', 'phpthumbon', 'general', NULL),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxage', '30', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxfiles', '10000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxsize', '100', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_fontsize', '1', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', NULL),
('preserve_menuindex', '1', 'combo-boolean', 'core', 'manager', NULL),
('principal_targets', 'modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource,modAccessNamespace', 'textfield', 'core', 'authentication', NULL),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', NULL),
('proxy_host', '', 'textfield', 'core', 'proxy', NULL),
('proxy_password', '', 'text-password', 'core', 'proxy', NULL),
('proxy_port', '', 'textfield', 'core', 'proxy', NULL),
('proxy_username', '', 'textfield', 'core', 'proxy', NULL),
('publish_default', '', 'combo-boolean', 'core', 'site', NULL),
('rb_base_dir', '', 'textfield', 'core', 'file', NULL),
('rb_base_url', '', 'textfield', 'core', 'file', NULL),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', NULL),
('request_method_strict', '0', 'combo-boolean', 'core', 'gateway', NULL),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', NULL),
('request_param_id', 'id', 'textfield', 'core', 'gateway', NULL),
('resolve_hostnames', '0', 'combo-boolean', 'core', 'system', NULL),
('resource_static_allow_absolute', '0', 'combo-boolean', 'core', 'static_resources', NULL),
('resource_static_path', '{assets_path}', 'textfield', 'core', 'static_resources', NULL),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_name_fallback', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', NULL),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', NULL),
('search_default', '1', 'combo-boolean', 'core', 'site', NULL),
('send_poweredby_header', '1', 'combo-boolean', 'core', 'system', '2021-10-11 15:37:21'),
('server_offset_time', '0', 'textfield', 'core', 'system', NULL),
('server_protocol', 'http', 'textfield', 'core', 'system', NULL),
('session_cookie_domain', '', 'textfield', 'core', 'session', NULL),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_lifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_cookie_path', '', 'textfield', 'core', 'session', NULL),
('session_cookie_samesite', '', 'textfield', 'core', 'session', NULL),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', NULL),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_handler_class', 'modSessionHandler', 'textfield', 'core', 'session', NULL),
('session_name', '', 'textfield', 'core', 'session', NULL),
('settings_distro', 'traditional', 'textfield', 'core', 'system', NULL),
('settings_version', '2.8.3-pl', 'textfield', 'core', 'system', NULL),
('set_header', '1', 'combo-boolean', 'core', 'system', NULL),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', NULL),
('signupemail_message', '<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('site_name', 'MODX Revolution', 'textfield', 'core', 'site', NULL),
('site_start', '1', 'textfield', 'core', 'site', NULL),
('site_status', '1', 'combo-boolean', 'core', 'site', NULL),
('site_unavailable_message', 'The site is currently unavailable', 'textfield', 'core', 'site', NULL),
('site_unavailable_page', '0', 'textfield', 'core', 'site', NULL),
('static_elements_automate_chunks', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_plugins', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_snippets', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_templates', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_tvs', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_basepath', '', 'textfield', 'core', 'static_elements', NULL),
('static_elements_default_category', '0', 'modx-combo-category', 'core', 'static_elements', NULL),
('static_elements_default_mediasource', '0', 'modx-combo-source', 'core', 'static_elements', NULL),
('strip_image_paths', '1', 'combo-boolean', 'core', 'file', NULL),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', NULL),
('syncsite_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', NULL),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', NULL),
('tree_root_id', '0', 'numberfield', 'core', 'manager', NULL),
('tvs_below_content', '0', 'combo-boolean', 'core', 'manager', NULL),
('udperms_allowroot', '', 'combo-boolean', 'core', 'authentication', NULL),
('unauthorized_page', '1', 'textfield', 'core', 'site', NULL),
('upload_check_exists', '1', 'combo-boolean', 'core', 'file', NULL),
('upload_files', 'txt,html,htm,xml,js,js.map,css,scss,less,css.map,zip,gz,rar,z,tgz,tar,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,tiff,svg,svgz,gif,psd,ico,bmp,webp,odt,ods,odp,odb,odg,odf,md,ttf,woff,woff2,eot', 'textfield', 'core', 'file', NULL),
('upload_flash', 'swf,fla', 'textfield', 'core', 'file', NULL),
('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp,tiff,svg,svgz,webp', 'textfield', 'core', 'file', NULL),
('upload_maxsize', '52428800', 'textfield', 'core', 'file', '2021-10-11 15:37:21'),
('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', NULL),
('user_nav_parent', 'usernav', 'textfield', 'core', 'manager', NULL),
('use_alias_path', '0', 'combo-boolean', 'core', 'furls', NULL),
('use_browser', '1', 'combo-boolean', 'core', 'file', NULL),
('use_context_resource_table', '1', 'combo-boolean', 'core', 'caching', NULL),
('use_editor', '1', 'combo-boolean', 'core', 'editor', NULL),
('use_frozen_parent_uris', '0', 'combo-boolean', 'core', 'furls', NULL),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2021-10-11 15:37:21'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', NULL),
('webpwdreminder_message', '<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('websignupemail_message', '<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', NULL),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', NULL),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2021-10-11 15:38:10'),
('welcome_screen_url', '//misc.modx.com/revolution/welcome.28.html', 'textfield', 'core', 'manager', NULL),
('which_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('which_element_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_thumb_images`
--

CREATE TABLE `modx_thumb_images` (
  `id` int UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `cache_image` varchar(255) DEFAULT NULL,
  `config` mediumtext,
  `isend` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_transport_packages`
--

CREATE TABLE `modx_transport_packages` (
  `signature` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `workspace` int UNSIGNED NOT NULL DEFAULT '0',
  `provider` int UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(191) NOT NULL,
  `metadata` text,
  `version_major` smallint UNSIGNED NOT NULL DEFAULT '0',
  `version_minor` smallint UNSIGNED NOT NULL DEFAULT '0',
  `version_patch` smallint UNSIGNED NOT NULL DEFAULT '0',
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_transport_packages`
--

INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('ajaxform-1.1.9-pl', '2021-10-11 19:14:43', '2021-10-11 16:15:14', '2021-10-11 19:15:14', 0, 1, 1, 0, 'ajaxform-1.1.9-pl.transport.zip', NULL, 'a:8:{s:9:\"changelog\";s:2282:\"Changelog for AjaxForm.\n\n1.1.9-pl\n==============\n- [#40] Improved javascript initialization of a form.\n\n1.1.8-pl\n==============\n- Updated jGrowl to version 1.4.5.\n\n1.1.7-pl\n==============\n- Fixed possible blind SQL injection in action file.\n\n1.1.6-pl\n==============\n- [#33] Improved the processing of javascript errors.\n\n1.1.5-pl\n==============\n- [#30] Improved support of ReCaptcha.\n- PSR-2.\n- Default chunk optimized for Twitter Bootstrap 3.\n\n1.1.4-pl\n==============\n- [#27] Support of single quotes in attributes of form.\n- Case-insensitive check of attributes of form.\n\n1.1.3-pl\n==============\n- Improved validation of files.\n\n1.1.2-pl\n==============\n- Compatibility with FormIt ReCaptcha.\n- Small code format.\n\n1.1.1-pl\n==============\n- Improved checking of availability of pdoTools.\n\n1.1.0-pl\n==============\n- Improved registration of frontend javascript.\n- Added parameter &formSelector for specifying name of CSS class of form.\n- Added parameter &objectName for specifying name of javascript object to initialize.\n\n1.0.7-pl\n==============\n- Added loading source resource to modX::resource in action.php.\n\n1.0.6-pl\n==============\n- [#15] Fixed work in different contexts.\n\n1.0.5-pl\n==============\n- Remove error class from fields on before form submit.\n\n1.0.4-pl\n==============\n- Added checking of global js var \"afValidated\" before form submit.\n\n1.0.3-pl\n==============\n- [#8] Improved regular expression.\n- Improved compatibility with parameter \"submitVar\" in snippet FormIt.\n\n1.0.2-pl\n==============\n- Added jQuery event \"af_complete\" on form submit.\n- [#4] Ability to use @INLINE chunk in parameter &form, if you have pdoTools installed.\n- [#3] Ability to set placeholders in form by specifying them into script parameters.\n- [#2] Script will add class \"error\" to elements with \".error_[name_of_field]\" elements in form.\n\n1.0.1-pl\n==============\n- Possibly fix for Error 500 on some hosts.\n\n1.0.0-pl\n==============\n- Call end snippet on page load for preparation of form. Now you can use hook \"math\".\n\n1.0.0-rc\n==============\n- Force attribute \"method=post\" to form.\n- Added support for sending form without javascript.\n\n1.0.0-beta1\n==============\n- Improved adding class \"ajax_form\" to form.\n- Improved snippet parameters.\n\n1.0.0-beta0\n==============\n- Initial release.\n\";s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:636:\"--------------------\nAjaxForm\n--------------------\nAuthor: Vasiliy Naumkin <bezumkin@yandex.ru>\n--------------------\n\nSimple component for MODX Revolution, that allows you to send any form through ajax.\n\n\nQuick start\n1. Create new chunk with name \"myForm\".\n2. Add form into that chunk.\n3. Call AjaxForm at any page [[!AjaxForm?form=`myForm`&snippet=`FormIt`]]\n\nYou can specify any parameters for end snippet:\n[[!AjaxForm?\n	&form=`myForm`\n	&snippet=`FormIt`\n	&hooks=`email`\n	&emailto=`info@mysite.com`\n	&etc=`...`\n]]\n\n--------------------\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttp://github.com/bezumkin/AjaxForm/issues\";s:9:\"signature\";s:17:\"ajaxform-1.1.9-pl\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:45:\"/workspace/package/install/ajaxform-1.1.9-pl/\";s:14:\"package_action\";i:0;}', 'AjaxForm', 'a:38:{s:2:\"id\";s:24:\"592fb406bc8dd30f308b4567\";s:7:\"package\";s:24:\"5279c6d462cf24078e000edb\";s:12:\"display_name\";s:17:\"ajaxform-1.1.9-pl\";s:4:\"name\";s:8:\"AjaxForm\";s:7:\"version\";s:5:\"1.1.9\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"1\";s:13:\"version_patch\";s:1:\"9\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:1:\"0\";s:6:\"author\";s:9:\"bezumkin2\";s:11:\"description\";s:188:\"<p>1.1.9-pl</p><p>==============</p><p>- &#91;#40&#93; Improved javascript initialization of a form.</p><p></p><p>1.1.8-pl</p><p>==============</p><p>- Updated jGrowl to version 1.4.5.</p>\";s:12:\"instructions\";s:427:\"<p>1. Create new chunk with name \"myForm\".</p><p>2. Add form into that chunk.</p><p>3. Call AjaxForm at any page &#91;&#91;!AjaxForm?form=`myForm`&amp;snippet=`FormIt`&#93;&#93;</p><p></p><p>You can specify any parameters for end snippet:</p><p>&#91;&#91;!AjaxForm?</p><p>	&amp;form=`myForm`</p><p>	&amp;snippet=`FormIt`</p><p>	&amp;hooks=`email`</p><p>	&amp;emailto=`info@mysite.com`</p><p>	&amp;etc=`...`</p><p>&#93;&#93;</p>\";s:9:\"changelog\";s:200:\"<p><a href=\"https://github.com/bezumkin/AjaxForm/blob/master/core/components/ajaxform/docs/changelog.txt\" title=\"\" target=\"_blank\">Changelog on GitHub</a></p><p></p><p></p><p></p><p></p><p></p><p></p>\";s:9:\"createdon\";s:24:\"2017-06-01T06:28:22+0000\";s:9:\"createdby\";s:9:\"bezumkin2\";s:8:\"editedon\";s:24:\"2021-10-11T15:20:39+0000\";s:10:\"releasedon\";s:24:\"2017-06-01T06:28:22+0000\";s:9:\"downloads\";s:5:\"78362\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.2\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=592fb406bc8dd30f308b4568\";s:9:\"signature\";s:17:\"ajaxform-1.1.9-pl\";s:11:\"supports_db\";s:12:\"mysql,sqlsrv\";s:16:\"minimum_supports\";s:3:\"2.2\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:97:\"http://modx.s3.amazonaws.com/extras/5279c6d462cf24078e000edb/d63189e2a01262b59fd82452eab9307d.jpg\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"592fb406bc8dd30f308b4568\";s:7:\"version\";s:24:\"592fb406bc8dd30f308b4567\";s:8:\"filename\";s:31:\"ajaxform-1.1.9-pl.transport.zip\";s:9:\"downloads\";s:5:\"49858\";s:6:\"lastip\";s:13:\"5.101.157.238\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=592fb406bc8dd30f308b4568\";}s:17:\"package-signature\";s:17:\"ajaxform-1.1.9-pl\";s:10:\"categories\";s:25:\"commenting-feedback,forms\";s:4:\"tags\";s:0:\"\";}', 1, 1, 9, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('formit-4.2.6-pl', '2021-10-11 18:41:03', '2021-10-11 15:44:07', '2021-10-11 18:44:07', 0, 1, 1, 0, 'formit-4.2.6-pl.transport.zip', NULL, 'a:11:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:201:\"--------------------\nSnippet: FormIt\n--------------------\nAuthor: Sterc <modx@sterc.nl>\n\nA form processing Snippet for MODx Revolution.\n\nOfficial Documentation:\nhttps://docs.modx.com/extras/revo/formit\";s:9:\"changelog\";s:18981:\"Changelog for FormIt.\n\nFormIt 4.2.6\n====================================\n- Add support for UTF-8 when exporting (PR#221)\n- Move limit from foreach to query in migration class (PR#236)\n- Remove unnecessary mail->reset from autoresponder hook (PR#240)\n- Add Ukrainian lexicon + some changes to RU and EN lexicons (PR#242)\n- Update Composer autoloader for newer Composer versions (PR#243)\n\nFormIt 4.2.5\n====================================\n- Added new properties to email hook (#229, thanks to @jako)\n- emailSelectTo, emailSelectToName, emailSelectField\n\nFormIt 4.2.4\n====================================\n- Fix export form select width (#218)\n- Fix limit of form filter (#206)\n- Fix path to clean processor for cronjob (#215, thanks to @bennyb)\n- Fix ability to export all forms (#210, thanks to @JoshuaLuckers)\n- Fix PHP notice \'Only variables should be assigned by reference\' in Hook.php (#212, thanks to @intersel)\n- Updated Russian translation (#208, thanks to @webinmd)\n\nFormIt 4.2.3\n====================================\n- FormIt 4.2.0 release bug - Fix migration of forms with encryption\n\nFormIt 4.2.2\n====================================\n- FormIt 4.2.0 release bug - Altering tables on update (#203)\n\nFormIt 4.2.1\n====================================\n- FormIt 4.2.0 release bug (#202)\n\nFormIt 4.2.0\n====================================\n- Bug on hasHook() fixed (#182, #181, #170, #193)\n- ExtJS refactored for faster and better UI/UX\n- IP number added to the grid (#194)\n- Better form view with textfields and textareas (#136)\n- Remove multiple forms (#143)\n- Search by IP (and context menu option to view all forms from 1 IP)\n- New permissions added\n- formit_encryptions to encrypt/decrypt forms\n- Context awereness, an user can only see the forms with the contexts that the user has access to.\n- Swedish translation updated\n- All other language files checked and filled with English strings\n- Formit deprecation notice in 2.7.0dev bug fixed (#190)\n\nFormIt 4.1.2\n====================================\n- Fix spam hook for better spam prevention thanks to Kristoffer Karlström\n- Fix FormItLoadSavedForm for encrypted forms\n\nFormIt 4.1.1\n====================================\n- Added new hook \"renderHooks\", which triggers just before rendering the form\n\nFormIt 4.1.0\n====================================\n- This release is made possible thanks to Bert Kooij / Census.nl. Thanks!\n- Added new button in Manager page for manually removing forms.\n- Added new system setting for the default amount of days.\n- Added cronjob task for automatically deletion of old forms.\n\nFormIt 4.0.1\n====================================\n- Add option to specify csv delimiter for form export\n- Add GDPR compliant attachment handling (#154) - Thanks to @wax100\n- Allow empty isDate validator (PR#164) - Thanks to JoshuaLuckers\n- Fix bug with multiple forms on one page (#160)\n- Fix modx->log calls in various classes (#161)\n- Fix setting redirectParams variable (#165)\n\nFormIt 4.0.0\n====================================\n- Move formit base classes to /src/ folder and add namespace\n- Update existing classes to extend new classes\n- Update all snippets to use modx getService\n- Move FormItAutoResponder and FormItSaveForm logic to classes\n- Add helper functions for all FormIt properties\n- Set defaultEngine to InnoDB in mysql schema\n- Fix PHP7 error in default email output (PR#156)\n- Updated German lexicons (PR#150)\n- Add \'Form\' column to form export (PR#149)\n\nFormIt 3.0.4\n====================================\n- Fix checkbox values not showing in email\n\nFormIt 3.0.3\n====================================\n- Fix FormItSaveForm to allow multiple fields with same fieldName\n- Add \'saveTmpFiles\' FormIt snippet property to enable/disable saving files to tmp directory\n- Remove list() function from formitsaveform snippet for better PHP version compatibility (#98)\n- Fix PHP7 by-reference errors (#98)\n- Replace ereg() functions with preg_match() for PHP compatibility (#98)\n- Increase precision for FormItForm \'ip\' field to allow for IPV6 addresses (#135)\n- Fix issue where in some cases fields are not correctly saved in FormItForm (#92)\n- Optimize FormItForm export class for better performance (#120)\n- Add \'attachFilesToEmail\' property to control if files are added as attachment to email (#122)\n\nFormIt 3.0.2\n====================================\n- Fix encryption in formitsaveform snippet to save correct encryption_type\n- Fix bug in forms grid when decrypting encrypted forms fail\n- Fix migration to check if decrypted data is correct\n\nFormIt 3.0.1\n====================================\n- Store file uploads in tmp folder to prevent file uploads getting lost in multistep forms\n- Add checks for OpenSSL in classes and encryption CMP tab\n- Add method_exists check to plugin to prevent errors when method not exists\n- Update context-menu in forms-encryption grid to show only encrypt or decrypt\n- Set placeholders for file upload $_FILES array\n- Add option to FormItCountryOptions snippet to limit country list to selected countries only (PR#123) - thanks to gadgetto\n\nFormIt 3.0.0\n====================================\n- PLEASE NOTE: THIS UPDATE CONTAINS A MIGRATION SCRIPT FOR ENCRYPTED FORMS - Read more about it at https://github.com/Sterc/FormIt\n- Mcrypt encryption/decryption methods replaced with openssl due to mcrypt being deprecated in PHP 7.1\n- Add default file-based chunks as objects\n- Add support for pdoTools getChunk method, thanks to soulcreate and bezumkin (PR#89)\n- Add French countries for FormItCountryOptions, thanks to beau-gosse (PR#109)\n- Add Dutch countries for FormItCountryOptions, thanks to visvoer (PR#110)\n- Add extjs stateful parameters to CMP tabs\n\nFormIt 2.2.11\n====================================\n- Added storeLocation property to FormIt and FormItRetriever. (issue #95, PR #105#106#107)\n- Changed default behaviour of emailReplyTo parameter to fallback to email field in form (issue #101)\n- Changed math hook to store values in session, preventing easy bypass of math hook (issue #64)\n- Add GPM config\n- Fix bug with multiple file upload (PR #104)\n- Add \'hash\' field to FormItSaveForm to allow updating of previously saved forms (PR #94)\n- Add FormItLoadSavedForm snippet to retrieve saved forms (PR #94)\n- Fix for export with datefilter (issue #96, PR #97)\n- Add fiarRequired property (PR#83)\n- Update resolver to check for current version to prevent errors on upgrade\n- Add system setting for form_encryptkey, to not rely on site_id (issue #68)\n- Fix saved forms export when using encrypted forms (issue #48)\n\nFormIt 2.2.10\n====================================\n- Merged PR#58: Added BOM for Excel to understand UTF-8 non-latin symbols properly. (thanks to govza)\n- Merged PR#73: JSON output options for errors and hooks\n- Merged PR#79: Create German lexicon for FormIt-CMP (thanks to sebastian-marinescu)\n\nFormIt 2.2.9\n====================================\n- Merging PR#74 from Jako which solves multiple issues.\n- Fix XSS vulnerabilities\n- Javascript code cleanup\n- Fix empty math operator after form submission #d782c29\n\nFormIt 2.2.8\n====================================\n- Fixed export limit and added form dropdown paging #60\n- Fixed typo property lexicons #57\n- Added templates path to config #63\n- Added loading lexicons in ficountryoptions class #21\n- Added ability to dynamically set formName by setting placeholder inside formName equal to an existing form field key #45\n\nFormIt 2.2.7\n====================================\n- Optimised export\n\nFormIt 2.2.6\n====================================\n- Fixed empty placeholder for file field in autoresponder\n\nFormIt 2.2.5\n====================================\n- Fixed creating table on update\n- Added new tab inside CMP for managing encryption\n- Added missing br on auto emailTpl\n\nFormIt 2.2.4\n====================================\n- Fixed bug inside FormItSaveForm and PR #43\n\nFormIt 2.2.3\n====================================\n- Added encryption to saved forms\n- Added formname to grid\n- Saved form is now returned from the hook\n- Export unlimited items\n- Add RU translation\n\nFormIt 2.2.2\n====================================\n- Added CMP for the saved forms\n- Fixed whitespace PR on required checkboxes\n\nFormIt 2.2.1\n====================================\n- Updated numbers generation for math captcha #5\n- German translation #10\n- Added missing formit.not_regexp lexicon #15\n- Specify explicitely return-path fixes #19 #20\n- fix addAttachment() typo #23\n- Fixed typo in adding of the attachments #24\n- Add the possibility of redirectTo=`formfield` #26\n- Added attachments for auto-reply and Added ability to use @CODE as tpl #29\n- Update snippet.formitisselected.php #12\n- Canadian options for FormitStateOptions\n\nFormIt 2.2.0\n====================================\n- [#8382] Prevent issue with checkboxes/radios causing text-parsing problems with required validator\n- Fixed issue with custom error message for vTextPasswordConfirm not respected\n- [#9457] Fixed issue with commas in values causing errors with FormItIsChecked & FormItIsSelected\n- [#9576] Add ability to translate country options\n- Add check for preHook errors before processing postHooks\n- Add option, defaulting true, to trim spaces from sides of values before validation\n- [#8785] Fix E_STRICT error in fiDictionary\n\nFormIt 2.1.2\n====================================\n- Various language updates\n- [#7250] Fix issue with 0 not passing :required filter\n\nFormIt 2.1.1\n====================================\n- [#8204] Fix issue with FormItAutoResponder and processing of MODX tags\n\nFormIt 2.1.0\n====================================\n- [#7620] Allow for MODX tags in email templates, as well as pass-through of snippet properties to tpl\n- [#7502] Add ability to find type of hook by using $hook->type\n- [#8151] More sanity checking for FormItAutoResponder and replyTo addresses\n- Fix useIsoCode issue in FormItCountryOptions\n- Update German translation\n- Enhance validation templating for validationErrorBulkTpl\n- Add &country option to FormItStateOptions to allow loading of non-US states (currently us/de)\n\nFormIt 2.0.3\n====================================\n- Update Czech translation\n- Fix issue with French accents in translation\n- [#6021] Refactor Russian reCaptcha translations\n- [#6618] Standardize XHTML in reCaptcha usage\n\nFormIt 2.0.2\n====================================\n- [#4864] Fix issue with isNumber not allowing blank fields\n- [#5404] Fix issues with checkboxes and array fields in FormItAutoResponder\n- [#5269] Fix issues with checkboxes in various forms in emails\n- [#5792] Update reCaptcha URLs\n\nFormIt 2.0.1\n====================================\n- [#5525] Add &allowFiles property, that when set to 0, prevents file submissions on form\n- [#5484] Fix issue with double validation error spans\n- Fix issue where config was not passed to hooks\n- Update German translation\n\nFormIt 2.0.0\n====================================\n- [#3514] Add ability to customize validator error messages per FormIt form and per field\n- [#4705] Add regexp validator\n- [#5454] Fix issue with customValidators property in 2.0.0-rc2\n- Major reworking of main FormIt script to be OOP\n- Add over 150 unit tests to prevent regression\n- [#5388], [#5240] Fix issue with FormItCountryOptions and &useIsoCode\n- Fix issue with FormItStateOptions and &useAbbr\n- [#5267] Fix issue with FormItRetriever and array fields\n\nFormIt 1.7.0\n====================================\n- Add ability to have \"Frequent Visitors\" optgroup in FormItCountryOptions, moving specified countries to the top of the list in an optgroup\n- Add missing property translations for FormItStateOptions snippet\n- Fix small issue with stored values after validation of fields\n- Add FormItStateOptions snippet for easy U.S. state dropdowns\n- Add FormItCountryOptions snippet for easy country dropdowns\n- [#5101] Fix issue with emailMultiSeparator and emailMultiWrapper default values\n- Fix issue with bracketed field names being added as extra fields post-validation with . prefix\n\nFormIt 1.6.0\n====================================\n- [#4708] Add support for bracketed fields, such as contact[name]\n- [#5038] Fix uninitialized variable warnings in reCaptcha service\n- [#4993] Add Italian translation and fix recaptcha links\n- Fix issue where fields could be removed via DOM from form and be bypassed\n- Add &emailMultiSeparator and &emailMultiWrapper for handling display of checkboxes/multi-selects in email hook\n\nFormIt 1.5.6\n====================================\n- [#4564] Fix redirectTo with non-web contexts\n\nFormIt 1.5.5\n====================================\n- [#4168] Add emailConvertNewlines property for handling newlines in HTML emails\n- [#4057] Prevent math hook from generating similar numbers\n- [#4302] Cleanups to FormItAutoResponder snippet\n- [#3991] Fix issue with checkbox values in emails\n\nFormIt 1.5.4\n====================================\n- Fix issue with math hook where error placeholders were incorrect\n- Fix issue where emailHtml property was not respected in email hook\n- Fix issue where hooks were not passed customProperties array\n- [#51] Allow blank fields to be passed with :email validator\n- [#55] Allow all fields to be accessed in custom validators\n\nFormIt 1.5.3\n====================================\n- [#40] Add ability to display all error messages in bulk at top, added validationErrorBulkTpl for templating each one\n- [#52] Add a general validation error message property, validationErrorMessage, that shows when validation fails\n- [#53] Fix bug that prevented recaptcha options from working\n- Add a generic validation error placeholder in FormIt to allow for general messages\n- [#50] Trim each hook specification in hooks calls\n- [#49] Ensure reCaptcha service instance is unique for each FormIt instance\n- [#47] Ensure email validator checks for empty string\n- [#42] Can now include field names in error strings via `field` placeholder\n- [#39] Fix issue with FormItIsChecked/Selected to prevent output from occurring if not checked\n- [#37] Fix allowTags validator to work, and work with parameters encapsulated by ^\n\nFormIt 1.5.2\n====================================\n- Fixed security vulnerability\n- Added math hook, allowing anti-spam math field measure\n- Added more debugging info to email hook\n\nFormIt 1.5.1\n====================================\n- Fixed issue where &store was not respecting values set in post-hooks\n- Redirect hook now redirects *after* all other hooks execute\n\nFormIt 1.5.0\n====================================\n- Fixed bug with redirectParams not parsing placeholders in the params\n- Added redirectParams property, which allows a JSON object of params to be passed when using redirect hook\n- Added spamCheckIp property, defaults to false, to check IP as well in spam hook\n- Fixed incorrect default param for fiarSender\n- Fixed error reporting for FormItAutoResponder\n- Added sanity checks to form attachments when dealing with missing names\n- Fixed invalid offset error in checkbox validation\n- Added recaptchaJS to allow for custom JS overriding of reCaptcha options var\n\nFormIt 1.4.1\n====================================\n- Added sanity check for emailHtml property on email hook\n- Added sanity check for replyto/cc/bcc emails on email hook\n- Added ability to change language via &language parameter\n\nFormIt 1.4.0\n====================================\n- Fixed bug with recaptcha and other hooks error display messages\n- Introduced &validate parameter for more secure validation parameters to prevent POST injection\n- Added FormItIsChecked and FormItIsSelected custom output filters for easier checkbox/radio/select handling of selected values\n- Added &placeholderPrefix for FormIt snippet, defaults to `fi.`\n\nFormIt 1.3.0\n====================================\n- Fixed issue with isNumber validator\n- Added FormItRetriever snippet to get data from a FormIt submission for thank you pages\n- Added extra API methods for custom hooks for easier data grabbing\n- Added FormItAutoResponder snippet to use as a custom hook for auto-responses\n- Added &successMessage and &successMessagePlaceholder properties for easier success message handling\n- Fixed ordering for &emailFrom property\n- Added width/height for reCaptcha, however, reCaptcha APIs prevent resizing via calls\n\nFormIt 1.2.1\n====================================\n- Added recaptchaTheme property, which allows theming of reCaptcha hook\n\nFormIt 1.2.0\n====================================\n- Added preHooks property to allow for custom snippets to pre-fill fields\n- Added clearFieldsOnSuccess property to clear fields after a successful form submission without a redirect\n- Allow placeholders of fields in all email properties\n- Added customValidators property to FormIt snippet to restrict custom validators to only specified validators to prevent brute force snippet loading\n- Added fiValidator::addError for easier error loading for custom validators\n- Added German translation\n\nFormIt 1.1.7\n====================================\n- Added bcc and cc properties for email hook\n\nFormIt 1.1.6\n====================================\n- i18n of Snippet properties\n- Added emailReplyToName and emailReplyTo properties for email hook\n- Removed SMTP settings as those are now in Revo\n- Fixed bug in html emails where linebreaks were being ignored\n- Added islowercase and isuppercase validators\n- Added multibyte support to validators\n\nFormIt 1.1.5\n====================================\n- Added Russian translation\n- Updated copyright information\n\nFormIt 1.1.4\n====================================\n- Fixed bug with isDate check\n- Migrated FormIt to Git\n- Fixed bug that caused validators to not fire\n- Fixed bug where custom validators were wonky, added \'errors\' references to custom hooks/validators\n- [#ADDON-147] Added support for validation and emailing of file fields\n- Added stripTags to all fields by default (unless \'allowTags\' hook is passed\') to prevent XSS\n- Added in missing settings\n- Added reCaptcha support via the recaptcha hook\n- Adjusted copyright information to reflect current year\n\nFormIt 1.0\n====================================\n- Fixed bug with emailFrom property getting overwritten\n- [#ADDON-122] Fixed incorrect message in spam lexicon item\n- Added \'spam\' hook that utilizes StopForumSpam spam filter. Will filter the fields in the property &spamEmailFields\n- Ensure hooks errors are set as placeholders\n- Aded fi.success placeholder to be set on a successful form submission if no redirect hook is specified\n- Added default to emailTpl property so that it is now no longer required. Will send out email with just field names and values.\n- Added Dutch translation\n- Added missing formit.contains lexicon entry\n- Fixed possible loophole with $this->fields and referencing in multiple hooks\n- Fixed bug on hooks due to !== and != difference\n- Added SMTP support to FormIt email hook\n- Fixed bug with emailFrom in email hook\n- Added emailUseFieldForSubject property to FormIt snippet\n- Fixed bug on email hook where if subject was passed through form, it wouldn\'t set it as email subject\n- Added changelog\n\";s:13:\"setup-options\";s:33:\"formit-4.2.6-pl/setup-options.php\";s:9:\"signature\";s:15:\"formit-4.2.6-pl\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:43:\"/workspace/package/install/formit-4.2.6-pl/\";s:9:\"user_name\";s:9:\"TarakaN27\";s:10:\"user_email\";s:26:\"Elya.Gorbachev27@yandex.by\";s:14:\"package_action\";i:0;}', 'FormIt', 'a:38:{s:2:\"id\";s:24:\"600bd80aabf21672e2388812\";s:7:\"package\";s:24:\"4d556c62b2b083396d000b9c\";s:12:\"display_name\";s:15:\"formit-4.2.6-pl\";s:4:\"name\";s:6:\"FormIt\";s:7:\"version\";s:5:\"4.2.6\";s:13:\"version_major\";s:1:\"4\";s:13:\"version_minor\";s:1:\"2\";s:13:\"version_patch\";s:1:\"6\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:1:\"0\";s:6:\"author\";s:5:\"sterc\";s:11:\"description\";s:1367:\"<p>FormIt is a dynamic form processing Snippet for MODX Revolution. It handles form creation, submission, performing validation and followup actions like sending an email and auto replies. Key features:</p><p></p><ul><li>Automatic validation and custom validator options</li><li>Auto reply to visitor + email to owner(s)</li><li>Multiple attachments</li><li>Submitted forms can be automatically saved and encrypted in the Formit component</li><li>Submitted forms can be exported to CSV, based on filters</li><li>Redirect to thank-you pages for optimal tracking in your analytics software (e.g. Google Analytics funnels)</li><li>Add your own hooks as Snippets to handle forms dynamically</li><li>Spam protection</li><li>Dynamic country/state dropdown lists</li><li>GDPR compliant</li></ul><p></p>\n<p>Official documentation here: <a href=\"http://rtfm.modx.com/display/ADDON/FormIt\" style=\"line-height: 1.5;\">http://rtfm.modx.com/display/ADDON/FormIt</a></p>\n\n**Free Extra**  \nThis is a free extra and the code is publicly available for you to change. The extra is being actively maintained and you\'re free to put in pull requests which match our roadmap. Please create an issue if the pull request differs from the roadmap so we can make sure we\'re on the same page.\n\nNeed help? <a href=\"mailto:service@sterc.com\">Approach our support desk for paid premium support.</a>\";s:12:\"instructions\";s:508:\"<p>Install via Package Management.</p><p><b>Updating to 3.0?</b></p><p>We\'ve released FormIt 3.0 in order to avoid issues with Mcrypt in the near future, since it will be deprecated in PHP 7.2. Mcrypt has therefore been replaced by OpenSSL encryption.</p><p>After updating to 3.0.0, you should refresh the page and notice a red bar on the top of your manager. From there, you can initiate the migration process, which will decrypt your saved forms using Mcrypt and immediately encrypt them using OpenSSL.</p>\";s:9:\"changelog\";s:15508:\"<p><b>FormIt 4.2.6</b></b></p>\n<ul><li>Add support for UTF-8 when exporting (PR#221)</li>\n<li>Move limit from foreach to query in migration class (PR#236)</li>\n<li>Remove unnecessary mail->reset from autoresponder hook (PR#240)</li>\n<li>Add Ukrainian lexicon + some changes to RU and EN lexicons (PR#242)</li>\n<li>Update Composer autoloader for newer Composer versions (PR#243)</li>\n</ul>\n<p><b>FormIt 4.2.5</b></b></p>\n<ul><li>Added new properties to email hook (#229, thanks to @jako)\nemailSelectTo, emailSelectToName, emailSelectField</li>\n</ul>\n<p><b>FormIt 4.2.4</b></b></p>\n<ul><li>Fix export form select width (#218)</li>\n<li>Fix limit of form filter (#206)</li>\n<li>Fix path to clean processor for cronjob (#215, thanks to @bennyb)</li>\n<li>Fix ability to export all forms (#210, thanks to @JoshuaLuckers)</li>\n<li>Fix PHP notice \'Only variables should be assigned by reference\' in Hook.php (#212, thanks to @intersel)</li>\n<li>Updated Russian translation (#208, thanks to @webinmd)</li>\n</ul>\n<p><b>FormIt 4.2.3</b></p><ul><li>FormIt 4.2.0 release bug form encryption migration</li></ul><p>\n<p><b>FormIt 4.2.2</b></p><ul><li>FormIt 4.2.0 release bug (missing update resolver)(#207)</li></ul><p><p><b><b>FormIt 4.2.1</b></b></p><ul><li>FormIt 4.2.0 release bug (#202)</li></ul><p><b>FormIt 4.2.0</b></p><ul><li>Bug on hasHook() fixed (#182, #181, #170, #193)</li><li>ExtJS refactored for faster and better UI/UX</li><li>IP number added to the grid (#194)</li><li>Better form view with textfields and textareas (#136)</li><li>Remove multiple forms (#143)</li><li>Search by IP (and context menu option to view all forms from 1 IP)</li><li>New permissions added: formit_encryptions to encrypt/decrypt forms</li><li>Context awereness, an user can only see the forms with the contexts that the user has access to. </li><li>Swedish translation updated</li><li>All other language files checked and filled with English strings</li><li>Formit deprecation notice in 2.7.0dev bug fixed (#190)</li></ul><p><b>FormIt 4.1.1</b></p><p></p><p></p><ul><li>Added new hook \"renderHooks\", which triggers just before rendering the form</li></ul><p></p><p><b>FormIt 4.1.0</b></p><ul><li>This release is made possible thanks to Bert Kooij / Census.nl. Thanks!</li><li>Added new button in Manager page for manually removing forms.</li><li>Added new system setting for the default amount of days.</li><li>Added cronjob task for automatically deletion of old forms.</li></ul><p><b>Formit 4.0.1</b></p><ul><li>Add option to specify csv delimiter for form export</li><li>Add GDPR compliant attachment handling (#154) - Thanks to @wax100</li><li>Allow empty isDate validator (PR#164) - Thanks to JoshuaLuckers</li><li>Fix bug with multiple forms on one page (#160)</li><li>Fix modx->log calls in various classes (#161)</li><li>Fix setting redirectParams variable (#165)</li></ul><p><b>Formit 4.0.0</b></p><ul><li>Move formit base classes to /src/ folder and add namespace</li><li>Update existing classes to extend new classes</li><li>Update all snippets to use modx getService</li><li>Move FormItAutoResponder and FormItSaveForm logic to classes</li><li>Add helper functions for all FormIt properties</li><li>Set defaultEngine to InnoDB in mysql schema</li><li>Fix PHP7 error in default email output (PR#156)</li><li>Updated German lexicons (PR#150)</li><li>Add \'Form\' column to form export (PR#149)</li></ul><p><b>Formit 3.0.4</b></p><ul><li>Fix checkbox values not showing in mail</li></ul><p><b>Formit 3.0.3</b></p><ul><li>Fix FormItSaveForm to allow multiple fields with same fieldName</li><li>Add \'saveTmpFiles\' FormIt snippet property to enable/disable saving files to tmp directory</li><li>Remove list() function from formitsaveform snippet for better PHP version compatibility (#98)</li><li>Fix PHP7 by-reference errors (#98)</li><li>Replace ereg() functions with preg_match() for PHP compatibility (#98)</li><li>Increase precision for FormItForm \'ip\' field to allow for IPV6 addresses (#135)</li><li>Fix issue where in some cases fields are not correctly saved in FormItForm (#92)</li><li>Optimize FormItForm export class for better performance (#120)</li><li>Add \'attachFilesToEmail\' property to control if files are added as attachment to email (#122)</li></ul><p><b>Formit 3.0.2</b></p><ul><li>Fix encryption in formitsaveform snippet to save correct encryption_type</li><li>Fix bug in forms grid when decrypting encrypted forms fail</li><li>Fix migration to check if decrypted data is correct</li></ul><p><b>FormIt 3.0.1</b></p><p></p><ul><li>Store file uploads in tmp folder to prevent file uploads getting lost in multistep forms</li><li>Add checks for OpenSSL in classes and encryption CMP tab</li><li>Add method_exists check to plugin to prevent errors when method not exists</li><li>Update context-menu in forms-encryption grid to show only encrypt or decrypt</li><li>Set placeholders for file upload $_FILES array</li><li>Add option to FormItCountryOptions snippet to limit country list to selected countries only (PR#123) - thanks to gadgetto</li></ul><p></p><p><b>New in 3.0.0</b></p><p></p><ul><li>Mcrypt encryption/decryption has been replaced with openSSL due to mcrypt being deprecated in PHP 7.2</li><li>Added default file-based chunks as objects</li><li>Added support for pdoTools getChunk method</li><li>Added French countries for FormItCountryOptions</li><li>Added Dutch countries for FormItCountryOptions</li><li>Added ExtJs stateful parameters to CMP tabs</li></ul><p></p><p><b>New in 2.2.11</b></p><ul><li>Added storeLocation property to FormIt and FormItRetriever. (issue #95, PR #105#106#107)</li><li></li><li>Changed default behaviour of emailReplyTo parameter to fallback to email field in form (issue #101)</li><li>Changed math hook to store values in session, preventing easy bypass of math hook (issue #64)</li><li>Add GPM config</li><li>Fix bug with multiple file upload (PR #104)</li><li>Add \'hash\' field to FormItSaveForm to allow updating of previously saved forms (PR #94)</li><li>Add FormItLoadSavedForm snippet to retrieve saved forms (PR #94)</li><li>Fix for export with datefilter (issue #96, PR #97)</li><li>Add fiarRequired property (PR#83)</li><li>Update resolver to check for current version to prevent errors on upgrade</li><li>Add system setting for form_encryptkey, to not rely on site_id (issue #68)</li><li>Fix saved forms export when using encrypted forms (issue #48)</li></ul><p><b>New in 2.2.10</b><b></b></p><li>Merged PR#58: Added BOM for Excel to understand UTF-8 non-latin symbols properly. (thanks to govza)</li><li>Merged PR#73: JSON output options for errors and hooks (thans to sepiariver)</li><li>Merged PR#79: Create German lexicon for FormIt-CMP (thanks to sebastian-marinescu)</li><p><b>New in 2.2.9</b></p><li>Merging PR#74 from Jako which solves multiple issues.</li><li>Fix XSS vulnerabilities</li><li>Javascript code cleanup</li><li>Fix empty math operator after form submission #d782c29</li><p><b>New in 2.2.8</b></p><p></p><ul><li>Fixed export limit and added form dropdown paging #60</li><li>Fixed typo property lexicons #57</li><li>Added templates path to config #63</li><li>Added loading lexicons in ficountryoptions class #21</li><li>Added ability to dynamically set formName by setting placeholder inside formName equal to an existing form field key #45</li></ul><p></p><p style=\"line-height: 17.7272720336914px;\"><b>New in 2.2.7</b></p><p style=\"line-height: 17.7272720336914px;\"></p><ul style=\"line-height: 17.7272720336914px;\"></ul><p style=\"line-height: 17.7272720336914px;\"></p><ul style=\"line-height: 17.7272720336914px;\"><li style=\"line-height: 17.7272720336914px;\">Optimised export</li></ul><p style=\"line-height: 17.7272720336914px;\"><b>New in 2.2.6</b></p><p style=\"line-height: 17.7272720336914px;\"></p><ul style=\"line-height: 17.7272720336914px;\"></ul><p style=\"line-height: 17.7272720336914px;\"></p><ul style=\"line-height: 17.7272720336914px;\"><li style=\"line-height: 17.7272720336914px;\">Fixed empty placeholder for file field in autoresponder</li></ul><p style=\"line-height: 17.7272720336914px;\"><b>New in 2.2.5</b></p><p style=\"line-height: 17.7272720336914px;\"></p><ul style=\"line-height: 17.7272720336914px;\"></ul><p style=\"line-height: 17.7272720336914px;\"></p><ul><li style=\"line-height: 17.7272720336914px;\">Fixed creating table on update</li><li>Added new tab inside CMP for managing encryption</li><li>Added missing br on auto emailTpl</li></ul><p style=\"line-height: 17.7272720336914px;\"><b>New in 2.2.4</b></p><p style=\"line-height: 17.7272720336914px;\"></p><ul style=\"line-height: 17.7272720336914px;\"></ul><p style=\"line-height: 17.7272720336914px;\"></p><ul><li>Fixed bug inside FormItSaveForm and PR #43</li></ul><p style=\"line-height: 17.7272720336914px;\"><b>New in 2.2.3</b></p><ul><li>Added encryption to saved forms</li><li>Added formname to grid</li><li>Saved form is now returned from the hook</li><li>Export unlimited items</li><li>Add RU translation</li><li>Fixed some bugs</li></ul><p><b>New in 2.2.2</b></p><p></p><ul></ul><p></p><ul><li>Added CMP for the saved forms</li><li>Fixed whitespace PR on required checkboxes</li></ul><p><b>New in 2.2.1</b></p><p></p><ul></ul><p></p><ul><li>Updated numbers generation for math captcha #5</li><li>German translation #10</li><li>Added missing formit.not_regexp lexicon #15</li><li>Specify explicitely return-path fixes #19 #20</li><li>fix addAttachment() typo #23</li><li>Fixed typo in adding of the attachments #24</li><li>Add the possibility of redirectTo=`formfield` #26</li><li>Added attachments for auto-reply and Added ability to use @CODE as tpl #29</li><li>Update snippet.formitisselected.php #12</li><li>Canadian options for FormitStateOptions</li></ul><p></p><p><b style=\"line-height: 1.5;\">New in 2.2.0</b></p><p></p><ul><li>[#8382] Prevent issue with checkboxes/radios causing text-parsing problems with required validator</li><li>Fixed issue with custom error message for vTextPasswordConfirm not respected</li><li>[#9457] Fixed issue with commas in values causing errors with FormItIsChecked & FormItIsSelected</li><li>[#9576] Add ability to translate country options</li><li>Add check for preHook errors before processing postHooks</li><li>Add option, defaulting true, to trim spaces from sides of values before validation</li><li>[#8785] Fix E_STRICT error in fiDictionary</li></ul><p></p><p><b>New in 2.1.2</b></p><p></p><ul><li>Various language updates</li><li>[#7250] Fix issue with 0 not passing :required filter</li></ul><p></p><p><b>New in 2.1.1</b></p><p></p><ul><li>[#8204] Fix issue with FormItAutoResponder and processing of MODX tags</li></ul><p></p><p><b>New in 2.1.0</b></p><p></p><ul><li>[#7620] Allow for MODX tags in email templates, as well as pass-through of snippet properties to tpl</li><li>[#7502] Add ability to find type of hook by using $hook->type</li><li>[#8151] More sanity checking for FormItAutoResponder and replyTo addresses</li><li>Fix useIsoCode issue in FormItCountryOptions</li><li>Update German translation</li><li>Enhance validation templating for validationErrorBulkTpl</li><li>Add &country option to FormItStateOptions to allow loading of non-US states (currently us/de)</li></ul><p></p><p><b>New in 2.0.3</b></p><p></p><ul><li>Update Czech translation</li><li>Fix issue with French accents in translation</li><li>[#6021] Refactor Russian reCaptcha translations</li><li>[#6618] Standardize XHTML in reCaptcha usage</li></ul><p></p><p><b>New in 2.0.2</b></p><p></p><ul><li>[#4864] Fix issue with isNumber not allowing blank fields</li><li>[#5404] Fix issues with checkboxes and array fields in FormItAutoResponder</li><li>[#5269] Fix issues with checkboxes in various forms in emails</li><li>[#5792] Update reCaptcha URLs</li></ul><p></p><p><b>New in 2.0.1</b></p><ul><li>[#5525] Add &allowFiles property, that when set to 0, prevents file submissions on form</li><li>[#5484] Fix issue with double validation error spans</li><li>Fix issue where config was not passed to hooks</li><li>Update German translation</li></ul><p></p><p><b>New in 2.0.0</b></p><p></p><ul><li>[#3514] Add ability to customize validator error messages per FormIt form and per field</li><li>[#4705] Add regexp validator</li><li>[#5454] Fix issue with customValidators property in 2.0.0-rc2</li><li>Fix issue with reCaptcha loading in 2.0.0-rc1</li><li>Major reworking of main FormIt script to be OOP</li><li>Add over 150 unit tests to prevent regression</li><li>[#5388], [#5240] Fix issue with FormItCountryOptions and &useIsoCode</li><li>Fix issue with FormItStateOptions and &useAbbr</li><li>[#5267] Fix issue with FormItRetriever and array fields</li></ul><p></p><p><b>New in 1.7.0</b></p><p></p><ul><li>Add ability to have \"Frequent Visitors\" optgroup in FormItCountryOptions, moving specified countries to the top of the list in an optgroup</li><li>Add missing property translations for FormItStateOptions snippet</li><li>Fix small issue with stored values after validation of fields</li><li>Add FormItStateOptions snippet for easy U.S. state dropdowns</li><li>Add FormItCountryOptions snippet for easy country dropdowns</li><li>[#5101] Fix issue with emailMultiSeparator and emailMultiWrapper default values</li><li>Fix issue with bracketed field names being added as extra fields post-validation with . prefix</li></ul><p></p><p><b>New in 1.6.0</b></p><p></p><ul><li>[#4708] Add support for bracketed fields, such as contact[name]</li><li>[#5038] Fix uninitialized variable warnings in reCaptcha service</li><li>[#4993] Add Italian translation and fix recaptcha links</li><li>Fix issue where fields could be removed via DOM from form and be bypassed</li><li>Add &emailMultiSeparator and &emailMultiWrapper properties for handling display of checkboxes/multi-selects in email hook</li></ul><p></p><p><b>New in 1.5.6</b></p><p></p><ul><li>[#4564] Fix redirectTo with non-web contexts</li></ul><p></p><p><b>New in 1.5.5</b></p><ul><li>[#4168] Add emailConvertNewlines property for handling newlines in HTML emails</li><li>[#4057] Prevent math hook from generating similar numbers</li><li>[#4302] Cleanups to FormItAutoResponder snippet</li><li>[#3991] Fix issue with checkbox values in emails</li></ul><p></p><p><b>New in 1.5.4</b></p><p></p>\n<ul>\n<li>Fix issue with math hook where error placeholders were incorrect</li><li>Fix issue where emailHtml property was not respected in email hook</li><li>Fix issue where hooks were not passed customProperties array</li><li>[#51] Allow blank fields to be passed with :email validator</li>\n<li>[#55] Allow all fields to be accessed in custom validators</li>\n</ul>\n<p><b>New in 1.5.3</b></p>\n<ul>\n<li>[#40] Add ability to display all error messages in bulk at top, added validationErrorBulkTpl for templating each one</li>\n<li>[#52] Add a general validation error message property, validationErrorMessage, that shows when validation fails</li>\n<li>[#53] Fix bug that prevented recaptcha options from working</li>\n<li>Add a generic validation error placeholder in FormIt to allow for general messages</li>\n<li>[#50] Trim each hook specification in hooks calls</li>\n<li>[#49] Ensure reCaptcha service instance is unique for each FormIt instance</li>\n<li>[#47] Ensure email validator checks for empty string</li>\n<li>[#42] Can now include field names in error strings via `field` placeholder</li>\n<li>[#39] Fix issue with FormItIsChecked/Selected to prevent output from occurring if not checked</li>\n<li>[#37] Fix allowTags validator to work, and work with parameters encapsulated by ^</li>\n</ul>\";s:9:\"createdon\";s:24:\"2021-01-23T08:02:18+0000\";s:9:\"createdby\";s:5:\"sterc\";s:8:\"editedon\";s:24:\"2021-10-11T15:20:24+0000\";s:10:\"releasedon\";s:24:\"2021-01-23T08:02:18+0000\";s:9:\"downloads\";s:6:\"515561\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:4:\"true\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.2\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=600bd80aabf21672e2388813\";s:9:\"signature\";s:15:\"formit-4.2.6-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.2\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:77:\"http://modx.s3.amazonaws.com/extras/4d556c62b2b083396d000b9c/ss-formit-01.png\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"600bd80aabf21672e2388813\";s:7:\"version\";s:24:\"600bd80aabf21672e2388812\";s:8:\"filename\";s:29:\"formit-4.2.6-pl.transport.zip\";s:9:\"downloads\";s:5:\"20470\";s:6:\"lastip\";s:13:\"5.101.157.238\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=600bd80aabf21672e2388813\";}s:17:\"package-signature\";s:15:\"formit-4.2.6-pl\";s:10:\"categories\";s:5:\"forms\";s:4:\"tags\";s:0:\"\";}', 4, 2, 6, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('migx-2.13.0-pl', '2021-10-12 23:07:57', '2021-10-12 20:08:25', '2021-10-12 23:08:25', 0, 1, 1, 0, 'migx-2.13.0-pl.transport.zip', NULL, 'a:8:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:1392:\"--------------------\nMIGX\n--------------------\nVersion: 2.1.0\nAuthor: Bruno Perner <b.perner@gmx.de>\n--------------------\n\n* MIGX (multiItemsGridTv for modx) is a custom-tv-input-type for adding multiple items into one TV-value and a snippet for listing this items on your frontend.\n* It has a configurable grid and a configurable tabbed editor-window to add and edit items.\n* Each item can have multiple fields. For each field you can use another tv-input-type.\n\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttp://github.com/Bruno17/multiItemsGridTV/issues\n\nInstallation:\n\ninstall by package-management.\nCreate a new menu:\nSystem -> Actions \n\nActions-tree:\nmigx -> right-click -> create Acton here\ncontroller: index\nnamespace: migx\nlanguage-topics: migx:default,file\n\nmenu-tree:\nComponents -> right-click -> place action here\nlexicon-key: migx\naction: migx - index\nparameters: &configs=migxconfigs||packagemanager||setup\n\nclear cache\ngo to components -> migx -> setup-tab -> setup\n\nIf you are upgrading from MIGX - versions before 2.0\ngo to tab upgrade. click upgrade.\nThis will add a new autoincrementing field MIGX_id to all your MIGX-TV-items\nThe getImageList-snippet needs this field to work correctly.\n\n\nAllways after upgrading MIGX of any Version:\ngo to components -> migx -> setup-tab -> setup\n\nthis will upgrade the migx-configs-table and add new fields, if necessary.\n\n\n\";s:9:\"changelog\";s:11763:\"Changelog for MIGX.\n\nMIGX 2.13.0\n==============\nadd snippet migxGetObject and property toPlaceholders\nadd property createChunk to create a chunk with all possible placeholders\nFix imageupload on PHP7 due to stray break statement\nFix for missing custom prefix in some packagemanager tasks\nUpdated image paths to use dynamic assets path\nFix the export if a join setting exist\nFinnish Translation\nadd userid to migxResourceMediapath snippet\nremove duplicate sort scriptProperty in export.php\n[getlist.php] add getcustomconfigs - hook, groupby, selectfields, specialfields\nparse MODX-tags in field-configs\npackagemanager fix new folder permission\nUse a textarea instead of an input in MIGX TV\nReduce indexed varchar fields for utf8mb4 support in mysql\nfix duplicate entries in csv-export\nAdd CSV Import functionality\nImprove CSV Export functionality\nadd toJson property to migxLoopCollection\nFix transparency in .png in renderimage column renderer\nOptimize loadfromxource functionality, especially for MIGX within MIGXdb\ndeep nested saving when nested windows are open and saving without closing the window\nexport/import single MIGX - items\n\nMIGX 2.12.0\n==============\nselect db-fields from defined class and its joins for formtabs and columns\nadd categories and a category-filter to MIGX Configs\nmultiple grouping-levels for &groupingField\nhooksnippet getformnames\nadd snippet migxAutoPublish for publishing by Cronjobs\nadd beforesave - hook to update-processor\nallow string in where-property\nadd a default schema-template, used at create package\nand some bugfixes\n\nMIGX 2.11.0\n==============\ngroupingfield, preparesnippet, _total, _count, improve @CODE\nhooksnippet beforecreateform\n\nMIGX 2.10.0\n==============\nhooksnippet getcustomconfigs for importcsvmigx\nsupport layout-rows/columns in formtabs\ncontextmenu \'flat formtabs\'\nmultiupload to db, resizeOnUpload - plugin\n[packagemanager] Add Extension Package - feature\nrespect joinalias in export.php and handlepositionselector.php\npossible to use TV-value in migxresourcemediapath - snippet\n[getImageList] inherit_children_tvname\nMIGXdb add item before/after\n\nMIGX 2.9.7\n==============\nadd emtpyTpl\nfix some MIGX-grid width - issues\nimport csv to MIGX\n\nMIGX 2.9.6\n==============\nhooksnippet getcustomconfigs for export-processor\nfix missing formtabs after saving\n\nMIGX 2.9.5\n==============\ncolumn-actionbuttons also for MIGX\nexport/import MIGX-items from/into MIGX-TV\nget tinymcewrapper working\nmore config-options for combo-filter\nFix and simplify Redactor implementation to use MODx.loadRTE()\n\nMIGX 2.9.4\n==============\n[migxResourcemediapath] add context_key as path option\nbutton for \'alter fields from schema\'\nfix MIGX-grid width\ncustom grid for MIGX-TV\nrespect context-default-media-source - setting\n\nMIGX 2.9.3\n==============\nbasic support for new TinyMCE RTE\nfix assetsUrl/connectorUrl - settings\nMIGX-TV MODX multifile-uploader/autocreate items  \nMIGX-TV configurable contextmenues\n\nMIGX 2.9.2\n==============\nsome smaller fixes\n\nMIGX 2.9.1\n==============\nadd hook-snippet setting\nsome handleRelated - update - functions\ndestroy updatewindow on close\n\nMIGX 2.9\n==============\n[migxLoopCollection] allow use of foreign database\nSottwell\'s improvements on migxresourcemediapath\nnew snippet: migxGetCollectionTree\naccess to foreign database from default processors\nimprovements on multiple formtabs\nmake inline-editing for MIGX - grid possible\noption to add MIGX-items directly without modal\nlistbox-cell-editor\nmovetotop,movetobottom - buttons for MIGX-grid\ncell-editing for MIgXdb - grids\noption to add MIGXdb-items directly without modal\n[getImageList] &inheritFrom - inherit MIGX-items from parents or other resources\nsome migxredactor - fixes \n\nMIGX 2.8.1\n==============\nlets disable the \'Add Item\' - button\nnew configs gridperpage and sortconfig\nwrapperTpl for getImageList and migxLoopCollection\n\nMIGX 2.8.0\n==============\nresolve tables on install\nrender cross, also when empty string\nreusable activaterelations - processors\n[migxLoopCollection] tpl_nN\n[#154] clean TV-value, if no MIGX-items \nadditional db-storage of formtabs and fields\nget menue working in MODX 2.3\nimprove description_is_code \n\n\nMIGX 2.6.8\n==============\nsome other small fixes\nrestrictive condition by processed MIGX-tags for formfields\nFilter-Button for Reset all filters to default-value\nextend date-filter\nmake cmp main caption translatable \nMigx::prepareJoins - optional rightjoin \n\nMIGX 2.6.7\n==============\nadd date - filter \nadd handlepositionselector - processor \nadd snippet exportmigx2db\n\nMIGX 2.6.6\n==============\nfixes only\n\nMIGX 2.6.5\n==============\nfixes only\n\nMIGX 2.6.4\n==============\n[redactor-field] get and use file-properties from a redactor-inputTV\nadd renderImageFromHtml - renderer\n\nMIGX 2.6.3\n==============\nconfigurable redactor-field with configs-configuration, make redactor work in MIGXdb - CMP\n\nMIGX 2.6.2\n==============\nfix issue with imported configs-field, if not an array \n\nMIGX 2.6.1\n==============\nMake Formfields translatable\n\nMIGX 2.6\n==============\n[getImageList] output inner arrays as json-string\nadded polish translation\n[getImageList] splits, build summaries\n make grid-columns translatable, let user add custom-lexicons from custom php-config-files \n\n\nMIGX 2.5.11\n==============\nadd simple MIGXdb - validation (only required for now)\nsome fixes\n\n\nMIGX 2.5.9\n==============\nlet us create new indexes, with altered field-def from schema \noptimize input-option-values-handling, see:http://forums.modx.com/thread/79757/sortable-editable-list-of-checkboxes?page=4#dis-post-483240\n\n\nMIGX 2.5.8\n\n==============\nAdded \'showScreenshot\' (big image in popup) \nAdded template-field for direct template-input for renderChunk\nAdded position - selector for new MIGX - items\nFix for not removed rte-editors when using formswitcher\nsend current store-params to iframe-window\n\n\nMIGX 2.5.6\n\n==============\n\nAdd support for the modmore.com Redactor editor \nsome work on multiuploader for MIGXdb\nmore eNotice - fixes\n\n\nMIGX 2.5.2\n\n==============\nread input-options into MIGX-TV\nrespect filter in default - export.php\nfix for empty value in TV - configs not loading renderers etc.\nfix changed processaction-param after export2csv \nstopEvent() by onClick - event\n\nMIGX 2.5.1\n\n==============\nfix bug with renderChunk - renderer\n\nMIGX 2.5\n\n==============\nget different rtes working - support for tinymce, ckeditor \nsome settings for MIGXfe\ncs - lexicons, \nsome eNotice - fixes\nfix with to big integers on TV-id (set phptype to string)\nlimit MIGX-record-count\n\n\nMIGX 2.4.2\n\n==============\ncolumnButtons for the migx - grid \nlittle form-layout-mods\nadded the option to have the first formtab outside the other tabs above of them.\n\nadded the option to use the TV-description-field as parsed code-areas in the formtabs, modx-tags are parsed there - \nsnippets, chunks, output-filters can be used there. All fields of the record can be used as placeholders.\n\nmigxupdate for MIGXfe\ndefault-values for MIGXdb-filters\nupdate co_id in iframe-window\nadd a searchbox to MIGX-Configurator\nread configs directly from exported configs-files from custom-packages - directory by using configname:packagename - configs\n\n\nMIGX 2.4.1\n\n==============\nsome new snippets:\ngetDayliMIGXrecord\nmigxgetrelations\n\nadded beta treecombo-filter-option for example to filter resources in MIGXdb by resourcetree\nadd window-title configuration, make window-caption dynamic (its possible to use placeholders now)\nhide tabs in form, when only one tab\nadded selectposition - renderer\n\n\nMIGX 2.4.0\n\n==============\nnew renderer - switchStatusOptions\nnew renderer - renderChunk\ngetImageList - added \'contains\' and \'snippet\' - where-filters\nadd duplicate-contextmenue to MIGXdb \nnew property for getImageList: &reverse\ngive TVs in each CMP-tab a unique id\nrefresh grid after closing iframe-window\nadded tpl_n{n} tplFirst tplLast tpl_n tpl_oneresult properties to getImageList\nexport jsonarray-fields as separate fields in csv-export\nalias, breadcrumb and ultimateparent for migxREsourceMediaPath\nAdded TV - description - field to configuration\n\n\nMIGX 2.3.1\n\n==============\nsome eNotice - error - fixes\nadd type - configuration to gridcolumns, now its possible to sort also numeric on the MIGX - grid: see https://github.com/Bruno17/MIGX/issues/41\n\nMIGX 2.3.0\n\n==============\nadd multifile - uploader, upload to MIGX - mediasource\nadd load from mediasource - button to MIGX\nadd migxResourcePath - snippet\nadd iframe - support - its now possible to create chunks with snippet-calls and show the result in an iframe-window. used by multifile-uploader.\n\n\nMIGX 2.2.3\n\n==============\nconfirmation before overriding schema-files\nsome additions for childresources-management by MIGXdb\nswitch between multiple forms - configurations\nadd renderDate - renderer , thanks to Jako\nadditional send all store-baseParams when opening the form-window. This way we can have different forms depending on filters for example.\nadd parent-property for dynamic filter-comboboxes\nadd getliste-where for default getlist-processor\nexport formtabs as clean json in editraw-mode\n\n\nMIGX 2.2.2\n\n==============\nadd migxLoopCollection-snippet\nmove prepareJoins into a migx-method\nconfirmation before remove db-record, getcombo did not use idfield \nallow empty prefix \nadd possibility to use tables without \'deleted\' - field and default-getlist-processor\nfix Call-time pass-by-reference errors\nget tinyMCE to work on richtext-TV-inputs in MIGXdb - CMPs \nfix prefix not sended to writeSchema\ngrid add cls \'main-wrapper\' to give it a bit padding, thanks to jako\n\n\nMIGX 2.2.0\n\n==============\n\nexport/import configuration-objects as json to/from files in custom-package-directories \nnew configs: getlist - defaultsort, joins, gridload_mode (by button, auto) \ngrid-smarty-template now can be also in custom-package-directories\nreworked handling of joined objects in default update-php \nadd connected_object_id baseparam to migx-grid\nadded snippet migxLoopCollection\n\n\nMIGX 2.1.1\n\n==============\n\n  fix for migx-snippet not working with multiple calls on one page\n  resource_id as script-property for getlist-processor when used with migx-snippet\n\nMIGX 2.1.0\n\n==============\n\n  add &sort to the getImageList - snippet\n  add new snippet \'migx\' to get items from db-tables, can use the same configurations and getList - processors as the MIGXdb - manager\n  make it possible to have config-files for grids and processors in another package-folder for easier packaging together custom - packages\n  more MIGXdb - configurations\n\n\nMIGX 2.0.1\n\n==============\n\n  more E_NOTICE - Error - fixes\n  Fix Missing Add - Item - Replacement - String \n\nMIGX 2.0.0\n\n==============\n\n- pl\n\n  fix for Revo 2.2.2\n  fix some E_NOTICE - errors\n\n- new in beta5\n\n  Configure multiple CMP - tabs\n  packagemanager ported to extjs - tab\n  added MIGX-setup/upgrade - tab\n  added configurable text and combo - filterboxes\n\n- new in beta3\n\n  This is a preview-version of MIGXdb\n  MIGXdb can now also be used as configurable CMP\n  MIGX - configurator for tabs, columns, MIGXdb-TV and MIGXdb-CMP\n  Package-manager, create and edit schemas and package-tables\n\n- new:\n  better compatibility with revo 2.2\n  working with mediasources\n  introduced MIGXdb\n\n\nMIGX 1.2.0\n==============\n- new:\n  merge scriptProperties to Placeholders \n  basic compatibility for modx 2.2 \n  autoinc-field: MIGX_id\n  autoResourceFolders - functionality, autoCreate directory for each resource\n  \n  \n- fixed:\n  url-TV support\n  context-based base_path issues\n  remove remaining []\n  remove Tiny-instances when switching form\n  enter on textarea closes window\n  fireResourceFormChange for drag,remove,duplicate \n\nMIGX 1.1.0\n==============\n- new:\n  &docidVarKey\n  &processTVs\n  \n- fixed:\n  context-filepath-issue\n\nMIGX 1.0.0\n==============\n- Initial release.\";s:9:\"signature\";s:14:\"migx-2.13.0-pl\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:42:\"/workspace/package/install/migx-2.13.0-pl/\";s:14:\"package_action\";i:0;}', 'MIGX', 'a:38:{s:2:\"id\";s:24:\"60a1075a1c5f12639c7cfca2\";s:7:\"package\";s:24:\"4db018def24554690c000005\";s:12:\"display_name\";s:14:\"migx-2.13.0-pl\";s:4:\"name\";s:4:\"MIGX\";s:7:\"version\";s:6:\"2.13.0\";s:13:\"version_major\";s:1:\"2\";s:13:\"version_minor\";s:2:\"13\";s:13:\"version_patch\";s:1:\"0\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:7:\"bruno17\";s:11:\"description\";s:672:\"<p>MIGX (multiItemsGridTv for modx) is a custom-tv-input-type for adding multiple items into one TV-value and a snippet for listing this items on your frontend.</p><p>It has a cofigurable grid and a configurable tabbed editor-window to add and edit items.</p><p>Each item can have multiple fields. For each field you can use another tv-input-type.</p><p>MIGXdb can manage (resource-related) custom-db-table-items in a TV and can help to create CMPs for custom-db-tables</p><p>See the official documentation here: <a href=\"http://rtfm.modx.com/display/addon/MIGX\" style=\"color: rgb(15, 112, 150); \" title=\"\" target=\"\">http://rtfm.modx.com/display/addon/MIGX</a></p><p></p>\";s:12:\"instructions\";s:5844:\"<p></p><p style=\"margin: 10px 0px 20px; padding: 0px; border-width: 0px; outline-width: 0px; font-size: 13px; vertical-align: baseline; background-color: transparent; line-height: 1.4;\">Installation:Install via Package Management.</p><p style=\"margin: 10px 0px 20px; padding: 0px; border-width: 0px; outline-width: 0px; font-size: 13px; vertical-align: baseline; background-color: transparent; line-height: 1.4;\">For MIGX and MIGXdb - Configuration - Management:</p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \">Create a new menu:System -> Actions Actions-tree:migx -> right-click -> create Acton herecontroller: indexnamespace: migxlanguage-topics: migx:default,filemenu-tree:Components -> right-click -> place action herelexicon-key: migxaction: migx - indexparameters: &configs=migxconfigs||packagemanager||setupclear cachego to components -> migx -> setup-tab -> setupIf you are upgrading from MIGX - versions before 2.0go to tab upgrade. click upgrade.This will add a new autoincrementing field MIGX_id to all your MIGX-TV-itemsThe getImageList-snippet needs this field to work correctly.</p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \"><b style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; \">Note:</b> Make sure to remove older versions of multiItemsGridTv and the multiitemsgridTv-namespace, if you had them tried from Github.</p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \"><b style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; \">Note</b>: Input Options for the MIGX only work for Revolution 2.1.0-rc2 and later.</p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \"></p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \"></p>\";s:9:\"changelog\";s:1137:\"MIGX 2.13.0\n==============\n\nadd snippet migxGetObject and property toPlaceholders\n\nadd property createChunk to create a chunk with all possible placeholders\n\nFix imageupload on PHP7 due to stray break statement\n\nFix for missing custom prefix in some packagemanager tasks\n\nUpdated image paths to use dynamic assets path\n\nFix the export if a join setting exist\n\nFinnish Translation\n\nadd userid to migxResourceMediapath snippet\n\nremove duplicate sort scriptProperty in export.php\n\n[getlist.php] add getcustomconfigs - hook, groupby, selectfields, specialfields\n\nparse MODX-tags in field-configs\n\npackagemanager fix new folder permission\n\nUse a textarea instead of an input in MIGX TV\n\nReduce indexed varchar fields for utf8mb4 support in mysql\n\nfix duplicate entries in csv-export\n\nAdd CSV Import functionality\n\nImprove CSV Export functionality\n\nadd toJson property to migxLoopCollection\n\nFix transparency in .png in renderimage column renderer\n\nOptimize loadfromxource functionality, especially for MIGX within MIGXdb\n\ndeep nested saving when nested windows are open and saving without closing the window\n\nexport/import single MIGX - items\";s:9:\"createdon\";s:24:\"2021-05-16T11:51:54+0000\";s:9:\"createdby\";s:7:\"bruno17\";s:8:\"editedon\";s:24:\"2021-10-12T19:37:05+0000\";s:10:\"releasedon\";s:24:\"2021-05-16T11:51:54+0000\";s:9:\"downloads\";s:6:\"234742\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.2\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=60a1075a1c5f12639c7cfca3\";s:9:\"signature\";s:14:\"migx-2.13.0-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.2\";s:9:\"breaks_at\";s:3:\"2.8\";s:10:\"screenshot\";s:70:\"http://modx.s3.amazonaws.com/extras/4db018def24554690c000005/migx1.JPG\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"60a1075a1c5f12639c7cfca3\";s:7:\"version\";s:24:\"60a1075a1c5f12639c7cfca2\";s:8:\"filename\";s:28:\"migx-2.13.0-pl.transport.zip\";s:9:\"downloads\";s:4:\"9601\";s:6:\"lastip\";s:12:\"5.101.157.78\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=60a1075a1c5f12639c7cfca3\";}s:17:\"package-signature\";s:14:\"migx-2.13.0-pl\";s:10:\"categories\";s:15:\"content,gallery\";s:4:\"tags\";s:46:\"migx,multiitems,multitv,migxdb,CMP,MIGX,MIGXdb\";}', 2, 13, 0, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('pdotools-2.13.2-pl', '2021-10-11 18:40:04', '2021-10-11 15:43:15', '2021-10-11 18:43:15', 0, 1, 1, 0, 'pdotools-2.13.2-pl.transport.zip', NULL, 'a:8:{s:9:\"changelog\";s:29764:\"Changelog for pdoTools.\r\n\r\n2.13.2-pl (02.09.2021)\r\n==============\r\n- Fixed some snippets.\r\n\r\n2.13.1-pl (01.09.2021)\r\n==============\r\n- Installed composer packages.\r\n\r\n2.13.0-pl (01.09.2021)\r\n==============\r\n- Some security fixes.\r\n- The \"setOption\" modifier is marked as deprecated.\r\n- The snippet parameters \"tplPath\" and \"elementsPath\" are marked as deprecated.\r\n- Added the ability for snippets to return an array of raw data (it is necessary when using the Fenom template engine).\r\n- The settings \"parser_class\" and \"parser_class_path\" will be registered in the core namespace.\r\n- Update the ajax connector.\r\n\r\n2.12.10 pl\r\n==============\r\n- [#308] [pdoPage] Fixed the type of snippet property \"field\"\r\n\r\n2.12.9 pl\r\n==============\r\n- [Fenom] Update to version 2.12.0\r\n\r\n2.12.8 pl\r\n==============\r\n- [pdoPage] Fix reflected XSS in generated meta links\r\n\r\n2.12.7 pl\r\n==============\r\n- Make pdoTools canonical url work with Babel #304\r\n\r\n2.12.6 pl\r\n==============\r\n- [pdoPage] Reverted back #287\r\n\r\n2.12.5 pl\r\n==============\r\n- [Fenom] Added caching dinamic properties to prevent speed degradation.\r\n\r\n2.12.4 pl\r\n==============\r\n- [#290] Improved running snippet via @FILE binding.\r\n- [#296] Fix adding quotes to numeric values.\r\n- [#297] Make cross context weblink url possible.\r\n- [#274] [Fenom] User, resource and context properties are now dinamic.\r\n- [#287] [pdoPage] Remove prev & next meta tags\r\n- [#294] [#298] Improved pdopage.js and updated minified js files\r\n\r\n2.12.3 pl\r\n==============\r\n- Fixed E_NOTICE introduced in #285.\r\n\r\n2.12.2 pl\r\n==============\r\n- Updated chunks for Bootstrap 4.\r\n\r\n2.12.1 pl\r\n==============\r\n- [pdoMenu] Reverted back #283 and fixed docs for &tplCategoryFolder.\r\n- [#284] [Fenom] Fixed properties of $_modx->context variable.\r\n- [#275] [Fenom] Added \"reset\" and \"end\" modifiers.\r\n\r\n2.12.0 pl\r\n==============\r\n- [Fenom] More security fixes from Sergey Shlokov.\r\n- [#278] [pdoPage] Fixed caching.\r\n- [pdoPage] Show internal log on &showLog=`1`.\r\n- [#283] [pdoMenu] Fixed use of &tplCategoryFolder according to docs.\r\n- [#281] [pdoTools] Fixed load of models from case sensitive paths.\r\n- [#277] [pdoCrumbs] Ability to specify &customParents.\r\n- [#265] [pdoFetch] Fixed return of \"Array\" on SQL errors.\r\n\r\n2.11.3 pl\r\n==============\r\n- Added French lexicon entries.\r\n\r\n2.11.2 pl\r\n==============\r\n- Fix detection of element names starting with a number.\r\n\r\n2.11.1 pl\r\n==============\r\n- Faster processing of static files.\r\n\r\n2.11.0 pl\r\n==============\r\n- [pdoFetch] Added \"setTotal\" option to enable calculating all rows (\"SQL_CALC_FOUND_ROWS\"), which will also result in the \"totalVar\" placeholder is being set.\r\n- [pdoFetch] Option \"setTotal\" disabled by default.\r\n- [pdoPage] Forces \"setTotal\" to provide pagination.\r\n\r\n2.10.6 pl\r\n==============\r\n- Improved German lexicons.\r\n\r\n2.10.5 pl\r\n==============\r\n- [pdoTools] Ability to return array from \"prepareSnippet\" for more performance.\r\n- [FenomX] Fixed method \"getStore\".\r\n\r\n2.10.4 pl\r\n==============\r\n- [Fenom] Do not output raw tags if there was a compile errors.\r\n- [#266] [pdoMenu] Fixed the setting of \"here\" and \"self\" classes.\r\n- [#261] [Fenom] Fixed unexpected behavior of the fenom tag \"ignore\".\r\n\r\n2.10.3 pl\r\n==============\r\n- Improved compatibility with PHP 7.2\r\n- [pdoFetch] Ability to use arrays in \"&sortby\".\r\n\r\n2.10.2 pl\r\n==============\r\n- [Fenom] Improved processing of caching snippets inside uncached.\r\n\r\n2.10.1 pl\r\n==============\r\n- [#256] [Fenom] Fixed bug with caching of scripts and styles.\r\n- [pdoPage] \"&setMeta\" now works when \"&cache=`1`\".\r\n- [Fenom] Improved regular expression to detect Fenom syntax.\r\n\r\n2.10.0 pl\r\n==============\r\n- [#259] [pdoFetch] Fixed error when passed pure SQL into \"having\" parameter.\r\n- [#258] [pdoPage] Canonical urls always must be \"full\".\r\n- [#245] [pdoMenu] Ability to use conditional tpls instead of regular \"tpl\".\r\n- [#121] [pdoMenu] Improved work of specified chunks with weblinks.\r\n\r\n2.9.3 pl\r\n==============\r\n- [#255] [Fenom] New system setting \"pdotools_fenom_save_on_errors\" to save code on compilation errors in the cache directory for later debugging.\r\n\r\n2.9.2 pl\r\n==============\r\n- [pdoParser] Proper traversal trough arrays fields of resources in fast tags.\r\n\r\n2.9.1 pl\r\n==============\r\n- [Fenom] Updated to version 2.11.8.\r\n\r\n2.9.0 pl\r\n==============\r\n- [pdoPage] Improved \"&pageLinkScheme\" logic.\r\n- [#249] A little improvement for resource modifier.\r\n- [#251] [pdoFetch] More compatibility with PHP 7.1.\r\n- [#253] [pdoPage] Fixing a missing pagination in Ajax mode.\r\n- [#254] [Fenom] Options of json modifiers must check version of PHP to proper work.\r\n\r\n2.8.6 pl\r\n==============\r\n- [pdoArchive] Ability to specify fields with regular dates in the \"&dateField\" parameter.\r\n- [Fenom] Added all options to json modifiers.\r\n\r\n2.8.5 pl\r\n==============\r\n- [#248] [pdoPage] Fixed E_WARNING with array values in GET parameters.\r\n\r\n2.8.4 pl\r\n==============\r\n- Ability to use file elements in core path outside base path.\r\n- Fixed bug with the caching of elements.\r\n\r\n2.8.3 pl\r\n==============\r\n- [Fenom] Fixed rare bug with the caching of scripts and styles that was registered via Fenom.\r\n- [pdoPage] Fixed the \"?page=1\" in the url when ajaxMode is enabled.\r\n- [pdoPage] Snippet will register \"canonical\" link if \"&setMeta\" is enabled.\r\n- [pdoPage] Fix processing of request with rawurldecode on some servers.\r\n- [pdoTools] Added passing of \"scriptProperties\" values into a \"&prepareSnippet\".\r\n\r\n2.8.2 pl\r\n==============\r\n- [pdoMenu] Fixed the checking of permissions for containers.\r\n- [pdoPage] Added the ability to run files as &element.\r\n- [pdoTools] The method runSnippet will return boolean false if snippet was not found.\r\n- [Fenom] Fixed the possible bugs of caching of scripts and styles.\r\n\r\n2.8.1 pl\r\n==============\r\n- [#244] Fixed possible duplicate of a container in the jquery.pdopage.js.\r\n- Added fallback class for the enable modParser.\r\n\r\n2.8.0 pl\r\n==============\r\n- Ability to use an arrays in the parameters of the snippets.\r\n- Replaced modX::toJSON and modX::fromJSON to native php functions.\r\n\r\n2.7.5 pl\r\n==============\r\n- Fenom is now managed via composer.\r\n- [Fenom] Modifier \"resource\" no longer checks fields of resources in their schema.\r\n- [Fenom] Modifier \"strrev\" now can work with arrays.\r\n- [Fenom] Improved modifier \"ismember\".\r\n\r\n2.7.4 pl\r\n==============\r\n- [#242] Added jquery.pdopage.js plugin and minified versions.\r\n- [#241] [Fenom] Improved the retrieving of TVs for a current resource.\r\n- [pdoFetch] Restored the checking of possible SQL injections in the &sortby with xPDO 2.5.1.\r\n\r\n2.7.3 pl\r\n==============\r\n- Improved compatibility with MODX 2.5.2.\r\n\r\n2.7.2 pl\r\n==============\r\n- [pdoFetch] Some security improvements.\r\n\r\n2.7.1 pl\r\n==============\r\n- Some security improvements in the connector.php.\r\n- Fixed bug with registering scripts in styles via Fenom introduced in version 2.7.0.\r\n\r\n2.7.0 pl\r\n==============\r\n- [Fenom] Updated to the version 2.11.4.\r\n- [Fenom] Fixed resource cache for scripts and styles registered by Fenom.\r\n- [Fenom] Added rand() and number_format() to an allowed PHP functions.\r\n- [Fenom] New output filter \"number\" (or \"number_format\").\r\n\r\n2.6.5 pl\r\n==============\r\n- Fixed undeclared variable (PHP 7.1)\r\n\r\n2.6.4 pl\r\n==============\r\n- Added escaping of a MODX tags that being processed in the &prepareSnippet.\r\n- [#239] Improved work of the &decodeJSON option.\r\n\r\n2.6.3 pl\r\n==============\r\n- Fixed possible E_NOTICE on line 305 pdofetch.class.php.\r\n- Fixed possible E_NOTICE when \"snippet\" and \"chunk\" Fenom modifiers was called.\r\n\r\n2.6.2 pl\r\n==============\r\n- Fixed possible E_NOTICE on line 1317 pdotools.class.php.\r\n\r\n2.6.1 pl\r\n==============\r\n- Improved compatibility with PHP 5.3.\r\n\r\n2.6.0 pl\r\n==============\r\n- [Fenom] The ability to extend Fenom via system event \"pdoToolsOnFenomInit\".\r\n\r\n2.5.6 pl\r\n==============\r\n- [pdoFetch] Ability to join TVs not only to the query main class.\r\n\r\n2.5.5 pl\r\n==============\r\n- Fixed parse of INLINE chunks with \"@\" symbols.\r\n\r\n2.5.4 pl\r\n==============\r\n- [#224] Added microMODX::cleanAlias().\r\n- [#226] [Fenom] Added \"declension\" modifier.\r\n\r\n2.5.3 pl\r\n==============\r\n- [#221] Fixed typo in month name.\r\n- [Fenom] Fixed path to compile dir.\r\n\r\n2.5.2 pl\r\n==============\r\n- [#220] Cache code of snippet with respect to property set.\r\n\r\n2.5.1 pl\r\n==============\r\n- Fixed cache of snippets in pdoTools::runSnippet().\r\n\r\n2.5.0 pl\r\n==============\r\n- Improved support of debugParser.\r\n- [#209] Improved loading of the models.\r\n- [Fenom] New modifiers: \"snippet\" and \"chunk\".\r\n- [Fenom] New elements provider: \"file\".\r\n- New method pdoTools::runSnippet().\r\n\r\n2.4.0 pl\r\n==============\r\n- Added snippet pdoArchive.\r\n- [pdoResources] Faster processing of additional snippet parameters to placeholders.\r\n- [#123] [pdoMenu] Fixed bug with &displayStart and unpublished root nodes.\r\n- [#207] [pdoMenu] Fixed &webLinkClass option.\r\n- [#193] [pdoNeighbors] Added parameter &wrapIfEmpty.\r\n- [#203] [Fenom] Added more PCRE modifiers.\r\n\r\n2.3.5 pl\r\n==============\r\n- [pdoFetch] Added escaping of columns names in query.\r\n\r\n2.3.4 pl\r\n==============\r\n- [#200] [pdoFetch] Fixed &sortbyTV with dot in name.\r\n\r\n2.3.3 pl\r\n==============\r\n- Added system plugin for \"autoload\" of main classes with respect to their paths in system settings.\r\n\r\n2.3.2 pl\r\n==============\r\n- [#196] [pdoPage] Added workaround to support ClientConfig tags in ajax mode.\r\n- [Fenom] Added general MODX output filters as Fenom modifiers.\r\n- [Fenom] Implemented autoload of modifiers from snippets.\r\n- [Fenom] Removed system setting \"pdotools_fenom_modifiers\".\r\n\r\n2.3.1 pl\r\n==============\r\n- [pdoSitemap] Lightning fast work chunks processing with &scheme=`uri`.\r\n- [Fenom] Improved check of syntax before processing.\r\n\r\n2.3.0 pl\r\n==============\r\n- Removed shortcuts from system core.\r\n- PSR-2.\r\n- [Fenom] Added default modifiers: \"url\" and \"lexicon\".\r\n- [pdoCrumbs] Changed default chunks to ul -> li.\r\n- [#190] [pdoSitemap] Changed date format to ISO 8601.\r\n\r\n2.2.8 pl\r\n==============\r\n- [Fenom] Use modResource::getContent() method to get content of current resource in {$_modx->resource}.\r\n\r\n2.2.7 pl\r\n==============\r\n- [pdoPage] Ability to get access to a javascript configs from 3rd party scripts.\r\n\r\n2.2.6 pl\r\n==============\r\n- [#184] [Fenom] Updated to version 2.8.2.\r\n\r\n2.2.5 pl\r\n==============\r\n- [#182] [pdoTitle] Added passing a parameters into nested pdoCrumbs.\r\n- [pdoSitemap] Added processing of MODX tags if needed.\r\n- Added method pdoTools::makeUrl().\r\n- [#181] New url schema type - \"uri\".\r\n\r\n2.2.4 pl\r\n==============\r\n- [Fenom] Fixed speed issues when MODX snippets are run as Fenom modifiers.\r\n- [pdoUsers] Fixed overwrite modUser.id by modUserProfile.id.\r\n\r\n2.2.3 pl\r\n==============\r\n- [pdoPage] Fixed processing of uncached conditions in chunks when ajax mode is enabled.\r\n\r\n2.2.2 pl\r\n==============\r\n- [pdoPage] Added new parameter &pageLinkScheme.\r\n\r\n2.2.1 pl\r\n==============\r\n- [#155] [pdoPage] Added new parameter &ajaxHistory.\r\n- [pdoPage] Added connector for requests in ajax mode.\r\n\r\n2.2.0 pl\r\n==============\r\n- [#175] [pdoFetch] Ability to specify sequence of table joins.\r\n- [#174] [Fenom] Ability to add Fenom modifiers into pdoParser.\r\n\r\n2.1.21 pl\r\n==============\r\n- [#175] [pdoFetch] Ability to specify sequence of table joins.\r\n- [#176] [pdoUsers] Fixed &toPlaceholders with &returnIds.\r\n\r\n2.1.20 pl\r\n==============\r\n- [pdoSitemap] Fixed default &cacheKey.\r\n\r\n2.1.19 pl\r\n==============\r\n- [Fenom] Disabled $options in cacheManager::set() due to security reasons.\r\n\r\n2.1.18 pl\r\n==============\r\n- [Fenom] Fixed ability to access to the modX object from {$_modx} variable.\r\n- [Fenom] Improved method {$_modx->runProcessor()}.\r\n\r\n2.1.17 pl\r\n==============\r\n- [Fenom] Added {$_modx->getResource($id, $options)}.\r\n- [Fenom] Added {$_modx->getResources($where, $options)}.\r\n- [Fenom] Improved support of debugParser.\r\n\r\n2.1.16 pl\r\n==============\r\n- [Fenom] Added {$_modx->isMember($groups, $matchAll)}.\r\n- [Fenom] Added {$_modx->getPlaceholders()}.\r\n\r\n2.1.15 pl\r\n==============\r\n- [pdoPage] Added parameter &strictMode.\r\n\r\n2.1.14 pl\r\n==============\r\n- [pdoSitemap] Added options for cache snippets results.\r\n- [pdoSitemap] Cache enabled by default.\r\n\r\n2.1.13 pl\r\n==============\r\n- [#163] Fixed ignoring of &idx in pdoResources and pdoUsers.\r\n\r\n2.1.12 pl\r\n==============\r\n- [pdoPage] [#161] Fixed support of arrays in hash when &ajaxMode is enabled.\r\n\r\n2.1.11 pl\r\n==============\r\n- [#150] [Fenom] Fixed processing of TVs values in a {$_modx->resource}.\r\n- [#147] [pdoSitemap] Fixed possible duplicates in sitemap.\r\n- [pdoPage] Support of arrays in hash when &ajaxMode is enabled.\r\n\r\n2.1.10 pl\r\n==============\r\n- [#157] [Fenom] Fixed pre-processing of Fenom tags in extending templates and chunks.\r\n- [#145] [pdoPage] Rolled back #81 due to issues with complicate forms.\r\n\r\n2.1.9 pl\r\n==============\r\n- [#144] [pdoParser] Leave unprocessed FastField tags so other components could parse them.\r\n- [pdoFetch] Updated syntax for \"SET SQL_BIG_SELECTS = 1\".\r\n\r\n2.1.8 pl\r\n==============\r\n- [Fenom] Ability to use id of chunks and templates in {include} and {extends}.\r\n- [Fenom] Added support of debugParser.\r\n- [Fenom] Added {$_modx->getChildIds()} and {$_modx->getParentIds()}.\r\n\r\n2.1.7 pl\r\n==============\r\n- Fixed work with integer values from system setting \"link_tag_scheme\".\r\n\r\n2.1.6 pl\r\n==============\r\n- [Fenom] Updated to version 2.8.0.\r\n- [Fenom] Improved check of syntax to process content of chunks.\r\n- [pdoParser] Fixed E_WARNING on line 50 introduced in previous version.\r\n\r\n2.1.5 pl\r\n==============\r\n- [Fenom] Fixed register of scripts and styles by cached snippets.\r\n\r\n2.1.4 pl\r\n==============\r\n- [Fenom] Fixed TVs in {$_modx->resource}\r\n- [Fenom] Added new method {$_modx->getInfo()}\r\n\r\n2.1.3 pl\r\n==============\r\n- Improved work of system setting \"pdotools_fenom_php\".\r\n\r\n2.1.2 pl\r\n==============\r\n- [Fenom] Replaced {$_modx->placeholders} to functions.\r\n\r\n2.1.1 pl\r\n==============\r\n- pdoParser enabled by default.\r\n- [Fenom] Fixed return content in {$_modx->getChunk}.\r\n- [Fenom] Added cache for snippets called through {$_modx->runSnippet}.\r\n- [pdoTools] Added processing of property sets for chunks.\r\n- [pdoResources] Set additionalPlaceholders in &tplWrapper\r\n\r\n2.1.0 pl\r\n==============\r\n- [Fenom] Updated Fenom to version 2.7.1.\r\n- [Fenom] Added safe system variable {$_modx}.\r\n- [Fenom] Added MODX template provider for chunks and templates.\r\n\r\n2.0.5 pl\r\n==============\r\n- [#132] Fixed possible E_WARNING on empty chunks.\r\n- [#122] Ability to use 3rd party pdoPage and pdoMenu classes.\r\n- [#118] [pdoPage] Fixed parameter &offset.\r\n- [pdoPage] Fixed default CSS classes in \"empty\" chunks.\r\n\r\n2.0.4 pl\r\n==============\r\n- Fixed processing of \"pdotools_fenom_cache\" system setting.\r\n\r\n2.0.3 pl\r\n==============\r\n- [#125] [pdoTitle] Fixed parameter &id.\r\n\r\n2.0.2 pl\r\n==============\r\n- Improved processing of @FILE binding.\r\n\r\n2.0.1 pl\r\n==============\r\n- Fixed possible E_WARNING on line 319 and 349 of pdoTools class.\r\n- Disabled system option \"pdotools_fenom_modx\" by default due to security issues.\r\n\r\n2.0.0 pl\r\n==============\r\n- New system settings to control the Fenom.\r\n- Ability to enable caching of Fenom compiled chunks.\r\n- Improved handling of parameter \"cache_key\".\r\n- [pdoMenu] Improved work when &cache is enabled.\r\n\r\n2.0.0 rc2\r\n==============\r\n- Compiled Fenom templates cached to RAM instead of HDD.\r\n- Removed plugin pdoTools.\r\n\r\n2.0.0 rc1\r\n==============\r\n- Added Fenom template engine.\r\n- Fenom enabled by default.\r\n- pdoParser uses Fenom to process pages.\r\n\r\n1.11.2 pl\r\n==============\r\n- [#116] [pdoTitle] Disabled &register_js by default.\r\n\r\n1.11.1 pl\r\n==============\r\n- [pdoSitemap] Fixed default url scheme after last update.\r\n\r\n1.11.0 pl1\r\n==============\r\n- [pdoTitle] Added new snippet.\r\n- [pdoPage] Added support of snippet pdoTitle when &ajaxMode is enabled.\r\n- [pdoPage] Prevent overwriting of scripts and styles of nested &element by default parameters.\r\n- [pdoPage] Added triggering javascript event \"pdopage_load\".\r\n\r\n1.10.2 pl1\r\n==============\r\n- [#112] Parameter &scheme was set to system default in all snippets.\r\n- [#111] [pdoPage] Added ability to set \"prev\" & \"next\" meta tags.\r\n- [#107] [pdoNeighbors] Added ability to specify &parents for work.\r\n- [#106] [pdoMenu] Fixed \"hereClass\" and \"selfClass\" enabled &useWeblinkUrl parameter.\r\n- [#104] [pdoMenu] Snippet now using \"pagetitle\" for link titles if \"titleOfLinks\" is empty.\r\n\r\n1.10.1 pl\r\n==============\r\n- [#108] [pdoFetch] Fixed E_ERROR when using &sortbyTV.\r\n- [pdoFetch] Added new parameter &sortbyTVType.\r\n- [pdoFetch] If &sortdirTV is not set it will be equal to &sortdir.\r\n\r\n1.10.0 pl\r\n==============\r\n- [pdoMenu] Returned and fixed parameter &showDeleted.\r\n- [pdoPage] Improved default javascript.\r\n- [pdoPage] Fixed overwriting &frontend_js and &frontend_css parameters when &ajax is disabled.\r\n- [pdoFetch] Ability to specify functions in select fields.\r\n- [pdoTools] Ability to use compound quick placeholders.\r\n\r\n1.10.0 beta4\r\n==============\r\n- [pdoPage] Ajax pagination out from the box.\r\n- [pdoFetch] Improved log of getCollection.\r\n- [pdoTools] Added tplOperator \"contains\".\r\n\r\n1.9.7 pl\r\n==============\r\n- [#99] [pdoFetch] Fixed returning of primary key in \"ids\" mode.\r\n- [#97] [pdoTools] Fixed default tplPath for @FILE chunks.\r\n- [#85] [pdoFetch] Added function getChildIds().\r\n- [pdoFetch] Disabled \"total\" placeholder for &return=`ids`.\r\n\r\n1.9.6 pl2\r\n==============\r\n- [pdoFetch] Fixed exclusion of field \"id\" in custom classes.\r\n- [pdoMenu] Improved parameter &countChildren.\r\n- [#100] [pdoMenu] Removed parameter &showDeleted because it not working.\r\n\r\n1.9.6 rc\r\n==============\r\n- Added execution of SQL_BIG_SELECTS = 1 before query.\r\n- [pdoPage] Added parameter &ajax for supporting of ajax requests.\r\n\r\n1.9.5 pl1\r\n==============\r\n- Rolled back #72 due to issues in pdoMenu.\r\n\r\n1.9.5 pl\r\n==============\r\n- Added ability to return JSON or serialized string from pdoFetch::run().\r\n- [#83] [pdoMenu] Added level placeholder to outer templates.\r\n- [#82] [pdoFetch] Added support for complex &where parameter.\r\n- [#81] [pdoPage] Improved handling of arrays in url.\r\n- [#77] Fixed making of url for modWebLink to another context.\r\n- [#72] [pdoTools] Fixed order for children of excluded parents in buildTree.\r\n- [#60] [pdoMenu] Fixed parameter &tplCategoryFolder.\r\n- [#57] [pdoMenu] Improved placeholder [[+children]].\r\n- [#57] [pdoMenu] Added parameter &countChildren.\r\n\r\n1.9.4 pl1\r\n==============\r\n- [#78] [pdoNeighbors] Added parameter &loop=`1` for looping links.\r\n- [pdoSitemap] Fixed possible E_FATAL php-apc.\r\n\r\n1.9.3 pl1\r\n==============\r\n- [pdoTools] Ability to specify value for empty quick placeholders.\r\n- [pdoTools] Ability to use INLINE snippets and filters.\r\n- [pdoFetch] Improved loading of 3rd party models.\r\n- [pdoPage] Fixed E_WARNING when &limit=`0`.\r\n\r\n1.9.2 pl2\r\n==============\r\n- [#56] [pdoParser] Fixed wrong links processing.\r\n- [#53] Improved loading of classes.\r\n- [pdoField] Rolled back to original logic of \"top\" and \"topLevel\" parameters due to issues.\r\n- [pdoField] Added parameter \"ultimate\" to emulate logic of UltimateParent.\r\n\r\n1.9.1 pl6\r\n==============\r\n- [pdoFetch] Adding alias of main class of query to \"sortby\" if no alias exists.\r\n- [pdoFetch] Improved selecting of all fields of class with specified alias.\r\n- [pdoField] Parameter \"topLevel\" works exactly as in UltimateParent.\r\n- [pdoField] Parameter \"top\" without \"topLevel\" returns parent on \"top\" level.\r\n\r\n1.9.1 pl\r\n==============\r\n- [#47] [pdoMenu] Fixed processing &tplOuter when output is empty.\r\n- [#46] [pdoParser] Fixed processing of TVs with dots in name.\r\n- [#44] [pdoMenu] Improved handling of Wayfinder parameters \"includeDocs\" and \"excludeDocs\".\r\n- [#37] [pdoField] get the default, only if the field was empty.\r\n- [#34] Fixed processing of \"modSymLink\" documents.\r\n- [#32] Improved cache methods.\r\n- [#26] Replaced FIND_IN_SET() to FIELD().\r\n- [pdoFetch] Ability to work with objects, that has multiple primary keys.\r\n- [pdoPage] New parameter &cacheAnonymous.\r\n- [pdoMenu] New parameter &cacheAnonymous.\r\n- Added aliases for sort query in order of specified &resources: \"ids\" or \"resources\".\r\n- Removed unnecessary query in pdoFetch::getCollection().\r\n- Improved pdoFetch::getCollection().\r\n- Renamed pdoFetch::getObject() to getArray(). Now it uses getCollection for retrieve results.\r\n- pdoTools::setCache() now returns cacheKey.\r\n- pdoFetch::getObject() is now alias of pdoFetch::getArray().\r\n\r\n1.9.0 pl2\r\n==============\r\n- [pdoMenu] Chunks of parents and categories are now depends on the descendants and ignores parameter isfolder.\r\n- [pdoNeighbors] Speed improvements.\r\n- [#27] Ability to specify custom pdoFetch and pdoTools classes through FQN system settings.\r\n- [pdoParser] Handles TVs in resource tags.\r\n- [pdoParser] Handles output filters.\r\n- [pdoFetch] Improved method \"addTVFilters\", that used by \"tvFilters\" parameter in pdoResources.\r\n- [pdoSitemap] Pass the whole row so we can use more columns.\r\n\r\n1.9.0 rc\r\n==============\r\n- Improved method pdoTools::getChunk().\r\n- Improved method pdoTools::parseChunk().\r\n- Improved method pdoTools::fastProcess().\r\n- Improved method pdoTools::makePlaceholders().\r\n- Accelerated snippet pdoNeighbors.\r\n- Fixed bug in pdoUsers when usersgroups was specified by names.\r\n- getObject and getCollection() runs in separate instance.\r\n- Added pdoParser with FastField tags.\r\n- [pdoPage] Changed default value of parameter \"totalVar\" due to issues.\r\n- [#24] Fixed prepareTVs and empty tvPrefix.\r\n- [#23] [pdoResources] Ability to return ids to placeholder.\r\n- Fixed warning when getObject returns false.\r\n- Fixed placeholders prefix in recursive makePlaceholders.\r\n\r\n1.8.9 pl4\r\n==============\r\n- Added german lexicon.\r\n- [#20] Ability to specify not JSON string in &where=``.\r\n- [pdoPage] Added parameter \"pageCountVar\" for specifying name of variable with number of pages.\r\n- [pdoPage] Support Bootstrap3.\r\n- [pdoField] Ability to specify class for fetching field.\r\n- Improved joining of tables in pdoFetch.\r\n- Added preparing and processing TVs in getObject and getCollection methods.\r\n- Improved load of 3rd party models.\r\n\r\n1.8.8 pl2\r\n==============\r\n- Rewrited cache of snippets \"pdoMenu\" and \"pdoPage\".\r\n- New methods pdoTools::getCache() and pdoTools::setCache().\r\n- [pdoMenu] Fixed parameter \"tplParentRowActive\".\r\n- [#18] Fixed \"idx\" in pdoTools::defineChunk().\r\n\r\n1.8.7 pl\r\n==============\r\n- Added boolean parameter \"decodeJSON\" to specify whether or not decode JSON in results rows.\r\n- Removed default \"sortby\" and \"sortdir\" from class pdoFetch for better work of getCollection() method.\r\n\r\n1.8.6 pl2\r\n==============\r\n- Fixed possibly E_NOTICE when site has no extension packages installed.\r\n- [#17] [pdoMenu] Added placeholder [[+wf.menutitle]].\r\n- [#16] [pdoMenu] Disabled status verification of specified parents.\r\n- [#13] [pdoMenu] Improved work with root of multiple contexts.\r\n- [pdoMenu] Fixed bug when specified parent has only the one child.\r\n- [pdoResources] Added parameter \"&useWeblink\" and placeholder \"[[+link]]\". It is disabled by default.\r\n\r\n1.8.5 pl\r\n==============\r\n- [#15] [pdoPage] Improved generation of links to pages.\r\n- [pdoMenu] Improved processing of classes \"modSymlink\" and \"modWeblink\".\r\n- [pdoBreadcrumbs] Improved processing of classes \"modSymlink\" and \"modWeblink\". Added parameter \"&useWeblink\".\r\n- [pdoNeighbors] Added parameter \"&useWeblink\" and placeholder \"[[+link]]\".\r\n- [pdoSitemap] Added parameter \"&useWeblink\" and proper processing of classes \"modSymlink\" and \"modWeblink\".\r\n\r\n1.8.4 pl\r\n==============\r\n- [pdoCrumbs] Added ability to specify the crumbs root (defaulting to site_start)\r\n- [pdoCrumbs] Added ability to specify class_key (ie. to generate crumbs only for derivative classes)\r\n- More accuracy when try to decode json in fetch results.\r\n\r\n1.8.3 pl3\r\n==============\r\n- Improved preparation of template variables.\r\n- Improved transfer of additional parameters from snippet to results.\r\n- [pdoMenu] Added lexicon entries for parameters.\r\n- [pdoMenu] Allow to specify \"limit\" and \"offset\".\r\n- [#12] Added parameter \"toPlaceholder\".\r\n- Increased accuracy of timings log.\r\n\r\n1.8.1 pl2\r\n==============\r\n- Accelerated method pdoTools::getChunk().\r\n- Added snippet pdoMenu.\r\n- Added support for tags [^qt^] and [^q^].\r\n\r\n1.8.0 pl\r\n==============\r\n- [#10] [pdoPage] Added placeholder \"page\".\r\n- [#9] [pdoPage] Added placeholder \"pageCount\".\r\n- [#8] Improved support of big numbers when sorting by TVs.\r\n- Fixed work of pdoPage when it called multiple times on page.\r\n- Fixed mistype in pdoFetch::getCollection().\r\n\r\n1.8.0 rc5\r\n==============\r\n- Added processing of JSON fields. For example, you can use [[+extended.keyname]] in chunks of pdoUsers.\r\n- pdoTools was removed from system extension packages, but you can still use \"$modx->getService(\'pdoFetch\');\".\r\n- Fixed getting chunk without any parameters.\r\n- Added snippet pdoPage.\r\n\r\n1.8.0 beta1\r\n==============\r\n- Improved handling of \"default_text\" parameter in TVs.\r\n- Fixed and improved method pdoTools::buildTree().\r\n- The logic of build the conditions of the query moved into new method pdoFetch::additionalConditions().\r\n- Improved method pdoFetch::addSelects().\r\n- Improved method pdoFetch::addSort().\r\n- Improved some snippets in accordance to new abilities of pdoFetch: pdoResources, pdoNeighbors and pdoSitemap.\r\n\r\n1.7.4 pl\r\n==============\r\n- [#7] [pdoSitemap] Fixed hidden parameters \"&sortBy\" and \"&sortDir\" that used for compatibility with GoogleSiteMap.\r\n\r\n1.7.3 pl1\r\n==============\r\n- [pdoCrumbs] Fixed possible E_NOTICE on line 157.\r\n- [pdoCrumbs] Fixed generation of link to site start in relative mode.\r\n- [#6] pdoCrumbs and pdoNeighbors are now uses \"menutitle\" by default. If it is empty, will be used \"pagetitle\".\r\n\r\n1.7.2 pl1\r\n==============\r\n- [pdoField] Added new parameters: \"default=``\" and \"&field=``\".\r\n- [pdoField] Improved logic of \"&top=``\" and \"&topLevel=``\".\r\n- Added 2 new methods: pdoFetch::getObject() and pdoFetch::getCollection().\r\n- Ability to send arrays into common config parameters. JSON is still supported.\r\n- Improved select of default values in TVs.\r\n\r\n1.7.1 pl\r\n==============\r\n- [pdoCrumbs] Fixed work with \"modSymLink\" and \"modWebLink\" resources.\r\n\r\n1.7.0 pl1\r\n==============\r\n- New snippet pdoCrumbs.\r\n- New snippet pdoField.\r\n- New snippet pdoSitemap.\r\n- New snippet pdoNeighbors.\r\n- Ability to specify snippet for preparation of fetched rows by parameter \"&prepareSnippet=``\".\r\n- Added method pdoTools::checkPermissions() for checking user privileges to view the results.\r\n- Added @TEMPLATE binding. You can use name or id of any template. If empty - will use template of each row.\r\n- [pdoResources] Improved parameter \"&context\".\r\n- [pdoResources] Script properties are now passed to chunks. You can send any placeholders to it.\r\n\r\n1.6.0 pl1\r\n==============\r\n- Fixed compatibility issues in PHP < 5.3.\r\n\r\n1.6.0 pl\r\n==============\r\n- Added parameter \"&loadModels\" for comma-separated list of 3rd party components that needed for query.\r\n- Added parameters \"&prepareTVs\" and \"&processTVs\".\r\n- Added parameters \"&tvFilters\", \"&tvFiltersAndDelimiter\" and \"&tvFiltersAndDelimiter\".\r\n- Added support of parameters \"&sortbyTV\" and \"&sortdirTV\" for compatibility with getResources.\r\n- Added ability to use @INLINE and @FILE bindings in all template parameters.\r\n- Removed method pdoTools::getPlaceholders.\r\n\r\n1.5.0 pl2\r\n==============\r\n- Fixed sort of decimals in TVs.\r\n\r\n1.5.0 pl1\r\n==============\r\n- Added processing of simple [[~id]] placeholders in fastMode.\r\n- Added support of default value for TVs.\r\n- Improved sort by TVs of types \"number\" and \"date\".\r\n\r\n1.5.0 rc\r\n==============\r\n- [pdoUsers] Added new snippet \"pdoUsers\".\r\n- [pdoResources] Fixed \"toSeparatePlaceholders\".\r\n- [pdoResources] Parameter \"parents\" now supports dash prefix for excluding resources from query by parent.\r\n- [pdoResources] Fixed issue when snippet runs multiple times at one page.\r\n\r\n1.4.1 pl1\r\n==============\r\n- Improved \"context\" processing.\r\n- Fixed \"idx\" when multiple snippets called at one page.\r\n- Fixed default sortby when joined tables exists.\r\n\r\n1.4.1 beta3\r\n==============\r\n- Added parameters \"tplCondition\", \"tplOperator\" and \"conditionalTpls\".\r\n- Added parameter \"select\" for specifying needed columns of selected tables. Can be a JSON string with array.\r\n- Added parameter \"toSeparatePlaceholders\".\r\n- Improved \"pdoResources\" snippet.\r\n\r\n1.4.0 beta1\r\n==============\r\n- Ability to specify JSON string in \"sortby\", for example \"&sortby=`{\"pagetitle\":\"asc\",\"createdon\":\"desc\"}`\"\r\n- Added automatic replacement of tvs in \"where\" and \"having\" parameters.\r\n- Added automatic replacement of tvs in \"sortby\" parameter.\r\n- Removed example snippet\r\n- Added snippet \"pdoResources\", that could replace \"getResources\".\r\n- Added method pdoTools::defineChunk() for chunk of given idx.\r\n- Added \"memory usage\" in log.\r\n\r\n1.3.0\r\n==============\r\n- Improved placeholders processing when fastMode is enabled.\r\n- Added support of \"having\" conditions.\r\n\r\n1.2.1\r\n==============\r\n- Fixed not working \"includeTVs\" when \"leftJoin\" is empty.\r\n\r\n1.2.0\r\n==============\r\n- Native render of quick placeholders, such as \"<!--pdotools_introtext <blockquote>[[+introtext]]</blockquote>-->\".\r\n- Added joining of TVs in pdoFetch. Use parameter \"includeTVs\" with comma-separated list of template variables.\r\n- Added method pdoFetch::setConfig() for proper setting options when you run multiple pdoTools snippets at the one page.\r\n- Method pdoTools::makeArray is now recursive, for processing a multidimensional arrays of values.\r\n\r\n1.1.0\r\n==============\r\n- Improved getChunk function.\r\n\r\n1.0.1\r\n==============\r\n- Fixed setting total in \"chunks\" mode.\r\n- Improved displaying \"where\" condition in log.\r\n\r\n1.0.0\r\n==============\r\n- Initial release.\";s:7:\"license\";s:15504:\"GNU GENERAL PUBLIC LICENSE\r\n   Version 2, June 1991\r\n--------------------------\r\n\r\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\r\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\r\n\r\nEveryone is permitted to copy and distribute verbatim copies\r\nof this license document, but changing it is not allowed.\r\n\r\nPreamble\r\n--------\r\n\r\n  The licenses for most software are designed to take away your\r\nfreedom to share and change it.  By contrast, the GNU General Public\r\nLicense is intended to guarantee your freedom to share and change free\r\nsoftware--to make sure the software is free for all its users.  This\r\nGeneral Public License applies to most of the Free Software\r\nFoundation\'s software and to any other program whose authors commit to\r\nusing it.  (Some other Free Software Foundation software is covered by\r\nthe GNU Library General Public License instead.)  You can apply it to\r\nyour programs, too.\r\n\r\n  When we speak of free software, we are referring to freedom, not\r\nprice.  Our General Public Licenses are designed to make sure that you\r\nhave the freedom to distribute copies of free software (and charge for\r\nthis service if you wish), that you receive source code or can get it\r\nif you want it, that you can change the software or use pieces of it\r\nin new free programs; and that you know you can do these things.\r\n\r\n  To protect your rights, we need to make restrictions that forbid\r\nanyone to deny you these rights or to ask you to surrender the rights.\r\nThese restrictions translate to certain responsibilities for you if you\r\ndistribute copies of the software, or if you modify it.\r\n\r\n  For example, if you distribute copies of such a program, whether\r\ngratis or for a fee, you must give the recipients all the rights that\r\nyou have.  You must make sure that they, too, receive or can get the\r\nsource code.  And you must show them these terms so they know their\r\nrights.\r\n\r\n  We protect your rights with two steps: (1) copyright the software, and\r\n(2) offer you this license which gives you legal permission to copy,\r\ndistribute and/or modify the software.\r\n\r\n  Also, for each author\'s protection and ours, we want to make certain\r\nthat everyone understands that there is no warranty for this free\r\nsoftware.  If the software is modified by someone else and passed on, we\r\nwant its recipients to know that what they have is not the original, so\r\nthat any problems introduced by others will not reflect on the original\r\nauthors\' reputations.\r\n\r\n  Finally, any free program is threatened constantly by software\r\npatents.  We wish to avoid the danger that redistributors of a free\r\nprogram will individually obtain patent licenses, in effect making the\r\nprogram proprietary.  To prevent this, we have made it clear that any\r\npatent must be licensed for everyone\'s free use or not licensed at all.\r\n\r\n  The precise terms and conditions for copying, distribution and\r\nmodification follow.\r\n\r\n\r\nGNU GENERAL PUBLIC LICENSE\r\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\r\n---------------------------------------------------------------\r\n\r\n  0. This License applies to any program or other work which contains\r\na notice placed by the copyright holder saying it may be distributed\r\nunder the terms of this General Public License.  The \"Program\", below,\r\nrefers to any such program or work, and a \"work based on the Program\"\r\nmeans either the Program or any derivative work under copyright law:\r\nthat is to say, a work containing the Program or a portion of it,\r\neither verbatim or with modifications and/or translated into another\r\nlanguage.  (Hereinafter, translation is included without limitation in\r\nthe term \"modification\".)  Each licensee is addressed as \"you\".\r\n\r\nActivities other than copying, distribution and modification are not\r\ncovered by this License; they are outside its scope.  The act of\r\nrunning the Program is not restricted, and the output from the Program\r\nis covered only if its contents constitute a work based on the\r\nProgram (independent of having been made by running the Program).\r\nWhether that is true depends on what the Program does.\r\n\r\n  1. You may copy and distribute verbatim copies of the Program\'s\r\nsource code as you receive it, in any medium, provided that you\r\nconspicuously and appropriately publish on each copy an appropriate\r\ncopyright notice and disclaimer of warranty; keep intact all the\r\nnotices that refer to this License and to the absence of any warranty;\r\nand give any other recipients of the Program a copy of this License\r\nalong with the Program.\r\n\r\nYou may charge a fee for the physical act of transferring a copy, and\r\nyou may at your option offer warranty protection in exchange for a fee.\r\n\r\n  2. You may modify your copy or copies of the Program or any portion\r\nof it, thus forming a work based on the Program, and copy and\r\ndistribute such modifications or work under the terms of Section 1\r\nabove, provided that you also meet all of these conditions:\r\n\r\n    a) You must cause the modified files to carry prominent notices\r\n    stating that you changed the files and the date of any change.\r\n\r\n    b) You must cause any work that you distribute or publish, that in\r\n    whole or in part contains or is derived from the Program or any\r\n    part thereof, to be licensed as a whole at no charge to all third\r\n    parties under the terms of this License.\r\n\r\n    c) If the modified program normally reads commands interactively\r\n    when run, you must cause it, when started running for such\r\n    interactive use in the most ordinary way, to print or display an\r\n    announcement including an appropriate copyright notice and a\r\n    notice that there is no warranty (or else, saying that you provide\r\n    a warranty) and that users may redistribute the program under\r\n    these conditions, and telling the user how to view a copy of this\r\n    License.  (Exception: if the Program itself is interactive but\r\n    does not normally print such an announcement, your work based on\r\n    the Program is not required to print an announcement.)\r\n\r\nThese requirements apply to the modified work as a whole.  If\r\nidentifiable sections of that work are not derived from the Program,\r\nand can be reasonably considered independent and separate works in\r\nthemselves, then this License, and its terms, do not apply to those\r\nsections when you distribute them as separate works.  But when you\r\ndistribute the same sections as part of a whole which is a work based\r\non the Program, the distribution of the whole must be on the terms of\r\nthis License, whose permissions for other licensees extend to the\r\nentire whole, and thus to each and every part regardless of who wrote it.\r\n\r\nThus, it is not the intent of this section to claim rights or contest\r\nyour rights to work written entirely by you; rather, the intent is to\r\nexercise the right to control the distribution of derivative or\r\ncollective works based on the Program.\r\n\r\nIn addition, mere aggregation of another work not based on the Program\r\nwith the Program (or with a work based on the Program) on a volume of\r\na storage or distribution medium does not bring the other work under\r\nthe scope of this License.\r\n\r\n  3. You may copy and distribute the Program (or a work based on it,\r\nunder Section 2) in object code or executable form under the terms of\r\nSections 1 and 2 above provided that you also do one of the following:\r\n\r\n    a) Accompany it with the complete corresponding machine-readable\r\n    source code, which must be distributed under the terms of Sections\r\n    1 and 2 above on a medium customarily used for software interchange; or,\r\n\r\n    b) Accompany it with a written offer, valid for at least three\r\n    years, to give any third party, for a charge no more than your\r\n    cost of physically performing source distribution, a complete\r\n    machine-readable copy of the corresponding source code, to be\r\n    distributed under the terms of Sections 1 and 2 above on a medium\r\n    customarily used for software interchange; or,\r\n\r\n    c) Accompany it with the information you received as to the offer\r\n    to distribute corresponding source code.  (This alternative is\r\n    allowed only for noncommercial distribution and only if you\r\n    received the program in object code or executable form with such\r\n    an offer, in accord with Subsection b above.)\r\n\r\nThe source code for a work means the preferred form of the work for\r\nmaking modifications to it.  For an executable work, complete source\r\ncode means all the source code for all modules it contains, plus any\r\nassociated interface definition files, plus the scripts used to\r\ncontrol compilation and installation of the executable.  However, as a\r\nspecial exception, the source code distributed need not include\r\nanything that is normally distributed (in either source or binary\r\nform) with the major components (compiler, kernel, and so on) of the\r\noperating system on which the executable runs, unless that component\r\nitself accompanies the executable.\r\n\r\nIf distribution of executable or object code is made by offering\r\naccess to copy from a designated place, then offering equivalent\r\naccess to copy the source code from the same place counts as\r\ndistribution of the source code, even though third parties are not\r\ncompelled to copy the source along with the object code.\r\n\r\n  4. You may not copy, modify, sublicense, or distribute the Program\r\nexcept as expressly provided under this License.  Any attempt\r\notherwise to copy, modify, sublicense or distribute the Program is\r\nvoid, and will automatically terminate your rights under this License.\r\nHowever, parties who have received copies, or rights, from you under\r\nthis License will not have their licenses terminated so long as such\r\nparties remain in full compliance.\r\n\r\n  5. You are not required to accept this License, since you have not\r\nsigned it.  However, nothing else grants you permission to modify or\r\ndistribute the Program or its derivative works.  These actions are\r\nprohibited by law if you do not accept this License.  Therefore, by\r\nmodifying or distributing the Program (or any work based on the\r\nProgram), you indicate your acceptance of this License to do so, and\r\nall its terms and conditions for copying, distributing or modifying\r\nthe Program or works based on it.\r\n\r\n  6. Each time you redistribute the Program (or any work based on the\r\nProgram), the recipient automatically receives a license from the\r\noriginal licensor to copy, distribute or modify the Program subject to\r\nthese terms and conditions.  You may not impose any further\r\nrestrictions on the recipients\' exercise of the rights granted herein.\r\nYou are not responsible for enforcing compliance by third parties to\r\nthis License.\r\n\r\n  7. If, as a consequence of a court judgment or allegation of patent\r\ninfringement or for any other reason (not limited to patent issues),\r\nconditions are imposed on you (whether by court order, agreement or\r\notherwise) that contradict the conditions of this License, they do not\r\nexcuse you from the conditions of this License.  If you cannot\r\ndistribute so as to satisfy simultaneously your obligations under this\r\nLicense and any other pertinent obligations, then as a consequence you\r\nmay not distribute the Program at all.  For example, if a patent\r\nlicense would not permit royalty-free redistribution of the Program by\r\nall those who receive copies directly or indirectly through you, then\r\nthe only way you could satisfy both it and this License would be to\r\nrefrain entirely from distribution of the Program.\r\n\r\nIf any portion of this section is held invalid or unenforceable under\r\nany particular circumstance, the balance of the section is intended to\r\napply and the section as a whole is intended to apply in other\r\ncircumstances.\r\n\r\nIt is not the purpose of this section to induce you to infringe any\r\npatents or other property right claims or to contest validity of any\r\nsuch claims; this section has the sole purpose of protecting the\r\nintegrity of the free software distribution system, which is\r\nimplemented by public license practices.  Many people have made\r\ngenerous contributions to the wide range of software distributed\r\nthrough that system in reliance on consistent application of that\r\nsystem; it is up to the author/donor to decide if he or she is willing\r\nto distribute software through any other system and a licensee cannot\r\nimpose that choice.\r\n\r\nThis section is intended to make thoroughly clear what is believed to\r\nbe a consequence of the rest of this License.\r\n\r\n  8. If the distribution and/or use of the Program is restricted in\r\ncertain countries either by patents or by copyrighted interfaces, the\r\noriginal copyright holder who places the Program under this License\r\nmay add an explicit geographical distribution limitation excluding\r\nthose countries, so that distribution is permitted only in or among\r\ncountries not thus excluded.  In such case, this License incorporates\r\nthe limitation as if written in the body of this License.\r\n\r\n  9. The Free Software Foundation may publish revised and/or new versions\r\nof the General Public License from time to time.  Such new versions will\r\nbe similar in spirit to the present version, but may differ in detail to\r\naddress new problems or concerns.\r\n\r\nEach version is given a distinguishing version number.  If the Program\r\nspecifies a version number of this License which applies to it and \"any\r\nlater version\", you have the option of following the terms and conditions\r\neither of that version or of any later version published by the Free\r\nSoftware Foundation.  If the Program does not specify a version number of\r\nthis License, you may choose any version ever published by the Free Software\r\nFoundation.\r\n\r\n  10. If you wish to incorporate parts of the Program into other free\r\nprograms whose distribution conditions are different, write to the author\r\nto ask for permission.  For software which is copyrighted by the Free\r\nSoftware Foundation, write to the Free Software Foundation; we sometimes\r\nmake exceptions for this.  Our decision will be guided by the two goals\r\nof preserving the free status of all derivatives of our free software and\r\nof promoting the sharing and reuse of software generally.\r\n\r\nNO WARRANTY\r\n-----------\r\n\r\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\r\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\r\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\r\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\r\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\r\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\r\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\r\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\r\nREPAIR OR CORRECTION.\r\n\r\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\r\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\r\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\r\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\r\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\r\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\r\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\r\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\r\nPOSSIBILITY OF SUCH DAMAGES.\r\n\r\n---------------------------\r\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:666:\"--------------------\r\npdoTools\r\n--------------------\r\nAuthor: Vasiliy Naumkin <bezumkin@yandex.ru>\r\n--------------------\r\n\r\nSmall library for creating fast snippets for MODX Revolution that works through PDO.\r\n\r\nRequired by Tickets and miniShop2.\r\n\r\nMain features\r\n- Builds queries with xPDO.\r\n- Retrieve results with PDO.\r\n- Improved pdoTools::getChunk() function, that processing placeholders faster, than original modX::getChunk().\r\n\r\npdoTools snippets will work so faster, than more fields you will retrieve from database at one query.\r\n\r\n--------------------\r\nFeel free to suggest ideas/improvements/bugs on GitHub:\r\nhttp://github.com/bezumkin/pdoTools/issues\r\n\";s:9:\"signature\";s:18:\"pdotools-2.13.2-pl\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:46:\"/workspace/package/install/pdotools-2.13.2-pl/\";s:14:\"package_action\";i:0;}', 'pdoTools', 'a:38:{s:2:\"id\";s:24:\"6137262c6da2204b3e15f512\";s:7:\"package\";s:24:\"50f8468bf2455436ec00000d\";s:12:\"display_name\";s:18:\"pdotools-2.13.2-pl\";s:4:\"name\";s:8:\"pdoTools\";s:7:\"version\";s:6:\"2.13.2\";s:13:\"version_major\";s:1:\"2\";s:13:\"version_minor\";s:2:\"13\";s:13:\"version_patch\";s:1:\"2\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:10:\"sergant210\";s:11:\"description\";s:166:\"<p>Fixed some security vulnerabilities. The \"data\" output mode of the \"return\" parameter of all snippets has been improved for use with the Fenom template engine.</p>\";s:12:\"instructions\";s:77:\"<p></p><p>For example just run:</p><p></p><p></p><p></p><p></p><p></p><p></p>\";s:9:\"changelog\";s:162:\"<a href=\"https://raw.githubusercontent.com/bezumkin/pdoTools/master/core/components/pdotools/docs/changelog.txt\" title=\"\" target=\"_blank\">See on GitHub</a><p></p>\";s:9:\"createdon\";s:24:\"2021-09-07T08:43:24+0000\";s:9:\"createdby\";s:10:\"sergant210\";s:8:\"editedon\";s:24:\"2021-10-11T15:37:19+0000\";s:10:\"releasedon\";s:24:\"2021-09-07T08:43:24+0000\";s:9:\"downloads\";s:6:\"359832\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:1:\"2\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=6137262c6da2204b3e15f513\";s:9:\"signature\";s:18:\"pdotools-2.13.2-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:1:\"2\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:97:\"http://modx.s3.amazonaws.com/extras/50f8468bf2455436ec00000d/ffe1e89f12c51f01ad55ce39b88731b1.jpg\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"6137262c6da2204b3e15f513\";s:7:\"version\";s:24:\"6137262c6da2204b3e15f512\";s:8:\"filename\";s:32:\"pdotools-2.13.2-pl.transport.zip\";s:9:\"downloads\";s:4:\"3316\";s:6:\"lastip\";s:13:\"139.45.254.41\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=6137262c6da2204b3e15f513\";}s:17:\"package-signature\";s:18:\"pdotools-2.13.2-pl\";s:10:\"categories\";s:14:\"administration\";s:4:\"tags\";s:0:\"\";}', 2, 13, 2, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('phpthumbon-1.3.1-pl', '2021-10-11 18:42:37', '2021-10-11 15:44:52', '2021-10-11 18:44:52', 0, 1, 1, 0, 'phpthumbon-1.3.1-pl.transport.zip', NULL, 'a:8:{s:7:\"license\";s:7815:\"                  GNU LESSER GENERAL PUBLIC LICENSE\r\n                       Version 3, 29 June 2007\r\n\r\n Copyright (C) 2007 Free Software Foundation, Inc. <http://fsf.org/>\r\n Everyone is permitted to copy and distribute verbatim copies\r\n of this license document, but changing it is not allowed.\r\n\r\n\r\n  This version of the GNU Lesser General Public License incorporates\r\nthe terms and conditions of version 3 of the GNU General Public\r\nLicense, supplemented by the additional permissions listed below.\r\n\r\n  0. Additional Definitions.\r\n\r\n  As used herein, \"this License\" refers to version 3 of the GNU Lesser\r\nGeneral Public License, and the \"GNU GPL\" refers to version 3 of the GNU\r\nGeneral Public License.\r\n\r\n  \"The Library\" refers to a covered work governed by this License,\r\nother than an Application or a Combined Work as defined below.\r\n\r\n  An \"Application\" is any work that makes use of an interface provided\r\nby the Library, but which is not otherwise based on the Library.\r\nDefining a subclass of a class defined by the Library is deemed a mode\r\nof using an interface provided by the Library.\r\n\r\n  A \"Combined Work\" is a work produced by combining or linking an\r\nApplication with the Library.  The particular version of the Library\r\nwith which the Combined Work was made is also called the \"Linked\r\nVersion\".\r\n\r\n  The \"Minimal Corresponding Source\" for a Combined Work means the\r\nCorresponding Source for the Combined Work, excluding any source code\r\nfor portions of the Combined Work that, considered in isolation, are\r\nbased on the Application, and not on the Linked Version.\r\n\r\n  The \"Corresponding Application Code\" for a Combined Work means the\r\nobject code and/or source code for the Application, including any data\r\nand utility programs needed for reproducing the Combined Work from the\r\nApplication, but excluding the System Libraries of the Combined Work.\r\n\r\n  1. Exception to Section 3 of the GNU GPL.\r\n\r\n  You may convey a covered work under sections 3 and 4 of this License\r\nwithout being bound by section 3 of the GNU GPL.\r\n\r\n  2. Conveying Modified Versions.\r\n\r\n  If you modify a copy of the Library, and, in your modifications, a\r\nfacility refers to a function or data to be supplied by an Application\r\nthat uses the facility (other than as an argument passed when the\r\nfacility is invoked), then you may convey a copy of the modified\r\nversion:\r\n\r\n   a) under this License, provided that you make a good faith effort to\r\n   ensure that, in the event an Application does not supply the\r\n   function or data, the facility still operates, and performs\r\n   whatever part of its purpose remains meaningful, or\r\n\r\n   b) under the GNU GPL, with none of the additional permissions of\r\n   this License applicable to that copy.\r\n\r\n  3. Object Code Incorporating Material from Library Header Files.\r\n\r\n  The object code form of an Application may incorporate material from\r\na header file that is part of the Library.  You may convey such object\r\ncode under terms of your choice, provided that, if the incorporated\r\nmaterial is not limited to numerical parameters, data structure\r\nlayouts and accessors, or small macros, inline functions and templates\r\n(ten or fewer lines in length), you do both of the following:\r\n\r\n   a) Give prominent notice with each copy of the object code that the\r\n   Library is used in it and that the Library and its use are\r\n   covered by this License.\r\n\r\n   b) Accompany the object code with a copy of the GNU GPL and this license\r\n   document.\r\n\r\n  4. Combined Works.\r\n\r\n  You may convey a Combined Work under terms of your choice that,\r\ntaken together, effectively do not restrict modification of the\r\nportions of the Library contained in the Combined Work and reverse\r\nengineering for debugging such modifications, if you also do each of\r\nthe following:\r\n\r\n   a) Give prominent notice with each copy of the Combined Work that\r\n   the Library is used in it and that the Library and its use are\r\n   covered by this License.\r\n\r\n   b) Accompany the Combined Work with a copy of the GNU GPL and this license\r\n   document.\r\n\r\n   c) For a Combined Work that displays copyright notices during\r\n   execution, include the copyright notice for the Library among\r\n   these notices, as well as a reference directing the user to the\r\n   copies of the GNU GPL and this license document.\r\n\r\n   d) Do one of the following:\r\n\r\n       0) Convey the Minimal Corresponding Source under the terms of this\r\n       License, and the Corresponding Application Code in a form\r\n       suitable for, and under terms that permit, the user to\r\n       recombine or relink the Application with a modified version of\r\n       the Linked Version to produce a modified Combined Work, in the\r\n       manner specified by section 6 of the GNU GPL for conveying\r\n       Corresponding Source.\r\n\r\n       1) Use a suitable shared library mechanism for linking with the\r\n       Library.  A suitable mechanism is one that (a) uses at run time\r\n       a copy of the Library already present on the user\'s computer\r\n       system, and (b) will operate properly with a modified version\r\n       of the Library that is interface-compatible with the Linked\r\n       Version.\r\n\r\n   e) Provide Installation Information, but only if you would otherwise\r\n   be required to provide such information under section 6 of the\r\n   GNU GPL, and only to the extent that such information is\r\n   necessary to install and execute a modified version of the\r\n   Combined Work produced by recombining or relinking the\r\n   Application with a modified version of the Linked Version. (If\r\n   you use option 4d0, the Installation Information must accompany\r\n   the Minimal Corresponding Source and Corresponding Application\r\n   Code. If you use option 4d1, you must provide the Installation\r\n   Information in the manner specified by section 6 of the GNU GPL\r\n   for conveying Corresponding Source.)\r\n\r\n  5. Combined Libraries.\r\n\r\n  You may place library facilities that are a work based on the\r\nLibrary side by side in a single library together with other library\r\nfacilities that are not Applications and are not covered by this\r\nLicense, and convey such a combined library under terms of your\r\nchoice, if you do both of the following:\r\n\r\n   a) Accompany the combined library with a copy of the same work based\r\n   on the Library, uncombined with any other library facilities,\r\n   conveyed under the terms of this License.\r\n\r\n   b) Give prominent notice with the combined library that part of it\r\n   is a work based on the Library, and explaining where to find the\r\n   accompanying uncombined form of the same work.\r\n\r\n  6. Revised Versions of the GNU Lesser General Public License.\r\n\r\n  The Free Software Foundation may publish revised and/or new versions\r\nof the GNU Lesser General Public License from time to time. Such new\r\nversions will be similar in spirit to the present version, but may\r\ndiffer in detail to address new problems or concerns.\r\n\r\n  Each version is given a distinguishing version number. If the\r\nLibrary as you received it specifies that a certain numbered version\r\nof the GNU Lesser General Public License \"or any later version\"\r\napplies to it, you have the option of following the terms and\r\nconditions either of that published version or of any later version\r\npublished by the Free Software Foundation. If the Library as you\r\nreceived it does not specify a version number of the GNU Lesser\r\nGeneral Public License, you may choose any version of the GNU Lesser\r\nGeneral Public License ever published by the Free Software Foundation.\r\n\r\n  If the Library as you received it specifies that a proxy can decide\r\nwhether future versions of the GNU Lesser General Public License shall\r\napply, that proxy\'s public statement of acceptance of any version is\r\npermanent authorization for you to choose that version for the\r\nLibrary.\r\n\";s:6:\"readme\";s:384:\"phpThumbOn\r\n=========\r\nОптимизированный сниппет phpThumbOf под MODX Revolution. Схожый синтаксис, но более быстрая работа. Более подробно смотрите в changelog\r\n\r\nПроект на GitHub: https://github.com/AgelxNash/phpthumbon\r\nДокументация: http://blog.agel-nash.ru/addon/phpthumbon.html\";s:9:\"changelog\";s:2520:\"phpThumbOn 1.3.1 (21.12.2014)\n=====================================\n- modPhpThumb вместо чистого phpThumb\n\nphpThumbOn 1.3.0 (23.09.2014)\n=====================================\n- Немецкий и Английский лексикон\n- Обновлен пакет для совместимости с MODX 2.3.x\n\nphpThumbOn 1.2.1 (27.12.2013)\n=====================================\n- Баг со сбросом информации об объекте при ответе процессора\n- Исправление проблемы с абсолютными путями\n\nphpThumbOn 1.2.0 (26.12.2013)\n=====================================\n- Удаление ранее созданных превью при повторном вызове сниппета с другими параметрами\n- Избавление от пустоты на выходе, если скрипт не смог создать превьюху\n- Кеширование сжатых noimage картинок\n- Возможность обработки нескольких картинок очереди за 1 запуск процессора\n- Исправлено логирование проблемных картинок\n- Кастомные имена превьюх\n\nphpThumbOn 1.1.0 (06.12.2013)\n=====================================\n- Добавлена поддержка очереди сжатия\n\nphpThumbOn 1.0.2 (16.09.2013)\n=====================================\n- Исправлена работа в режиме AJAX\n\nphpThumbOn 1.0.1 (25.08.2013)\n=====================================\n- Исправлено некорректное восприятие параметра input с начальным слешем\n\nphpThumbOn 1.0.0 (02.08.2013)\n=====================================\n- Имя файла превьюхи максимально вычищенно от непонятных последовательностей символов\n- Картинки семантично раскладываются по папкам в соответствии с оригинальными картинками\n- Удалены постоянные проверки и отчистки всего кеша\n- Отключена поддержка AWS Amazon\n- Добавлен ряд параметров отвечающих за качество и тип превьюхи по умолчанию\n- Код сниппета оптимизирован под множественные вызовы\";s:9:\"signature\";s:19:\"phpthumbon-1.3.1-pl\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:47:\"/workspace/package/install/phpthumbon-1.3.1-pl/\";s:14:\"package_action\";i:0;}', 'phpThumbOn', 'a:38:{s:2:\"id\";s:24:\"5496b872dc532f2c59060674\";s:7:\"package\";s:24:\"5241d84962cf2423f0000842\";s:12:\"display_name\";s:19:\"phpthumbon-1.3.1-pl\";s:4:\"name\";s:10:\"phpThumbOn\";s:7:\"version\";s:5:\"1.3.1\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"3\";s:13:\"version_patch\";s:1:\"1\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:9:\"ilyautkin\";s:11:\"description\";s:556:\"<p></p><ul><li>Queuing support</li><li>Fixed mode AJAX</li><li>The incorrect perception of the input parameter with the initial slash</li><li>File name prevyuhi maximum Scrubbing of unknown character sequences</li><li>Pictures semantically decomposed into folders according to the original picture</li><li>Removed constant checking and cleaning up all the cache</li><li>Not support AWS Amazon</li><li>Added a number of parameters responsible for the quality and type of prevyuhi default</li><li>Code snippet is optimized for multiple calls</li></ul><p></p>\";s:12:\"instructions\";s:389:\"<p>For a complete replacement phpthumbof will need to change the call &#91;&#91;phpThumbOf? &amp;...&#93;&#93; to &#91;&#91;phpthumbon? &amp;...&#93;&#93; or you can create a snippet:</p><p>return $modx-&gt;runSnippet(\'phpThumbOn\', $scriptProperties);</p><p></p><p><b>Processing job queue</b>:&nbsp;http://example.com/assets/components/phpthumbon/connector.php?action=login&amp;ctx=web</p>\";s:9:\"changelog\";s:47:\"<p></p><ul><li>Use modPhpThumb</li></ul><p></p>\";s:9:\"createdon\";s:24:\"2014-12-21T12:09:22+0000\";s:9:\"createdby\";s:9:\"ilyautkin\";s:8:\"editedon\";s:24:\"2021-10-11T14:04:45+0000\";s:10:\"releasedon\";s:24:\"2014-12-21T12:09:22+0000\";s:9:\"downloads\";s:5:\"36780\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.2\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5496b873dc532f2c59060676\";s:9:\"signature\";s:19:\"phpthumbon-1.3.1-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.2\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:0:\"\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"5496b873dc532f2c59060676\";s:7:\"version\";s:24:\"5496b872dc532f2c59060674\";s:8:\"filename\";s:33:\"phpthumbon-1.3.1-pl.transport.zip\";s:9:\"downloads\";s:5:\"31897\";s:6:\"lastip\";s:13:\"5.101.157.187\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5496b873dc532f2c59060676\";}s:17:\"package-signature\";s:19:\"phpthumbon-1.3.1-pl\";s:10:\"categories\";s:28:\"content,multimedia,utilities\";s:4:\"tags\";s:0:\"\";}', 1, 3, 1, 'pl', 0),
('translit-1.0.0-beta', '2021-10-11 18:41:49', '2021-10-11 15:44:31', '2021-10-11 18:44:31', 0, 1, 1, 0, 'translit-1.0.0-beta.transport.zip', NULL, 'a:7:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:453:\"--------------------\nExtension: translit\n--------------------\nVersion: 1.0.0-beta\nReleased: October 20, 2010\nSince: October 20, 2010\nAuthor: Jason Coward <jason@modx.com>\n\nA MODx Revolution Core Extension, the translit package provides a custom transliteration service class. When installed,\nthis is automatically available for the core Friendly URL alias transliteration process for Resources. You can also use\nthe service in your plugins and snippets.\";s:9:\"signature\";s:19:\"translit-1.0.0-beta\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:47:\"/workspace/package/install/translit-1.0.0-beta/\";s:14:\"package_action\";i:0;}', 'translit', 'a:38:{s:2:\"id\";s:24:\"4d556cf0b2b083396d000eeb\";s:7:\"package\";s:24:\"4d556cf0b2b083396d000eea\";s:12:\"display_name\";s:19:\"translit-1.0.0-beta\";s:4:\"name\";s:8:\"translit\";s:7:\"version\";s:5:\"1.0.0\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"0\";s:13:\"version_patch\";s:1:\"0\";s:7:\"release\";s:4:\"beta\";s:8:\"vrelease\";s:4:\"beta\";s:14:\"vrelease_index\";s:1:\"0\";s:6:\"author\";s:8:\"opengeek\";s:11:\"description\";s:585:\"<p>A service class that allows custom transliteration tables to be used when auto-creating or sanitizing friendly URL aliases in MODx Revolution. This initial beta release includes three tables that can be specified as the friendly_alias_translit System Setting:</p>\n<p><ol>\n<li>noaccents</li>\n<li>russian</li>\n<li>german</li>\n</ol>\nCustom named transliteration tables can be manually added to the {core_path}components/translit/model/modx/translit/tables/ directory and configured. Additional contributed transliteration tables will be included in future releases of the package.\n</p>\";s:12:\"instructions\";s:37:\"<p>Install via Package Management</p>\";s:9:\"changelog\";s:0:\"\";s:9:\"createdon\";s:24:\"2010-10-20T11:53:35+0000\";s:9:\"createdby\";s:8:\"opengeek\";s:8:\"editedon\";s:24:\"2021-10-11T15:24:13+0000\";s:10:\"releasedon\";s:24:\"2010-10-20T11:57:11+0000\";s:9:\"downloads\";s:6:\"200937\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:47:\"http://modxcms.com/forums/index.php?topic=56059\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:1:\"2\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=4d556cf1b2b083396d000eec\";s:9:\"signature\";s:19:\"translit-1.0.0-beta\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:1:\"2\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:0:\"\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"4d556cf1b2b083396d000eec\";s:7:\"version\";s:24:\"4d556cf0b2b083396d000eeb\";s:8:\"filename\";s:33:\"translit-1.0.0-beta.transport.zip\";s:9:\"downloads\";s:6:\"201139\";s:6:\"lastip\";s:13:\"31.31.196.240\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=4d556cf1b2b083396d000eec\";}s:17:\"package-signature\";s:19:\"translit-1.0.0-beta\";s:10:\"categories\";s:36:\"internationalization,core-extensions\";s:4:\"tags\";s:15:\"transliteration\";}', 1, 0, 0, 'beta', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_transport_providers`
--

CREATE TABLE `modx_transport_providers` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(191) NOT NULL DEFAULT '',
  `api_key` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `priority` tinyint NOT NULL DEFAULT '10',
  `properties` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_transport_providers`
--

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`, `active`, `priority`, `properties`) VALUES
(1, 'modx.com', 'The official MODX transport provider for 3rd party components.', 'https://rest.modx.com/extras/', '', '', '2021-05-28 09:04:51', NULL, 1, 10, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_users`
--

CREATE TABLE `modx_users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `cachepwd` varchar(255) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `remote_key` varchar(191) DEFAULT NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modNative',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int UNSIGNED NOT NULL DEFAULT '0',
  `session_stale` text,
  `sudo` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `createdon` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_users`
--

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`, `createdon`) VALUES
(1, 'Admin', '$2y$10$9akPeKOVo//DiXZM4SCHTeJcb3upOadGqkriuIjHjBXYMv8PKZBMu', '', 'modUser', 1, NULL, NULL, 'hashing.modNative', '5dc87fe04208204f79a9d636b899c800', 1, NULL, 1, 1633966641);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_attributes`
--

CREATE TABLE `modx_user_attributes` (
  `id` int UNSIGNED NOT NULL,
  `internalKey` int NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `blockeduntil` int NOT NULL DEFAULT '0',
  `blockedafter` int NOT NULL DEFAULT '0',
  `logincount` int NOT NULL DEFAULT '0',
  `lastlogin` int NOT NULL DEFAULT '0',
  `thislogin` int NOT NULL DEFAULT '0',
  `failedlogincount` int NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int NOT NULL DEFAULT '0',
  `gender` int NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `country` varchar(191) NOT NULL DEFAULT '',
  `city` varchar(191) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(191) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(191) NOT NULL DEFAULT '',
  `extended` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Администратор по умолчанию', 'Elya.Gorbachev27@yandex.by', '', '', 0, 0, 0, 3, 1634064659, 1634230294, 0, '3s2nekdkjik4v09ghcd7o5dnto6ejovr', 0, 0, '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_group_roles`
--

CREATE TABLE `modx_user_group_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `authority` int UNSIGNED NOT NULL DEFAULT '9999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_user_group_roles`
--

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_group_settings`
--

CREATE TABLE `modx_user_group_settings` (
  `group` int UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL,
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_messages`
--

CREATE TABLE `modx_user_messages` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(191) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int NOT NULL DEFAULT '0',
  `recipient` int NOT NULL DEFAULT '0',
  `private` tinyint NOT NULL DEFAULT '0',
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_settings`
--

CREATE TABLE `modx_user_settings` (
  `user` int NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_workspaces`
--

CREATE TABLE `modx_workspaces` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `path` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `attributes` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_workspaces`
--

INSERT INTO `modx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '{core_path}', '2021-10-11 18:37:13', 1, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_actions`
--
ALTER TABLE `modx_access_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_category`
--
ALTER TABLE `modx_access_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_context`
--
ALTER TABLE `modx_access_context`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template` (`template`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `class` (`class`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `set` (`set`),
  ADD KEY `action` (`action`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`),
  ADD KEY `for_parent` (`for_parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_actions`
--
ALTER TABLE `modx_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `controller` (`controller`);

--
-- Индексы таблицы `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`action`),
  ADD KEY `type` (`type`),
  ADD KEY `tab` (`tab`);

--
-- Индексы таблицы `modx_active_users`
--
ALTER TABLE `modx_active_users`
  ADD PRIMARY KEY (`internalKey`);

--
-- Индексы таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`parent`,`category`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_categories_closure`
--
ALTER TABLE `modx_categories_closure`
  ADD PRIMARY KEY (`ancestor`,`descendant`);

--
-- Индексы таблицы `modx_class_map`
--
ALTER TABLE `modx_class_map`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`),
  ADD KEY `parent_class` (`parent_class`),
  ADD KEY `name_field` (`name_field`);

--
-- Индексы таблицы `modx_content_type`
--
ALTER TABLE `modx_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_context`
--
ALTER TABLE `modx_context`
  ADD PRIMARY KEY (`key`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_context_resource`
--
ALTER TABLE `modx_context_resource`
  ADD PRIMARY KEY (`context_key`,`resource`);

--
-- Индексы таблицы `modx_context_setting`
--
ALTER TABLE `modx_context_setting`
  ADD PRIMARY KEY (`context_key`,`key`);

--
-- Индексы таблицы `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `hide_trees` (`hide_trees`);

--
-- Индексы таблицы `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `lexicon` (`lexicon`);

--
-- Индексы таблицы `modx_dashboard_widget_placement`
--
ALTER TABLE `modx_dashboard_widget_placement`
  ADD PRIMARY KEY (`dashboard`,`widget`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Индексы таблицы `modx_element_property_sets`
--
ALTER TABLE `modx_element_property_sets`
  ADD PRIMARY KEY (`element`,`element_class`,`property_set`);

--
-- Индексы таблицы `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `active` (`active`);

--
-- Индексы таблицы `modx_fc_profiles_usergroups`
--
ALTER TABLE `modx_fc_profiles_usergroups`
  ADD PRIMARY KEY (`usergroup`,`profile`);

--
-- Индексы таблицы `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile` (`profile`),
  ADD KEY `action` (`action`),
  ADD KEY `active` (`active`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `modx_formit_forms`
--
ALTER TABLE `modx_formit_forms`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `topic` (`topic`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_occurred` (`user`,`occurred`);

--
-- Индексы таблицы `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `is_stream` (`is_stream`);

--
-- Индексы таблицы `modx_media_sources_contexts`
--
ALTER TABLE `modx_media_sources_contexts`
  ADD PRIMARY KEY (`source`,`context_key`);

--
-- Индексы таблицы `modx_media_sources_elements`
--
ALTER TABLE `modx_media_sources_elements`
  ADD PRIMARY KEY (`source`,`object`,`object_class`,`context_key`);

--
-- Индексы таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`),
  ADD KEY `dashboard` (`dashboard`);

--
-- Индексы таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_menus`
--
ALTER TABLE `modx_menus`
  ADD PRIMARY KEY (`text`),
  ADD KEY `parent` (`parent`),
  ADD KEY `action` (`action`),
  ADD KEY `namespace` (`namespace`);

--
-- Индексы таблицы `modx_migx_configs`
--
ALTER TABLE `modx_migx_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Индексы таблицы `modx_migx_config_elements`
--
ALTER TABLE `modx_migx_config_elements`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_migx_elements`
--
ALTER TABLE `modx_migx_elements`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_migx_formtabs`
--
ALTER TABLE `modx_migx_formtabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Индексы таблицы `modx_migx_formtab_fields`
--
ALTER TABLE `modx_migx_formtab_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`),
  ADD KEY `formtab_id` (`formtab_id`),
  ADD KEY `field` (`field`),
  ADD KEY `pos` (`pos`);

--
-- Индексы таблицы `modx_namespaces`
--
ALTER TABLE `modx_namespaces`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `modx_property_set`
--
ALTER TABLE `modx_property_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`);

--
-- Индексы таблицы `modx_register_messages`
--
ALTER TABLE `modx_register_messages`
  ADD PRIMARY KEY (`topic`,`id`),
  ADD KEY `created` (`created`),
  ADD KEY `valid` (`valid`),
  ADD KEY `accessed` (`accessed`),
  ADD KEY `accesses` (`accesses`),
  ADD KEY `expires` (`expires`);

--
-- Индексы таблицы `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue` (`queue`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_session`
--
ALTER TABLE `modx_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`);

--
-- Индексы таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `pub_date` (`pub_date`),
  ADD KEY `unpub_date` (`unpub_date`),
  ADD KEY `parent` (`parent`),
  ADD KEY `isfolder` (`isfolder`),
  ADD KEY `template` (`template`),
  ADD KEY `menuindex` (`menuindex`),
  ADD KEY `searchable` (`searchable`),
  ADD KEY `cacheable` (`cacheable`),
  ADD KEY `hidemenu` (`hidemenu`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `context_key` (`context_key`),
  ADD KEY `uri` (`uri`(191)),
  ADD KEY `uri_override` (`uri_override`),
  ADD KEY `hide_children_in_tree` (`hide_children_in_tree`),
  ADD KEY `show_in_tree` (`show_in_tree`),
  ADD KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`);
ALTER TABLE `modx_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`);

--
-- Индексы таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_plugin_events`
--
ALTER TABLE `modx_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`event`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `moduleguid` (`moduleguid`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templatename` (`templatename`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `rank` (`rank`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmplvar_template` (`tmplvarid`,`documentgroup`);

--
-- Индексы таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tv_cnt` (`tmplvarid`,`contentid`),
  ADD KEY `tmplvarid` (`tmplvarid`),
  ADD KEY `contentid` (`contentid`);

--
-- Индексы таблицы `modx_site_tmplvar_templates`
--
ALTER TABLE `modx_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Индексы таблицы `modx_system_eventnames`
--
ALTER TABLE `modx_system_eventnames`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `modx_system_settings`
--
ALTER TABLE `modx_system_settings`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `modx_thumb_images`
--
ALTER TABLE `modx_thumb_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image` (`image`);

--
-- Индексы таблицы `modx_transport_packages`
--
ALTER TABLE `modx_transport_packages`
  ADD PRIMARY KEY (`signature`),
  ADD KEY `workspace` (`workspace`),
  ADD KEY `provider` (`provider`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `package_name` (`package_name`),
  ADD KEY `version_major` (`version_major`),
  ADD KEY `version_minor` (`version_minor`),
  ADD KEY `version_patch` (`version_patch`),
  ADD KEY `release` (`release`),
  ADD KEY `release_index` (`release_index`);

--
-- Индексы таблицы `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `api_key` (`api_key`),
  ADD KEY `username` (`username`),
  ADD KEY `active` (`active`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `modx_users`
--
ALTER TABLE `modx_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `remote_key` (`remote_key`),
  ADD KEY `primary_group` (`primary_group`);

--
-- Индексы таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `internalKey` (`internalKey`);

--
-- Индексы таблицы `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `authority` (`authority`);

--
-- Индексы таблицы `modx_user_group_settings`
--
ALTER TABLE `modx_user_group_settings`
  ADD PRIMARY KEY (`group`,`key`);

--
-- Индексы таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_user_settings`
--
ALTER TABLE `modx_user_settings`
  ADD PRIMARY KEY (`user`,`key`);

--
-- Индексы таблицы `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_actions`
--
ALTER TABLE `modx_access_actions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_category`
--
ALTER TABLE `modx_access_category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_context`
--
ALTER TABLE `modx_access_context`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT для таблицы `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actions`
--
ALTER TABLE `modx_actions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT для таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `modx_class_map`
--
ALTER TABLE `modx_class_map`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `modx_content_type`
--
ALTER TABLE `modx_content_type`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_formit_forms`
--
ALTER TABLE `modx_formit_forms`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT для таблицы `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_migx_configs`
--
ALTER TABLE `modx_migx_configs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_migx_config_elements`
--
ALTER TABLE `modx_migx_config_elements`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_migx_elements`
--
ALTER TABLE `modx_migx_elements`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_migx_formtabs`
--
ALTER TABLE `modx_migx_formtabs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_migx_formtab_fields`
--
ALTER TABLE `modx_migx_formtab_fields`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `modx_property_set`
--
ALTER TABLE `modx_property_set`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_thumb_images`
--
ALTER TABLE `modx_thumb_images`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_users`
--
ALTER TABLE `modx_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
