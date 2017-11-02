DROP TABLE if EXISTS sys_employee;
CREATE TABLE sys_employee(
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  employee_name VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  password VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  employee_phone VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系方式',
  employee_email VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱地址',
  employee_birthday TIMESTAMP NULL DEFAULT NULL COMMENT '生日',
  employee_edu_school VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '毕业院校',
  employee_degree VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '学位',
  create_time TIMESTAMP NULL DEFAULT NULL COMMENT '创建时间(注册时间)',
  update_time TIMESTAMP NULL DEFAULT NULL COMMENT '更新时间',
  employee_status BIGINT DEFAULT '1' COMMENT '用户状态 1：在职，2：离职',
  PRIMARY KEY (id),
  UNIQUE KEY sys_employee_name(employee_name),
  INDEX sys_employee_name_index(employee_name)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE='utf8_general_ci' COMMENT='用户信息表';

DROP TABLE IF EXISTS sys_role;
CREATE TABLE sys_role (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  role_cn_name VARCHAR(128) NOT NULL  COMMENT '角色中文名称',
  role_en_name VARCHAR(128) NOT NULL COMMENT '角色英文名称',
  role_type INT(4) NOT NULL DEFAULT '1' COMMENT '角色类型(1:业务角色;2:管理角色 ;3:系统内置角色)',
  is_active TINYINT(1) NOT NULL DEFAULT '1' COMMENT '是否有效 1：有效 0：无效',
  remark VARCHAR(1024) NULL DEFAULT NULL COMMENT '备注',
  creator BIGINT(20) NULL DEFAULT NULL COMMENT '创建人',
  create_time TIMESTAMP NULL DEFAULT NULL COMMENT '创建时间',
  updater BIGINT(20) NULL DEFAULT NULL COMMENT '更新人',
  update_time TIMESTAMP NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (id),
  UNIQUE KEY sys_role_en_name(role_en_name),
  INDEX sys_role_en_name_index(role_en_name)
)COMMENT='角色信息表' DEFAULT CHARSET=utf8 COLLATE='utf8_general_ci' ENGINE=InnoDB AUTO_INCREMENT=1;


CREATE TABLE sys_permission(
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  permission_cn_name VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '权限中文名称',
  permission_en_name VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '权限英文名称',
  is_active TINYINT(1) NOT NULL DEFAULT '1' COMMENT '是否有效 1：有效 0：无效',
  create_time TIMESTAMP NULL DEFAULT NULL COMMENT '创建时间',
  update_time TIMESTAMP NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (id),
  UNIQUE KEY sys_permission_en_name(permission_en_name),
  INDEX sys_permission_en_name_index(permission_en_name)
)COMMENT='权限信息表' DEFAULT CHARSET=utf8 COLLATE='utf8_general_ci' ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE sys_user_role(
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '用户角色关联表id',
  user_name VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  role_en_name VARCHAR(128) NOT NULL COMMENT '角色英文名称',
  create_time TIMESTAMP NULL DEFAULT NULL COMMENT '创建时间',
  update_time TIMESTAMP NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (id),
  INDEX sys_user_role_user_name_role_en_name(user_name, role_en_name)
)COMMENT='用户角色关联表' DEFAULT CHARSET=utf8 COLLATE='utf8_general_ci' ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE sys_user_permission(
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '用户权限关联表id',
  user_name VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  permission_en_name VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '权限英文名称',
  create_time TIMESTAMP NULL DEFAULT NULL COMMENT '创建时间',
  update_time TIMESTAMP NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (id),
  INDEX sys_user_permission_user_name_permission_en_name(user_name, permission_en_name)
)COMMENT='用户权限关联表' DEFAULT CHARSET=utf8 COLLATE='utf8_general_ci' ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE sys_role_permission(
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '角色权限关联表id',
  role_en_name VARCHAR(128) NOT NULL COMMENT '角色英文名称',
  permission_en_name VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '权限英文名称',
  create_time TIMESTAMP NULL DEFAULT NULL COMMENT '创建时间',
  update_time TIMESTAMP NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (id),
  INDEX sys_role_permission_role_name_permission_name(role_en_name, permission_en_name)
)COMMENT='角色权限关联表' DEFAULT CHARSET=utf8 COLLATE='utf8_general_ci' ENGINE=InnoDB AUTO_INCREMENT=1;

/** ADD BY SONGJIUHUA ON 2017/07/14 */
DROP TABLE IF EXISTS sys_base_info;
CREATE TABLE sys_base_info(
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  school_introduction TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '学校简介',
  school_culture TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '校园文化',
  school_teacher_info TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '师资介绍',
  school_contact_name VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '学校负责人姓名',
  school_contact_phone VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '学校联系人电话',
  school_address VARCHAR(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '学校所在地址',
  create_time TIMESTAMP NULL DEFAULT NULL COMMENT '创建时间',
  update_time TIMESTAMP NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (id)
)COMMENT='学校基本信息表' DEFAULT CHARSET=utf8 COLLATE='utf8_general_ci' ENGINE=InnoDB AUTO_INCREMENT=1;

DROP TABLE IF EXISTS sys_student_info;
CREATE TABLE sys_student_info(
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  student_no BIGINT(20) NOT NULL COMMIT '学号',
  student_name VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '学生姓名',
  student_birthday TIMESTAMP NULL DEFAULT NULL COMMENT '学生生日',
  student_gender VARCHAR(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '学生性别 M:男 F：女',
  student_class VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '班级',
  student_grade VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '年级',
  enroll_time TIMESTAMP NULL DEFAULT NULL COMMENT '入学时间',
  tuition_fee DECIMAL (18,2) DEFAULT NULL COMMENT '学费',
  student_email VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '学生邮箱',
  student_phone VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '学生联系电话',
  remark VARCHAR(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  create_time TIMESTAMP NULL DEFAULT NULL COMMENT '创建时间',
  update_time TIMESTAMP NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (id),
  UNIQUE KEY sys_student_info_student_no(student_no),
  INDEX sys_student_info_student_no_index(student_no)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE='utf8_general_ci' COMMENT='学生信息表';
