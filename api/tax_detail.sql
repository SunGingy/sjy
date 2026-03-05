-- 并税详情表
CREATE TABLE tax_detail (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '序号',
    tax_no VARCHAR(100) NOT NULL UNIQUE COMMENT '并税单号',
    tax_start_date DATE COMMENT '并税开始日期',
    tax_end_date DATE COMMENT '并税结束日期',
    total_insurance_days INT COMMENT '保险总天数',
    tax_days INT COMMENT '并税天数',
    tax_status VARCHAR(20) COMMENT '并税状态',
    push_status VARCHAR(20) COMMENT '推送状态',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    INDEX idx_tax_no (tax_no),
    INDEX idx_tax_status (tax_status),
    INDEX idx_push_status (push_status),
    INDEX idx_tax_date_range (tax_start_date, tax_end_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='并税详情表';
