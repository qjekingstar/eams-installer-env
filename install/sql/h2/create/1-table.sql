    create table D_GOOD_THESISES (
        id bigint not null,
        file_name varchar(255),
        point float,
        title varchar(255),
        year varchar(255),
        PROCESS_ID bigint,
        RANK_ID bigint,
        std_id bigint,
        primary key (id)
    );
    create table D_THESIS_ANNOTATE_EVALUATES (
        ACTIVE_ID binary(255) not null,
        EVALUATE_PROJECT_ID binary(255) not null,
        primary key (ACTIVE_ID, EVALUATE_PROJECT_ID)
    );
    create table D_THESIS_DOCUMENT_NOTICES (
        DOCUMENT_ID bigint not null,
        NOTICE_ID bigint not null,
        primary key (DOCUMENT_ID, NOTICE_ID)
    );
    create table D_THESIS_DOCUMENT_TACHES (
        id bigint not null,
        active_id bigint,
        active_type_id binary(255),
        document_id bigint,
        primary key (id)
    );
    create table D_THESIS_NOTICE_DEPARTS (
        NOTICE_ID bigint not null,
        DEPART_ID integer not null,
        primary key (NOTICE_ID, DEPART_ID)
    );
    create table D_THESIS_PROCESS_ACTIVETYPE (
        PROCESS_ID bigint not null,
        ACTIVETYPE_ID binary(255) not null,
        XL integer not null,
        primary key (PROCESS_ID, XL)
    );
    create table D_THESIS_PROCESS_STDS (
        PROCESS_ID bigint not null,
        STUDENT_ID bigint not null,
        primary key (PROCESS_ID, STUDENT_ID)
    );
    create table Q_EVA_TEACH_REMESSAGE (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        remessage varchar(255),
        visible boolean not null,
        text_evaluation_id bigint,
        primary key (id)
    );
    create table Q_EVA_TEA_REM_STDS (
        q_eva_teach_remessage_id bigint not null,
        student_id bigint not null,
        primary key (q_eva_teach_remessage_id, student_id)
    );
    create table ST_DA_APPLIES (
        id bigint not null,
        apply_at timestamp,
        passed boolean,
        published boolean not null,
        remark varchar(255),
        season_id bigint,
        std_id bigint,
        primary key (id)
    );
    create table ST_DA_ITEM_RESULTS (
        id bigint not null,
        eng_name varchar(255),
        name varchar(255),
        passed boolean,
        result varchar(255),
        apply_id bigint,
        primary key (id)
    );
    create table ST_DA_LOGS (
        id bigint not null,
        audit_by varchar(255),
        detail varchar(255),
        ip varchar(255),
        operate_at timestamp,
        passed boolean not null,
        season varchar(255),
        standard_used varchar(255),
        std_id bigint,
        primary key (id)
    );
    create table ST_DA_SEASONS (
        id bigint not null,
        effective_at timestamp,
        invalid_at timestamp,
        name varchar(255),
        remark varchar(255),
        grades varchar(255),
        project_id integer,
        primary key (id)
    );
    create table ST_DA_SEASONS_DEPARTMENTS (
        SEASON_ID bigint not null,
        DEPARTMENT_ID integer not null,
        primary key (SEASON_ID, DEPARTMENT_ID)
    );
    create table ST_DA_SEASONS_DIRECTIONS (
        SEASON_ID bigint not null,
        DIRECTION_ID integer not null,
        primary key (SEASON_ID, DIRECTION_ID)
    );
    create table ST_DA_SEASONS_EDUCATIONS (
        SEASON_ID bigint not null,
        EDUCATION_ID integer not null,
        primary key (SEASON_ID, EDUCATION_ID)
    );
    create table ST_DA_SEASONS_MAJORS (
        SEASON_ID bigint not null,
        MAJOR_ID integer not null,
        primary key (SEASON_ID, MAJOR_ID)
    );
    create table ST_DA_SEASONS_SEASONS (
        SEASON_ID bigint not null,
        OLD_SEASON_ID bigint not null,
        primary key (SEASON_ID, OLD_SEASON_ID)
    );
    create table ST_DA_SEASONS_STD_TYPES (
        SEASON_ID bigint not null,
        STD_TYPE_ID integer not null,
        primary key (SEASON_ID, STD_TYPE_ID)
    );
    create table ST_DA_STANDARDS (
        id bigint not null,
        effective_at timestamp,
        invalid_at timestamp,
        name varchar(255),
        remark varchar(255),
        grades varchar(255),
        project_id integer,
        primary key (id)
    );
    create table ST_DA_STANDARDS_DEPARTMENTS (
        STANDARD_ID bigint not null,
        DEPARTMENT_ID integer not null,
        primary key (STANDARD_ID, DEPARTMENT_ID)
    );
    create table ST_DA_STANDARDS_DIRECTIONS (
        STANDARD_ID bigint not null,
        DIRECTION_ID integer not null,
        primary key (STANDARD_ID, DIRECTION_ID)
    );
    create table ST_DA_STANDARDS_EDUCATIONS (
        STANDARD_ID bigint not null,
        EDUCATION_ID integer not null,
        primary key (STANDARD_ID, EDUCATION_ID)
    );
    create table ST_DA_STANDARDS_MAJORS (
        STANDARD_ID bigint not null,
        MAJOR_ID integer not null,
        primary key (STANDARD_ID, MAJOR_ID)
    );
    create table ST_DA_STANDARDS_RULE_CFGS (
        STANDARD_ID bigint not null,
        RULE_CONFIG_ID integer not null,
        primary key (STANDARD_ID, RULE_CONFIG_ID)
    );
    create table ST_DA_STANDARDS_STD_TYPES (
        STANDARD_ID bigint not null,
        STD_TYPE_ID integer not null,
        primary key (STANDARD_ID, STD_TYPE_ID)
    );
    create table ST_GA_ITEM_RESULTS (
        id bigint not null,
        eng_name varchar(255),
        name varchar(255),
        passed boolean,
        result varchar(255),
        audit_result_id bigint,
        primary key (id)
    );
    create table ST_GA_LOGS (
        id bigint not null,
        audit_by varchar(255),
        detail varchar(255),
        ip varchar(255),
        operate_at timestamp,
        passed boolean not null,
        season varchar(255),
        standard_used varchar(255),
        std_id bigint,
        primary key (id)
    );
    create table ST_GA_RESULTS (
        id bigint not null,
        passed boolean,
        published boolean not null,
        remark varchar(255),
        graduate_state_id integer,
        season_id bigint,
        std_id bigint,
        primary key (id)
    );
    create table ST_GA_SEASONS (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        graduate_on date,
        name varchar(255),
        project_id integer,
        primary key (id)
    );
    create table ST_GA_STANDARDS (
        id bigint not null,
        effective_on date,
        invalid_on date,
        name varchar(255),
        remark varchar(255),
        grades varchar(255),
        project_id integer,
        primary key (id)
    );
    create table ST_GA_STANDARDS_DEPARTMENTS (
        STANDARD_ID bigint not null,
        DEPARTMENT_ID integer not null,
        primary key (STANDARD_ID, DEPARTMENT_ID)
    );
    create table ST_GA_STANDARDS_DIRECTIONS (
        STANDARD_ID bigint not null,
        DIRECTION_ID integer not null,
        primary key (STANDARD_ID, DIRECTION_ID)
    );
    create table ST_GA_STANDARDS_EDUCATIONS (
        STANDARD_ID bigint not null,
        EDUCATION_ID integer not null,
        primary key (STANDARD_ID, EDUCATION_ID)
    );
    create table ST_GA_STANDARDS_MAJORS (
        STANDARD_ID bigint not null,
        MAJOR_ID integer not null,
        primary key (STANDARD_ID, MAJOR_ID)
    );
    create table ST_GA_STANDARDS_RULE_CFGS (
        STANDARD_ID bigint not null,
        RULE_CONFIG_ID integer not null,
        primary key (STANDARD_ID, RULE_CONFIG_ID)
    );
    create table ST_GA_STANDARDS_STD_TYPES (
        STANDARD_ID bigint not null,
        STD_TYPE_ID integer not null,
        primary key (STANDARD_ID, STD_TYPE_ID)
    );
    create table ST_PA_COURSE_RESULTS (
        id bigint not null,
        compulsory boolean not null,
        passed boolean not null,
        remark varchar(255),
        scores varchar(255),
        course_id bigint,
        group_result_id bigint,
        primary key (id)
    );
    create table ST_PA_GROUP_RESULTS (
        id bigint not null,
        credits_completed float not null,
        credits_converted float not null,
        credits_required float not null,
        num_completed integer not null,
        num_required integer not null,
        name varchar(255),
        passed boolean not null,
        relation varchar(255),
        course_type_id integer,
        parent_id bigint,
        plan_result_id bigint,
        primary key (id)
    );
    create table ST_PA_LOGS (
        id bigint not null,
        audit_by varchar(255),
        detail varchar(255),
        ip varchar(255),
        operate_at timestamp,
        passed boolean not null,
        standard_used varchar(255),
        std_id bigint,
        primary key (id)
    );
    create table ST_PA_RESULTS (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        credits_completed float not null,
        credits_converted float not null,
        credits_required float not null,
        num_completed integer not null,
        num_required integer not null,
        auditor varchar(255),
        depart_opinion varchar(255),
        final_opinion varchar(255),
        gpa float,
        partial boolean not null,
        passed boolean not null,
        published boolean not null,
        remark varchar(255),
        updates varchar(255),
        std_id bigint,
        primary key (id)
    );
    create table ST_PA_STANDARDS (
        id bigint not null,
        effective_at timestamp,
        invalid_at timestamp,
        name varchar(255),
        remark varchar(255),
        grades varchar(255),
        convert_target_course_type_id integer,
        project_id integer,
        primary key (id)
    );
    create table ST_PA_STANDARDS_CONVERTABLES (
        STANDARD_ID bigint not null,
        CONVERTABLE_TYPE_ID integer not null,
        primary key (STANDARD_ID, CONVERTABLE_TYPE_ID)
    );
    create table ST_PA_STANDARDS_DEPARTMENTS (
        STANDARD_ID bigint not null,
        DEPARTMENT_ID integer not null,
        primary key (STANDARD_ID, DEPARTMENT_ID)
    );
    create table ST_PA_STANDARDS_DIRECTIONS (
        STANDARD_ID bigint not null,
        DIRECTION_ID integer not null,
        primary key (STANDARD_ID, DIRECTION_ID)
    );
    create table ST_PA_STANDARDS_DISAUDITS (
        STANDARD_ID bigint not null,
        DISAUDIT_TYPE_ID integer not null,
        primary key (STANDARD_ID, DISAUDIT_TYPE_ID)
    );
    create table ST_PA_STANDARDS_EDUCATIONS (
        STANDARD_ID bigint not null,
        EDUCATION_ID integer not null,
        primary key (STANDARD_ID, EDUCATION_ID)
    );
    create table ST_PA_STANDARDS_MAJORS (
        STANDARD_ID bigint not null,
        MAJOR_ID integer not null,
        primary key (STANDARD_ID, MAJOR_ID)
    );
    create table ST_PA_STANDARDS_STD_TYPES (
        STANDARD_ID bigint not null,
        STD_TYPE_ID integer not null,
        primary key (STANDARD_ID, STD_TYPE_ID)
    );
    create table SYS_MSG_CFG_CATEGORIES (
        SYS_MSG_CFG_ID bigint not null,
        CATEGORY_ID integer not null,
        primary key (SYS_MSG_CFG_ID, CATEGORY_ID)
    );
    create table T_BOOKORDER_CONFIGS_SEMESTERS (
        textbook_order_config_id bigint not null,
        semester_id integer not null,
        primary key (textbook_order_config_id, semester_id)
    );
    create table T_BOOK_REQ_CONFIGS_SEMESTERS (
        book_require_config_bean_id bigint not null,
        semester_id integer not null,
        primary key (book_require_config_bean_id, semester_id)
    );
    create table T_CONS_COURS_TYPE_MAX_COUNT (
        std_course_count_constraint_id bigint not null,
        COURSE_COUNT integer,
        COURSE_TYPE_ID integer not null,
        primary key (std_course_count_constraint_id, COURSE_TYPE_ID)
    );
    create table T_COURSE_TYPE_CREDIT_CONS (
        id bigint not null,
        grades varchar(255),
        limit_credit float not null,
        course_type_id integer,
        education_id integer,
        semester_id integer,
        primary key (id)
    );
    create table T_ELECT_PROFIES_ELECT_CFGS (
        election_profile_id bigint not null,
        rule_config_id integer not null,
        primary key (election_profile_id, rule_config_id)
    );
    create table T_ELECT_PROFIES_ELECT_LESSONS (
        election_profile_id bigint not null,
        LESSON_ID bigint not null,
        primary key (election_profile_id, LESSON_ID)
    );
    create table T_ELECT_PROFIES_GENERAL_CFGS (
        election_profile_id bigint not null,
        rule_config_id integer not null,
        primary key (election_profile_id, rule_config_id)
    );
    create table T_ELECT_PROFIES_WD_LESSONS (
        election_profile_id bigint not null,
        LESSON_ID bigint not null,
        primary key (election_profile_id, LESSON_ID)
    );
    create table T_ELECT_PROFIES_WITHDRAW_CFGS (
        election_profile_id bigint not null,
        rule_config_id integer not null,
        primary key (election_profile_id, rule_config_id)
    );
    create table T_ELECT_PROFILES_EDUCATIONS (
        election_profile_id bigint not null,
        EDUCATION_ID integer not null,
        primary key (election_profile_id, EDUCATION_ID)
    );
    create table T_ELECT_PROFILES_PROJECTS (
        election_profile_id bigint not null,
        project_id integer not null,
        primary key (election_profile_id, project_id)
    );
    create table T_EXAM_APPLY_PARAM (
        id bigint not null,
        finish_date timestamp,
        is_open_election boolean,
        notice varchar(255),
        start_date timestamp,
        project_id integer,
        semester_id integer,
        primary key (id)
    );
    create table T_LESSON_FOR_D_L_IDS (
        lesson_for_depart_id bigint not null,
        LESSON_ID bigint
    );
    create table T_MAJOR_PLAN_CG_MODIFIES (
        id bigint not null,
        apply_date timestamp,
        dep_opinion varchar(255),
        dep_sign varchar(255),
        flag integer,
        plan_id bigint,
        practice_sign varchar(255),
        reason varchar(255),
        reply_date timestamp,
        requisition_type varchar(255),
        teach_opinion varchar(255),
        teach_sign varchar(255),
        assessor_id bigint,
        department_id integer,
        new_plan_course_group_id bigint,
        old_plan_course_group_id bigint,
        proposer_id bigint,
        primary key (id)
    );
    create table T_MAJOR_PLAN_CG_MOD_AFTERS (
        id bigint not null,
        course_num integer not null,
        credits float not null,
        group_id bigint,
        relation varchar(255),
        remark varchar(500),
        term_credits varchar(50),
        course_type_id integer,
        fake_course_type_id integer,
        primary key (id)
    );
    create table T_MAJOR_PLAN_CG_MOD_BEFORS (
        id bigint not null,
        course_num integer not null,
        credits float not null,
        group_id bigint,
        relation varchar(255),
        remark varchar(500),
        term_credits varchar(50),
        course_type_id integer,
        fake_course_type_id integer,
        primary key (id)
    );
    create table T_MAJOR_PLAN_C_MODIFIES (
        id bigint not null,
        apply_date timestamp,
        dep_opinion varchar(255),
        dep_sign varchar(255),
        flag integer,
        plan_id bigint,
        practice_sign varchar(255),
        reason varchar(255),
        reply_date timestamp,
        requisition_type varchar(255),
        teach_opinion varchar(255),
        teach_sign varchar(255),
        assessor_id bigint,
        department_id integer,
        new_plan_course_id bigint,
        old_plan_course_id bigint,
        proposer_id bigint,
        primary key (id)
    );
    create table T_MAJOR_PLAN_C_MOD_AFTERS (
        id bigint not null,
        compulsory boolean not null,
        group_id bigint,
        remark varchar(255),
        terms varchar(255),
        course_id bigint,
        department_id integer,
        fake_course_type_id integer,
        primary key (id)
    );
    create table T_MAJOR_PLAN_C_MOD_AFT_C_H (
        MAJOR_PLAN_C_MOD_AFT_ID bigint not null,
        COURSE_HOUR integer,
        COURSE_HOUR_TYPE_ID integer not null,
        primary key (MAJOR_PLAN_C_MOD_AFT_ID, COURSE_HOUR_TYPE_ID)
    );
    create table T_MAJOR_PLAN_C_MOD_BEFORS (
        id bigint not null,
        compulsory boolean not null,
        group_id bigint,
        remark varchar(255),
        terms varchar(255),
        course_id bigint,
        department_id integer,
        fake_course_type_id integer,
        primary key (id)
    );
    create table T_MAJOR_PLAN_C_MOD_BEF_C_H (
        MAJOR_PLAN_C_MOD_BEF_ID bigint not null,
        COURSE_HOUR integer,
        COURSE_HOUR_TYPE_ID integer not null,
        primary key (MAJOR_PLAN_C_MOD_BEF_ID, COURSE_HOUR_TYPE_ID)
    );
    create table T_MA_COURSE_SUBS (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        grades varchar(255),
        remark varchar(255),
        department_id integer,
        direction_id integer,
        education_id integer,
        major_id integer,
        project_id integer,
        std_type_id integer,
        primary key (id)
    );
    create table T_MA_COURSE_SUBS_ORIGS (
        t_ma_course_subs_id bigint not null,
        course_id bigint not null,
        primary key (t_ma_course_subs_id, course_id)
    );
    create table T_MA_COURSE_SUBS_SUBS (
        t_ma_course_subs_id bigint not null,
        course_id bigint not null,
        primary key (t_ma_course_subs_id, course_id)
    );
    create table T_MA_PLAN_COURSES (
        id bigint not null,
        compulsory boolean not null,
        remark varchar(255),
        terms varchar(255),
        course_id bigint,
        department_id integer,
        exam_mode_id integer,
        course_group_id bigint,
        primary key (id)
    );
    create table T_MA_PLAN_C_GROUPS (
        id bigint not null,
        course_num integer not null,
        credits float not null,
        relation varchar(255),
        remark varchar(255),
        term_credits varchar(255),
        micro_name varchar(255),
        course_type_id integer,
        direction_id integer,
        parent_id bigint,
        plan_id bigint not null,
        share_course_group_id bigint,
        OrderInGroup integer,
        OrderInPlan integer,
        primary key (id)
    );
    create table T_MA_PLAN_C_GROUPS_REQ_CORS (
        t_ma_plan_c_groups_id bigint not null,
        course_id bigint not null,
        primary key (t_ma_plan_c_groups_id, course_id)
    );
    create table T_MA_PLAN_C_GROUPS_XCL_CORS (
        t_ma_plan_c_groups_id bigint not null,
        course_id bigint not null,
        primary key (t_ma_plan_c_groups_id, course_id)
    );
    create table T_ORI_PLANS (
        id bigint not null,
        credits float not null,
        terms_count integer,
        end_term integer,
        start_term integer,
        program_id bigint,
        primary key (id)
    );
    create table T_ORI_PLAN_COURSES (
        id bigint not null,
        compulsory boolean not null,
        remark varchar(255),
        terms varchar(255),
        course_id bigint,
        department_id integer,
        exam_mode_id integer,
        course_group_id bigint,
        primary key (id)
    );
    create table T_ORI_PLAN_C_GROUPS (
        id bigint not null,
        course_num integer not null,
        credits float not null,
        relation varchar(255),
        remark varchar(255),
        term_credits varchar(255),
        micro_name varchar(255),
        course_type_id integer,
        direction_id integer,
        PARENT_ID bigint,
        PLAN_ID bigint not null,
        share_course_group_id bigint,
        OrderInGroup integer,
        OrderInPlan integer,
        primary key (id)
    );
    create table T_ORI_PLAN_C_GROUPS_REQ_CORS (
        t_ori_plan_c_groups_id bigint not null,
        course_id bigint not null,
        primary key (t_ori_plan_c_groups_id, course_id)
    );
    create table T_ORI_PLAN_C_GROUPS_XCL_CORS (
        t_ori_plan_c_groups_id bigint not null,
        course_id bigint not null,
        primary key (t_ori_plan_c_groups_id, course_id)
    );
    create table T_PER_PLANS (
        id bigint not null,
        credits float not null,
        terms_count integer,
        audit_state varchar(255),
        effective_on date,
        invalid_on date,
        remark varchar(255),
        std_id bigint,
        primary key (id)
    );
    create table T_PER_PLAN_COURSES (
        id bigint not null,
        compulsory boolean not null,
        remark varchar(255),
        terms varchar(255),
        course_id bigint,
        department_id integer,
        exam_mode_id integer,
        course_group_id bigint,
        primary key (id)
    );
    create table T_PER_PLAN_C_GROUPS (
        id bigint not null,
        course_num integer not null,
        credits float not null,
        relation varchar(255),
        remark varchar(255),
        term_credits varchar(255),
        course_type_id integer,
        PARENT_ID bigint,
        PLAN_ID bigint not null,
        share_course_group_id bigint,
        OrderInGroup integer,
        OrderInPlan integer,
        primary key (id)
    );
    create table T_PER_PLAN_C_GROUPS_REQ_CORS (
        t_per_plan_c_groups_id bigint not null,
        course_id bigint not null,
        primary key (t_per_plan_c_groups_id, course_id)
    );
    create table T_PER_PLAN_C_GROUPS_XCL_CORS (
        t_per_plan_c_groups_id bigint not null,
        course_id bigint not null,
        primary key (t_per_plan_c_groups_id, course_id)
    );
    create table T_SHR_PLANS (
        id bigint not null,
        credits float not null,
        terms_count integer,
        created_at timestamp,
        effective_on date,
        invalid_on date,
        name varchar(255),
        updated_at timestamp,
        education_id integer,
        project_id integer,
        primary key (id)
    );
    create table T_SHR_PLAN_COURSES (
        id bigint not null,
        compulsory boolean not null,
        remark varchar(255),
        terms varchar(255),
        course_id bigint,
        department_id integer,
        exam_mode_id integer,
        course_group_id bigint,
        primary key (id)
    );
    create table T_SHR_PLAN_C_GROUPS (
        id bigint not null,
        course_num integer not null,
        credits float not null,
        relation varchar(255),
        remark varchar(255),
        term_credits varchar(255),
        course_type_id integer,
        language_id integer,
        parent_id bigint,
        plan_id bigint,
        primary key (id)
    );
    create table T_STD_COURSE_COUNT_CONS (
        id bigint not null,
        max_course_count integer,
        semester_id integer,
        std_id bigint,
        primary key (id)
    );
    create table T_STD_COURSE_SUBS (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        remark varchar(255),
        std_id bigint,
        primary key (id)
    );
    create table T_STD_COURSE_SUBS_ORIGS (
        t_std_course_subs_id bigint not null,
        course_id bigint not null,
        primary key (t_std_course_subs_id, course_id)
    );
    create table T_STD_COURSE_SUBS_SUBS (
        t_std_course_subs_id bigint not null,
        course_id bigint not null,
        primary key (t_std_course_subs_id, course_id)
    );
    create table T_STD_TOTAL_CREDIT_CONS (
        id bigint not null,
        max_credit float,
        std_id bigint,
        primary key (id)
    );
    create table XB_EXCHANGE_TYPES (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table XB_EXCH_SCHOOL_TYPES (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table c_adminclasses (
        id integer not null,
        created_at timestamp,
        updated_at timestamp,
        abbreviation varchar(255),
        code varchar(255),
        effective_at timestamp,
        grade varchar(255),
        invalid_at timestamp,
        name varchar(255),
        plan_count integer not null,
        remark varchar(255),
        std_count integer not null,
        project_id integer,
        education_id integer,
        department_id integer,
        direction_id integer,
        major_id integer,
        std_type_id integer,
        primary key (id)
    );
    create table c_adminclasses_instructors (
        adminclass_id integer not null,
        teacher_id bigint not null
    );
    create table c_adminclasses_tutors (
        adminclass_id integer not null,
        teacher_id bigint not null
    );
    create table c_building_course_units (
        id integer not null,
        end_time integer not null,
        start_time integer not null,
        building_id integer,
        time_setting_id integer,
        unit_id integer,
        primary key (id)
    );
    create table c_buildings (
        id integer not null,
        created_at timestamp,
        updated_at timestamp,
        abbreviation varchar(255),
        code varchar(255),
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        remark varchar(255),
        school_id bigint,
        campus_id integer,
        department_id integer,
        primary key (id)
    );
    create table c_calendars (
        id integer not null,
        created_at timestamp,
        updated_at timestamp,
        effective_at timestamp,
        invalid_at timestamp,
        name varchar(255),
        school_id bigint,
        primary key (id)
    );
    create table c_campuses (
        id integer not null,
        created_at timestamp,
        updated_at timestamp,
        abbreviation varchar(255),
        code varchar(255),
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        remark varchar(255),
        school_id bigint,
        primary key (id)
    );
    create table c_classrooms (
        id integer not null,
        created_at timestamp,
        updated_at timestamp,
        abbreviation varchar(255),
        code varchar(255),
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        remark varchar(255),
        capacity integer not null,
        floor integer not null,
        virtual boolean not null,
        school_id bigint,
        building_id integer,
        campus_id integer,
        department_id integer,
        type_id integer,
        primary key (id)
    );
    create table c_classrooms_departments (
        classroom_id integer not null,
        department_id integer not null,
        primary key (classroom_id, department_id)
    );
    create table c_default_course_units (
        id integer not null,
        color varchar(255),
        end_time integer not null,
        eng_name varchar(255),
        indexno integer not null,
        name varchar(255),
        start_time integer not null,
        time_setting_id integer,
        primary key (id)
    );
    create table c_departments (
        id integer not null,
        created_at timestamp,
        updated_at timestamp,
        abbreviation varchar(255),
        code varchar(255),
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        remark varchar(255),
        college boolean not null,
        indexno varchar(255),
        teaching boolean not null,
        school_id bigint,
        parent_id integer,
        primary key (id)
    );
    create table c_direction_journals (
        id integer not null,
        effective_at timestamp,
        invalid_at timestamp,
        remark varchar(255),
        depart_id integer,
        direction_id integer,
        education_id integer,
        primary key (id)
    );
    create table c_directions (
        id integer not null,
        created_at timestamp,
        updated_at timestamp,
        code varchar(255),
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        remark varchar(255),
        major_id integer,
        primary key (id)
    );
    create table c_habilitations (
        id integer not null,
        created_at timestamp,
        updated_at timestamp,
        effective_on timestamp,
        invalid_on timestamp,
        qualified boolean not null,
        project_id integer,
        teacher_id bigint,
        primary key (id)
    );
    create table c_holidays (
        id integer not null,
        end_on date,
        name varchar(255),
        start_on date,
        primary key (id)
    );
    create table c_major_journals (
        id integer not null,
        code varchar(255),
        discipline_code varchar(255),
        duration float,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        remark varchar(255),
        category_id integer,
        depart_id integer,
        education_id integer,
        major_id integer,
        primary key (id)
    );
    create table c_majors (
        id integer not null,
        created_at timestamp,
        updated_at timestamp,
        abbreviation varchar(255),
        code varchar(255),
        duration float,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        remark varchar(255),
        category_id integer,
        project_id integer,
        primary key (id)
    );
    create table c_majors_educations (
        major_id integer not null,
        education_id integer not null,
        primary key (major_id, education_id)
    );
    create table c_project_classrooms (
        id integer not null,
        created_at timestamp,
        updated_at timestamp,
        project_id integer,
        room_id integer,
        primary key (id)
    );
    create table c_project_classrooms_departs (
        project_classroom_id integer not null,
        department_id integer not null,
        primary key (project_classroom_id, department_id)
    );
    create table c_project_classrooms_reserved (
        project_classroom_id integer not null,
        end_time integer not null,
        start_time integer not null,
        week_state varchar(255),
        week_state_num bigint not null,
        weekday integer not null,
        year integer not null
    );
    create table c_project_codes (
        id bigint not null,
        code_id integer,
        meta_id integer,
        project_id integer,
        primary key (id)
    );
    create table c_project_configs (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        project_id integer,
        primary key (id)
    );
    create table c_project_properties (
        id bigint not null,
        name varchar(255),
        value varchar(255),
        config_id bigint,
        primary key (id)
    );
    create table c_projects (
        id integer not null,
        created_at timestamp,
        updated_at timestamp,
        description varchar(255),
        effective_at timestamp,
        invalid_at timestamp,
        minor boolean not null,
        name varchar(255),
        calendar_id integer,
        school_id bigint,
        primary key (id)
    );
    create table c_projects_campuses (
        project_id integer not null,
        campus_id integer not null
    );
    create table c_projects_departments (
        project_id integer not null,
        department_id integer not null,
        index_no integer not null,
        primary key (project_id, index_no)
    );
    create table c_projects_educations (
        project_id integer not null,
        education_id integer not null
    );
    create table c_projects_labels (
        project_id integer not null,
        std_label_id integer not null
    );
    create table c_projects_time_settings (
        project_id integer not null,
        time_setting_id integer not null
    );
    create table c_projects_types (
        project_id integer not null,
        std_type_id integer not null
    );
    create table c_schools (
        id bigint not null,
        institution_id integer,
        primary key (id)
    );
    create table c_semester_stages (
        id integer not null,
        end_week integer not null,
        name varchar(255),
        remark varchar(255),
        start_week integer not null,
        semester_id integer,
        primary key (id)
    );
    create table c_semesters (
        id integer not null,
        archived boolean not null,
        begin_on date,
        code varchar(255),
        end_on date,
        first_weekday integer not null,
        name varchar(255),
        remark varchar(255),
        school_year varchar(255),
        calendar_id integer,
        primary key (id)
    );
    create table c_staffs (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        account varchar(255),
        bank varchar(255),
        birthday date,
        charactor varchar(255),
        code varchar(255),
        idcard varchar(255),
        name varchar(255),
        country_id integer,
        department_id integer,
        gender_id integer,
        idcard_type_id integer,
        nation_id integer,
        politic_visage_id integer,
        primary key (id)
    );
    create table c_std_people (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        account varchar(255),
        bank varchar(255),
        birthday date,
        charactor varchar(255),
        code varchar(255),
        eng_name varchar(255),
        idcard varchar(255),
        join_on date,
        name varchar(255),
        oldname varchar(255),
        ancestral_addr_id integer,
        country_id integer,
        gender_id integer,
        idcard_type_id integer,
        marital_status_id integer,
        nation_id integer,
        politic_visage_id integer,
        primary key (id)
    );
    create table c_student_journals (
        id bigint not null,
        begin_on date,
        end_on date,
        grade varchar(255),
        inschool boolean not null,
        remark varchar(255),
        adminclass_id integer,
        department_id integer,
        direction_id integer,
        major_id integer,
        status_id integer,
        std_id bigint,
        primary key (id)
    );
    create table c_students (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        code varchar(255),
        duration float,
        eng_name varchar(255),
        enroll_on date,
        grade varchar(255),
        graduate_on date,
        name varchar(255),
        regist_on date,
        registed boolean not null,
        remark varchar(255),
        project_id integer,
        education_id integer,
        adminclass_id integer,
        campus_id integer,
        department_id integer,
        direction_id integer,
        gender_id integer,
        major_id integer,
        major_depart_id integer,
        person_id bigint,
        study_type_id integer,
        tutor_id bigint,
        type_id integer,
        primary key (id)
    );
    create table c_students_labels (
        student_id bigint not null,
        std_label_id integer not null,
        type_id integer not null,
        primary key (student_id, type_id)
    );
    create table c_teacher_journals (
        id bigint not null,
        begin_on date,
        end_on date,
        remark varchar(255),
        degree_id integer,
        department_id integer,
        education_id integer,
        teacher_id bigint,
        title_id integer,
        tutor_type_id integer,
        primary key (id)
    );
    create table c_teachers (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        code varchar(255),
        degree_award_on timestamp,
        effective_at timestamp,
        graduate_on timestamp,
        invalid_at timestamp,
        name varchar(255),
        remark varchar(255),
        school varchar(255),
        teaching boolean not null,
        tutor_award_on timestamp,
        unit varchar(255),
        degree_id integer,
        department_id integer,
        education_id integer,
        parttime_depart_id integer,
        staff_id bigint,
        state_id integer,
        teacher_type_id integer,
        title_id integer,
        tutor_type_id integer,
        unit_type_id integer,
        primary key (id)
    );
    create table c_time_settings (
        id integer not null,
        name varchar(255),
        campus_id integer,
        school_id bigint,
        semester_id integer,
        primary key (id)
    );
    create table cl_apply_time_units (
        id bigint not null,
        end_unit integer not null,
        start_unit integer not null,
        end_time integer not null,
        start_time integer not null,
        week_state varchar(255),
        week_state_num bigint not null,
        weekday integer not null,
        year integer not null,
        apply_id bigint,
        primary key (id)
    );
    create table cl_occupancies (
        id bigint not null,
        comments varchar(255),
        end_time integer not null,
        start_time integer not null,
        week_state varchar(255),
        week_state_num bigint not null,
        weekday integer not null,
        year integer not null,
        userid varchar(255),
        room_id integer,
        usage_id integer,
        primary key (id)
    );
    create table cl_price_catalogs (
        id bigint not null,
        published_on date,
        remark varchar(255),
        campus_id integer,
        department_id integer,
        primary key (id)
    );
    create table CL_PR_CATALOGS_AUDIT_DEPARTS (
        price_catalog_id bigint not null,
        department_id integer not null,
        primary key (price_catalog_id, department_id)
    );
    create table cl_price_catalogs_prices (
        price_catalog_id bigint not null,
        price_config_id bigint not null,
        primary key (price_catalog_id, price_config_id)
    );
    create table cl_price_configs (
        id bigint not null,
        max_seats integer not null,
        min_seats integer not null,
        price float not null,
        catalog_id bigint,
        room_config_type_id integer,
        primary key (id)
    );
    create table cl_room_applies (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        attendance integer not null,
        attendee varchar(255),
        name varchar(255),
        speaker varchar(255),
        date_begin timestamp,
        date_end timestamp,
        approve_at timestamp,
        approved_remark varchar(255),
        addr varchar(255),
        applicant varchar(255),
        email varchar(255),
        mobile varchar(255),
        depart_approve_at timestamp,
        depart_approved_remark varchar(255),
        hours float,
        is_approved boolean,
        is_depart_approved boolean,
        is_free boolean,
        is_multimedia boolean,
        money float,
        room_request varchar(255),
        time_request varchar(255),
        unit_attendance integer not null,
        water_fee float,
        project_id integer,
        approve_by_id bigint,
        audit_depart_id integer,
        campus_id integer,
        depart_approve_by_id bigint,
        semester_id integer,
        usage_id integer,
        user_id bigint,
        primary key (id)
    );
    create table cl_room_applies_classrooms (
        room_apply_id bigint not null,
        classroom_id integer not null
    );
    create table cl_room_applies_occupations (
        room_apply_id bigint not null,
        occupancy_id bigint not null,
        primary key (room_apply_id, occupancy_id)
    );
    create table cl_room_usage_capacities (
        id bigint not null,
        capacity integer not null,
        max_capacity integer not null,
        room_id integer,
        usage_id integer,
        primary key (id)
    );
    create table course_modified_records (
        id bigint not null,
        apply_at timestamp,
        reason varchar(255),
        reply_at timestamp,
        status boolean,
        apply_user_id bigint,
        course_id bigint,
        new_modified_id bigint,
        reply_user_id bigint,
        primary key (id)
    );
    create table course_modifieds (
        id bigint not null,
        code varchar(255),
        credits float not null,
        name varchar(255),
        period integer,
        weeks integer,
        department_id integer,
        education_id integer,
        exam_mode_id integer,
        std_type_id integer,
        primary key (id)
    );
    create table d_thesis_active_types (
        id binary(255) not null,
        code varchar(32) not null,
        name varchar(100) not null,
        eng_name varchar(100),
        effective_at timestamp,
        invalid_at timestamp,
        enabled boolean,
        remark varchar(255),
        primary key (id)
    );
    create table d_thesis_annotate_actives (
        id binary(255) not null,
        name varchar(255),
        active_type binary(255),
        start_date timestamp,
        end_date timestamp,
        effected boolean,
        tutor_audited boolean,
        remark varchar(800),
        allow_apply_count integer,
        process bigint,
        number_year integer,
        start_number integer,
        expert_suffix varchar(30),
        effect_count integer,
        repeat_seq varchar(20),
        primary key (id)
    );
    create table d_thesis_annotate_books (
        id binary(255) not null,
        serial varchar(32),
        thesis_appraise varchar(2000),
        lack_teacher varchar(1),
        teacher_professional_level varchar(1),
        point float,
        login_name varchar(20),
        pwd varchar(10),
        end_date timestamp,
        annotate binary(255),
        teacher binary(255),
        overed boolean,
        ANNOTATE_ID binary(255),
        primary key (id)
    );
    create table d_thesis_annotate_filters (
        id binary(255) not null,
        property_name varchar(10),
        content varchar(80),
        operate varchar(10),
        active binary(255),
        primary key (id)
    );
    create table d_thesis_annotate_teachers (
        id binary(255) not null,
        name varchar(255),
        id_card varchar(255),
        school varchar(255),
        tel varchar(255),
        expert_title varchar(255),
        research_direction varchar(255),
        email varchar(255),
        primary key (id)
    );
    create table d_thesis_annotates (
        id binary(255) not null,
        std bigint,
        title varchar(255),
        apply_count integer,
        tutor_audited integer,
        passed boolean,
        overed boolean,
        active binary(255),
        file_name varchar(255),
        department_validate boolean,
        tutor_validate boolean,
        is_double_blind boolean,
        avg_mark float,
        remark varchar(1000),
        sub_date timestamp,
        type binary(255),
        thesis_lack varchar(1000),
        ACTIVE_ID binary(255),
        primary key (id)
    );
    create table d_thesis_answer_actives (
        id binary(255) not null,
        name varchar(255),
        active_type binary(255),
        start_date timestamp,
        end_date timestamp,
        effected boolean,
        tutor_audited boolean,
        remark varchar(800),
        allow_apply_count integer,
        process bigint,
        primary key (id)
    );
    create table d_thesis_answer_filters (
        id binary(255) not null,
        property_name varchar(10),
        content varchar(80),
        operate varchar(10),
        active binary(255),
        primary key (id)
    );
    create table d_thesis_answers (
        id binary(255) not null,
        std bigint,
        title varchar(255),
        apply_count integer,
        tutor_audited integer,
        passed boolean,
        overed boolean,
        added boolean,
        active binary(255),
        file_name varchar(255),
        answer_date timestamp,
        answer_place varchar(255),
        sub_date timestamp,
        point float,
        applyed boolean,
        sub_final boolean,
        ACTIVE_ID binary(255),
        primary key (id)
    );
    create table d_thesis_coders (
        id binary(255) not null,
        name varchar(255),
        eng_name varchar(255),
        class_name varchar(255),
        primary key (id)
    );
    create table d_thesis_documents (
        id bigint not null,
        accessory boolean not null,
        file_name varchar(255),
        title varchar(255),
        upload_date timestamp,
        upload_user binary(255),
        primary key (id)
    );
    create table d_thesis_evaluate_projects (
        id binary(255) not null,
        code varchar(255),
        name varchar(255),
        eng_name varchar(255),
        update_date timestamp,
        enabled boolean,
        explain varchar(550),
        primary key (id)
    );
    create table d_thesis_notices (
        id bigint not null,
        content varchar(255),
        enabled boolean not null,
        publish_date timestamp,
        title varchar(255),
        primary key (id)
    );
    create table d_thesis_notices_documents (
        thesis_notice_bean_id bigint not null,
        thesis_document_id bigint not null,
        primary key (thesis_notice_bean_id, thesis_document_id)
    );
    create table d_thesis_pre_ans_actives (
        ID binary(255) not null,
        name varchar(255),
        active_type binary(255),
        start_date timestamp,
        end_date timestamp,
        effected boolean,
        tutor_audited boolean,
        remark varchar(800),
        allow_apply_count integer,
        process bigint,
        primary key (ID)
    );
    create table d_thesis_pre_ans_filters (
        ID binary(255) not null,
        property_name varchar(10),
        content varchar(80),
        operate varchar(10),
        active binary(255),
        primary key (ID)
    );
    create table d_thesis_pre_answers (
        id binary(255) not null,
        std bigint,
        title varchar(255),
        apply_count integer,
        tutor_audited integer,
        overed boolean,
        passed boolean,
        file_name varchar(255),
        added boolean,
        point float,
        active binary(255),
        meeting_date timestamp,
        meeting_place varchar(255),
        expert_comments varchar(900),
        finish_date timestamp,
        apply_date timestamp,
        sub_final boolean,
        ACTIVE_ID binary(255),
        primary key (id)
    );
    create table d_thesis_processes (
        id bigint not null,
        education binary(255),
        effected boolean not null,
        name varchar(255),
        project binary(255),
        remark varchar(255),
        primary key (id)
    );
    create table d_thesis_ranks (
        id bigint not null,
        code varchar(255),
        enabled boolean not null,
        eng_name varchar(255),
        name varchar(255),
        update_date timestamp,
        primary key (id)
    );
    create table d_thesis_sh_annotates (
        id binary(255) not null,
        thesis_seq varchar(32),
        title varchar(200),
        major integer,
        point float,
        familiarity varchar(255),
        teacher binary(255),
        primary key (id)
    );
    create table d_thesis_sh_evaluations (
        id binary(255) not null,
        content varchar(1),
        evaluate_project binary(255),
        annotate binary(255),
        ANNOTATE_ID binary(255),
        primary key (id)
    );
    create table d_thesis_std_innovates (
        id binary(255) not null,
        content varchar(200),
        annotate binary(255),
        xh integer,
        ANNOTATE_ID binary(255),
        primary key (id)
    );
    create table d_thesis_teacher_evals (
        ID binary(255) not null,
        content varchar(1),
        evaluate_project binary(255),
        book binary(255),
        BOOK_ID binary(255),
        primary key (ID)
    );
    create table d_thesis_teacher_innovates (
        id binary(255) not null,
        mark varchar(2),
        book binary(255),
        xh integer,
        BOOK_ID binary(255),
        primary key (id)
    );
    create table d_thesis_topic_opn_actives (
        ID binary(255) not null,
        name varchar(255),
        active_type binary(255),
        start_date timestamp,
        end_date timestamp,
        effected boolean,
        tutor_audited boolean,
        remark varchar(800),
        allow_apply_count integer,
        process bigint,
        primary key (ID)
    );
    create table d_thesis_topic_opn_filters (
        ID binary(255) not null,
        property_name varchar(10),
        content varchar(80),
        operate varchar(10),
        active binary(255),
        primary key (ID)
    );
    create table d_thesis_topic_opens (
        id binary(255) not null,
        std bigint,
        title varchar(255),
        apply_count integer,
        tutor_audited integer,
        passed boolean,
        overed boolean,
        file_name varchar(255),
        added boolean,
        point float,
        active binary(255),
        key_words varchar(2000),
        title_origin binary(255),
        project_title_name varchar(200),
        titile_level varchar(200),
        title_type binary(255),
        meeting_date timestamp,
        meeting_place varchar(255),
        situation varchar(3000),
        reference varchar(3000),
        theoretical_value varchar(3000),
        research_status varchar(3000),
        ideas_method varchar(3000),
        innovation varchar(3000),
        expect_result varchar(3000),
        content_range varchar(3000),
        approve_unit varchar(200),
        funds_origin varchar(200),
        submit_date timestamp,
        words_count float,
        finish_date timestamp,
        save_or_sub integer,
        sub_final boolean,
        final_tutor_audited integer,
        expert_comments varchar(1000),
        ACTIVE_ID binary(255),
        primary key (id)
    );
    create table d_thesis_topic_origins (
        id binary(255) not null,
        code varchar(255),
        name varchar(255),
        eng_name varchar(255),
        update_date timestamp,
        enabled boolean,
        primary key (id)
    );
    create table d_thesis_types (
        id binary(255) not null,
        code varchar(255),
        name varchar(255),
        eng_name varchar(255),
        update_date timestamp,
        enabled boolean,
        primary key (id)
    );
    create table d_thesis_ug_actives (
        ID binary(255) not null,
        name varchar(255),
        active_type binary(255),
        start_date timestamp,
        end_date timestamp,
        effected boolean,
        tutor_audited boolean,
        remark varchar(800),
        allow_apply_count integer,
        process bigint,
        primary key (ID)
    );
    create table d_thesis_ug_filters (
        ID binary(255) not null,
        property_name varchar(10),
        content varchar(80),
        operate varchar(10),
        active binary(255),
        primary key (ID)
    );
    create table d_thesis_undergraduates (
        id binary(255) not null,
        std bigint,
        title varchar(255),
        apply_count integer,
        tutor_audited integer,
        passed boolean,
        overed boolean,
        active binary(255),
        tutor bigint,
        file_name varchar(200),
        point float,
        remark varchar(900),
        ACTIVE_ID binary(255),
        primary key (id)
    );
    create table f_bill_logs (
        id bigint not null,
        amount integer,
        bill_code varchar(255),
        created_at timestamp,
        creator varchar(255),
        log_type varchar(255),
        paid integer,
        remark varchar(255),
        remote_addr varchar(255),
        username varchar(255),
        fee_type_id integer,
        semester_id integer,
        state_id integer,
        primary key (id)
    );
    create table f_bills (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        amount integer,
        begin_pay_at timestamp,
        code varchar(255),
        creator varchar(255),
        end_pay_at timestamp,
        exempt integer,
        fullname varchar(255),
        paid integer,
        remark varchar(255),
        username varchar(255),
        fee_type_id integer,
        semester_id integer,
        state_id integer,
        primary key (id)
    );
    create table f_check_fee_types (
        id bigint not null,
        fee_type_id integer,
        primary key (id)
    );
    create table f_pays (
        id bigint not null,
        create_at timestamp,
        creator varchar(255),
        invoice varchar(255),
        paid integer,
        pay_at timestamp,
        remark varchar(255),
        bill_id bigint,
        pay_type_id integer,
        primary key (id)
    );
    create table f_tuitions (
        id bigint not null,
        completed boolean not null,
        fee float,
        remark varchar(255),
        semester_id integer,
        std_id bigint,
        primary key (id)
    );
    create table gb_countries (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        short_code varchar(255),
        short_eng_name varchar(255),
        short_name varchar(255),
        primary key (id)
    );
    create table gb_degrees (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table gb_divisions (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        parent_id integer,
        primary key (id)
    );
    create table gb_genders (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table gb_languages (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table gb_marital_statuses (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table gb_nations (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table gb_politic_visages (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table gb_social_relations (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table gb_study_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table gb_teacher_title_levels (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table gb_teacher_titles (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        level_id integer,
        parent_id integer,
        primary key (id)
    );
    create table hb_admission_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_attendance_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_book_award_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_course_take_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        exam boolean not null,
        retake boolean not null,
        primary key (id)
    );
    create table hb_education_modes (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_educations (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_election_modes (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_enroll_modes (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_exam_modes (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_exam_statuses (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        attend boolean not null,
        primary key (id)
    );
    create table hb_exam_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_examinee_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_family_economic_states (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_fee_origins (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_grade_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        short_name varchar(255),
        exam_type_id integer,
        primary key (id)
    );
    create table hb_graduate_states (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_hsch_grade_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_hskdegrees (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        grade integer,
        primary key (id)
    );
    create table hb_idcard_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_other_exam_categories (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_other_exam_subjects (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        category_id integer,
        primary key (id)
    );
    create table hb_passport_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_pay_states (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        abbreviation varchar(255),
        remark varchar(255),
        primary key (id)
    );
    create table hb_pay_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        abbreviation varchar(255),
        remark varchar(255),
        primary key (id)
    );
    create table hb_press_levels (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_presses (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        level_id integer,
        primary key (id)
    );
    create table hb_production_award_levels (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_production_award_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_production_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_publication_grades (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_publications (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        grade_id integer,
        primary key (id)
    );
    create table hb_railway_stations (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        division_id integer,
        primary key (id)
    );
    create table hb_residences (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_room_usages (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_score_mark_styles (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        num_style boolean not null,
        primary key (id)
    );
    create table hb_std_alter_reasons (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        alter_mode_id integer,
        primary key (id)
    );
    create table hb_std_alter_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        inschool boolean not null,
        status_id integer,
        primary key (id)
    );
    create table hb_std_award_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        grade integer,
        primary key (id)
    );
    create table hb_std_punish_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        grade integer,
        primary key (id)
    );
    create table hb_std_statuses (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_teach_lang_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_teach_modes (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_teacher_states (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_teacher_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        external boolean not null,
        parttime boolean not null,
        primary key (id)
    );
    create table hb_teacher_unit_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_tutor_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_uncheckin_reasons (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        leave boolean not null,
        primary key (id)
    );
    create table hb_unregister_reasons (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table hb_visa_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table jb_discipline_catalogs (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table jb_discipline_categories (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table jb_disciplines (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        catalog_id integer,
        category_id integer,
        parent_id integer,
        primary key (id)
    );
    create table jb_institutions (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table q_college_option_stats (
        id bigint not null,
        amount integer not null,
        option_id bigint,
        state_id bigint,
        primary key (id)
    );
    create table q_depart_evaluations (
        id bigint not null,
        score float,
        update_at timestamp,
        user_name varchar(255),
        semester_id integer,
        teacher_id bigint,
        primary key (id)
    );
    create table q_department_option_stats (
        id bigint not null,
        amount integer not null,
        option_id bigint,
        state_id bigint,
        primary key (id)
    );
    create table q_eval_criteria_items (
        id bigint not null,
        max float,
        min float,
        name varchar(255),
        criteria_id bigint,
        primary key (id)
    );
    create table q_evaluate_results (
        id bigint not null,
        evaluate_at timestamp,
        remark varchar(255),
        stat_state boolean,
        stat_type integer,
        department_id integer,
        lesson_id bigint,
        questionnaire_id bigint,
        student_id bigint,
        teacher_id bigint,
        primary key (id)
    );
    create table q_evaluate_switches (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        close_at timestamp,
        is_open boolean,
        open_at timestamp,
        project_id integer,
        semester_id integer,
        primary key (id)
    );
    create table q_evaluation_criterias (
        id bigint not null,
        name varchar(255),
        depart_id integer,
        primary key (id)
    );
    create table q_not_evaluate_students (
        id bigint not null,
        semester_id integer,
        std_id bigint,
        primary key (id)
    );
    create table q_opposite_questions (
        id bigint not null,
        oppo_question_id bigint,
        orgin_question_id bigint,
        primary key (id)
    );
    create table q_option_groups (
        id bigint not null,
        name varchar(255),
        oppo_val float not null,
        depart_id integer,
        primary key (id)
    );
    create table q_option_stats (
        id bigint not null,
        amount integer not null,
        option_id bigint,
        state_id bigint,
        primary key (id)
    );
    create table q_options (
        id bigint not null,
        name varchar(255),
        proportion float,
        option_group_id bigint,
        primary key (id)
    );
    create table q_question_detail_stats (
        DTYPE varchar(31) not null,
        id bigint not null,
        average double,
        stddev double,
        sum_count integer not null,
        total double,
        question_id bigint,
        evaluate_teacher_stat_id bigint,
        evaluate_department_stat_id bigint,
        evaluate_college_stat_id bigint,
        primary key (id)
    );
    create table q_question_results (
        id bigint not null,
        score float,
        option_id bigint,
        question_id bigint,
        result_id bigint,
        primary key (id)
    );
    create table q_question_type_stats (
        id bigint not null,
        score float,
        questionnaire_stat_id bigint,
        type_id bigint,
        primary key (id)
    );
    create table q_question_types (
        id bigint not null,
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        priority integer not null,
        remark varchar(255),
        state boolean not null,
        updated_at timestamp,
        primary key (id)
    );
    create table q_questionnaire_lessons (
        id bigint not null,
        evaluate_by_teacher boolean not null,
        lesson_id bigint,
        questionnaire_id bigint,
        primary key (id)
    );
    create table q_questionnaire_stats (
        DTYPE varchar(31) not null,
        id bigint not null,
        add_score double,
        all_tickets integer,
        depart_rank integer,
        percent double not null,
        rank integer,
        release integer,
        score float,
        stat_at timestamp,
        valid_score double,
        valid_tickets integer,
        count integer,
        lesson_id bigint,
        questionnaire_id bigint,
        semester_id integer,
        teacher_id bigint,
        department_id integer,
        primary key (id)
    );
    create table q_questionnaire_stats_details (
        questionnaire_stat_id bigint not null,
        question_detail_stat_id bigint not null,
        primary key (questionnaire_stat_id, question_detail_stat_id)
    );
    create table q_questionnaire_stats_scores (
        questionnaire_stat_id bigint not null,
        question_type_stat_id bigint not null,
        primary key (questionnaire_stat_id, question_type_stat_id)
    );
    create table q_questionnaires (
        id bigint not null,
        create_by varchar(255),
        created_at timestamp,
        description varchar(255),
        effective_at timestamp,
        invalid_at timestamp,
        remark varchar(255),
        state boolean,
        title varchar(255),
        updated_at timestamp,
        depart_id integer,
        primary key (id)
    );
    create table q_questionnaires_oppo_qs (
        questionnaire_id bigint not null,
        opposite_question_id bigint not null,
        primary key (questionnaire_id, opposite_question_id)
    );
    create table q_questionnaires_questions (
        questionnaire_id bigint not null,
        question_id bigint not null,
        primary key (questionnaire_id, question_id)
    );
    create table q_questions (
        id bigint not null,
        addition boolean,
        content varchar(255),
        created_at timestamp,
        effective_at timestamp,
        invalid_at timestamp,
        priority integer not null,
        remark varchar(255),
        score float not null,
        state boolean,
        updated_at timestamp,
        depart_id integer,
        option_group_id bigint,
        type_id bigint,
        primary key (id)
    );
    create table q_teacher_option_stats (
        id bigint not null,
        amount integer not null,
        option_id bigint,
        state_id bigint,
        primary key (id)
    );
    create table q_text_eval_switches (
        id bigint not null,
        close_at timestamp,
        open_at timestamp,
        opened boolean not null,
        opened_teacher boolean not null,
        text_evaluate_opened boolean not null,
        primary key (id)
    );
    create table q_text_evaluations (
        id bigint not null,
        context varchar(255),
        evaluation_at timestamp,
        is_affirm boolean,
        is_for_course boolean,
        lesson_id bigint,
        semester_id integer,
        std_id bigint,
        teacher_id bigint,
        primary key (id)
    );
    create table s_awards (
        id bigint not null,
        doc_seq varchar(255),
        name varchar(255),
        present_on date,
        reason varchar(255),
        remark varchar(255),
        valid boolean not null,
        withdraw_on date,
        depart_id integer,
        semester_id integer,
        std_id bigint,
        type_id integer,
        primary key (id)
    );
    create table s_punishments (
        id bigint not null,
        doc_seq varchar(255),
        name varchar(255),
        present_on date,
        reason varchar(255),
        remark varchar(255),
        valid boolean not null,
        withdraw_on date,
        depart_id integer,
        semester_id integer,
        std_id bigint,
        type_id integer,
        primary key (id)
    );
    create table s_std_abroads (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        cscno varchar(255),
        passport_expired_on date,
        passport_no varchar(255),
        reside_caed_expired_on date,
        reside_caed_no varchar(255),
        visa_expired_on date,
        visa_no varchar(255),
        person_id bigint,
        hskdegree_id integer,
        passport_type_id integer,
        visa_type_id integer,
        primary key (id)
    );
    create table s_std_apply_edit_noteses (
        id bigint not null,
        address varchar(255),
        birthday date,
        idcard varchar(255),
        mail varchar(255),
        mobile varchar(255),
        name varchar(255),
        phone varchar(255),
        idcard_type_id integer,
        primary key (id)
    );
    create table s_std_contacts (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        address varchar(255),
        mail varchar(255),
        mobile varchar(255),
        phone varchar(255),
        person_id bigint,
        primary key (id)
    );
    create table s_std_home_members (
        id bigint not null,
        address varchar(255),
        duty varchar(255),
        idcard varchar(255),
        name varchar(255),
        phone varchar(255),
        postcode varchar(255),
        workplace varchar(255),
        home_id bigint,
        relation_id integer,
        primary key (id)
    );
    create table s_std_homes (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        address varchar(255),
        former_addr varchar(255),
        phone varchar(255),
        police varchar(255),
        police_phone varchar(255),
        postcode varchar(255),
        person_id bigint,
        economic_state_id integer,
        railway_station_id integer,
        primary key (id)
    );
    create table s_student_apply_edits (
        id bigint not null,
        audit_time timestamp,
        status integer,
        time timestamp,
        before_id bigint,
        now_id bigint,
        std_id bigint,
        primary key (id)
    );
    create table s_student_equivalents (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        admin_duty varchar(255),
        apply_no varchar(255),
        apply_on date,
        exam varchar(255),
        exam_certificate_no varchar(255),
        exam_on varchar(255),
        exam_score varchar(255),
        language varchar(255),
        language_certificate_no varchar(255),
        language_on varchar(255),
        language_score varchar(255),
        recommender1 varchar(255),
        recommender1_company varchar(255),
        recommender1_special_duty varchar(255),
        recommender2 varchar(255),
        recommender2_company varchar(255),
        recommender2_special_duty varchar(255),
        special_duty varchar(255),
        work_time varchar(255),
        person_id bigint,
        primary key (id)
    );
    create table s_student_logs (
        id bigint not null,
        ip varchar(255),
        operation varchar(255),
        time timestamp,
        type integer not null,
        student_id bigint,
        user_id bigint,
        primary key (id)
    );
    create table se_data_fields (
        id integer not null,
        name varchar(255),
        title varchar(255),
        resource_id integer,
        type_id integer,
        primary key (id)
    );
    create table se_data_permissions (
        id integer not null,
        actions varchar(255),
        attrs varchar(255),
        effective_at timestamp,
        filters varchar(255),
        invalid_at timestamp,
        remark varchar(255),
        restrictions varchar(255),
        func_resource_id integer,
        resource_id integer,
        role_id integer,
        primary key (id)
    );
    create table se_data_resources (
        id integer not null,
        actions varchar(255),
        enabled boolean not null,
        name varchar(255),
        remark varchar(255),
        title varchar(255),
        primary key (id)
    );
    create table se_data_types (
        id integer not null,
        key_name varchar(255),
        name varchar(255),
        properties varchar(255),
        type_name varchar(255),
        primary key (id)
    );
    create table se_func_permissions (
        id integer not null,
        actions varchar(255),
        effective_at timestamp,
        invalid_at timestamp,
        remark varchar(255),
        restrictions varchar(255),
        resource_id integer,
        role_id integer,
        primary key (id)
    );
    create table se_func_resources (
        id integer not null,
        actions varchar(255),
        enabled boolean not null,
        entry boolean not null,
        name varchar(255),
        remark varchar(255),
        scope integer,
        title varchar(255),
        primary key (id)
    );
    create table se_members (
        id integer not null,
        created_at timestamp,
        updated_at timestamp,
        granter boolean not null,
        manager boolean not null,
        member boolean not null,
        role_id integer,
        user_id bigint,
        primary key (id)
    );
    create table se_menu_profiles (
        id integer not null,
        enabled boolean not null,
        name varchar(255),
        role_id integer,
        primary key (id)
    );
    create table se_menus (
        id integer not null,
        indexno varchar(255),
        enabled boolean not null,
        entry varchar(255),
        name varchar(255),
        remark varchar(255),
        title varchar(255),
        parent_id integer,
        profile_id integer,
        primary key (id)
    );
    create table se_menus_resources (
        menu_id integer not null,
        func_resource_id integer not null,
        primary key (menu_id, func_resource_id)
    );
    create table se_profile_fields (
        id integer not null,
        multiple boolean not null,
        name varchar(255),
        required boolean not null,
        source varchar(255),
        title varchar(255),
        type_id integer,
        primary key (id)
    );
    create table se_role_profiles (
        id integer not null,
        role_id integer,
        primary key (id)
    );
    create table se_role_properties (
        id integer not null,
        value varchar(255),
        field_id integer,
        profile_id integer,
        primary key (id)
    );
    create table se_roles (
        id integer not null,
        indexno varchar(255),
        created_at timestamp,
        dynamic boolean not null,
        enabled boolean not null,
        name varchar(255),
        remark varchar(255),
        updated_at timestamp,
        parent_id integer,
        owner_id bigint,
        primary key (id)
    );
    create table se_session_profiles (
        id integer not null,
        capacity integer not null,
        inactive_interval smallint not null,
        user_max_sessions smallint not null,
        role_id integer,
        primary key (id)
    );
    create table se_session_stats (
        id integer not null,
        capacity integer not null,
        category varchar(255),
        on_line integer,
        stat_at timestamp,
        primary key (id)
    );
    create table se_sessioninfo_logs (
        id varchar(255) not null,
        agent varchar(255),
        fullname varchar(255),
        ip varchar(255),
        login_at timestamp,
        logout_at timestamp,
        online_time bigint,
        os varchar(255),
        remark varchar(255),
        username varchar(255),
        primary key (id)
    );
    create table se_sessioninfoes (
        id varchar(255) not null,
        agent varchar(255),
        category varchar(255),
        expired_at timestamp,
        fullname varchar(255),
        ip varchar(255),
        last_access_at timestamp,
        login_at timestamp,
        os varchar(255),
        remark varchar(255),
        server varchar(255),
        username varchar(255),
        primary key (id)
    );
    create table se_user_profiles (
        id bigint not null,
        user_id bigint,
        primary key (id)
    );
    create table se_user_properties (
        id bigint not null,
        value varchar(255),
        field_id integer,
        profile_id bigint,
        primary key (id)
    );
    create table se_users (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        effective_at timestamp,
        enabled boolean not null,
        fullname varchar(255),
        invalid_at timestamp,
        mail varchar(255),
        name varchar(255),
        password varchar(255),
        password_expired_at timestamp,
        remark varchar(255),
        creator_id bigint,
        primary key (id)
    );
    create table st_checkins (
        id bigint not null,
        checkin_at timestamp,
        checkin_by varchar(255),
        checkin_from varchar(255),
        whereabouts varchar(255),
        reason_id integer,
        semester_id integer,
        std_id bigint,
        primary key (id)
    );
    create table st_register_user_groups (
        id bigint not null,
        begin_at timestamp,
        end_at timestamp,
        name varchar(255),
        primary key (id)
    );
    create table st_register_user_groups_users (
        register_user_group_id bigint not null,
        user_id bigint not null,
        primary key (register_user_group_id, user_id)
    );
    create table st_registers (
        id bigint not null,
        checkin boolean not null,
        registed boolean not null,
        register_at timestamp,
        register_by varchar(255),
        register_from varchar(255),
        remark varchar(255),
        tuition_paid boolean not null,
        reason_id integer,
        semester_id integer,
        std_id bigint,
        primary key (id)
    );
    create table st_report_login_switches (
        id bigint not null,
        close_at timestamp,
        open_at timestamp,
        opened boolean,
        semester_id integer,
        primary key (id)
    );
    create table st_std_admission_majors (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        certificate_no varchar(255),
        degree_award_by varchar(255),
        degree_award_on date,
        major_code varchar(255),
        major_name varchar(255),
        recommend_by varchar(255),
        std_id bigint,
        degree_id integer,
        discipline_category_id integer,
        primary key (id)
    );
    create table st_std_admissions (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        admission_index varchar(255),
        letter_no varchar(255),
        std_id bigint,
        admission_type_id integer,
        department_id integer,
        fee_origin_id integer,
        major_id integer,
        primary key (id)
    );
    create table st_std_alteration_items (
        id bigint not null,
        newvalue varchar(255),
        oldvalue varchar(255),
        alteration_id bigint,
        meta_id integer,
        primary key (id)
    );
    create table st_std_alterations (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        code varchar(255),
        effective boolean not null,
        end_on date,
        remark varchar(255),
        start_on date,
        reason_id integer,
        semester_id integer,
        std_id bigint,
        type_id integer,
        primary key (id)
    );
    create table st_std_edit_restrictions (
        id bigint not null,
        user_group_id integer,
        primary key (id)
    );
    create table st_std_edit_restrictions_metas (
        std_edit_restriction_id bigint not null,
        property_meta_id integer not null,
        primary key (std_edit_restriction_id, property_meta_id)
    );
    create table st_std_examinees (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        exam_number varchar(255),
        examinee_code varchar(255),
        graduate_on date,
        school_name varchar(255),
        school_no varchar(255),
        score float,
        std_id bigint,
        education_id integer,
        education_mode_id integer,
        enroll_mode_id integer,
        examinee_type_id integer,
        language_id integer,
        origin_division_id integer,
        primary key (id)
    );
    create table st_std_examinees_scores (
        std_examinee_id bigint not null,
        score float,
        type_id integer not null,
        primary key (std_examinee_id, type_id)
    );
    create table st_std_graduations (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        certificate_no varchar(255),
        credits float,
        degree_award_on varchar(255),
        diploma_no varchar(255),
        gpa float,
        no_grade_credits float,
        required_credits float,
        std_id bigint,
        degree_id integer,
        graduate_state_id integer,
        primary key (id)
    );
    create table st_std_property_editors (
        id bigint not null,
        description varchar(255),
        multi_value boolean not null,
        name varchar(255),
        property varchar(255),
        source varchar(255),
        type varchar(255),
        primary key (id)
    );
    create table st_user_student_conditions (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        condition_name varchar(255),
        conditions varchar(255),
        user_id bigint,
        primary key (id)
    );
    create table sys_business_log_details (
        id bigint not null,
        content clob,
        log_id bigint,
        primary key (id)
    );
    create table sys_business_logs (
        id bigint not null,
        agent varchar(255),
        entry varchar(255),
        ip varchar(255),
        operate_at timestamp,
        operation varchar(255),
        operator varchar(255),
        resrc varchar(255),
        detail_id bigint,
        primary key (id)
    );
    create table sys_code_categories (
        id integer not null,
        indexno varchar(255),
        name varchar(255),
        parent_id integer,
        primary key (id)
    );
    create table sys_code_metas (
        id integer not null,
        class_name varchar(255),
        name varchar(255),
        title varchar(255),
        category_id integer,
        primary key (id)
    );
    create table sys_code_scripts (
        id integer not null,
        created_at timestamp,
        updated_at timestamp,
        attr varchar(255),
        code_class_name varchar(255),
        code_name varchar(255),
        description varchar(255),
        script varchar(255),
        primary key (id)
    );
    create table sys_entity_metas (
        id integer not null,
        comments varchar(255),
        name varchar(255),
        remark varchar(255),
        primary key (id)
    );
    create table sys_manager_documents (
        id bigint not null,
        name varchar(255),
        path varchar(255),
        remark varchar(255),
        upload_by varchar(255),
        upload_on date,
        primary key (id)
    );
    create table sys_manager_notices (
        id bigint not null,
        publisher varchar(255),
        title varchar(255),
        updated_at date,
        content_id bigint,
        primary key (id)
    );
    create table sys_message_contents (
        id bigint not null,
        active_on timestamp,
        created_at timestamp,
        invalidate_on timestamp,
        subject varchar(255),
        text varchar(255),
        sender_id bigint,
        primary key (id)
    );
    create table sys_notice_contents (
        id bigint not null,
        content varchar(255),
        primary key (id)
    );
    create table sys_property_config_items (
        id integer not null,
        description varchar(255),
        name varchar(255),
        type varchar(255),
        value varchar(255),
        primary key (id)
    );
    create table sys_property_metas (
        id integer not null,
        comments varchar(255),
        name varchar(255),
        remark varchar(255),
        type varchar(255),
        meta_id integer,
        primary key (id)
    );
    create table sys_report_templates (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        category varchar(255),
        code varchar(255),
        name varchar(255),
        options varchar(255),
        orientation varchar(255),
        page_size varchar(255),
        remark varchar(255),
        template varchar(255),
        project_id integer,
        primary key (id)
    );
    create table sys_rule_config_params (
        id integer not null,
        value varchar(255),
        config_id integer,
        param_id integer,
        primary key (id)
    );
    create table sys_rule_configs (
        id integer not null,
        created_at timestamp,
        updated_at timestamp,
        enabled boolean not null,
        rule_id integer,
        primary key (id)
    );
    create table sys_rule_parameters (
        id integer not null,
        description varchar(255),
        name varchar(255),
        title varchar(255),
        type varchar(255),
        parent_id integer,
        rule_id integer,
        primary key (id)
    );
    create table sys_rules (
        id integer not null,
        created_at timestamp,
        updated_at timestamp,
        business varchar(255),
        description varchar(255),
        enabled boolean not null,
        factory varchar(255),
        name varchar(255),
        service_name varchar(255),
        primary key (id)
    );
    create table sys_student_documents (
        id bigint not null,
        name varchar(255),
        path varchar(255),
        remark varchar(255),
        upload_by varchar(255),
        upload_on date,
        primary key (id)
    );
    create table sys_student_documents_departs (
        student_document_id bigint not null,
        department_id integer not null,
        primary key (student_document_id, department_id)
    );
    create table SYS_STD_DOCS_STD_TYPES (
        student_document_id bigint not null,
        std_type_id integer not null,
        primary key (student_document_id, std_type_id)
    );
    create table sys_student_notices (
        id bigint not null,
        publisher varchar(255),
        title varchar(255),
        updated_at date,
        content_id bigint,
        primary key (id)
    );
    create table sys_student_notices_departs (
        student_notice_id bigint not null,
        department_id integer not null,
        primary key (student_notice_id, department_id)
    );
    create table sys_student_notices_std_types (
        student_notice_id bigint not null,
        std_type_id integer not null,
        primary key (student_notice_id, std_type_id)
    );
    create table sys_system_message_configs (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        begin_at timestamp,
        end_at timestamp,
        opened boolean not null,
        project_id integer,
        primary key (id)
    );
    create table sys_system_messages (
        id bigint not null,
        read_at timestamp,
        status integer,
        visit_ip varchar(255),
        content_id bigint,
        recipient_id bigint,
        primary key (id)
    );
    create table sys_teacher_documents (
        id bigint not null,
        name varchar(255),
        path varchar(255),
        remark varchar(255),
        upload_by varchar(255),
        upload_on date,
        primary key (id)
    );
    create table sys_teacher_notices (
        id bigint not null,
        publisher varchar(255),
        title varchar(255),
        updated_at date,
        content_id bigint,
        primary key (id)
    );
    create table sys_wkhtmltopdf_paths (
        id bigint not null,
        path varchar(255),
        primary key (id)
    );
    create table t_arrange_suggests (
        id bigint not null,
        remark varchar(255),
        lesson_id bigint,
        primary key (id)
    );
    create table t_arrange_suggests_rooms (
        arrange_suggest_id bigint not null,
        classroom_id integer not null,
        primary key (arrange_suggest_id, classroom_id)
    );
    create table t_available_times (
        id bigint not null,
        available varchar(255),
        remark varchar(255),
        struct varchar(255),
        units integer not null,
        primary key (id)
    );
    create table t_book_require_configs (
        id bigint not null,
        begin_at timestamp,
        end_at timestamp,
        primary key (id)
    );
    create table t_collision_resources (
        id bigint not null,
        resource_id varchar(255),
        resource_type varchar(255),
        lesson_id bigint,
        semester_id integer,
        primary key (id)
    );
    create table t_constraint_loggers (
        id bigint not null,
        constraint_type varchar(255),
        created_at timestamp,
        key varchar(255),
        operator varchar(255),
        type varchar(255),
        value varchar(255),
        semester_id integer,
        primary key (id)
    );
    create table t_course_activities (
        id bigint not null,
        remark varchar(255),
        end_time integer,
        end_unit integer,
        start_time integer,
        start_unit integer,
        week_state varchar(255),
        week_state_num bigint,
        weekday integer,
        lesson_id bigint,
        primary key (id)
    );
    create table t_course_activities_rooms (
        course_activity_id bigint not null,
        classroom_id integer not null,
        primary key (course_activity_id, classroom_id)
    );
    create table t_course_activities_teachers (
        course_activity_id bigint not null,
        teacher_id bigint not null,
        primary key (course_activity_id, teacher_id)
    );
    create table t_course_arrange_alters (
        id bigint not null,
        alter_from varchar(255),
        alteration_after varchar(255),
        alteration_at timestamp,
        alteration_before varchar(255),
        lesson_id bigint,
        alter_by_id bigint,
        semester_id integer,
        primary key (id)
    );
    create table t_course_arrange_switches (
        id bigint not null,
        published boolean not null,
        project_id integer,
        semester_id integer,
        primary key (id)
    );
    create table t_course_code_standards (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        name varchar(50),
        prefix varchar(20),
        remark varchar(100),
        seq_length integer not null,
        project_id integer,
        primary key (id)
    );
    create table t_course_ext_infoes (
        id bigint not null,
        compulsory boolean not null,
        description varchar(255),
        eng_description varchar(255),
        requirement varchar(255),
        course_id bigint,
        primary key (id)
    );
    create table t_course_ext_infoes_teachers (
        course_ext_info_id bigint not null,
        teacher_id bigint not null
    );
    create table t_course_grade_states (
        id bigint not null,
        inputed_at timestamp,
        operator varchar(255),
        precision integer not null,
        status integer not null,
        audit_reason varchar(255),
        audit_status varchar(255),
        ratioa float,
        ratiob float,
        score_mark_style_id integer,
        extra_inputer_id bigint,
        lesson_id bigint,
        primary key (id)
    );
    create table t_course_grades (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        operator varchar(255),
        passed boolean not null,
        score float,
        score_text varchar(255),
        status integer not null,
        gp float,
        lesson_no varchar(255),
        remark varchar(255),
        mark_style_id integer,
        project_id integer,
        semester_id integer,
        std_id bigint,
        course_id bigint,
        course_take_type_id integer,
        course_type_id integer,
        exam_mode_id integer,
        lesson_id bigint,
        primary key (id)
    );
    create table t_course_grades_exchanges (
        course_grade_id bigint not null,
        exchange_course_id bigint not null,
        primary key (course_grade_id, exchange_course_id)
    );
    create table t_course_hours (
        id bigint not null,
        period integer not null,
        week_hour integer,
        weeks integer,
        course_id bigint,
        type_id integer,
        primary key (id)
    );
    create table t_course_limit_groups (
        id bigint not null,
        cur_count integer not null,
        for_class boolean not null,
        max_count integer not null,
        name varchar(255),
        lesson_id bigint,
        primary key (id)
    );
    create table t_course_limit_items (
        id bigint not null,
        content varchar(255),
        name varchar(255),
        operator varchar(255),
        group_id bigint,
        meta_id bigint,
        primary key (id)
    );
    create table t_course_limit_metas (
        id bigint not null,
        name varchar(255),
        remark varchar(255),
        primary key (id)
    );
    create table t_course_mail_settings (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        module varchar(255),
        name varchar(255),
        title varchar(255),
        creator_id bigint,
        primary key (id)
    );
    create table t_course_materials (
        id bigint not null,
        audit_at timestamp,
        extra varchar(255),
        passed boolean,
        reference_books varchar(255),
        remark varchar(255),
        status varchar(255),
        use_explain varchar(255),
        course_id bigint,
        department_id integer,
        semester_id integer,
        primary key (id)
    );
    create table t_course_materials_books (
        course_material_id bigint not null,
        textbook_id bigint not null
    );
    create table t_course_table_checks (
        id bigint not null,
        confirm boolean not null,
        confirm_at timestamp,
        course_num integer not null,
        credits float not null,
        remark varchar(255),
        semester_id integer,
        std_id bigint,
        primary key (id)
    );
    create table t_course_takes (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        attend boolean not null,
        paid boolean not null,
        remark varchar(255),
        turn integer,
        bill_id bigint,
        course_take_type_id integer,
        election_mode_id integer,
        lesson_id bigint,
        limit_group_id bigint,
        std_id bigint,
        primary key (id)
    );
    create table t_courses (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        code varchar(255),
        credits float not null,
        enabled boolean not null,
        eng_name varchar(255),
        establish_on timestamp,
        exchange boolean not null,
        name varchar(255),
        period integer not null,
        remark varchar(255),
        week_hour integer not null,
        weeks integer,
        project_id integer,
        category_id integer,
        course_type_id integer,
        department_id integer,
        education_id integer,
        exam_mode_id integer,
        mark_style_id integer,
        primary key (id)
    );
    create table t_courses_ability_rates (
        course_id bigint not null,
        course_ability_rate_id integer not null,
        primary key (course_id, course_ability_rate_id)
    );
    create table t_courses_majors (
        course_id bigint not null,
        major_id integer not null,
        primary key (course_id, major_id)
    );
    create table t_courses_prerequisites (
        course_id bigint not null,
        precourse_id bigint not null,
        primary key (course_id, precourse_id)
    );
    create table t_courses_referbooks (
        course_id bigint not null,
        textbook_id bigint not null,
        primary key (course_id, textbook_id)
    );
    create table t_courses_textbooks (
        course_id bigint not null,
        textbook_id bigint not null,
        primary key (course_id, textbook_id)
    );
    create table t_courses_xmajors (
        course_id bigint not null,
        major_id integer not null,
        primary key (course_id, major_id)
    );
    create table t_credit_award_criterias (
        id bigint not null,
        award_credits float not null,
        ceil_avg_grade float not null,
        floor_avg_grade float not null,
        primary key (id)
    );
    create table t_curriculum_change_applys (
        id bigint not null,
        passed boolean,
        remark varchar(255),
        requisition varchar(255),
        school_hours float not null,
        time timestamp,
        lesson_id bigint,
        teacher_id bigint,
        primary key (id)
    );
    create table t_elect_loggers (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        course_code varchar(255),
        course_name varchar(255),
        course_type varchar(255),
        credits float not null,
        ip_address varchar(255),
        lesson_no varchar(255),
        operator_code varchar(255),
        operator_name varchar(255),
        std_code varchar(255),
        std_name varchar(255),
        turn integer,
        type integer,
        course_take_type_id integer,
        election_mode_id integer,
        project_id integer,
        semester_id integer,
        primary key (id)
    );
    create table t_elect_mail_templates (
        id bigint not null,
        content varchar(255),
        title varchar(255),
        primary key (id)
    );
    create table t_elect_plans (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        description varchar(255),
        name varchar(255),
        primary key (id)
    );
    create table t_elect_plans_rule_configs (
        elect_plan_id bigint not null,
        rule_config_id integer not null,
        primary key (elect_plan_id, rule_config_id)
    );
    create table t_election_profiles (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        begin_at timestamp,
        elect_begin_at timestamp,
        elect_end_at timestamp,
        end_at timestamp,
        name varchar(255),
        notice varchar(255),
        open_election boolean not null,
        open_withdraw boolean not null,
        profile_type varchar(255),
        turn integer not null,
        withdraw_begin_at timestamp,
        withdraw_end_at timestamp,
        project_id integer,
        semester_id integer,
        primary key (id)
    );
    create table t_election_profiles_departs (
        election_profile_id bigint not null,
        DEPART_ID integer not null,
        primary key (election_profile_id, DEPART_ID)
    );
    create table t_election_profiles_directions (
        election_profile_id bigint not null,
        DIRECTION_ID integer not null,
        primary key (election_profile_id, DIRECTION_ID)
    );
    create table t_election_profiles_grades (
        election_profile_id bigint not null,
        GRADE varchar(255) not null,
        primary key (election_profile_id, GRADE)
    );
    create table t_election_profiles_majors (
        election_profile_id bigint not null,
        MAJOR_ID integer not null,
        primary key (election_profile_id, MAJOR_ID)
    );
    create table t_election_profiles_std_types (
        election_profile_id bigint not null,
        STD_TYPE_ID integer not null,
        primary key (election_profile_id, STD_TYPE_ID)
    );
    create table t_election_profiles_stds (
        election_profile_id bigint not null,
        STD_ID bigint not null,
        primary key (election_profile_id, STD_ID)
    );
    create table t_exam_activities (
        id bigint not null,
        end_at timestamp,
        remark varchar(255),
        start_at timestamp,
        state integer,
        exam_type_id integer,
        lesson_id bigint,
        semester_id integer,
        primary key (id)
    );
    create table t_exam_activities_exam_rooms (
        exam_activity_id bigint not null,
        exam_room_id bigint not null,
        primary key (exam_activity_id, exam_room_id)
    );
    create table t_exam_applies (
        id bigint not null,
        apply_at timestamp,
        exam_apply_type varchar(255),
        passed boolean,
        remark varchar(255),
        exam_take_id bigint,
        primary key (id)
    );
    create table t_exam_apply_switches (
        id bigint not null,
        close_at timestamp,
        enabled boolean not null,
        exam_apply_type varchar(255),
        open_at timestamp,
        project_id integer,
        semester_id integer,
        primary key (id)
    );
    create table t_exam_grade_states (
        id bigint not null,
        inputed_at timestamp,
        operator varchar(255),
        precision integer not null,
        status integer not null,
        percent float,
        remark varchar(255),
        score_mark_style_id integer,
        grade_state_id bigint,
        grade_type_id integer,
        primary key (id)
    );
    create table t_exam_grades (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        operator varchar(255),
        passed boolean not null,
        percent integer,
        score float,
        score_text varchar(255),
        status integer not null,
        course_grade_id bigint,
        exam_status_id integer,
        grade_type_id integer,
        mark_style_id integer,
        primary key (id)
    );
    create table t_exam_groups (
        id bigint not null,
        end_date timestamp,
        name varchar(255),
        published boolean not null,
        start_date timestamp,
        exam_type_id integer,
        project_id integer,
        room_program_id bigint,
        scheme_id bigint,
        semester_id integer,
        primary key (id)
    );
    create table t_exam_groups_lessons (
        exam_group_id bigint not null,
        lesson_id bigint not null,
        primary key (exam_group_id, lesson_id)
    );
    create table t_exam_monitors (
        id bigint not null,
        teacher_name varchar(255),
        department_id integer,
        exam_room_id bigint,
        teacher_id bigint,
        primary key (id)
    );
    create table t_exam_papers (
        id bigint not null,
        code varchar(255),
        is_submit boolean not null,
        operate_user varchar(255),
        exam_type_id integer,
        project_id integer,
        semester_id integer,
        primary key (id)
    );
    create table t_exam_papers_lessons (
        exam_paper_id bigint not null,
        lesson_id bigint not null
    );
    create table t_exam_room_capacities (
        id bigint not null,
        capacity integer not null,
        classroom_id integer,
        primary key (id)
    );
    create table t_exam_room_programs (
        id bigint not null,
        name varchar(255),
        primary key (id)
    );
    create table t_exam_room_programs_rooms (
        exam_room_program_id bigint not null,
        classroom_id integer not null,
        primary key (exam_room_program_id, classroom_id)
    );
    create table t_exam_rooms (
        id bigint not null,
        end_at timestamp,
        room_apply_id bigint,
        start_at timestamp,
        department_id integer,
        examiner_id bigint,
        room_id integer,
        semester_id integer,
        primary key (id)
    );
    create table t_exam_takes (
        id bigint not null,
        remark varchar(255),
        exam_room_id bigint,
        exam_status_id integer,
        exam_type_id integer,
        lesson_id bigint,
        semester_id integer,
        std_id bigint,
        primary key (id)
    );
    create table t_exam_turn_schemes (
        id bigint not null,
        name varchar(255),
        exam_type_id integer,
        project_id integer,
        primary key (id)
    );
    create table t_exam_turns (
        id bigint not null,
        begin_time integer,
        end_time integer,
        eng_name varchar(255),
        name varchar(255),
        seq_no integer not null,
        examTurnScheme_id bigint,
        primary key (id)
    );
    create table t_exchange_configs (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        depart_audit_begin_at timestamp,
        depart_audit_end_at timestamp,
        grade_input_begin_at timestamp,
        grade_input_end_at timestamp,
        opened boolean not null,
        semester_id integer,
        primary key (id)
    );
    create table t_exchange_course_grades (
        id bigint not null,
        passed boolean not null,
        score float,
        score_text varchar(255),
        course_id bigint,
        course_type_id integer,
        mark_style_id integer,
        semester_id integer,
        primary key (id)
    );
    create table t_exchange_courses (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        code varchar(255),
        credits float,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        period varchar(255),
        remark varchar(255),
        school_id bigint,
        primary key (id)
    );
    create table t_exchange_grades (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        enabled boolean not null,
        remark varchar(255),
        score_text varchar(255),
        course_id bigint,
        semester_id integer,
        session_id bigint,
        std_id bigint,
        primary key (id)
    );
    create table t_exchange_grades_converts (
        exchange_grade_id bigint not null,
        exchange_course_grade_id bigint not null,
        primary key (exchange_grade_id, exchange_course_grade_id)
    );
    create table t_exchange_logs (
        id bigint not null,
        action_name varchar(255),
        content varchar(255),
        ip varchar(255),
        operate_at timestamp,
        user_id bigint,
        primary key (id)
    );
    create table t_exchange_projects (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        code varchar(255),
        effective_at timestamp,
        invalid_at timestamp,
        name varchar(255),
        remark varchar(255),
        education_id integer,
        school_id bigint,
        school_type_id integer,
        type_id integer,
        primary key (id)
    );
    create table t_exchange_schools (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        code varchar(255),
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        country_id integer,
        primary key (id)
    );
    create table t_exchange_sessions (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        effective_at timestamp,
        invalid_at timestamp,
        project_id bigint,
        semester_id integer,
        primary key (id)
    );
    create table t_exchange_students (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        admin_audit varchar(255),
        depart_audit varchar(255),
        effective_at timestamp,
        invalid_at timestamp,
        state integer,
        session_id bigint,
        std_id bigint,
        primary key (id)
    );
    create table t_exclusive_subjects (
        id bigint not null,
        config_id bigint,
        subject_one_id integer,
        subject_two_id integer,
        primary key (id)
    );
    create table t_grade_input_switches (
        id bigint not null,
        end_at timestamp,
        need_validate boolean not null,
        opened boolean not null,
        remark varchar(255),
        start_at timestamp,
        project_id integer,
        semester_id integer,
        primary key (id)
    );
    create table t_grade_input_switches_types (
        grade_input_switch_id bigint not null,
        grade_type_id integer not null,
        primary key (grade_input_switch_id, grade_type_id)
    );
    create table t_grade_modify_applies (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        apply_reason varchar(255),
        applyer varchar(255),
        audit_reason varchar(255),
        auditer varchar(255),
        final_auditer varchar(255),
        orig_score float,
        orig_score_text varchar(255),
        score float,
        score_text varchar(255),
        status varchar(255),
        course_id bigint,
        exam_status_id integer,
        exam_status_before_id integer,
        grade_type_id integer,
        project_id integer,
        semester_id integer,
        std_id bigint,
        primary key (id)
    );
    create table t_grade_rate_configs (
        id bigint not null,
        pass_score float not null,
        project_id integer,
        score_mark_style_id integer,
        primary key (id)
    );
    create table t_grade_rate_items (
        id bigint not null,
        default_score float,
        gp_exp varchar(255),
        grade varchar(255),
        max_score float,
        min_score float,
        config_id bigint,
        primary key (id)
    );
    create table t_grade_view_scopes (
        id bigint not null,
        check_evaluation boolean not null,
        enroll_years varchar(255),
        primary key (id)
    );
    create table t_grade_view_scopes_educations (
        grade_view_scope_id bigint not null,
        education_id integer not null,
        primary key (grade_view_scope_id, education_id)
    );
    create table t_grade_view_scopes_projects (
        grade_view_scope_id bigint not null,
        project_id integer not null,
        primary key (grade_view_scope_id, project_id)
    );
    create table t_grade_view_scopes_std_types (
        grade_view_scope_id bigint not null,
        std_type_id integer not null,
        primary key (grade_view_scope_id, std_type_id)
    );
    create table t_last_makeup_takes (
        id bigint not null,
        course_type_id integer,
        std_id bigint,
        task_id bigint,
        primary key (id)
    );
    create table t_last_makeup_tasks (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        input_at timestamp,
        published boolean not null,
        seq_no varchar(255),
        std_count integer not null,
        submit_grade boolean not null,
        project_id integer,
        course_id bigint,
        depart_id integer,
        semester_id integer,
        teacher_id bigint,
        primary key (id)
    );
    create table t_last_makeup_tasks_classes (
        last_makeup_task_id bigint not null,
        adminclass_id integer not null,
        primary key (last_makeup_task_id, adminclass_id)
    );
    create table t_lesson_college_switches (
        id bigint not null,
        open boolean not null,
        project_id integer,
        semester_id integer,
        primary key (id)
    );
    create table t_lesson_for_departs (
        id bigint not null,
        begin_at timestamp,
        end_at timestamp,
        department_id integer,
        project_id integer,
        semester_id integer,
        primary key (id)
    );
    create table t_lesson_groups (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        lesson_size integer not null,
        name varchar(255),
        project_id integer,
        semester_id integer,
        teach_depart_id integer,
        primary key (id)
    );
    create table t_lesson_materials (
        id bigint not null,
        audit_at timestamp,
        extra varchar(255),
        passed boolean,
        reference_books varchar(255),
        remark varchar(255),
        status varchar(255),
        use_explain varchar(255),
        lesson_id bigint,
        primary key (id)
    );
    create table t_lesson_materials_books (
        lesson_material_id bigint not null,
        textbook_id bigint not null
    );
    create table t_lesson_plan_relations (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        lesson_id bigint,
        plan_id bigint,
        primary key (id)
    );
    create table t_lesson_tags (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        color varchar(255),
        eng_name varchar(255),
        name varchar(255),
        project_id integer,
        primary key (id)
    );
    create table t_lessons (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        audit_status varchar(255),
        end_week integer not null,
        period integer not null,
        start_week integer not null,
        status varchar(255),
        no varchar(255),
        remark varchar(255),
        grade varchar(255),
        limit_count integer not null,
        limit_locked boolean not null,
        name varchar(255),
        reserved_count integer not null,
        std_count integer not null,
        project_id integer,
        campus_id integer,
        course_id bigint,
        room_type_id integer,
        course_type_id integer,
        exam_mode_id integer,
        group_id bigint,
        lang_type_id integer,
        semester_id integer,
        depart_id integer,
        teach_depart_id integer,
        primary key (id)
    );
    create table t_lessons_exam_types (
        lesson_id bigint not null,
        exam_type_id integer not null,
        primary key (lesson_id, exam_type_id)
    );
    create table t_lessons_tags (
        lesson_id bigint not null,
        lesson_tag_id bigint not null
    );
    create table t_lessons_teachers (
        lesson_id bigint not null,
        teacher_id bigint not null
    );
    create table t_ma_plans (
        id bigint not null,
        credits float not null,
        terms_count integer,
        end_term integer,
        start_term integer,
        program_id bigint,
        primary key (id)
    );
    create table t_major_credit_constraints (
        id bigint not null,
        max_credit float,
        grade varchar(255),
        department_id integer,
        direction_id integer,
        education_id integer,
        major_id integer,
        semester_id integer,
        std_type_id integer,
        primary key (id)
    );
    create table t_major_plan_comments (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        reason varchar(255),
        major_plan_id bigint,
        primary key (id)
    );
    create table t_normal_classes (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        code varchar(255),
        effective_at timestamp,
        grade varchar(255),
        invalid_at timestamp,
        name varchar(255),
        education_id integer,
        project_id integer,
        primary key (id)
    );
    create table t_normal_classes_students (
        normal_class_id bigint not null,
        student_id bigint not null,
        primary key (normal_class_id, student_id)
    );
    create table t_not_pass_credit_statss (
        id bigint not null,
        credit float,
        course_id bigint,
        course_type_id integer,
        std_id bigint,
        primary key (id)
    );
    create table t_off_campus_tutors (
        id bigint not null,
        name varchar(255),
        organization varchar(255),
        title_id integer,
        primary key (id)
    );
    create table t_other_exam_configs (
        id bigint not null,
        begin_at timestamp,
        code varchar(255),
        end_at timestamp,
        name varchar(255),
        notice varchar(255),
        opened boolean not null,
        remark varchar(255),
        category_id integer,
        project_id integer,
        semester_id integer,
        primary key (id)
    );
    create table t_other_exam_configs_campuses (
        t_other_exam_configs_id bigint not null,
        campus_id integer not null,
        primary key (t_other_exam_configs_id, campus_id)
    );
    create table t_other_exam_loggers (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        action_type varchar(255),
        code varchar(255),
        log_at timestamp,
        remote_addr varchar(255),
        semester varchar(255),
        std_code varchar(255),
        subject varchar(255),
        primary key (id)
    );
    create table t_other_exam_settings (
        id bigint not null,
        begin_at timestamp,
        end_at timestamp,
        fee_of_material double,
        fee_of_outline double,
        fee_of_sign_up double,
        field_visable boolean,
        grade varchar(255),
        grade_permited boolean not null,
        have_paid boolean not null,
        max_std integer,
        re_exam_allowed boolean not null,
        config_id bigint,
        subject_id integer,
        super_subject_id integer,
        primary key (id)
    );
    create table t_other_exam_settings_fb_stds (
        t_other_exam_settings_id bigint not null,
        student_id bigint not null,
        primary key (t_other_exam_settings_id, student_id)
    );
    create table t_other_exam_settings_pm_stds (
        t_other_exam_settings_id bigint not null,
        student_id bigint not null,
        primary key (t_other_exam_settings_id, student_id)
    );
    create table t_other_exam_sign_ups (
        id bigint not null,
        exam_no varchar(255),
        fee_of_material double,
        fee_of_outline double,
        fee_of_sign_up double,
        sign_up_at timestamp,
        take_bus boolean not null,
        bill_id bigint,
        campus_id integer,
        pay_state_id integer,
        semester_id integer,
        std_id bigint,
        subject_id integer,
        primary key (id)
    );
    create table t_other_fee_configs (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        close_at timestamp,
        dead_line timestamp,
        fee_rule_script varchar(255),
        fee_rule_state varchar(255),
        open_at timestamp,
        opened boolean not null,
        pay_duration bigint,
        fee_type_id integer,
        project_id integer,
        semester_id integer,
        primary key (id)
    );
    create table t_other_grade_alter_infoes (
        id bigint not null,
        modifier varchar(255),
        remark varchar(255),
        score_after float,
        score_before float,
        updated_at timestamp,
        grade_id bigint,
        primary key (id)
    );
    create table t_other_grades (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        certificate_number varchar(255),
        exam_no varchar(255),
        passed boolean not null,
        score float,
        score_text varchar(255),
        status integer not null,
        mark_style_id integer,
        semester_id integer,
        std_id bigint,
        subject_id integer,
        primary key (id)
    );
    create table t_program_doc_metas (
        id bigint not null,
        indexno integer not null,
        maxlength integer not null,
        name varchar(255),
        template_id bigint,
        primary key (id)
    );
    create table t_program_doc_sections (
        id bigint not null,
        code varchar(255),
        content varchar(255),
        name varchar(255),
        doc_id bigint,
        parent_id bigint,
        primary key (id)
    );
    create table t_program_doc_templates (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        effective_at timestamp,
        invalid_at timestamp,
        locale varchar(255),
        name varchar(255),
        project_id integer,
        education_id integer,
        primary key (id)
    );
    create table t_program_doc_templates_types (
        program_doc_template_id bigint not null,
        std_type_id integer not null,
        primary key (program_doc_template_id, std_type_id)
    );
    create table t_program_docs (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        locale varchar(255),
        program_id bigint,
        primary key (id)
    );
    create table t_programs (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        audit_state varchar(255),
        duration float,
        effective_on date,
        grade varchar(255),
        invalid_on date,
        name varchar(255),
        remark varchar(255),
        degree_id integer,
        department_id integer,
        direction_id integer,
        education_id integer,
        major_id integer,
        std_type_id integer,
        study_type_id integer,
        primary key (id)
    );
    create table t_retake_fee_configs (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        close_at timestamp,
        dead_line timestamp,
        fee_rule_script varchar(255),
        fee_rule_state varchar(255),
        open_at timestamp,
        opened boolean not null,
        pay_duration bigint,
        price_per_credit integer not null,
        fee_type_id integer,
        project_id integer,
        semester_id integer,
        primary key (id)
    );
    create table t_score_sections (
        id bigint not null,
        from_score float not null,
        to_score float not null,
        primary key (id)
    );
    create table t_std_apply_logs (
        id bigint not null,
        apply_on timestamp,
        apply_type integer,
        course_code varchar(255),
        course_credit float,
        course_name varchar(255),
        ip varchar(255),
        remark varchar(255),
        result_type integer not null,
        semester_id integer,
        std_code varchar(255),
        std_id bigint,
        std_name varchar(255),
        task_id bigint,
        primary key (id)
    );
    create table t_std_course_abilities (
        id bigint not null,
        published boolean not null,
        score float,
        ability_rate_id integer,
        std_id bigint,
        primary key (id)
    );
    create table t_std_credit_constraints (
        id bigint not null,
        max_credit float,
        gpa float,
        semester_id integer,
        std_id bigint,
        primary key (id)
    );
    create table t_std_gpas (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        count integer not null,
        credits float,
        ga float,
        gpa float,
        total_credits float,
        std_id bigint,
        primary key (id)
    );
    create table t_std_semester_gpas (
        id bigint not null,
        count integer not null,
        credits float,
        ga float,
        gpa float,
        total_credits float,
        semester_id integer,
        std_gpa_id bigint,
        primary key (id)
    );
    create table t_std_year_gpas (
        id bigint not null,
        count integer not null,
        credits float,
        ga float,
        gpa float,
        school_year varchar(255),
        total_credits float,
        std_gpa_id bigint,
        primary key (id)
    );
    create table t_student_programs (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        program_id bigint,
        std_id bigint,
        primary key (id)
    );
    create table t_suggest_activities (
        id bigint not null,
        end_time integer,
        end_unit integer,
        start_time integer,
        start_unit integer,
        week_state varchar(255),
        week_state_num bigint,
        weekday integer,
        arrange_suggest_id bigint,
        primary key (id)
    );
    create table t_suggest_activities_teachers (
        suggest_activity_id bigint not null,
        teacher_id bigint not null,
        primary key (suggest_activity_id, teacher_id)
    );
    create table t_teach_qualities (
        id bigint not null,
        state integer,
        std_learn varchar(255),
        teach varchar(255),
        teach_experience varchar(255),
        test varchar(255),
        lesson_id bigint,
        project_id integer,
        semester_id integer,
        teacher_id bigint,
        primary key (id)
    );
    create table t_teacherbook_nums (
        id bigint not null,
        num integer,
        course_id bigint,
        department_id integer,
        semester_id integer,
        textbook_id bigint,
        primary key (id)
    );
    create table t_textbook_order_configs (
        id bigint not null,
        begin_at timestamp,
        ebank_opened boolean not null,
        end_at timestamp,
        order_limit integer,
        primary key (id)
    );
    create table t_textbook_order_lines (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        amount integer,
        code varchar(255),
        quantity integer not null,
        lesson_id bigint,
        semester_id integer,
        student_id bigint,
        textbook_id bigint,
        primary key (id)
    );
    create table t_textbook_prices (
        id bigint not null,
        textbook_price float,
        project_id integer,
        semester_id integer,
        textbook_id bigint,
        primary key (id)
    );
    create table t_textbooks (
        id bigint not null,
        author varchar(255),
        description varchar(255),
        effective_at timestamp,
        invalid_at timestamp,
        isbn varchar(255),
        name varchar(255),
        price integer,
        published boolean not null,
        published_on date,
        remark varchar(255),
        version varchar(255),
        award_type_id integer,
        book_type_id integer,
        press_id integer,
        primary key (id)
    );
    create table t_theses (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        duplicate_count integer,
        duplicate_ratio float,
        uploaded boolean not null,
        filename varchar(255),
        subtitle varchar(255),
        summary varchar(255),
        title varchar(255),
        off_campus_tutor_id bigint,
        std_id bigint,
        primary key (id)
    );
    create table t_total_credit_statss (
        id bigint not null,
        tol_credit float,
        std_id bigint,
        primary key (id)
    );
    create table tc_external_contacts (
        id bigint not null,
        email varchar(255),
        mobile_phone varchar(255),
        phone_of_home varchar(255),
        phone_of_office varchar(255),
        person_id bigint,
        primary key (id)
    );
    create table tc_external_people (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        account varchar(255),
        bank varchar(255),
        birthday date,
        charactor varchar(255),
        idcard varchar(255),
        name varchar(255),
        unit varchar(255),
        country_id integer,
        department_id integer,
        gender_id integer,
        idcard_type_id integer,
        nation_id integer,
        politic_visage_id integer,
        unit_type_id integer,
        primary key (id)
    );
    create table tc_external_teachers (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        code varchar(255),
        degree_award_on date,
        effective_at date,
        graduate_on date,
        invalid_at date,
        name varchar(255),
        passed boolean not null,
        remark varchar(255),
        reply varchar(255),
        school varchar(255),
        tutor_award_on date,
        degree_id integer,
        department_id integer,
        education_id integer,
        person_id bigint,
        state_id integer,
        teacher_type_id integer,
        title_id integer,
        tutor_type_id integer,
        primary key (id)
    );
    create table tc_parttime_contacts (
        id bigint not null,
        email varchar(255),
        mobile_phone varchar(255),
        phone_of_home varchar(255),
        phone_of_office varchar(255),
        person_id bigint,
        primary key (id)
    );
    create table tc_parttime_people (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        account varchar(255),
        bank varchar(255),
        birthday date,
        charactor varchar(255),
        idcard varchar(255),
        name varchar(255),
        country_id integer,
        department_id integer,
        gender_id integer,
        idcard_type_id integer,
        nation_id integer,
        politic_visage_id integer,
        primary key (id)
    );
    create table tc_parttime_teachers (
        id bigint not null,
        created_at timestamp,
        updated_at timestamp,
        code varchar(255),
        degree_award_on date,
        effective_at date,
        graduate_on date,
        invalid_at date,
        name varchar(255),
        passed boolean not null,
        remark varchar(255),
        reply varchar(255),
        school varchar(255),
        tutor_award_on date,
        degree_id integer,
        department_id integer,
        education_id integer,
        parttime_depart_id integer,
        person_id bigint,
        state_id integer,
        teacher_type_id integer,
        title_id integer,
        tutor_type_id integer,
        primary key (id)
    );
    create table tc_teacher_contacts (
        id bigint not null,
        address varchar(255),
        email varchar(255),
        mobile_phone varchar(255),
        phone_of_home varchar(255),
        phone_of_office varchar(255),
        staff_id bigint,
        primary key (id)
    );
    create table xb_book_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table xb_classroom_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table xb_course_ability_rates (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table xb_course_apply_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table xb_course_categories (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table xb_course_hour_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table xb_course_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        theoretical boolean not null,
        primary key (id)
    );
    create table xb_exam_styles (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table xb_fee_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table xb_std_label_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    create table xb_std_labels (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        type_id integer,
        primary key (id)
    );
    create table xb_std_types (
        id integer not null,
        code varchar(255),
        created_at timestamp,
        effective_at timestamp,
        eng_name varchar(255),
        invalid_at timestamp,
        name varchar(255),
        updated_at timestamp,
        primary key (id)
    );
    alter table ST_DA_APPLIES 
        add constraint UK_qadia5c7mokn8eatxltvq2md3 unique (season_id, std_id);
    alter table ST_GA_RESULTS 
        add constraint UK_455h5wi7cuptjvydn2k9m44sj unique (season_id, std_id);
    alter table ST_PA_RESULTS 
        add constraint UK_4s6cgm3qudf8b5t79mm8g7thg unique (std_id);
    alter table T_BOOKORDER_CONFIGS_SEMESTERS 
        add constraint UK_sb1tnn9e745330l7nteedpnc0 unique (semester_id);
    alter table T_BOOK_REQ_CONFIGS_SEMESTERS 
        add constraint UK_6t15hhp920jstvqsomev7c4d8 unique (semester_id);
    alter table T_ELECT_PROFILES_PROJECTS 
        add constraint UK_lqlmtbis9feweu4j05olx8k8b unique (project_id);
    alter table T_LESSON_FOR_D_L_IDS 
        add constraint UK_5rhndvp788tih34uu2ug54kt8 unique (LESSON_ID);
    alter table T_STD_COURSE_COUNT_CONS 
        add constraint UK_scq5i6a8up47wcncuc7lgqo72 unique (semester_id, std_id);
    alter table XB_EXCHANGE_TYPES 
        add constraint UK_qt6t86intkbmfxfxcomav9hs unique (code);
    alter table XB_EXCH_SCHOOL_TYPES 
        add constraint UK_ggcix27xu9pxvuikpo6g6iaqu unique (code);
    alter table c_adminclasses 
        add constraint UK_tdhgnk2g7frti7atywjkkmf2t unique (code);
    alter table c_buildings 
        add constraint UK_cjfs8ju3jlvvh7s7tisvws9md unique (code);
    alter table c_calendars 
        add constraint UK_b087u2sduyx0eblpaqfek5p2s unique (name);
    alter table c_campuses 
        add constraint UK_lk6ywe1508gv52kpjote9m2sy unique (code);
    alter table c_classrooms 
        add constraint UK_phnhtc6xhro0m4xfe1f7g6xor unique (code);
    alter table c_departments 
        add constraint UK_hj5yclgk27j1eaufo4ugleyxu unique (code);
    alter table c_directions 
        add constraint UK_8hclwwms1ltwny5hnr6r7peyc unique (code);
    alter table c_majors 
        add constraint UK_p513eh36yi1hk4vpm3uv1abek unique (code);
    alter table c_projects 
        add constraint UK_7mvkq699lkbef30qctupohdvi unique (name);
    alter table c_semesters 
        add constraint UK_aaaghujryx6r752ayurt1emt1 unique (calendar_id, code);
    alter table c_staffs 
        add constraint UK_lwvw892nibok64flvx6q89aqa unique (account);
    alter table c_std_people 
        add constraint UK_seu4rbwm9grsmchy49wopmp17 unique (account);
    alter table c_students 
        add constraint UK_lsjjcny1iaf5xudssmgkdrn0e unique (code);
    alter table c_teachers 
        add constraint UK_dsg0ryauy0fq3fa9pfsgqasrt unique (code);
    alter table CL_PR_CATALOGS_AUDIT_DEPARTS 
        add constraint UK_5t4kg7ijqwogiyjbw9o9qm53r unique (department_id);
    alter table cl_price_catalogs_prices 
        add constraint UK_l3xugc1j70cyvcfr3fpkrrr4n unique (price_config_id);
    alter table d_thesis_active_types 
        add constraint UK_raqib61c9aktuw5mql63w3ceb unique (code);
    alter table f_tuitions 
        add constraint UK_k35r4w3wsfe0dn8ks2eph7fm1 unique (semester_id, std_id);
    alter table gb_countries 
        add constraint UK_95apw228bf91tdo1nc04f71fv unique (code);
    alter table gb_degrees 
        add constraint UK_2lnflkfljrd9jdcqgmhk896rw unique (code);
    alter table gb_divisions 
        add constraint UK_lswjnjgric9xhisl1bav8newo unique (code);
    alter table gb_genders 
        add constraint UK_be2u8sbvmt8svdlw9hq7g8t1f unique (code);
    alter table gb_languages 
        add constraint UK_kr9u3di9mhvto7opxtthys9n1 unique (code);
    alter table gb_marital_statuses 
        add constraint UK_57oby2gpas08pggy1l0e7l6l8 unique (code);
    alter table gb_nations 
        add constraint UK_e4mma9182a3kwdvbdr9f177x4 unique (code);
    alter table gb_politic_visages 
        add constraint UK_d96csothgr17lhn07b9s77qur unique (code);
    alter table gb_social_relations 
        add constraint UK_49csts36s5o25pmnr2nqbqijb unique (code);
    alter table gb_study_types 
        add constraint UK_ddowyyfhcobagelft8le1sjrd unique (code);
    alter table gb_teacher_title_levels 
        add constraint UK_1r6eif1r6motbfjm0tc8l0hn2 unique (code);
    alter table gb_teacher_titles 
        add constraint UK_hggwyj3x32gedjhmxdiat76ef unique (code);
    alter table hb_admission_types 
        add constraint UK_t9i8dbs1bvooek77xm42rpov5 unique (code);
    alter table hb_attendance_types 
        add constraint UK_p7dpjxl5srhvk6tjf57cabiqb unique (code);
    alter table hb_book_award_types 
        add constraint UK_eu01p7nii3ky2yqsgcq3cgu30 unique (code);
    alter table hb_course_take_types 
        add constraint UK_5hpxfntriyopidqs1y6udj6ed unique (code);
    alter table hb_education_modes 
        add constraint UK_sokogtn1hf8mvh0s7mm9897n unique (code);
    alter table hb_educations 
        add constraint UK_c2ii5r7vqy2h6w771eyao1ket unique (code);
    alter table hb_election_modes 
        add constraint UK_t5pdcweqa4eqb8qcp10tmgmd4 unique (code);
    alter table hb_enroll_modes 
        add constraint UK_s09v6x5brcw8ndou4ik9teto8 unique (code);
    alter table hb_exam_modes 
        add constraint UK_7fghcen2y5kw2loc0w97idyxw unique (code);
    alter table hb_exam_statuses 
        add constraint UK_14mym2ps9ratsj3ywr9nlhan6 unique (code);
    alter table hb_exam_types 
        add constraint UK_htqkxofd8ndn8kdr127pdsr3j unique (code);
    alter table hb_examinee_types 
        add constraint UK_7pi3qjte5xqmmlwimgc0te6vj unique (code);
    alter table hb_family_economic_states 
        add constraint UK_m6smc703yimw70hs9a361snjf unique (code);
    alter table hb_fee_origins 
        add constraint UK_a12uijiify81b80r6tii814bv unique (code);
    alter table hb_grade_types 
        add constraint UK_krff7wiyxcc3ohfls30nxvovk unique (code);
    alter table hb_graduate_states 
        add constraint UK_6icb878b5ylnapodtcbqgcq5u unique (code);
    alter table hb_hsch_grade_types 
        add constraint UK_csj25owrtwqjnj80lyartlmk unique (code);
    alter table hb_hskdegrees 
        add constraint UK_svy9y0huwrv67ymptey8wbni7 unique (code);
    alter table hb_idcard_types 
        add constraint UK_dllry112ak5093bktpvr3igrg unique (code);
    alter table hb_other_exam_categories 
        add constraint UK_9aq3kjl0wkswdnp1k5ww3ky02 unique (code);
    alter table hb_other_exam_subjects 
        add constraint UK_jgyc2bi8ujshk3tn8n9fl63b5 unique (code);
    alter table hb_passport_types 
        add constraint UK_dytv1md9bqkpbac2exrxk3era unique (code);
    alter table hb_pay_states 
        add constraint UK_53ctdw0u8fm24etlxddjtbwkd unique (code);
    alter table hb_pay_types 
        add constraint UK_7t73m63e97dssip75xlp52lui unique (code);
    alter table hb_press_levels 
        add constraint UK_6l763hpmdh892f43vnx9is1ek unique (code);
    alter table hb_presses 
        add constraint UK_imq90h3ergt5m2ae660apd4jn unique (code);
    alter table hb_production_award_levels 
        add constraint UK_6mj825uargjrw42brp5t6mh0r unique (code);
    alter table hb_production_award_types 
        add constraint UK_dami5ua1n8e2y74vkuysywxmg unique (code);
    alter table hb_production_types 
        add constraint UK_o8wfknt2yl32gsc4mhp8qlex5 unique (code);
    alter table hb_publication_grades 
        add constraint UK_e1dvedh3dilf8pafx2hhf00ba unique (code);
    alter table hb_publications 
        add constraint UK_4u2vkxw979afkb12iein9ywrg unique (code);
    alter table hb_railway_stations 
        add constraint UK_8nggf0wjnp8ax9elx3pg20wj unique (code);
    alter table hb_residences 
        add constraint UK_56tr4w0poh05vrli10i446ltj unique (code);
    alter table hb_room_usages 
        add constraint UK_6brh5yujylyfsr6kaijpvqbnj unique (code);
    alter table hb_score_mark_styles 
        add constraint UK_c73t2911u4wv31w788ge9lwco unique (code);
    alter table hb_std_alter_reasons 
        add constraint UK_breyop7xkp4lchhehx3bdm3st unique (code);
    alter table hb_std_alter_types 
        add constraint UK_gsdwmgkiku0w6u6fqqwxjck4s unique (code);
    alter table hb_std_award_types 
        add constraint UK_g3pvftn5n36ifc83e6qt7rxoe unique (code);
    alter table hb_std_punish_types 
        add constraint UK_irh0eptfxk73522nqgypne81h unique (code);
    alter table hb_std_statuses 
        add constraint UK_l4ln0jkqp3u84cbnxbnsyfny1 unique (code);
    alter table hb_teach_lang_types 
        add constraint UK_7tse0in0v3rc9bapum6rv3eno unique (code);
    alter table hb_teach_modes 
        add constraint UK_akyrgoh98lq266hm20sua29d1 unique (code);
    alter table hb_teacher_states 
        add constraint UK_6ola94iv3b0q5ma9ekydavcwn unique (code);
    alter table hb_teacher_types 
        add constraint UK_2wlv912ibu4tvk0ojkb3wjcnv unique (code);
    alter table hb_teacher_unit_types 
        add constraint UK_rf91ux9tr8ku3y647nhlww8hl unique (code);
    alter table hb_tutor_types 
        add constraint UK_am336652am2k92muedeygcsbn unique (code);
    alter table hb_uncheckin_reasons 
        add constraint UK_iyk5dib0rx0lo3rgdp8r4f4rt unique (code);
    alter table hb_unregister_reasons 
        add constraint UK_9uobd245nmfi0frxr1yv2takm unique (code);
    alter table hb_visa_types 
        add constraint UK_4nki8cskgmeio3w7sgnw3xhq5 unique (code);
    alter table jb_discipline_catalogs 
        add constraint UK_h73ax5361t7spwjdfcjmvcd1v unique (code);
    alter table jb_discipline_categories 
        add constraint UK_rlo2y0buecork146vlt66ekey unique (code);
    alter table jb_disciplines 
        add constraint UK_asn7hxg32lwyfm5iscxcn8hsn unique (code, catalog_id);
    alter table jb_institutions 
        add constraint UK_mn4jilpcqff59lrt68yevh5dp unique (code);
    alter table q_questionnaire_lessons 
        add constraint UK_6tfupnmhpkh2decjod4ufqir unique (lesson_id, questionnaire_id);
    alter table s_std_abroads 
        add constraint UK_sgvv4yjlvws3vkfs8l2ba8h65 unique (person_id);
    alter table s_std_contacts 
        add constraint UK_2l6692qjpl33fnkrin2tk8rtu unique (person_id);
    alter table s_std_homes 
        add constraint UK_u9luf7dw4ue9piex66bnpv3l unique (person_id);
    alter table s_student_equivalents 
        add constraint UK_g8kkrfuftd5yw5jfc7399usdg unique (person_id);
    alter table se_data_resources 
        add constraint UK_pgfry8khx8rb3xxq33otcwvqw unique (name);
    alter table se_func_resources 
        add constraint UK_tlbdw34dflb9xdoukyjw1265q unique (name);
    alter table se_menu_profiles 
        add constraint UK_fom97jehvb7jh0646vcexwag unique (name);
    alter table se_profile_fields 
        add constraint UK_fqtu90b44u98sn2jr38wivg0t unique (name);
    alter table se_roles 
        add constraint UK_9orwf8tt9x9ifnj1fvs7b101l unique (name);
    alter table se_session_stats 
        add constraint UK_7hkt37wyef4th6fxoip4q1e2b unique (category);
    alter table se_users 
        add constraint UK_iiniu79aue79a8g2t0h2lbma8 unique (name);
    alter table st_checkins 
        add constraint UK_edmid6p988r6blxoqvitumpcx unique (semester_id, std_id);
    alter table st_registers 
        add constraint UK_5l27vm0b94w73dr5w7p6r85q2 unique (semester_id, std_id);
    alter table st_std_admission_majors 
        add constraint UK_2ylm1vh6hxr91ev0sk476h5n2 unique (std_id);
    alter table st_std_admissions 
        add constraint UK_e9puc1apeb1fve7mgmso9796j unique (std_id);
    alter table st_std_edit_restrictions 
        add constraint UK_c53i6swd9yk3gmq1reovjwjfm unique (user_group_id);
    alter table st_std_examinees 
        add constraint UK_3scp7kn374xpi62jg6mxstgqt unique (std_id);
    alter table st_std_graduations 
        add constraint UK_5kopvwru4idcsrrsuplptnccu unique (std_id);
    alter table sys_code_categories 
        add constraint UK_g4a9m154kdbgbf4tbw1c7yrs2 unique (name);
    alter table sys_code_metas 
        add constraint UK_t2q1dxlogspiygoma1oteklr6 unique (name);
    alter table sys_rules 
        add constraint UK_4g6d6fynly41ywy4qd0qjq7b0 unique (name);
    alter table sys_system_messages 
        add constraint UK_jcrplnk4uxu629v3rcd6l2pa8 unique (content_id, recipient_id);
    alter table t_arrange_suggests 
        add constraint UK_m14o9lixgvkcfoysbonl0bxtp unique (lesson_id);
    alter table t_collision_resources 
        add constraint UK_jypdkw7e03smoxoy4fssosb3d unique (lesson_id, resource_id, resource_type, semester_id);
    alter table t_course_arrange_switches 
        add constraint UK_78vmsf4qtfy2pkj0x7x0kr4v6 unique (project_id, semester_id);
    alter table t_course_grades 
        add constraint UK_7mwe79ctihubdnth895et77c4 unique (project_id, semester_id, std_id, course_id);
    alter table t_course_mail_settings 
        add constraint UK_9g5wtvxncofjddyhgib51eed0 unique (name);
    alter table t_course_materials 
        add constraint UK_k9rvkgmq8oqbrdybqofxt3mvl unique (course_id, department_id, semester_id);
    alter table t_course_takes 
        add constraint UK_msgtxveq9xq6tdrws3entft57 unique (lesson_id, std_id);
    alter table t_courses 
        add constraint UK_391y9ivx62sc27ny8qiy1atgt unique (code);
    alter table t_exam_activities 
        add constraint UK_7fdilte8liiaf57vx28fsohrq unique (exam_type_id, lesson_id);
    alter table t_exam_grades 
        add constraint UK_l7v4wehox3axaj6h5txubesc8 unique (course_grade_id, grade_type_id);
    alter table t_exam_papers_lessons 
        add constraint UK_fea9bhuw77v9k4si70eu9foo7 unique (lesson_id);
    alter table t_exam_takes 
        add constraint UK_5g8qt52kh3dkgayx7q1b7ipcr unique (exam_type_id, lesson_id, std_id);
    alter table t_exchange_students 
        add constraint UK_e3ng5frlkmo0tvtd8odscdnxs unique (session_id, std_id);
    alter table t_grade_rate_configs 
        add constraint UK_pusf5clqiwdkfa6thh31o1nmo unique (project_id, score_mark_style_id);
    alter table t_lesson_college_switches 
        add constraint UK_ilawekod8mhmkoiostebey4rp unique (project_id, semester_id);
    alter table t_lesson_for_departs 
        add constraint UK_ldqxh83n9o1pyhl41vx8846es unique (department_id, project_id, semester_id);
    alter table t_lesson_materials 
        add constraint UK_savwr2ppwwwsgvgos91lgvo5v unique (lesson_id);
    alter table t_lesson_tags 
        add constraint UK_kh2lmwecr6vb5jpqy29ewha4x unique (name, project_id);
    alter table t_lesson_tags 
        add constraint UK_nr2t4srvl1ds0tug2csm9ot60 unique (eng_name, project_id);
    alter table t_lessons 
        add constraint UK_rsgfljj90yvgen496bckmkbrw unique (no, semester_id, project_id);
    alter table t_major_credit_constraints 
        add constraint UK_mmy6yhba3trvn3c0ijqsjjpkd unique (department_id, direction_id, education_id, grade, major_id, semester_id, std_type_id);
    alter table t_normal_classes 
        add constraint UK_j6d10w8jqdiv21to3p4p675jc unique (code);
    alter table t_other_exam_settings_fb_stds 
        add constraint UK_5yu6739fc75ukibd6jcaaiq4j unique (student_id);
    alter table t_other_exam_settings_pm_stds 
        add constraint UK_oa5hycfx2nvxxe2n7aqst98od unique (student_id);
    alter table t_other_fee_configs 
        add constraint UK_908xm3ojtimn3qti245od9egf unique (project_id, semester_id);
    alter table t_other_grades 
        add constraint UK_m8l4kbiy05tbq0j7wgimp0wpg unique (semester_id, std_id, subject_id);
    alter table t_retake_fee_configs 
        add constraint UK_i3elwt7nn9bkyfrt0hghvfop1 unique (project_id, semester_id);
    alter table t_std_credit_constraints 
        add constraint UK_fhiio7nmvfucneu6jnhm099r7 unique (semester_id, std_id);
    alter table t_student_programs 
        add constraint UK_nufbe0htmwej9lai1lbyugirx unique (program_id, std_id);
    alter table t_teach_qualities 
        add constraint UK_aud7v4a6pvsxr28g7n2kyvv54 unique (lesson_id, teacher_id);
    alter table t_textbook_prices 
        add constraint UK_nlxtsy7g5mi2y3pj7vmw0yj70 unique (textbook_id);
    alter table t_textbooks 
        add constraint UK_2g6d3vxvsdngr0qpn80fnsgqq unique (isbn);
    alter table tc_external_contacts 
        add constraint UK_lkhdb2nrbm0p3evn2snmksq6w unique (person_id);
    alter table tc_external_people 
        add constraint UK_b99776umaijc7myvb8uq7rivf unique (account);
    alter table tc_external_teachers 
        add constraint UK_j4hy8vn7w7quf0p2gmjl642u unique (code);
    alter table tc_parttime_contacts 
        add constraint UK_br9xx43rw9pvv0vufloco9xm7 unique (person_id);
    alter table tc_parttime_people 
        add constraint UK_f7o439c828ar5w07bo2c7h0tu unique (account);
    alter table tc_parttime_teachers 
        add constraint UK_oicbmg97ls87yfc6lbrjx6r8c unique (code);
    alter table tc_teacher_contacts 
        add constraint UK_n8fmic5vg9frrnas8gbr2bs52 unique (staff_id);
    alter table xb_book_types 
        add constraint UK_6xmia4fo35yhubeunq6ijeq57 unique (code);
    alter table xb_classroom_types 
        add constraint UK_49wiofqxj66bholaf0d47hhp7 unique (code);
    alter table xb_course_ability_rates 
        add constraint UK_81s0434jgqqt1dxs53cb33bkk unique (code);
    alter table xb_course_apply_types 
        add constraint UK_pq9domrpb9yit5o0mhux80pym unique (code);
    alter table xb_course_categories 
        add constraint UK_cu61loxoebw859g5bme5f1d6h unique (code);
    alter table xb_course_hour_types 
        add constraint UK_dy755di98fi71gw66jry1ri7o unique (code);
    alter table xb_course_types 
        add constraint UK_mbmlwqovi6r42dd77fscsvn8i unique (code);
    alter table xb_exam_styles 
        add constraint UK_pconqb8v5tiv6d6gown5jxv1u unique (code);
    alter table xb_fee_types 
        add constraint UK_9qv7gabq66tj2f4b5x6518mvg unique (code);
    alter table xb_std_label_types 
        add constraint UK_qd4aaae5kn765lt23lq05l3m1 unique (code);
    alter table xb_std_labels 
        add constraint UK_ph3o8143k8tg2sdpuq5tn335 unique (code);
    alter table xb_std_types 
        add constraint UK_9cn9q5so7t2xwcuefkc1p3d26 unique (code);
    alter table D_GOOD_THESISES 
        add constraint FK_3kh72ouksiv39rpxtuof20pmt 
        foreign key (PROCESS_ID) 
        references d_thesis_processes;
    alter table D_GOOD_THESISES 
        add constraint FK_3d6auq5inuguwj6955py3kfuu 
        foreign key (RANK_ID) 
        references d_thesis_ranks;
    alter table D_GOOD_THESISES 
        add constraint FK_ffd8mgtevvsqa2ihodcewsesx 
        foreign key (std_id) 
        references c_students;
    alter table D_THESIS_ANNOTATE_EVALUATES 
        add constraint FK_mi812dt14jjog3nwd1vmyed3x 
        foreign key (EVALUATE_PROJECT_ID) 
        references d_thesis_evaluate_projects;
    alter table D_THESIS_ANNOTATE_EVALUATES 
        add constraint FK_3vteefumijidlovbbii2keala 
        foreign key (ACTIVE_ID) 
        references d_thesis_annotate_actives;
    alter table D_THESIS_DOCUMENT_NOTICES 
        add constraint FK_4xyawujjfrbqkqlamabte9rof 
        foreign key (NOTICE_ID) 
        references d_thesis_notices;
    alter table D_THESIS_DOCUMENT_NOTICES 
        add constraint FK_fmnqar559n6sf1q812u7xkgrt 
        foreign key (DOCUMENT_ID) 
        references d_thesis_documents;
    alter table D_THESIS_DOCUMENT_TACHES 
        add constraint FK_4sgrm4bp6ujgkuj1udicntera 
        foreign key (active_type_id) 
        references d_thesis_active_types;
    alter table D_THESIS_DOCUMENT_TACHES 
        add constraint FK_9y9pg7imbyr5ltnm5581mxt3r 
        foreign key (document_id) 
        references d_thesis_documents;
    alter table D_THESIS_NOTICE_DEPARTS 
        add constraint FK_l9pc8fdwgcsit7hxuqa4dyfx7 
        foreign key (DEPART_ID) 
        references c_departments;
    alter table D_THESIS_NOTICE_DEPARTS 
        add constraint FK_bcst0f6vgwh36p2abf3vx3j3t 
        foreign key (NOTICE_ID) 
        references d_thesis_notices;
    alter table D_THESIS_PROCESS_ACTIVETYPE 
        add constraint FK_k3792o6s1qgy1i3qaeidooa0v 
        foreign key (ACTIVETYPE_ID) 
        references d_thesis_active_types;
    alter table D_THESIS_PROCESS_ACTIVETYPE 
        add constraint FK_r9arnurxvpeg20rwp14t0bveo 
        foreign key (PROCESS_ID) 
        references d_thesis_processes;
    alter table D_THESIS_PROCESS_STDS 
        add constraint FK_3qwaxs70chlkgyn90vfj4wfqc 
        foreign key (STUDENT_ID) 
        references c_students;
    alter table D_THESIS_PROCESS_STDS 
        add constraint FK_l95i6hhj4rhxgt98cd69p2suh 
        foreign key (PROCESS_ID) 
        references d_thesis_processes;
    alter table Q_EVA_TEACH_REMESSAGE 
        add constraint FK_doq7gxs6ae69im207n2qf7674 
        foreign key (text_evaluation_id) 
        references q_text_evaluations;
    alter table Q_EVA_TEA_REM_STDS 
        add constraint FK_cu9gq3rcpvlxaiaxwti2eigu9 
        foreign key (student_id) 
        references c_students;
    alter table Q_EVA_TEA_REM_STDS 
        add constraint FK_hjgdk8h540j0bssoqupl3my9t 
        foreign key (q_eva_teach_remessage_id) 
        references Q_EVA_TEACH_REMESSAGE;
    alter table ST_DA_APPLIES 
        add constraint FK_96344c6bmifa1rjk2q568ool7 
        foreign key (season_id) 
        references ST_DA_SEASONS;
    alter table ST_DA_APPLIES 
        add constraint FK_qqdtttqgwxfe9f05nq1xvkp9w 
        foreign key (std_id) 
        references c_students;
    alter table ST_DA_ITEM_RESULTS 
        add constraint FK_200x66314dpyp6o3bvnc08bby 
        foreign key (apply_id) 
        references ST_DA_APPLIES;
    alter table ST_DA_LOGS 
        add constraint FK_adcop10skq7boobubtkdt7hk7 
        foreign key (std_id) 
        references c_students;
    alter table ST_DA_SEASONS 
        add constraint FK_q0f37swk58tkrrcab58rrh9yx 
        foreign key (project_id) 
        references c_projects;
    alter table ST_DA_SEASONS_DEPARTMENTS 
        add constraint FK_t9il5f7fn65r4pq2g62uwd05h 
        foreign key (DEPARTMENT_ID) 
        references c_departments;
    alter table ST_DA_SEASONS_DEPARTMENTS 
        add constraint FK_pnu5lc3ystt1mik108oy02exv 
        foreign key (SEASON_ID) 
        references ST_DA_SEASONS;
    alter table ST_DA_SEASONS_DIRECTIONS 
        add constraint FK_8t4rvjnjjdrhsffdv9ww704yd 
        foreign key (DIRECTION_ID) 
        references c_directions;
    alter table ST_DA_SEASONS_DIRECTIONS 
        add constraint FK_7ngyc06nmk6m5ebbgnsl35hpj 
        foreign key (SEASON_ID) 
        references ST_DA_SEASONS;
    alter table ST_DA_SEASONS_EDUCATIONS 
        add constraint FK_k6ilk1t667bwbqkh8r561heo9 
        foreign key (EDUCATION_ID) 
        references hb_educations;
    alter table ST_DA_SEASONS_EDUCATIONS 
        add constraint FK_rfjrxt2c9u310fnl8bvu0imvj 
        foreign key (SEASON_ID) 
        references ST_DA_SEASONS;
    alter table ST_DA_SEASONS_MAJORS 
        add constraint FK_ncue8dt9qw7tgm0qo5fwoifgn 
        foreign key (MAJOR_ID) 
        references c_majors;
    alter table ST_DA_SEASONS_MAJORS 
        add constraint FK_e0wq0gnvpli5tybku8n0jesoe 
        foreign key (SEASON_ID) 
        references ST_DA_SEASONS;
    alter table ST_DA_SEASONS_SEASONS 
        add constraint FK_8yhfdh5uyfk1f0q3hyskc22g5 
        foreign key (OLD_SEASON_ID) 
        references ST_DA_SEASONS;
    alter table ST_DA_SEASONS_SEASONS 
        add constraint FK_rha8e3uem3p2qrf2opx96tomm 
        foreign key (SEASON_ID) 
        references ST_DA_SEASONS;
    alter table ST_DA_SEASONS_STD_TYPES 
        add constraint FK_pk91hbyd7l42qms20h4vy1nnf 
        foreign key (STD_TYPE_ID) 
        references xb_std_types;
    alter table ST_DA_SEASONS_STD_TYPES 
        add constraint FK_glryim2v54eeo9utfc7s30qkn 
        foreign key (SEASON_ID) 
        references ST_DA_SEASONS;
    alter table ST_DA_STANDARDS 
        add constraint FK_t0qo0ov1fgl5ilqiwbxh1j0rw 
        foreign key (project_id) 
        references c_projects;
    alter table ST_DA_STANDARDS_DEPARTMENTS 
        add constraint FK_mnnuac7lhgngfqofi2vymh3s0 
        foreign key (DEPARTMENT_ID) 
        references c_departments;
    alter table ST_DA_STANDARDS_DEPARTMENTS 
        add constraint FK_fibhcf0v7y06mmjyskl9ejo0w 
        foreign key (STANDARD_ID) 
        references ST_DA_STANDARDS;
    alter table ST_DA_STANDARDS_DIRECTIONS 
        add constraint FK_5l2dmxi8sxuwqvh7sxtq1spto 
        foreign key (DIRECTION_ID) 
        references c_directions;
    alter table ST_DA_STANDARDS_DIRECTIONS 
        add constraint FK_htx2ia7r8tt6q7yrkx7cdisdt 
        foreign key (STANDARD_ID) 
        references ST_DA_STANDARDS;
    alter table ST_DA_STANDARDS_EDUCATIONS 
        add constraint FK_lvpbu9p1lq9on9ti9x82kx6p0 
        foreign key (EDUCATION_ID) 
        references hb_educations;
    alter table ST_DA_STANDARDS_EDUCATIONS 
        add constraint FK_ckmxj9gcywxhvq5i2rcaomsl8 
        foreign key (STANDARD_ID) 
        references ST_DA_STANDARDS;
    alter table ST_DA_STANDARDS_MAJORS 
        add constraint FK_n2lltu4ahp19edtdjcfjeisjq 
        foreign key (MAJOR_ID) 
        references c_majors;
    alter table ST_DA_STANDARDS_MAJORS 
        add constraint FK_8bjaeujo2pny6dn0a44jmqmhr 
        foreign key (STANDARD_ID) 
        references ST_DA_STANDARDS;
    alter table ST_DA_STANDARDS_RULE_CFGS 
        add constraint FK_o2c56y5eo1snxa53dfu84kp3v 
        foreign key (RULE_CONFIG_ID) 
        references sys_rule_configs;
    alter table ST_DA_STANDARDS_RULE_CFGS 
        add constraint FK_knio5nerit99o9u11iigsv3xd 
        foreign key (STANDARD_ID) 
        references ST_DA_STANDARDS;
    alter table ST_DA_STANDARDS_STD_TYPES 
        add constraint FK_fgq64ncg60q1axkyktb5xuqpu 
        foreign key (STD_TYPE_ID) 
        references xb_std_types;
    alter table ST_DA_STANDARDS_STD_TYPES 
        add constraint FK_j7w7ibpm0dvlw5024mupvbtl6 
        foreign key (STANDARD_ID) 
        references ST_DA_STANDARDS;
    alter table ST_GA_ITEM_RESULTS 
        add constraint FK_lg7gjjefp2glgtuid2eg4pbbe 
        foreign key (audit_result_id) 
        references ST_GA_RESULTS;
    alter table ST_GA_LOGS 
        add constraint FK_4i9gfjnwx757xdit0d5adifbp 
        foreign key (std_id) 
        references c_students;
    alter table ST_GA_RESULTS 
        add constraint FK_ngdvdgtyr9x42pvcf2wrgaj2u 
        foreign key (graduate_state_id) 
        references hb_graduate_states;
    alter table ST_GA_RESULTS 
        add constraint FK_aldvlx8t7owbvqt4n4sof0vvb 
        foreign key (season_id) 
        references ST_GA_SEASONS;
    alter table ST_GA_RESULTS 
        add constraint FK_dpteyrkwinumt8671r06ebht 
        foreign key (std_id) 
        references c_students;
    alter table ST_GA_SEASONS 
        add constraint FK_j0915i6v2fy80499fw0h53fiq 
        foreign key (project_id) 
        references c_projects;
    alter table ST_GA_STANDARDS 
        add constraint FK_n3kun4cf7q4vasaxxv6h8h4bv 
        foreign key (project_id) 
        references c_projects;
    alter table ST_GA_STANDARDS_DEPARTMENTS 
        add constraint FK_p1xjwba99v4fn7aqjpq021vnj 
        foreign key (DEPARTMENT_ID) 
        references c_departments;
    alter table ST_GA_STANDARDS_DEPARTMENTS 
        add constraint FK_tkc2nre4gixv3ipwfed8armnx 
        foreign key (STANDARD_ID) 
        references ST_GA_STANDARDS;
    alter table ST_GA_STANDARDS_DIRECTIONS 
        add constraint FK_cvkbgl3l5eoowoeqqot7h63xx 
        foreign key (DIRECTION_ID) 
        references c_directions;
    alter table ST_GA_STANDARDS_DIRECTIONS 
        add constraint FK_2vnwglbbb5ilbfigy2cpbda6h 
        foreign key (STANDARD_ID) 
        references ST_GA_STANDARDS;
    alter table ST_GA_STANDARDS_EDUCATIONS 
        add constraint FK_48i2c5jho263e9ea2hx13bmp9 
        foreign key (EDUCATION_ID) 
        references hb_educations;
    alter table ST_GA_STANDARDS_EDUCATIONS 
        add constraint FK_e01c0cg89sq3vpfeacwfjbajk 
        foreign key (STANDARD_ID) 
        references ST_GA_STANDARDS;
    alter table ST_GA_STANDARDS_MAJORS 
        add constraint FK_6t3btcfjgoaf1jrrotabewv3a 
        foreign key (MAJOR_ID) 
        references c_majors;
    alter table ST_GA_STANDARDS_MAJORS 
        add constraint FK_rn1wwrpwlbfy7s9ff3vxonbe4 
        foreign key (STANDARD_ID) 
        references ST_GA_STANDARDS;
    alter table ST_GA_STANDARDS_RULE_CFGS 
        add constraint FK_ogcodlqxpqh5gp5iyuax5doa1 
        foreign key (RULE_CONFIG_ID) 
        references sys_rule_configs;
    alter table ST_GA_STANDARDS_RULE_CFGS 
        add constraint FK_4b513bke9yrapawcmd7ab7hut 
        foreign key (STANDARD_ID) 
        references ST_GA_STANDARDS;
    alter table ST_GA_STANDARDS_STD_TYPES 
        add constraint FK_aa6wx9b0833xvy0mw13tmcqdh 
        foreign key (STD_TYPE_ID) 
        references xb_std_types;
    alter table ST_GA_STANDARDS_STD_TYPES 
        add constraint FK_b282eavo8kyu0oonbtbyak9ps 
        foreign key (STANDARD_ID) 
        references ST_GA_STANDARDS;
    alter table ST_PA_COURSE_RESULTS 
        add constraint FK_mllx768k1fjovhjeit416k77b 
        foreign key (course_id) 
        references t_courses;
    alter table ST_PA_COURSE_RESULTS 
        add constraint FK_7yitpg9921eng71tbxa916jhx 
        foreign key (group_result_id) 
        references ST_PA_GROUP_RESULTS;
    alter table ST_PA_GROUP_RESULTS 
        add constraint FK_aphgnse6nnrojtf332do37c4s 
        foreign key (course_type_id) 
        references xb_course_types;
    alter table ST_PA_GROUP_RESULTS 
        add constraint FK_62mephymc9bbb3kvvi7fsgcuy 
        foreign key (parent_id) 
        references ST_PA_GROUP_RESULTS;
    alter table ST_PA_GROUP_RESULTS 
        add constraint FK_4xhs1wcyakvsk5mmimvsgypxq 
        foreign key (plan_result_id) 
        references ST_PA_RESULTS;
    alter table ST_PA_LOGS 
        add constraint FK_chmvh4ohsvcdtcp2mc70nxdmb 
        foreign key (std_id) 
        references c_students;
    alter table ST_PA_RESULTS 
        add constraint FK_qr7v11wg93rsu3bmli2dbcvhq 
        foreign key (std_id) 
        references c_students;
    alter table ST_PA_STANDARDS 
        add constraint FK_ccd7gn2w4nocrwubh1hhqkg27 
        foreign key (convert_target_course_type_id) 
        references xb_course_types;
    alter table ST_PA_STANDARDS 
        add constraint FK_asv7t88v2ctlptwws3y0lxd8h 
        foreign key (project_id) 
        references c_projects;
    alter table ST_PA_STANDARDS_CONVERTABLES 
        add constraint FK_5fvdp8v30dd5l06bgp09aywsw 
        foreign key (CONVERTABLE_TYPE_ID) 
        references xb_course_types;
    alter table ST_PA_STANDARDS_CONVERTABLES 
        add constraint FK_b66guco5u6t6lmf1e6gkcs0yy 
        foreign key (STANDARD_ID) 
        references ST_PA_STANDARDS;
    alter table ST_PA_STANDARDS_DEPARTMENTS 
        add constraint FK_taif4k1gqsi39uff6d7g5omdh 
        foreign key (DEPARTMENT_ID) 
        references c_departments;
    alter table ST_PA_STANDARDS_DEPARTMENTS 
        add constraint FK_52em061ukqd0oc8jctr3mcg6m 
        foreign key (STANDARD_ID) 
        references ST_PA_STANDARDS;
    alter table ST_PA_STANDARDS_DIRECTIONS 
        add constraint FK_4h2ymliuky41i9gwnvb5gj1r3 
        foreign key (DIRECTION_ID) 
        references c_directions;
    alter table ST_PA_STANDARDS_DIRECTIONS 
        add constraint FK_o644yy0eyyj26rsdpnquatw23 
        foreign key (STANDARD_ID) 
        references ST_PA_STANDARDS;
    alter table ST_PA_STANDARDS_DISAUDITS 
        add constraint FK_pfqeajxrj8fwincbw33x073xg 
        foreign key (DISAUDIT_TYPE_ID) 
        references xb_course_types;
    alter table ST_PA_STANDARDS_DISAUDITS 
        add constraint FK_nh7hmuev58n7it5ffff6nnbwj 
        foreign key (STANDARD_ID) 
        references ST_PA_STANDARDS;
    alter table ST_PA_STANDARDS_EDUCATIONS 
        add constraint FK_th11xt8wubj26ojw3nj89mnoo 
        foreign key (EDUCATION_ID) 
        references hb_educations;
    alter table ST_PA_STANDARDS_EDUCATIONS 
        add constraint FK_kvr0wyaarswuf1xc0chngpqis 
        foreign key (STANDARD_ID) 
        references ST_PA_STANDARDS;
    alter table ST_PA_STANDARDS_MAJORS 
        add constraint FK_6d3oo5cmmah2hdcuk8qqjcd2y 
        foreign key (MAJOR_ID) 
        references c_majors;
    alter table ST_PA_STANDARDS_MAJORS 
        add constraint FK_bx1y6gqppovyj507gtsydkvsa 
        foreign key (STANDARD_ID) 
        references ST_PA_STANDARDS;
    alter table ST_PA_STANDARDS_STD_TYPES 
        add constraint FK_q4x2b6i6e3cu16vtrdjcebm0w 
        foreign key (STD_TYPE_ID) 
        references xb_std_types;
    alter table ST_PA_STANDARDS_STD_TYPES 
        add constraint FK_53nrik95rqwpkg07bq75wpk1j 
        foreign key (STANDARD_ID) 
        references ST_PA_STANDARDS;
    alter table SYS_MSG_CFG_CATEGORIES 
        add constraint FK_nps1l8rr0qhndodustfeqx75p 
        foreign key (CATEGORY_ID) 
        references se_roles;
    alter table SYS_MSG_CFG_CATEGORIES 
        add constraint FK_jpu4fsspg0xjjq2xvam4b04v2 
        foreign key (SYS_MSG_CFG_ID) 
        references sys_system_message_configs;
    alter table T_BOOKORDER_CONFIGS_SEMESTERS 
        add constraint FK_sb1tnn9e745330l7nteedpnc0 
        foreign key (semester_id) 
        references c_semesters;
    alter table T_BOOKORDER_CONFIGS_SEMESTERS 
        add constraint FK_rbhwch5hnh7dus2kyjtpmtp78 
        foreign key (textbook_order_config_id) 
        references t_textbook_order_configs;
    alter table T_BOOK_REQ_CONFIGS_SEMESTERS 
        add constraint FK_6t15hhp920jstvqsomev7c4d8 
        foreign key (semester_id) 
        references c_semesters;
    alter table T_BOOK_REQ_CONFIGS_SEMESTERS 
        add constraint FK_ard8kp6b2m1rngo8rjw47n16q 
        foreign key (book_require_config_bean_id) 
        references t_book_require_configs;
    alter table T_CONS_COURS_TYPE_MAX_COUNT 
        add constraint FK_ij2vuuhe8k5ti3v0mdmyrgrny 
        foreign key (COURSE_TYPE_ID) 
        references xb_course_types;
    alter table T_CONS_COURS_TYPE_MAX_COUNT 
        add constraint FK_2x8u1mjdhpe662gl5la764v62 
        foreign key (std_course_count_constraint_id) 
        references T_STD_COURSE_COUNT_CONS;
    alter table T_COURSE_TYPE_CREDIT_CONS 
        add constraint FK_tqoocnxv1l0mtvet0m59vhame 
        foreign key (course_type_id) 
        references xb_course_types;
    alter table T_COURSE_TYPE_CREDIT_CONS 
        add constraint FK_lcvo18gqfk4qigt8dy79k2a9w 
        foreign key (education_id) 
        references hb_educations;
    alter table T_COURSE_TYPE_CREDIT_CONS 
        add constraint FK_lpqet9rqo4b8nptv5vuf4bne 
        foreign key (semester_id) 
        references c_semesters;
    alter table T_ELECT_PROFIES_ELECT_CFGS 
        add constraint FK_pxpow7mny1aag6cj6p3mkqe4c 
        foreign key (rule_config_id) 
        references sys_rule_configs;
    alter table T_ELECT_PROFIES_ELECT_CFGS 
        add constraint FK_6kpp21oqw0w78uksg7nba8pyk 
        foreign key (election_profile_id) 
        references t_election_profiles;
    alter table T_ELECT_PROFIES_ELECT_LESSONS 
        add constraint FK_g1gfdt9fl1sa8oap02l8tt7cd 
        foreign key (election_profile_id) 
        references t_election_profiles;
    alter table T_ELECT_PROFIES_GENERAL_CFGS 
        add constraint FK_kvvyc1587exkbssaedqm6rv30 
        foreign key (rule_config_id) 
        references sys_rule_configs;
    alter table T_ELECT_PROFIES_GENERAL_CFGS 
        add constraint FK_luxiv04wwix4nfepgdcckfl34 
        foreign key (election_profile_id) 
        references t_election_profiles;
    alter table T_ELECT_PROFIES_WD_LESSONS 
        add constraint FK_78p5oui2p1tuqvjx8gdn9w4a8 
        foreign key (election_profile_id) 
        references t_election_profiles;
    alter table T_ELECT_PROFIES_WITHDRAW_CFGS 
        add constraint FK_3blwg75hgfj1kf0lps3mubmor 
        foreign key (rule_config_id) 
        references sys_rule_configs;
    alter table T_ELECT_PROFIES_WITHDRAW_CFGS 
        add constraint FK_gf4cftdstgt05psoc417t1jfa 
        foreign key (election_profile_id) 
        references t_election_profiles;
    alter table T_ELECT_PROFILES_EDUCATIONS 
        add constraint FK_f36ywgp2p2fydph45w8w6ftnj 
        foreign key (election_profile_id) 
        references t_election_profiles;
    alter table T_ELECT_PROFILES_PROJECTS 
        add constraint FK_lqlmtbis9feweu4j05olx8k8b 
        foreign key (project_id) 
        references c_projects;
    alter table T_ELECT_PROFILES_PROJECTS 
        add constraint FK_tp6p4m51hb1w22e9jxmlea62p 
        foreign key (election_profile_id) 
        references t_election_profiles;
    alter table T_EXAM_APPLY_PARAM 
        add constraint FK_1083t5dob3ummvpiqpeousevh 
        foreign key (project_id) 
        references c_projects;
    alter table T_EXAM_APPLY_PARAM 
        add constraint FK_o8n69lg5tokak0ry8qtrqqgxa 
        foreign key (semester_id) 
        references c_semesters;
    alter table T_LESSON_FOR_D_L_IDS 
        add constraint FK_i72k1jbh3yww1rqax4cyw53bo 
        foreign key (lesson_for_depart_id) 
        references t_lesson_for_departs;
    alter table T_MAJOR_PLAN_CG_MODIFIES 
        add constraint FK_r7bly431e48qcmse82qvr36bc 
        foreign key (assessor_id) 
        references se_users;
    alter table T_MAJOR_PLAN_CG_MODIFIES 
        add constraint FK_89tof7h6a3tpxbeqx1goxbbur 
        foreign key (department_id) 
        references c_departments;
    alter table T_MAJOR_PLAN_CG_MODIFIES 
        add constraint FK_51t956l4qcyq3fh40soa9p98o 
        foreign key (new_plan_course_group_id) 
        references T_MAJOR_PLAN_CG_MOD_AFTERS;
    alter table T_MAJOR_PLAN_CG_MODIFIES 
        add constraint FK_hyqc86pw9dj0dlfv3ddy1yajt 
        foreign key (old_plan_course_group_id) 
        references T_MAJOR_PLAN_CG_MOD_BEFORS;
    alter table T_MAJOR_PLAN_CG_MODIFIES 
        add constraint FK_93r2ownc01u7kq6qoywt6lfp5 
        foreign key (proposer_id) 
        references se_users;
    alter table T_MAJOR_PLAN_CG_MOD_AFTERS 
        add constraint FK_6ae7dwd6r769pnnvv9baml70j 
        foreign key (course_type_id) 
        references xb_course_types;
    alter table T_MAJOR_PLAN_CG_MOD_AFTERS 
        add constraint FK_5swxvgo5pit2lcdnpjjnnworc 
        foreign key (fake_course_type_id) 
        references xb_course_types;
    alter table T_MAJOR_PLAN_CG_MOD_BEFORS 
        add constraint FK_qw88ksc9tt841rw14h0swiquo 
        foreign key (course_type_id) 
        references xb_course_types;
    alter table T_MAJOR_PLAN_CG_MOD_BEFORS 
        add constraint FK_jvm4fwaigccvr4t0470yl6jt2 
        foreign key (fake_course_type_id) 
        references xb_course_types;
    alter table T_MAJOR_PLAN_C_MODIFIES 
        add constraint FK_14gg78dthgy7jc8cnd4io4gnf 
        foreign key (assessor_id) 
        references se_users;
    alter table T_MAJOR_PLAN_C_MODIFIES 
        add constraint FK_8aukt28ccl5awvh0ca5s6ei37 
        foreign key (department_id) 
        references c_departments;
    alter table T_MAJOR_PLAN_C_MODIFIES 
        add constraint FK_b47gwioxfa0c4f2fnpyxcijl8 
        foreign key (new_plan_course_id) 
        references T_MAJOR_PLAN_C_MOD_AFTERS;
    alter table T_MAJOR_PLAN_C_MODIFIES 
        add constraint FK_10mx1f17gr8ttnhms4gh2i64e 
        foreign key (old_plan_course_id) 
        references T_MAJOR_PLAN_C_MOD_BEFORS;
    alter table T_MAJOR_PLAN_C_MODIFIES 
        add constraint FK_rmhjans1fqo037t7owy4ja2ev 
        foreign key (proposer_id) 
        references se_users;
    alter table T_MAJOR_PLAN_C_MOD_AFTERS 
        add constraint FK_fm71v1wqmqaqc1qehjmksudg3 
        foreign key (course_id) 
        references t_courses;
    alter table T_MAJOR_PLAN_C_MOD_AFTERS 
        add constraint FK_9yb2or1nftmyyyfnpebnnchc3 
        foreign key (department_id) 
        references c_departments;
    alter table T_MAJOR_PLAN_C_MOD_AFTERS 
        add constraint FK_ftlk91uidihtbn8se9u7xhso0 
        foreign key (fake_course_type_id) 
        references xb_course_types;
    alter table T_MAJOR_PLAN_C_MOD_AFT_C_H 
        add constraint FK_ivpe2a2uwdcl7ou1hf2vi2uxr 
        foreign key (MAJOR_PLAN_C_MOD_AFT_ID) 
        references T_MAJOR_PLAN_C_MOD_AFTERS;
    alter table T_MAJOR_PLAN_C_MOD_BEFORS 
        add constraint FK_h1cgw5kttl111maiss2357h6y 
        foreign key (course_id) 
        references t_courses;
    alter table T_MAJOR_PLAN_C_MOD_BEFORS 
        add constraint FK_ocdof9wjrtnxejvdc1aoq1or8 
        foreign key (department_id) 
        references c_departments;
    alter table T_MAJOR_PLAN_C_MOD_BEFORS 
        add constraint FK_iqa0txbn8ew4ssn4k0sgik3st 
        foreign key (fake_course_type_id) 
        references xb_course_types;
    alter table T_MAJOR_PLAN_C_MOD_BEF_C_H 
        add constraint FK_8ouwkve0pig2bouqm961191rh 
        foreign key (MAJOR_PLAN_C_MOD_BEF_ID) 
        references T_MAJOR_PLAN_C_MOD_BEFORS;
    alter table T_MA_COURSE_SUBS 
        add constraint FK_qshbmspq9d96ytecbkcj1fgak 
        foreign key (department_id) 
        references c_departments;
    alter table T_MA_COURSE_SUBS 
        add constraint FK_fg9dw2l0o3img1u9a3hs4njem 
        foreign key (direction_id) 
        references c_directions;
    alter table T_MA_COURSE_SUBS 
        add constraint FK_1deyr4laflsm4qogjecuq2jap 
        foreign key (education_id) 
        references hb_educations;
    alter table T_MA_COURSE_SUBS 
        add constraint FK_d3vxx42vsf0oss85uxrndx16g 
        foreign key (major_id) 
        references c_majors;
    alter table T_MA_COURSE_SUBS 
        add constraint FK_g62u5f36350vo219jh5yblhob 
        foreign key (project_id) 
        references c_projects;
    alter table T_MA_COURSE_SUBS 
        add constraint FK_o6rpaes1yahp6jb34s723t7py 
        foreign key (std_type_id) 
        references xb_std_types;
    alter table T_MA_COURSE_SUBS_ORIGS 
        add constraint FK_jj9xiedh6kl0tlouqoeen6mqr 
        foreign key (course_id) 
        references t_courses;
    alter table T_MA_COURSE_SUBS_ORIGS 
        add constraint FK_dgkn5uomxedhfrpvlw0qwysla 
        foreign key (t_ma_course_subs_id) 
        references T_MA_COURSE_SUBS;
    alter table T_MA_COURSE_SUBS_SUBS 
        add constraint FK_kmiqs6833otwu9wlk5grsh2vk 
        foreign key (course_id) 
        references t_courses;
    alter table T_MA_COURSE_SUBS_SUBS 
        add constraint FK_d6xkiwyiu2evui77gm0qij8e5 
        foreign key (t_ma_course_subs_id) 
        references T_MA_COURSE_SUBS;
    alter table T_MA_PLAN_COURSES 
        add constraint FK_4a1txda1cf9g9jedlo2u7hvx7 
        foreign key (course_id) 
        references t_courses;
    alter table T_MA_PLAN_COURSES 
        add constraint FK_iomuitoh2n47dnvchvbgfycau 
        foreign key (department_id) 
        references c_departments;
    alter table T_MA_PLAN_COURSES 
        add constraint FK_bo6pcy1k2av5mrgpponc6q3q5 
        foreign key (exam_mode_id) 
        references hb_exam_modes;
    alter table T_MA_PLAN_COURSES 
        add constraint FK_fex8m59m9ant6pikg91889gtg 
        foreign key (course_group_id) 
        references T_MA_PLAN_C_GROUPS;
    alter table T_MA_PLAN_C_GROUPS 
        add constraint FK_1gnqwmmcvaoguv6es91081ol 
        foreign key (course_type_id) 
        references xb_course_types;
    alter table T_MA_PLAN_C_GROUPS 
        add constraint FK_bhs2k0220m0s2h188r50ecyl7 
        foreign key (direction_id) 
        references c_directions;
    alter table T_MA_PLAN_C_GROUPS 
        add constraint FK_a9k4qj6u141k905ip4sfp4ad3 
        foreign key (parent_id) 
        references T_MA_PLAN_C_GROUPS;
    alter table T_MA_PLAN_C_GROUPS 
        add constraint FK_ahqnsarpxx6a45n7bvsnd6c54 
        foreign key (plan_id) 
        references t_ma_plans;
    alter table T_MA_PLAN_C_GROUPS 
        add constraint FK_fk3dpneb1pxixgi11qw05lwwr 
        foreign key (share_course_group_id) 
        references T_SHR_PLAN_C_GROUPS;
    alter table T_MA_PLAN_C_GROUPS_REQ_CORS 
        add constraint FK_1pn26k0v07740myjfjsulhr2f 
        foreign key (course_id) 
        references t_courses;
    alter table T_MA_PLAN_C_GROUPS_REQ_CORS 
        add constraint FK_2mr8kymqsqmtg5c06ikn8n9i5 
        foreign key (t_ma_plan_c_groups_id) 
        references T_MA_PLAN_C_GROUPS;
    alter table T_MA_PLAN_C_GROUPS_XCL_CORS 
        add constraint FK_ig4bd6a8dfkfkwplffgid9ax5 
        foreign key (course_id) 
        references t_courses;
    alter table T_MA_PLAN_C_GROUPS_XCL_CORS 
        add constraint FK_2veto0nbe7maqiptiyrt8mvpn 
        foreign key (t_ma_plan_c_groups_id) 
        references T_MA_PLAN_C_GROUPS;
    alter table T_ORI_PLANS 
        add constraint FK_t41ym76e69taj1uh0joabeemy 
        foreign key (program_id) 
        references t_programs;
    alter table T_ORI_PLAN_COURSES 
        add constraint FK_9qqskjxppq7t5xkfx1755y3n8 
        foreign key (course_id) 
        references t_courses;
    alter table T_ORI_PLAN_COURSES 
        add constraint FK_6n0xwh10xdm4rfr1vt8i2l0lc 
        foreign key (department_id) 
        references c_departments;
    alter table T_ORI_PLAN_COURSES 
        add constraint FK_ieu0h2q5mwnfj2cic9ljxxnm0 
        foreign key (exam_mode_id) 
        references hb_exam_modes;
    alter table T_ORI_PLAN_COURSES 
        add constraint FK_lwnwu3vnpae0aq4l79y4wp011 
        foreign key (course_group_id) 
        references T_ORI_PLAN_C_GROUPS;
    alter table T_ORI_PLAN_C_GROUPS 
        add constraint FK_ov2kf2lefrk0miyjigujcm6do 
        foreign key (course_type_id) 
        references xb_course_types;
    alter table T_ORI_PLAN_C_GROUPS 
        add constraint FK_fhhrtv8xxucls2rtxss86r886 
        foreign key (direction_id) 
        references c_directions;
    alter table T_ORI_PLAN_C_GROUPS 
        add constraint FK_7qeavkpnhhhw22lbfs24di9pl 
        foreign key (PARENT_ID) 
        references T_ORI_PLAN_C_GROUPS;
    alter table T_ORI_PLAN_C_GROUPS 
        add constraint FK_ajs1m9k2qviwm8jn3hdjyhs9l 
        foreign key (PLAN_ID) 
        references T_ORI_PLANS;
    alter table T_ORI_PLAN_C_GROUPS 
        add constraint FK_n97gnbr9ejk0fd4drkp8rbhdn 
        foreign key (share_course_group_id) 
        references T_SHR_PLAN_C_GROUPS;
    alter table T_ORI_PLAN_C_GROUPS_REQ_CORS 
        add constraint FK_sxbau4uiju70wjybyp7817wwj 
        foreign key (course_id) 
        references t_courses;
    alter table T_ORI_PLAN_C_GROUPS_REQ_CORS 
        add constraint FK_e7omjb5rwo6f07111kg09bo1c 
        foreign key (t_ori_plan_c_groups_id) 
        references T_ORI_PLAN_C_GROUPS;
    alter table T_ORI_PLAN_C_GROUPS_XCL_CORS 
        add constraint FK_au7gft2conwtjvw5cnasc56b 
        foreign key (course_id) 
        references t_courses;
    alter table T_ORI_PLAN_C_GROUPS_XCL_CORS 
        add constraint FK_b7d5gy5nv44bnjjmef87hqn7c 
        foreign key (t_ori_plan_c_groups_id) 
        references T_ORI_PLAN_C_GROUPS;
    alter table T_PER_PLANS 
        add constraint FK_f3p4jr2us90w73qq9ytiaj5y0 
        foreign key (std_id) 
        references c_students;
    alter table T_PER_PLAN_COURSES 
        add constraint FK_qlr6to356mkweilekcr23e7o9 
        foreign key (course_id) 
        references t_courses;
    alter table T_PER_PLAN_COURSES 
        add constraint FK_hvbehc9hc5vm73d089km2emd2 
        foreign key (department_id) 
        references c_departments;
    alter table T_PER_PLAN_COURSES 
        add constraint FK_899kga43l9p7wgfwq0wg2n0pv 
        foreign key (exam_mode_id) 
        references hb_exam_modes;
    alter table T_PER_PLAN_COURSES 
        add constraint FK_qvq2ph5625f6csocp5t6wb3en 
        foreign key (course_group_id) 
        references T_PER_PLAN_C_GROUPS;
    alter table T_PER_PLAN_C_GROUPS 
        add constraint FK_j8bgy6gn9dceu5lcaqv1cru1y 
        foreign key (course_type_id) 
        references xb_course_types;
    alter table T_PER_PLAN_C_GROUPS 
        add constraint FK_iihbcgloh7bxj6toaw5vtftoa 
        foreign key (PARENT_ID) 
        references T_PER_PLAN_C_GROUPS;
    alter table T_PER_PLAN_C_GROUPS 
        add constraint FK_20cagrpxqy89w6rburbj43asj 
        foreign key (PLAN_ID) 
        references T_PER_PLANS;
    alter table T_PER_PLAN_C_GROUPS 
        add constraint FK_gcpl9ehdkxspynx7wq8uc2bqt 
        foreign key (share_course_group_id) 
        references T_SHR_PLAN_C_GROUPS;
    alter table T_PER_PLAN_C_GROUPS_REQ_CORS 
        add constraint FK_fk90qq92ur47am7lc4ixs72og 
        foreign key (course_id) 
        references t_courses;
    alter table T_PER_PLAN_C_GROUPS_REQ_CORS 
        add constraint FK_n2wbhp23fvnlvbedhwfw0uk4i 
        foreign key (t_per_plan_c_groups_id) 
        references T_PER_PLAN_C_GROUPS;
    alter table T_PER_PLAN_C_GROUPS_XCL_CORS 
        add constraint FK_rveqtkpokgve8g8i2ctjof3cl 
        foreign key (course_id) 
        references t_courses;
    alter table T_PER_PLAN_C_GROUPS_XCL_CORS 
        add constraint FK_mjhqyadjwi32i8yoi5dgdwr0l 
        foreign key (t_per_plan_c_groups_id) 
        references T_PER_PLAN_C_GROUPS;
    alter table T_SHR_PLANS 
        add constraint FK_e5hpuawmvs4aoy88gwt8lldmn 
        foreign key (education_id) 
        references hb_educations;
    alter table T_SHR_PLANS 
        add constraint FK_io8sjlrbflxrivaaqdhlc4vha 
        foreign key (project_id) 
        references c_projects;
    alter table T_SHR_PLAN_COURSES 
        add constraint FK_j93nsk4amsfq3pmjmvfix94ph 
        foreign key (course_id) 
        references t_courses;
    alter table T_SHR_PLAN_COURSES 
        add constraint FK_mle4sneoao7sh7xsagr7incmu 
        foreign key (department_id) 
        references c_departments;
    alter table T_SHR_PLAN_COURSES 
        add constraint FK_k1ffsn0nnxk56amxr2iebucge 
        foreign key (exam_mode_id) 
        references hb_exam_modes;
    alter table T_SHR_PLAN_COURSES 
        add constraint FK_tjutjih94seu7rau7hfhuerk8 
        foreign key (course_group_id) 
        references T_SHR_PLAN_C_GROUPS;
    alter table T_SHR_PLAN_C_GROUPS 
        add constraint FK_ocypfi5b5qdtcggkeofhrggjn 
        foreign key (course_type_id) 
        references xb_course_types;
    alter table T_SHR_PLAN_C_GROUPS 
        add constraint FK_1svx52hfx5wsnrm35tl67bu7f 
        foreign key (language_id) 
        references gb_languages;
    alter table T_SHR_PLAN_C_GROUPS 
        add constraint FK_7jrhdbwu31vb4tjsusmwucur5 
        foreign key (parent_id) 
        references T_SHR_PLAN_C_GROUPS;
    alter table T_SHR_PLAN_C_GROUPS 
        add constraint FK_idd93lqgb8drtcfykym3frjfm 
        foreign key (plan_id) 
        references T_SHR_PLANS;
    alter table T_STD_COURSE_COUNT_CONS 
        add constraint FK_h7sqxsaewpddubsoclnbw5jwb 
        foreign key (semester_id) 
        references c_semesters;
    alter table T_STD_COURSE_COUNT_CONS 
        add constraint FK_jwwmh5vuc3f5t1b9iy0vxbwdd 
        foreign key (std_id) 
        references c_students;
    alter table T_STD_COURSE_SUBS 
        add constraint FK_mjkb2c85qrs816edx16y92bs3 
        foreign key (std_id) 
        references c_students;
    alter table T_STD_COURSE_SUBS_ORIGS 
        add constraint FK_pn7qao6cyg07dtaiy1p4c7jiq 
        foreign key (course_id) 
        references t_courses;
    alter table T_STD_COURSE_SUBS_ORIGS 
        add constraint FK_nyra65gutgiqsq7xt3lf9xvi8 
        foreign key (t_std_course_subs_id) 
        references T_STD_COURSE_SUBS;
    alter table T_STD_COURSE_SUBS_SUBS 
        add constraint FK_pggdgtbqkw9qrx8aofm3cddox 
        foreign key (course_id) 
        references t_courses;
    alter table T_STD_COURSE_SUBS_SUBS 
        add constraint FK_a2m71cnn16b2sotyp38xd0u03 
        foreign key (t_std_course_subs_id) 
        references T_STD_COURSE_SUBS;
    alter table T_STD_TOTAL_CREDIT_CONS 
        add constraint FK_bb780ot6o1h5e5keukadkw4qd 
        foreign key (std_id) 
        references c_students;
    alter table c_adminclasses 
        add constraint FK_ljj7ni56fogdk53kax4t4nxx2 
        foreign key (project_id) 
        references c_projects;
    alter table c_adminclasses 
        add constraint FK_grryc1cbe8ehrmye1m9ui0dl6 
        foreign key (education_id) 
        references hb_educations;
    alter table c_adminclasses 
        add constraint FK_gbkp2wgwa4uc8phf9yie4atyv 
        foreign key (department_id) 
        references c_departments;
    alter table c_adminclasses 
        add constraint FK_t15vbhtvpr7s0tqgjyud773gy 
        foreign key (direction_id) 
        references c_directions;
    alter table c_adminclasses 
        add constraint FK_itiyoehtl4sdyvwm84bd3rs3r 
        foreign key (major_id) 
        references c_majors;
    alter table c_adminclasses 
        add constraint FK_td34e18j586oprrst37hh2n0h 
        foreign key (std_type_id) 
        references xb_std_types;
    alter table c_adminclasses_instructors 
        add constraint FK_ch3p25voe8pvfdee544rm6u7q 
        foreign key (teacher_id) 
        references c_teachers;
    alter table c_adminclasses_instructors 
        add constraint FK_lusjntynn2kmddfssj98phkwq 
        foreign key (adminclass_id) 
        references c_adminclasses;
    alter table c_adminclasses_tutors 
        add constraint FK_boaexy6m00he77mcovyx72gtm 
        foreign key (teacher_id) 
        references c_teachers;
    alter table c_adminclasses_tutors 
        add constraint FK_14kpgi5wb19x3kkhc991dbw6s 
        foreign key (adminclass_id) 
        references c_adminclasses;
    alter table c_building_course_units 
        add constraint FK_mkwo6hli2y9ej0m08ds8ehs1r 
        foreign key (building_id) 
        references c_buildings;
    alter table c_building_course_units 
        add constraint FK_espu7evo191wtbs28ypuq2ovu 
        foreign key (time_setting_id) 
        references c_time_settings;
    alter table c_building_course_units 
        add constraint FK_nebtjur3tym2xbylw6hlmb0w1 
        foreign key (unit_id) 
        references c_default_course_units;
    alter table c_buildings 
        add constraint FK_hwwc8x4ou3fukeknd7ucde1f1 
        foreign key (school_id) 
        references c_schools;
    alter table c_buildings 
        add constraint FK_8io7jilw04j325rpjymcroegt 
        foreign key (campus_id) 
        references c_campuses;
    alter table c_buildings 
        add constraint FK_t47u25y4fki9xiluw8fcn0fgk 
        foreign key (department_id) 
        references c_departments;
    alter table c_calendars 
        add constraint FK_6khskd3pr54u73stf9ttc1g12 
        foreign key (school_id) 
        references c_schools;
    alter table c_campuses 
        add constraint FK_m9phviodh4rp1uj35vlkjgl25 
        foreign key (school_id) 
        references c_schools;
    alter table c_classrooms 
        add constraint FK_8g7v8ynsrilmrjevsaswfxr0w 
        foreign key (school_id) 
        references c_schools;
    alter table c_classrooms 
        add constraint FK_s1ro5yda7bhr6wuinnhgd7ovt 
        foreign key (building_id) 
        references c_buildings;
    alter table c_classrooms 
        add constraint FK_2cngjth4adf8y45286jjsl8y8 
        foreign key (campus_id) 
        references c_campuses;
    alter table c_classrooms 
        add constraint FK_j63mo0wdhu1hj2p0ejnh1kjcn 
        foreign key (department_id) 
        references c_departments;
    alter table c_classrooms 
        add constraint FK_nd5sxj0172yedun2msq7ckt72 
        foreign key (type_id) 
        references xb_classroom_types;
    alter table c_classrooms_departments 
        add constraint FK_2b3erjx67vy3qimifmtmarihq 
        foreign key (department_id) 
        references c_departments;
    alter table c_classrooms_departments 
        add constraint FK_qbhhyfx1231he2rb4q6wpqd81 
        foreign key (classroom_id) 
        references c_classrooms;
    alter table c_default_course_units 
        add constraint FK_5b1nxff1alfflfwb2tbsqvpys 
        foreign key (time_setting_id) 
        references c_time_settings;
    alter table c_departments 
        add constraint FK_4j0m4re0ly2jj0clnlymfdkjw 
        foreign key (school_id) 
        references c_schools;
    alter table c_departments 
        add constraint FK_snd4r2e07c3ksqgxuqkdblu69 
        foreign key (parent_id) 
        references c_departments;
    alter table c_direction_journals 
        add constraint FK_74yosqysby0qutidh42khp3ih 
        foreign key (depart_id) 
        references c_departments;
    alter table c_direction_journals 
        add constraint FK_rdca8m0i41csmmhvevgddpn5p 
        foreign key (direction_id) 
        references c_directions;
    alter table c_direction_journals 
        add constraint FK_c3xkt48hxdjuqjj33mq5co5bx 
        foreign key (education_id) 
        references hb_educations;
    alter table c_directions 
        add constraint FK_nwagq1kb0ex0cgbe0g3tcg7sv 
        foreign key (major_id) 
        references c_majors;
    alter table c_habilitations 
        add constraint FK_dxfdjghm8ht3s55jjgph2ci27 
        foreign key (project_id) 
        references c_projects;
    alter table c_habilitations 
        add constraint FK_cy9v7n0aubfkbw8hwcp5e389y 
        foreign key (teacher_id) 
        references c_teachers;
    alter table c_major_journals 
        add constraint FK_iy6n1mhok9ry62yh3lvwqk4jv 
        foreign key (category_id) 
        references jb_discipline_categories;
    alter table c_major_journals 
        add constraint FK_f237aphj961c39xgrcj1xqpse 
        foreign key (depart_id) 
        references c_departments;
    alter table c_major_journals 
        add constraint FK_8sqwe8xa5vts1dbxxxuo3mjgi 
        foreign key (education_id) 
        references hb_educations;
    alter table c_major_journals 
        add constraint FK_m4a7voy13moedt79qaetfye4c 
        foreign key (major_id) 
        references c_majors;
    alter table c_majors 
        add constraint FK_456gcc452oli7vkd7riknk38x 
        foreign key (category_id) 
        references jb_discipline_categories;
    alter table c_majors 
        add constraint FK_jv2bebnbiwn50suclqyrxnwdn 
        foreign key (project_id) 
        references c_projects;
    alter table c_majors_educations 
        add constraint FK_6a6sfpkxcj0xbrcnw4umnux3f 
        foreign key (education_id) 
        references hb_educations;
    alter table c_majors_educations 
        add constraint FK_977wqjs0cl1l4wl93ovdncbjw 
        foreign key (major_id) 
        references c_majors;
    alter table c_project_classrooms 
        add constraint FK_4qg33eknvnip9gysdsvchirxf 
        foreign key (project_id) 
        references c_projects;
    alter table c_project_classrooms 
        add constraint FK_dnw8674gyvmigjp9ttiw2gf4g 
        foreign key (room_id) 
        references c_classrooms;
    alter table c_project_classrooms_departs 
        add constraint FK_aybwc1xshfdqdi37q5ua7xqt4 
        foreign key (department_id) 
        references c_departments;
    alter table c_project_classrooms_departs 
        add constraint FK_s558djlyiwy7phrwissgj3w32 
        foreign key (project_classroom_id) 
        references c_project_classrooms;
    alter table c_project_classrooms_reserved 
        add constraint FK_5segqgyi1ofx0t3lpiipbyor3 
        foreign key (project_classroom_id) 
        references c_project_classrooms;
    alter table c_project_codes 
        add constraint FK_i0haqf1xjd3vubwh78xnon0ki 
        foreign key (meta_id) 
        references sys_code_metas;
    alter table c_project_codes 
        add constraint FK_9kll6s0i536ejrsk4a48ue5q4 
        foreign key (project_id) 
        references c_projects;
    alter table c_project_configs 
        add constraint FK_qa3ximp3dv5dd0cxpxooj6m97 
        foreign key (project_id) 
        references c_projects;
    alter table c_project_properties 
        add constraint FK_7uq26cpu2tpqn4s1vd2vmdh4h 
        foreign key (config_id) 
        references c_project_configs;
    alter table c_projects 
        add constraint FK_7yky1n6k0uxj79wj7d2ro8ifq 
        foreign key (calendar_id) 
        references c_calendars;
    alter table c_projects 
        add constraint FK_hc83p932db640ppi91nbe0jy 
        foreign key (school_id) 
        references c_schools;
    alter table c_projects_campuses 
        add constraint FK_5dace9vumd1g9uepoepktbim0 
        foreign key (campus_id) 
        references c_campuses;
    alter table c_projects_campuses 
        add constraint FK_klf66ce14u60vt3f8b7gpq0h7 
        foreign key (project_id) 
        references c_projects;
    alter table c_projects_departments 
        add constraint FK_ie1kdjyv2mihxq9dr04qhi2es 
        foreign key (department_id) 
        references c_departments;
    alter table c_projects_departments 
        add constraint FK_9ck854f1j5v6v0d59k6yf3smg 
        foreign key (project_id) 
        references c_projects;
    alter table c_projects_educations 
        add constraint FK_noos8plj2w3msk11ijmwh154t 
        foreign key (education_id) 
        references hb_educations;
    alter table c_projects_educations 
        add constraint FK_ncij1asaolrax7ny9dfntqu7g 
        foreign key (project_id) 
        references c_projects;
    alter table c_projects_labels 
        add constraint FK_eomkabkvw0e2gi56rpjlx4nu9 
        foreign key (std_label_id) 
        references xb_std_labels;
    alter table c_projects_labels 
        add constraint FK_lyua3lv46l6fss171410rh8d2 
        foreign key (project_id) 
        references c_projects;
    alter table c_projects_time_settings 
        add constraint FK_qam4kb7fyyl07bjjrmm6246uf 
        foreign key (time_setting_id) 
        references c_time_settings;
    alter table c_projects_time_settings 
        add constraint FK_bbutvqxbri8ylhkvsjwurqnbx 
        foreign key (project_id) 
        references c_projects;
    alter table c_projects_types 
        add constraint FK_a5fhhkv137j1iqa9vh9sc46gg 
        foreign key (std_type_id) 
        references xb_std_types;
    alter table c_projects_types 
        add constraint FK_csab8e1ex93yekgj6udil0ui9 
        foreign key (project_id) 
        references c_projects;
    alter table c_schools 
        add constraint FK_15mcvk7o7soa95wm76vlas9vq 
        foreign key (institution_id) 
        references jb_institutions;
    alter table c_semester_stages 
        add constraint FK_8i8e10ipj29g15dotx1lq6dt7 
        foreign key (semester_id) 
        references c_semesters;
    alter table c_semesters 
        add constraint FK_49dmtlgmjh2ctv8qxjfm6ndr4 
        foreign key (calendar_id) 
        references c_calendars;
    alter table c_staffs 
        add constraint FK_qyqr5vopyidue3lsxj2m14odl 
        foreign key (country_id) 
        references gb_countries;
    alter table c_staffs 
        add constraint FK_6ommrwsv65067couc467krsr5 
        foreign key (department_id) 
        references c_departments;
    alter table c_staffs 
        add constraint FK_pytlvq9h7cg2ntg18caqs687v 
        foreign key (gender_id) 
        references gb_genders;
    alter table c_staffs 
        add constraint FK_gskvurmca1b7k5rsubxys7f63 
        foreign key (idcard_type_id) 
        references hb_idcard_types;
    alter table c_staffs 
        add constraint FK_i285u4bk1gcl7rg0fd66oktg6 
        foreign key (nation_id) 
        references gb_nations;
    alter table c_staffs 
        add constraint FK_bbing1fke3a9bv7wekkq3bnxa 
        foreign key (politic_visage_id) 
        references gb_politic_visages;
    alter table c_std_people 
        add constraint FK_q7ybgupejobaj76gu1v0y7lgk 
        foreign key (ancestral_addr_id) 
        references gb_divisions;
    alter table c_std_people 
        add constraint FK_enosf9frefgn3j4cw3mrw47fj 
        foreign key (country_id) 
        references gb_countries;
    alter table c_std_people 
        add constraint FK_4aoa872kuo3teadc9h558crlv 
        foreign key (gender_id) 
        references gb_genders;
    alter table c_std_people 
        add constraint FK_1wx8vihpu3xyqvbsffmui53uc 
        foreign key (idcard_type_id) 
        references hb_idcard_types;
    alter table c_std_people 
        add constraint FK_5iqeek94xqacajk6rkl5qbq28 
        foreign key (marital_status_id) 
        references gb_marital_statuses;
    alter table c_std_people 
        add constraint FK_4020h5ddun82es63842ixk5pr 
        foreign key (nation_id) 
        references gb_nations;
    alter table c_std_people 
        add constraint FK_mn0bu5lw2uq1v9co6yiisrbf1 
        foreign key (politic_visage_id) 
        references gb_politic_visages;
    alter table c_student_journals 
        add constraint FK_ndy61ghayco5wxwroplkw6e63 
        foreign key (adminclass_id) 
        references c_adminclasses;
    alter table c_student_journals 
        add constraint FK_1gq8wu2vtqgwei5t78e0tjvjr 
        foreign key (department_id) 
        references c_departments;
    alter table c_student_journals 
        add constraint FK_2t8n1fi4cwrp4dsji55bl5nlm 
        foreign key (direction_id) 
        references c_directions;
    alter table c_student_journals 
        add constraint FK_tr3ydlv6woicham05bc47r162 
        foreign key (major_id) 
        references c_majors;
    alter table c_student_journals 
        add constraint FK_7x43572m4oqb1oj3u7fum0ftr 
        foreign key (status_id) 
        references hb_std_statuses;
    alter table c_student_journals 
        add constraint FK_feibfqr3vu8irp9yrpvo1c6vc 
        foreign key (std_id) 
        references c_students;
    alter table c_students 
        add constraint FK_lkbjqddw37c74telyfbl46wh 
        foreign key (project_id) 
        references c_projects;
    alter table c_students 
        add constraint FK_91miicmcc1jx1ilm446aj0l3h 
        foreign key (education_id) 
        references hb_educations;
    alter table c_students 
        add constraint FK_6sspulwcuechxlqmxed88q07h 
        foreign key (adminclass_id) 
        references c_adminclasses;
    alter table c_students 
        add constraint FK_mrvf4wohj7hgk9df5yunpdnco 
        foreign key (campus_id) 
        references c_campuses;
    alter table c_students 
        add constraint FK_mmlom35wcy997nrlxbg6wruxs 
        foreign key (department_id) 
        references c_departments;
    alter table c_students 
        add constraint FK_1fp5yicjt9ubn6exj6twr3g1e 
        foreign key (direction_id) 
        references c_directions;
    alter table c_students 
        add constraint FK_fnvfy3ulsi73j6oklws3vu60p 
        foreign key (gender_id) 
        references gb_genders;
    alter table c_students 
        add constraint FK_2ihsx3bsvau19n53fs718crts 
        foreign key (major_id) 
        references c_majors;
    alter table c_students 
        add constraint FK_rh7tf9rcugkjn8h788qwi26p4 
        foreign key (major_depart_id) 
        references c_departments;
    alter table c_students 
        add constraint FK_qkbax9rsta5h8yrqxupmo4o3y 
        foreign key (person_id) 
        references c_std_people;
    alter table c_students 
        add constraint FK_tjw5wvf0bb3ebe2dhjpufyodp 
        foreign key (study_type_id) 
        references gb_study_types;
    alter table c_students 
        add constraint FK_ik8n1q8k1yym1b4ex23efdq92 
        foreign key (tutor_id) 
        references c_teachers;
    alter table c_students 
        add constraint FK_9e3lguwoxrqww1dc8vea73cq7 
        foreign key (type_id) 
        references xb_std_types;
    alter table c_students_labels 
        add constraint FK_1obmimfyu58mnjt1ex9gc78pt 
        foreign key (std_label_id) 
        references xb_std_labels;
    alter table c_students_labels 
        add constraint FK_ej28666alowlwdhmehmubatgx 
        foreign key (type_id) 
        references xb_std_label_types;
    alter table c_students_labels 
        add constraint FK_lipvayop9vg6ghothfu0sr6a4 
        foreign key (student_id) 
        references c_students;
    alter table c_teacher_journals 
        add constraint FK_9p9ml5750bf1hnhkcspcerjh6 
        foreign key (degree_id) 
        references gb_degrees;
    alter table c_teacher_journals 
        add constraint FK_1x9cgj1j1ejl3m5gase6l4lrj 
        foreign key (department_id) 
        references c_departments;
    alter table c_teacher_journals 
        add constraint FK_n1gfq2h96fo03qr3bd1u9qdw 
        foreign key (education_id) 
        references hb_educations;
    alter table c_teacher_journals 
        add constraint FK_6hrfrx5td2war32o67rptf2lb 
        foreign key (teacher_id) 
        references c_teachers;
    alter table c_teacher_journals 
        add constraint FK_h58pn7wlrveimkvjqreypbhj5 
        foreign key (title_id) 
        references gb_teacher_titles;
    alter table c_teacher_journals 
        add constraint FK_6r2astsmt6yoxr2npryph00p0 
        foreign key (tutor_type_id) 
        references hb_tutor_types;
    alter table c_teachers 
        add constraint FK_824wkm4wxe7p5317w3etvrvpa 
        foreign key (degree_id) 
        references gb_degrees;
    alter table c_teachers 
        add constraint FK_alue1lyj7nl2264oogaxp7l4a 
        foreign key (department_id) 
        references c_departments;
    alter table c_teachers 
        add constraint FK_9dml6bqa9xx7yrbcnxvum0vs4 
        foreign key (education_id) 
        references hb_educations;
    alter table c_teachers 
        add constraint FK_qhmamhyrhrwbufe6o8xxg2c29 
        foreign key (parttime_depart_id) 
        references c_departments;
    alter table c_teachers 
        add constraint FK_c232rd8988heb40wbe4u4j4n1 
        foreign key (staff_id) 
        references c_staffs;
    alter table c_teachers 
        add constraint FK_m3xjlv7ys2nda8d2yhtuot5vh 
        foreign key (state_id) 
        references hb_teacher_states;
    alter table c_teachers 
        add constraint FK_q97ojmcle5x0c29r7mg0eevm 
        foreign key (teacher_type_id) 
        references hb_teacher_types;
    alter table c_teachers 
        add constraint FK_ee9uxb1lrqrxgulrah8tcgrub 
        foreign key (title_id) 
        references gb_teacher_titles;
    alter table c_teachers 
        add constraint FK_p5jxp3gc9mmij0x05t7lrbefx 
        foreign key (tutor_type_id) 
        references hb_tutor_types;
    alter table c_teachers 
        add constraint FK_ao7906mai8vq26x59b0mdcdqu 
        foreign key (unit_type_id) 
        references hb_teacher_unit_types;
    alter table c_time_settings 
        add constraint FK_rl6h0y79yootf6bu92pit2p9a 
        foreign key (campus_id) 
        references c_campuses;
    alter table c_time_settings 
        add constraint FK_earda2563e4ex8r9ccbnndust 
        foreign key (school_id) 
        references c_schools;
    alter table c_time_settings 
        add constraint FK_lagrk9yc1qmr2ydv3mg6d0c3u 
        foreign key (semester_id) 
        references c_semesters;
    alter table cl_apply_time_units 
        add constraint FK_jxr2cxupgnt2q73sfi8ercgg7 
        foreign key (apply_id) 
        references cl_room_applies;
    alter table cl_occupancies 
        add constraint FK_c37c4wcvg68pwxvv5f99uhh84 
        foreign key (room_id) 
        references c_classrooms;
    alter table cl_occupancies 
        add constraint FK_6ap480kn3ntrma9w9q55xb98 
        foreign key (usage_id) 
        references hb_room_usages;
    alter table cl_price_catalogs 
        add constraint FK_ggs1j5urog7hhtnd0leqggj5s 
        foreign key (campus_id) 
        references c_campuses;
    alter table cl_price_catalogs 
        add constraint FK_qsbfd7q88elyr3ljyarnofygd 
        foreign key (department_id) 
        references c_departments;
    alter table CL_PR_CATALOGS_AUDIT_DEPARTS 
        add constraint FK_5t4kg7ijqwogiyjbw9o9qm53r 
        foreign key (department_id) 
        references c_departments;
    alter table CL_PR_CATALOGS_AUDIT_DEPARTS 
        add constraint FK_dpwadktrhry3mufjxv9f7kro5 
        foreign key (price_catalog_id) 
        references cl_price_catalogs;
    alter table cl_price_catalogs_prices 
        add constraint FK_l3xugc1j70cyvcfr3fpkrrr4n 
        foreign key (price_config_id) 
        references cl_price_configs;
    alter table cl_price_catalogs_prices 
        add constraint FK_38d9rvjq1eydix81p9j5wggwh 
        foreign key (price_catalog_id) 
        references cl_price_catalogs;
    alter table cl_price_configs 
        add constraint FK_2b2mjsd3xt8de2vp2trr2aaoo 
        foreign key (catalog_id) 
        references cl_price_catalogs;
    alter table cl_price_configs 
        add constraint FK_1a0apw3t47hvruof4mu7rykw3 
        foreign key (room_config_type_id) 
        references xb_classroom_types;
    alter table cl_room_applies 
        add constraint FK_ivnwi1vubd5v3gsr370lrud9v 
        foreign key (project_id) 
        references c_projects;
    alter table cl_room_applies 
        add constraint FK_5jj8eca0abw5k9a9dnp6kpc3q 
        foreign key (approve_by_id) 
        references se_users;
    alter table cl_room_applies 
        add constraint FK_gy9i89mvdpslnkosfg4cbwsm0 
        foreign key (audit_depart_id) 
        references c_departments;
    alter table cl_room_applies 
        add constraint FK_h3l8kp64rivna2o1ym088j6hs 
        foreign key (campus_id) 
        references c_campuses;
    alter table cl_room_applies 
        add constraint FK_iqko14h33mreyutcnumm4jm2x 
        foreign key (depart_approve_by_id) 
        references se_users;
    alter table cl_room_applies 
        add constraint FK_pij3mfe6kl6d18cjm74m9kua3 
        foreign key (semester_id) 
        references c_semesters;
    alter table cl_room_applies 
        add constraint FK_1fji66shmo1mf1phclms7uf24 
        foreign key (usage_id) 
        references hb_room_usages;
    alter table cl_room_applies 
        add constraint FK_8f4arrgc149now8pfny3vqbri 
        foreign key (user_id) 
        references se_users;
    alter table cl_room_applies_classrooms 
        add constraint FK_jefolmnle3ipp7xkavtn441nu 
        foreign key (classroom_id) 
        references c_classrooms;
    alter table cl_room_applies_classrooms 
        add constraint FK_sfuduxlw1bxxuuxycmppgui07 
        foreign key (room_apply_id) 
        references cl_room_applies;
    alter table cl_room_applies_occupations 
        add constraint FK_mpl1qgufy7qbxpy70c23fe8cp 
        foreign key (occupancy_id) 
        references cl_occupancies;
    alter table cl_room_applies_occupations 
        add constraint FK_2g9p8eduoys29tb83o5ya9btg 
        foreign key (room_apply_id) 
        references cl_room_applies;
    alter table cl_room_usage_capacities 
        add constraint FK_py7vmlpwulr2ds59gurryuc7q 
        foreign key (room_id) 
        references c_classrooms;
    alter table cl_room_usage_capacities 
        add constraint FK_b5hoff3d984mu1s9ikhwd5hgb 
        foreign key (usage_id) 
        references hb_room_usages;
    alter table course_modified_records 
        add constraint FK_cslcclin8waynou34v4xk4n9r 
        foreign key (apply_user_id) 
        references se_users;
    alter table course_modified_records 
        add constraint FK_l2yymx57fcunl80wk552c6b6w 
        foreign key (course_id) 
        references t_courses;
    alter table course_modified_records 
        add constraint FK_iua3p3vwywipoxriyyfs4o3tv 
        foreign key (new_modified_id) 
        references course_modifieds;
    alter table course_modified_records 
        add constraint FK_n9yron5ullctx6w5uu0g4au7j 
        foreign key (reply_user_id) 
        references se_users;
    alter table course_modifieds 
        add constraint FK_obymsm9gu3uh1lyxrlg4no38m 
        foreign key (department_id) 
        references c_departments;
    alter table course_modifieds 
        add constraint FK_9ggjx8e61v5540bfq7y7qdqd7 
        foreign key (education_id) 
        references hb_educations;
    alter table course_modifieds 
        add constraint FK_qrrbp2cfxcafyjvq4pmw3vdnq 
        foreign key (exam_mode_id) 
        references hb_exam_modes;
    alter table course_modifieds 
        add constraint FK_i84r87smfnfgmc554hxich97k 
        foreign key (std_type_id) 
        references xb_std_types;
    alter table d_thesis_annotate_actives 
        add constraint FK_o61an5pilss9u6h2ep1l1m16 
        foreign key (active_type) 
        references d_thesis_active_types;
    alter table d_thesis_annotate_actives 
        add constraint FK_sb3ddyahx7134w5ndxcy9uvbf 
        foreign key (process) 
        references d_thesis_processes;
    alter table d_thesis_annotate_books 
        add constraint FK_dfbpardsq71hnc0879wn9hn8s 
        foreign key (annotate) 
        references d_thesis_annotates;
    alter table d_thesis_annotate_books 
        add constraint FK_btk30yrt5t04l06i51hu3noga 
        foreign key (teacher) 
        references d_thesis_annotate_teachers;
    alter table d_thesis_annotate_books 
        add constraint FK_14t4l0h1ou4jw0vxfkn3udmjk 
        foreign key (ANNOTATE_ID) 
        references d_thesis_annotates;
    alter table d_thesis_annotate_filters 
        add constraint FK_ff722x94frehfdfjfrvpdwu2b 
        foreign key (active) 
        references d_thesis_annotate_actives;
    alter table d_thesis_annotates 
        add constraint FK_4vhjs8wwgj3pylgblyh40diu9 
        foreign key (std) 
        references c_students;
    alter table d_thesis_annotates 
        add constraint FK_h50e001v8kqi2lt3wwxsyunyx 
        foreign key (active) 
        references d_thesis_annotate_actives;
    alter table d_thesis_annotates 
        add constraint FK_2o6drp0ceipkg5jul9fl5wsyv 
        foreign key (type) 
        references d_thesis_active_types;
    alter table d_thesis_annotates 
        add constraint FK_gaufj1pca9g1pihevy4f2lnpl 
        foreign key (ACTIVE_ID) 
        references d_thesis_annotate_actives;
    alter table d_thesis_answer_actives 
        add constraint FK_ec2lf9bhnqxw65qgc7mg5pchg 
        foreign key (active_type) 
        references d_thesis_active_types;
    alter table d_thesis_answer_actives 
        add constraint FK_7x8tuiek3fl0x3xqlsmi2cawf 
        foreign key (process) 
        references d_thesis_processes;
    alter table d_thesis_answer_filters 
        add constraint FK_73qyt2uptnpserl3bsvwkks9t 
        foreign key (active) 
        references d_thesis_answer_actives;
    alter table d_thesis_answers 
        add constraint FK_g2t2uoupaxqaonj8h9d0rioll 
        foreign key (std) 
        references c_students;
    alter table d_thesis_answers 
        add constraint FK_4hwsynljdxai827f6c8xtcxrw 
        foreign key (active) 
        references d_thesis_answer_actives;
    alter table d_thesis_answers 
        add constraint FK_2d4oc0h1m8j02yo9k8mymcirw 
        foreign key (ACTIVE_ID) 
        references d_thesis_answer_actives;
    alter table d_thesis_notices_documents 
        add constraint FK_29r0omsugg655qdp9bfanu0ex 
        foreign key (thesis_document_id) 
        references d_thesis_documents;
    alter table d_thesis_notices_documents 
        add constraint FK_g8ykp44r5p1q3kn2363hlii10 
        foreign key (thesis_notice_bean_id) 
        references d_thesis_notices;
    alter table d_thesis_pre_ans_actives 
        add constraint FK_84hesirxchl8wi9rv12qm4sjc 
        foreign key (active_type) 
        references d_thesis_active_types;
    alter table d_thesis_pre_ans_actives 
        add constraint FK_95vt56f2nhog872nejtpag4eq 
        foreign key (process) 
        references d_thesis_processes;
    alter table d_thesis_pre_ans_filters 
        add constraint FK_le305adwwkprnu6yiqkiphpue 
        foreign key (active) 
        references d_thesis_pre_ans_actives;
    alter table d_thesis_pre_answers 
        add constraint FK_lr7rqce4eebw6aban3h5d2413 
        foreign key (std) 
        references c_students;
    alter table d_thesis_pre_answers 
        add constraint FK_290vknqbcdscn2tb1xldl0nmj 
        foreign key (active) 
        references d_thesis_pre_ans_actives;
    alter table d_thesis_pre_answers 
        add constraint FK_nsaea3yw5tew9dkyvf939jgfy 
        foreign key (ACTIVE_ID) 
        references d_thesis_pre_ans_actives;
    alter table d_thesis_sh_annotates 
        add constraint FK_t92rouyutjh2fbygb9ecqhq55 
        foreign key (major) 
        references c_majors;
    alter table d_thesis_sh_annotates 
        add constraint FK_cv7280vfnvvsimnmv0qcc0y9t 
        foreign key (teacher) 
        references d_thesis_annotate_teachers;
    alter table d_thesis_sh_evaluations 
        add constraint FK_8wn6t9lxucuqo0giutym82bx6 
        foreign key (evaluate_project) 
        references d_thesis_evaluate_projects;
    alter table d_thesis_sh_evaluations 
        add constraint FK_db6mchhqirvymrul0506dg09v 
        foreign key (annotate) 
        references d_thesis_sh_annotates;
    alter table d_thesis_sh_evaluations 
        add constraint FK_jeyiv7v2gvf221ax5t25sjfoc 
        foreign key (ANNOTATE_ID) 
        references d_thesis_sh_annotates;
    alter table d_thesis_std_innovates 
        add constraint FK_7ko0mvfuv9mwmmtxg7qbt1u83 
        foreign key (annotate) 
        references d_thesis_annotates;
    alter table d_thesis_std_innovates 
        add constraint FK_jtxc7sqm5f2s1s86lxp50c 
        foreign key (ANNOTATE_ID) 
        references d_thesis_annotates;
    alter table d_thesis_teacher_evals 
        add constraint FK_k8kr9qfp8ucucapyi5ng15k2x 
        foreign key (evaluate_project) 
        references d_thesis_evaluate_projects;
    alter table d_thesis_teacher_evals 
        add constraint FK_4mb26f6xiv52iiyejqjdsh5lr 
        foreign key (book) 
        references d_thesis_annotate_books;
    alter table d_thesis_teacher_evals 
        add constraint FK_nnb9dpu76ofa7x1nj0klyrh2 
        foreign key (BOOK_ID) 
        references d_thesis_annotate_books;
    alter table d_thesis_teacher_innovates 
        add constraint FK_dbgnpwywynvdnk8u5xxougqb6 
        foreign key (book) 
        references d_thesis_annotate_books;
    alter table d_thesis_teacher_innovates 
        add constraint FK_2ag9nnlk76i3e7h6ih17at88d 
        foreign key (BOOK_ID) 
        references d_thesis_annotate_books;
    alter table d_thesis_topic_opn_actives 
        add constraint FK_jhomeuxedmba7ysr4lcbe7t60 
        foreign key (active_type) 
        references d_thesis_active_types;
    alter table d_thesis_topic_opn_actives 
        add constraint FK_pr8467xg7esmf1le0tml21na6 
        foreign key (process) 
        references d_thesis_processes;
    alter table d_thesis_topic_opn_filters 
        add constraint FK_anf7yig4mogoj6gwmt8m2ib9f 
        foreign key (active) 
        references d_thesis_topic_opn_actives;
    alter table d_thesis_topic_opens 
        add constraint FK_1mqbl2lw3k70jbuc3ppf0mlrt 
        foreign key (std) 
        references c_students;
    alter table d_thesis_topic_opens 
        add constraint FK_i2llqo690q33ep4g2e7xud6fq 
        foreign key (active) 
        references d_thesis_topic_opn_actives;
    alter table d_thesis_topic_opens 
        add constraint FK_25n65y0hjre03oule4hiuh90p 
        foreign key (title_origin) 
        references d_thesis_topic_origins;
    alter table d_thesis_topic_opens 
        add constraint FK_d282ioyydaipwx7gx2sfurxq9 
        foreign key (title_type) 
        references d_thesis_types;
    alter table d_thesis_topic_opens 
        add constraint FK_8regghlj3kpjbfufft2p4ci9r 
        foreign key (ACTIVE_ID) 
        references d_thesis_topic_opn_actives;
    alter table d_thesis_ug_actives 
        add constraint FK_4yk8iosggit6w9y3xuyq64gn8 
        foreign key (active_type) 
        references d_thesis_active_types;
    alter table d_thesis_ug_actives 
        add constraint FK_lna090skk138h6kpunr4morui 
        foreign key (process) 
        references d_thesis_processes;
    alter table d_thesis_ug_filters 
        add constraint FK_2r2jfpa5p55ol8ge4ltresbak 
        foreign key (active) 
        references d_thesis_ug_actives;
    alter table d_thesis_undergraduates 
        add constraint FK_es2jraa6lritthmh7ujfjsk8m 
        foreign key (std) 
        references c_students;
    alter table d_thesis_undergraduates 
        add constraint FK_q3set7famnhyua40imfg913v0 
        foreign key (active) 
        references d_thesis_ug_actives;
    alter table d_thesis_undergraduates 
        add constraint FK_el2uj8tewd89iied2diko88u3 
        foreign key (tutor) 
        references c_teachers;
    alter table d_thesis_undergraduates 
        add constraint FK_5no0q4mn980ojdce41xq0r4o1 
        foreign key (ACTIVE_ID) 
        references d_thesis_ug_actives;
    alter table f_bill_logs 
        add constraint FK_au049gycb4xgu0yuyd8c0hdul 
        foreign key (fee_type_id) 
        references xb_fee_types;
    alter table f_bill_logs 
        add constraint FK_ggq7akgu5a7lwkpsgmmi6dtb9 
        foreign key (semester_id) 
        references c_semesters;
    alter table f_bill_logs 
        add constraint FK_mmfmvnvq3hqwacfkhhr2v2pl4 
        foreign key (state_id) 
        references hb_pay_states;
    alter table f_bills 
        add constraint FK_7y3elvbkhocuitc7lbo1o9gvn 
        foreign key (fee_type_id) 
        references xb_fee_types;
    alter table f_bills 
        add constraint FK_nbpg4d67av8vnybdd5mnfi40j 
        foreign key (semester_id) 
        references c_semesters;
    alter table f_bills 
        add constraint FK_2ngldd3rmbk67gsvbdd277jg 
        foreign key (state_id) 
        references hb_pay_states;
    alter table f_check_fee_types 
        add constraint FK_tmy9k631o8dm8r00gwf2ilupq 
        foreign key (fee_type_id) 
        references xb_fee_types;
    alter table f_pays 
        add constraint FK_3bc16gm5j9jmbrkxrwtmkpiu1 
        foreign key (bill_id) 
        references f_bills;
    alter table f_pays 
        add constraint FK_636vmlkw6rjo3kh2vqkl9g9hg 
        foreign key (pay_type_id) 
        references hb_pay_types;
    alter table f_tuitions 
        add constraint FK_3kybsihkt99y7fbk1ky2pr9t8 
        foreign key (semester_id) 
        references c_semesters;
    alter table f_tuitions 
        add constraint FK_9ui6tmo50lftv6u88up32p73h 
        foreign key (std_id) 
        references c_students;
    alter table gb_divisions 
        add constraint FK_c99jm51eha7ya0cmg6pywai80 
        foreign key (parent_id) 
        references gb_divisions;
    alter table gb_teacher_titles 
        add constraint FK_ihuhcnx1oklte2ic6bs7r1fcf 
        foreign key (level_id) 
        references gb_teacher_title_levels;
    alter table gb_teacher_titles 
        add constraint FK_i22jrn9s3w0ft8rf1p48yl1ij 
        foreign key (parent_id) 
        references gb_teacher_titles;
    alter table hb_grade_types 
        add constraint FK_p8e77nmrnkqf448fw4owm3w6k 
        foreign key (exam_type_id) 
        references hb_exam_types;
    alter table hb_other_exam_subjects 
        add constraint FK_6g00ihrjmbb3b5gnr18cuhf2e 
        foreign key (category_id) 
        references hb_other_exam_categories;
    alter table hb_presses 
        add constraint FK_6h7oljwry6dafyh3lf3c5v8in 
        foreign key (level_id) 
        references hb_press_levels;
    alter table hb_publications 
        add constraint FK_g1w64k1v435ilpeq5xv99r12n 
        foreign key (grade_id) 
        references hb_publication_grades;
    alter table hb_railway_stations 
        add constraint FK_vqdoul5vgjhpglfv1pcvp8ad 
        foreign key (division_id) 
        references gb_divisions;
    alter table hb_std_alter_reasons 
        add constraint FK_6n664lmfjg6qj0799kx5g7fyx 
        foreign key (alter_mode_id) 
        references hb_std_alter_types;
    alter table hb_std_alter_types 
        add constraint FK_l08q9aa1h65uiumwwpukp5myv 
        foreign key (status_id) 
        references hb_std_statuses;
    alter table jb_disciplines 
        add constraint FK_b8u99l8w80146fumss473g6ij 
        foreign key (catalog_id) 
        references jb_discipline_catalogs;
    alter table jb_disciplines 
        add constraint FK_8vxge5fngvhg7y51tvdc3ori1 
        foreign key (category_id) 
        references jb_discipline_categories;
    alter table jb_disciplines 
        add constraint FK_65xeg7yktyh0vpj1pqucfwlkv 
        foreign key (parent_id) 
        references jb_disciplines;
    alter table q_college_option_stats 
        add constraint FK_rf2f0nwu1v2tgb9t7vsvlgy31 
        foreign key (option_id) 
        references q_options;
    alter table q_college_option_stats 
        add constraint FK_gm3qlndx9qrq2r3srl8fhql8c 
        foreign key (state_id) 
        references q_question_detail_stats;
    alter table q_depart_evaluations 
        add constraint FK_iw4x7cw2nfqdwf07vujf0lj8j 
        foreign key (semester_id) 
        references c_semesters;
    alter table q_depart_evaluations 
        add constraint FK_4v1i07t318vwi5hywmbjxikok 
        foreign key (teacher_id) 
        references c_teachers;
    alter table q_department_option_stats 
        add constraint FK_cec420233araqlx7o6b2mglnd 
        foreign key (option_id) 
        references q_options;
    alter table q_department_option_stats 
        add constraint FK_rpd617wrdn7ogdccwqoj25cno 
        foreign key (state_id) 
        references q_question_detail_stats;
    alter table q_eval_criteria_items 
        add constraint FK_fyqf61ghgq9f4xd4tjkhwte0o 
        foreign key (criteria_id) 
        references q_evaluation_criterias;
    alter table q_evaluate_results 
        add constraint FK_dhk73teqfi7u5uupvyh6lrou3 
        foreign key (department_id) 
        references c_departments;
    alter table q_evaluate_results 
        add constraint FK_ae65vs8f8uv543232pwohjsfh 
        foreign key (lesson_id) 
        references t_lessons;
    alter table q_evaluate_results 
        add constraint FK_iama79w10ma9pbn052b7o6v 
        foreign key (questionnaire_id) 
        references q_questionnaires;
    alter table q_evaluate_results 
        add constraint FK_hdidtxwocsso646kig7k02o60 
        foreign key (student_id) 
        references c_students;
    alter table q_evaluate_results 
        add constraint FK_9njk15q9j51fokgtekf4hp8yl 
        foreign key (teacher_id) 
        references c_teachers;
    alter table q_evaluate_switches 
        add constraint FK_o1v14r0ebn6atwlovo052lfov 
        foreign key (project_id) 
        references c_projects;
    alter table q_evaluate_switches 
        add constraint FK_algmspvkgti39dpptxlmpns51 
        foreign key (semester_id) 
        references c_semesters;
    alter table q_evaluation_criterias 
        add constraint FK_t31kv4y54ecd9kfm6s99s37s4 
        foreign key (depart_id) 
        references c_departments;
    alter table q_not_evaluate_students 
        add constraint FK_kp2r9vk5ykygbmvq7d0eyve00 
        foreign key (semester_id) 
        references c_semesters;
    alter table q_not_evaluate_students 
        add constraint FK_sj0u8kqkxqbnkbnhncvnc9pwu 
        foreign key (std_id) 
        references c_students;
    alter table q_opposite_questions 
        add constraint FK_gutnl3f9gs293v6ykwrc8xe1t 
        foreign key (oppo_question_id) 
        references q_questions;
    alter table q_opposite_questions 
        add constraint FK_6bt6afy00dphfi9ywthy3usv 
        foreign key (orgin_question_id) 
        references q_questions;
    alter table q_option_groups 
        add constraint FK_cy20sb04e33ip1lsrlbwtnufg 
        foreign key (depart_id) 
        references c_departments;
    alter table q_option_stats 
        add constraint FK_9p76keb5ye5s88cxsun6d8mi9 
        foreign key (option_id) 
        references q_options;
    alter table q_option_stats 
        add constraint FK_7goxag2vgbntqyd09isa39iwh 
        foreign key (state_id) 
        references q_question_detail_stats;
    alter table q_options 
        add constraint FK_517q9n0yjcsq6x9icnkfk6rcm 
        foreign key (option_group_id) 
        references q_option_groups;
    alter table q_question_detail_stats 
        add constraint FK_b2051sb5nqrh0rl01ye28ofmd 
        foreign key (question_id) 
        references q_questions;
    alter table q_question_detail_stats 
        add constraint FK_dsbryh5tgybgmyka0cgy3l1o2 
        foreign key (evaluate_teacher_stat_id) 
        references q_questionnaire_stats;
    alter table q_question_detail_stats 
        add constraint FK_pulblxot8ohig3su2xydf3rn9 
        foreign key (evaluate_department_stat_id) 
        references q_questionnaire_stats;
    alter table q_question_detail_stats 
        add constraint FK_a7nc5kqf65ehjbq7o2l6xvyfj 
        foreign key (evaluate_college_stat_id) 
        references q_questionnaire_stats;
    alter table q_question_results 
        add constraint FK_9ydl6t6g4egq0q05clw1w1vcn 
        foreign key (option_id) 
        references q_options;
    alter table q_question_results 
        add constraint FK_6dmvepruxxxti6x16o3a89po5 
        foreign key (question_id) 
        references q_questions;
    alter table q_question_results 
        add constraint FK_saiv79depjqhwsygguu90ddgh 
        foreign key (result_id) 
        references q_evaluate_results;
    alter table q_question_type_stats 
        add constraint FK_immit82iasl8o6q0fn5owgire 
        foreign key (questionnaire_stat_id) 
        references q_questionnaire_stats;
    alter table q_question_type_stats 
        add constraint FK_aae099vfrox2fbsulm6nckd36 
        foreign key (type_id) 
        references q_question_types;
    alter table q_questionnaire_lessons 
        add constraint FK_gjqybon31h1e2p2xbjkit1eqo 
        foreign key (lesson_id) 
        references t_lessons;
    alter table q_questionnaire_lessons 
        add constraint FK_dxkuj7ath067hkg1q0kstslp4 
        foreign key (questionnaire_id) 
        references q_questionnaires;
    alter table q_questionnaire_stats 
        add constraint FK_d6f021ix50r8p65gf60govlrl 
        foreign key (lesson_id) 
        references t_lessons;
    alter table q_questionnaire_stats 
        add constraint FK_kwlvfuk6myyoabnbfidqh9816 
        foreign key (questionnaire_id) 
        references q_questionnaires;
    alter table q_questionnaire_stats 
        add constraint FK_1gt0txo6pfvrwkofu0jig9kyv 
        foreign key (semester_id) 
        references c_semesters;
    alter table q_questionnaire_stats 
        add constraint FK_o7rggclu6rqlbolfctcd93mkj 
        foreign key (teacher_id) 
        references c_teachers;
    alter table q_questionnaire_stats 
        add constraint FK_cq3rkronoxac3l7i68fiogs54 
        foreign key (department_id) 
        references c_departments;
    alter table q_questionnaire_stats_details 
        add constraint FK_7bfgclrcnan1uojwambbr5mm0 
        foreign key (question_detail_stat_id) 
        references q_question_detail_stats;
    alter table q_questionnaire_stats_details 
        add constraint FK_heio71of1e2pvr1n6jo6k4mmu 
        foreign key (questionnaire_stat_id) 
        references q_questionnaire_stats;
    alter table q_questionnaire_stats_scores 
        add constraint FK_a0d4kkkey8tt775jj63v03jud 
        foreign key (question_type_stat_id) 
        references q_question_type_stats;
    alter table q_questionnaire_stats_scores 
        add constraint FK_semxwsk7glnewyhccdl4dgjyk 
        foreign key (questionnaire_stat_id) 
        references q_questionnaire_stats;
    alter table q_questionnaires 
        add constraint FK_hlgrd0tj75m4439gqf3s4kpw2 
        foreign key (depart_id) 
        references c_departments;
    alter table q_questionnaires_oppo_qs 
        add constraint FK_1e3gng0ekkxb13p4j9mx996gb 
        foreign key (opposite_question_id) 
        references q_opposite_questions;
    alter table q_questionnaires_oppo_qs 
        add constraint FK_9a7gm0h3x81rhxpk7tbbpq56y 
        foreign key (questionnaire_id) 
        references q_questionnaires;
    alter table q_questionnaires_questions 
        add constraint FK_e0u1k3s43m3i9t6xdxsx669m6 
        foreign key (question_id) 
        references q_questions;
    alter table q_questionnaires_questions 
        add constraint FK_4ibgbuk2bp6ko8n67fyfaunmq 
        foreign key (questionnaire_id) 
        references q_questionnaires;
    alter table q_questions 
        add constraint FK_po7yv0kgmqatf3hv1gk0c54ks 
        foreign key (depart_id) 
        references c_departments;
    alter table q_questions 
        add constraint FK_omtixxkcqpaf797g2hiowq4qq 
        foreign key (option_group_id) 
        references q_option_groups;
    alter table q_questions 
        add constraint FK_tqq76lpy72hm3n2qm5mfwgdwk 
        foreign key (type_id) 
        references q_question_types;
    alter table q_teacher_option_stats 
        add constraint FK_5dxyyivdcjyfr8a7mb5gerbhr 
        foreign key (option_id) 
        references q_options;
    alter table q_teacher_option_stats 
        add constraint FK_45c8u46jymjukdgq9wmg1rbwa 
        foreign key (state_id) 
        references q_question_detail_stats;
    alter table q_text_evaluations 
        add constraint FK_pxq9dchgheelp1e2sp5sawh5e 
        foreign key (lesson_id) 
        references t_lessons;
    alter table q_text_evaluations 
        add constraint FK_5u8mgqavtvmnhuub9mnxexkm5 
        foreign key (semester_id) 
        references c_semesters;
    alter table q_text_evaluations 
        add constraint FK_agtrsbw2nf04blfq8jl9eb565 
        foreign key (std_id) 
        references c_students;
    alter table q_text_evaluations 
        add constraint FK_hdb70l4b93kxpv4ip86ndih43 
        foreign key (teacher_id) 
        references c_teachers;
    alter table s_awards 
        add constraint FK_b2rp9t513013k6dfbcogr7dgk 
        foreign key (depart_id) 
        references c_departments;
    alter table s_awards 
        add constraint FK_8dc03gu838amkurnt9k4o1uvg 
        foreign key (semester_id) 
        references c_semesters;
    alter table s_awards 
        add constraint FK_ti41cnkp1jjy5b1v25009j709 
        foreign key (std_id) 
        references c_students;
    alter table s_awards 
        add constraint FK_iy5c1hbp9i8iekxey9dg134jd 
        foreign key (type_id) 
        references hb_std_award_types;
    alter table s_punishments 
        add constraint FK_nsnsp28m0glhuaabo7k6tdap1 
        foreign key (depart_id) 
        references c_departments;
    alter table s_punishments 
        add constraint FK_fe75iawj8scj8n2j0o0t88ky2 
        foreign key (semester_id) 
        references c_semesters;
    alter table s_punishments 
        add constraint FK_k0qxbpdwqv2p3qj4ddarcjidq 
        foreign key (std_id) 
        references c_students;
    alter table s_punishments 
        add constraint FK_id9celgc5bvx58eshyo1omya0 
        foreign key (type_id) 
        references hb_std_punish_types;
    alter table s_std_abroads 
        add constraint FK_aep33adwmgl4bc3hb7k2hkrbq 
        foreign key (person_id) 
        references c_std_people;
    alter table s_std_abroads 
        add constraint FK_g17rw7lrfbfnsf731e6nwh8tl 
        foreign key (hskdegree_id) 
        references hb_hskdegrees;
    alter table s_std_abroads 
        add constraint FK_e8g50afoaicda6f67fc0e8pn5 
        foreign key (passport_type_id) 
        references hb_passport_types;
    alter table s_std_abroads 
        add constraint FK_b62p7ij6dqjocannevseiuv86 
        foreign key (visa_type_id) 
        references hb_visa_types;
    alter table s_std_apply_edit_noteses 
        add constraint FK_nc7w5rugg5rpva5kbh2s9ee8r 
        foreign key (idcard_type_id) 
        references hb_idcard_types;
    alter table s_std_contacts 
        add constraint FK_7871hchm05rpqmisvc16f7apy 
        foreign key (person_id) 
        references c_std_people;
    alter table s_std_home_members 
        add constraint FK_5mehout88gl0q9ja3hv12n46a 
        foreign key (home_id) 
        references s_std_homes;
    alter table s_std_home_members 
        add constraint FK_syox2akcmg61ksjrpqk5sh8n1 
        foreign key (relation_id) 
        references gb_social_relations;
    alter table s_std_homes 
        add constraint FK_dfu9i88wxfxeess2arisdqn42 
        foreign key (person_id) 
        references c_std_people;
    alter table s_std_homes 
        add constraint FK_bgswkan14e30vr3ebusb44be5 
        foreign key (economic_state_id) 
        references hb_family_economic_states;
    alter table s_std_homes 
        add constraint FK_54h4uxxroy245hlrn8g3lqhmo 
        foreign key (railway_station_id) 
        references hb_railway_stations;
    alter table s_student_apply_edits 
        add constraint FK_fxkvnqai2rt2l97oh4qgxqj74 
        foreign key (before_id) 
        references s_std_apply_edit_noteses;
    alter table s_student_apply_edits 
        add constraint FK_c3bp2805hhc1gd4v0yh5nx36w 
        foreign key (now_id) 
        references s_std_apply_edit_noteses;
    alter table s_student_apply_edits 
        add constraint FK_32r8fdwat9v46na193tkve5m2 
        foreign key (std_id) 
        references c_students;
    alter table s_student_equivalents 
        add constraint FK_1h3qsna67ftabvq7e41siutui 
        foreign key (person_id) 
        references c_std_people;
    alter table s_student_logs 
        add constraint FK_b8cae6dhi0t5ppd76rs59lmjc 
        foreign key (student_id) 
        references c_students;
    alter table s_student_logs 
        add constraint FK_b1rgexfe3ho8asbjk2a7h5h4l 
        foreign key (user_id) 
        references se_users;
    alter table se_data_fields 
        add constraint FK_h56k6dsdfhcpig80etwyn8gr5 
        foreign key (resource_id) 
        references se_data_resources;
    alter table se_data_fields 
        add constraint FK_p5p6yd4iw1xioq3luie9488b9 
        foreign key (type_id) 
        references se_data_types;
    alter table se_data_permissions 
        add constraint FK_am86beahfg34g8wg1s55os2na 
        foreign key (func_resource_id) 
        references se_func_resources;
    alter table se_data_permissions 
        add constraint FK_9oen5bbbian58lbox4r8pfd0o 
        foreign key (resource_id) 
        references se_data_resources;
    alter table se_data_permissions 
        add constraint FK_8m06ijsij3rg511vditsjxgpf 
        foreign key (role_id) 
        references se_roles;
    alter table se_func_permissions 
        add constraint FK_9i115aux58r3cjpwl06jfjlef 
        foreign key (resource_id) 
        references se_func_resources;
    alter table se_func_permissions 
        add constraint FK_fy9icugi55g32afdp7dpya5tl 
        foreign key (role_id) 
        references se_roles;
    alter table se_members 
        add constraint FK_7g5e95b6mmm9a70f1enmk6gu3 
        foreign key (role_id) 
        references se_roles;
    alter table se_members 
        add constraint FK_a8di0sfu8k3ks3bwywt2uhklj 
        foreign key (user_id) 
        references se_users;
    alter table se_menu_profiles 
        add constraint FK_8q0prylhf9tnl5e8ju2rnsag4 
        foreign key (role_id) 
        references se_roles;
    alter table se_menus 
        add constraint FK_epksu8lgd3h8wadnbbot7b7rx 
        foreign key (parent_id) 
        references se_menus;
    alter table se_menus 
        add constraint FK_kr1d2wbjwugmmslk9ttlqe8hf 
        foreign key (profile_id) 
        references se_menu_profiles;
    alter table se_menus_resources 
        add constraint FK_40u625n8w9clbsggqnkl2e98n 
        foreign key (func_resource_id) 
        references se_func_resources;
    alter table se_menus_resources 
        add constraint FK_7e3okgphh4xg8fc1b4tja9y4c 
        foreign key (menu_id) 
        references se_menus;
    alter table se_profile_fields 
        add constraint FK_32icrwcaxuwn4f30bh80ogt7x 
        foreign key (type_id) 
        references se_data_types;
    alter table se_role_profiles 
        add constraint FK_br51cppfj0csrnro26o15lqo2 
        foreign key (role_id) 
        references se_roles;
    alter table se_role_properties 
        add constraint FK_itx1flc0iakwu0o0l1druedjs 
        foreign key (field_id) 
        references se_profile_fields;
    alter table se_role_properties 
        add constraint FK_at6okkqsdcjh08r7f6xp5g2x1 
        foreign key (profile_id) 
        references se_role_profiles;
    alter table se_roles 
        add constraint FK_fm9k59s6fpd7cfflg5p23x9rq 
        foreign key (parent_id) 
        references se_roles;
    alter table se_roles 
        add constraint FK_1wmff6q01pg42v3gbcp27qkqa 
        foreign key (owner_id) 
        references se_users;
    alter table se_session_profiles 
        add constraint FK_9hfu5idur1n4naph7vtxwwue2 
        foreign key (role_id) 
        references se_roles;
    alter table se_user_profiles 
        add constraint FK_pldw9q5ui8i2ei0p6w341lbyv 
        foreign key (user_id) 
        references se_users;
    alter table se_user_properties 
        add constraint FK_q90oblgdoksu5mij7ov9sc8u 
        foreign key (field_id) 
        references se_profile_fields;
    alter table se_user_properties 
        add constraint FK_tbpox15sfjfpu0euspkmeoluf 
        foreign key (profile_id) 
        references se_user_profiles;
    alter table se_users 
        add constraint FK_j4ktbfly4iqiaw4bpok9yxujy 
        foreign key (creator_id) 
        references se_users;
    alter table st_checkins 
        add constraint FK_prtmy3jj6eg6q3ytlta3mkchk 
        foreign key (reason_id) 
        references hb_uncheckin_reasons;
    alter table st_checkins 
        add constraint FK_dlb8ua8duh93kfsw4sn1ux0q9 
        foreign key (semester_id) 
        references c_semesters;
    alter table st_checkins 
        add constraint FK_i3xdnd6ra966w988o1jthc7i8 
        foreign key (std_id) 
        references c_students;
    alter table st_register_user_groups_users 
        add constraint FK_qj92tigilsq4doqxpyqdg5hx2 
        foreign key (user_id) 
        references se_users;
    alter table st_register_user_groups_users 
        add constraint FK_ntjrs7miduwk6orvhmctik4i8 
        foreign key (register_user_group_id) 
        references st_register_user_groups;
    alter table st_registers 
        add constraint FK_3knnk34u7asowy64ohe8j8kd0 
        foreign key (reason_id) 
        references hb_unregister_reasons;
    alter table st_registers 
        add constraint FK_s0fathwuhd05fpeyhiq5cetha 
        foreign key (semester_id) 
        references c_semesters;
    alter table st_registers 
        add constraint FK_im0kmseadpotxbrbk5hc8oui0 
        foreign key (std_id) 
        references c_students;
    alter table st_report_login_switches 
        add constraint FK_h74rhwlarqk6qkm4xvx6me9dn 
        foreign key (semester_id) 
        references c_semesters;
    alter table st_std_admission_majors 
        add constraint FK_b4s0v514wnaj15gdgcrbcpa6l 
        foreign key (std_id) 
        references c_students;
    alter table st_std_admission_majors 
        add constraint FK_c5wef48d5g76v1xb3viiutne6 
        foreign key (degree_id) 
        references gb_degrees;
    alter table st_std_admission_majors 
        add constraint FK_5t7qsvw26anr7wpphgjb8cg12 
        foreign key (discipline_category_id) 
        references jb_discipline_categories;
    alter table st_std_admissions 
        add constraint FK_7p0a6vly5f8oh0qfe3aaotog6 
        foreign key (std_id) 
        references c_students;
    alter table st_std_admissions 
        add constraint FK_94ajs3k9k45c8pi0y6obeqiyr 
        foreign key (admission_type_id) 
        references hb_admission_types;
    alter table st_std_admissions 
        add constraint FK_s9y4fidmgpf48y5tmvutkrblt 
        foreign key (department_id) 
        references c_departments;
    alter table st_std_admissions 
        add constraint FK_gh7298tur433jdvaq91cqrk2c 
        foreign key (fee_origin_id) 
        references hb_fee_origins;
    alter table st_std_admissions 
        add constraint FK_otb0pege20swq5cqf26rejjid 
        foreign key (major_id) 
        references c_majors;
    alter table st_std_alteration_items 
        add constraint FK_3pluu6ppwuko1tqicfvxevdh5 
        foreign key (alteration_id) 
        references st_std_alterations;
    alter table st_std_alteration_items 
        add constraint FK_9lqe53g0rhnogodxa50pqcx45 
        foreign key (meta_id) 
        references sys_property_metas;
    alter table st_std_alterations 
        add constraint FK_1x3aygqoxd1sfg1vcpx9ivwyk 
        foreign key (reason_id) 
        references hb_std_alter_reasons;
    alter table st_std_alterations 
        add constraint FK_8o86cu31ebqonxe8rqaibtyed 
        foreign key (semester_id) 
        references c_semesters;
    alter table st_std_alterations 
        add constraint FK_axwx86iqunuels2afcs15tcw2 
        foreign key (std_id) 
        references c_students;
    alter table st_std_alterations 
        add constraint FK_d46jcva5upnlfqv6001qh34xs 
        foreign key (type_id) 
        references hb_std_alter_types;
    alter table st_std_edit_restrictions 
        add constraint FK_c6c44tc18jmafxypqoj9tq60v 
        foreign key (user_group_id) 
        references se_roles;
    alter table st_std_edit_restrictions_metas 
        add constraint FK_oc6oxhk5wjxfbtpkjxnvcxnok 
        foreign key (property_meta_id) 
        references sys_property_metas;
    alter table st_std_edit_restrictions_metas 
        add constraint FK_1a038bdd2ahuq52fo06uqfgp 
        foreign key (std_edit_restriction_id) 
        references st_std_edit_restrictions;
    alter table st_std_examinees 
        add constraint FK_84cyp51mm3uy2or9mcxtlspff 
        foreign key (std_id) 
        references c_students;
    alter table st_std_examinees 
        add constraint FK_giw1xipcj24whv2n7102s9ih2 
        foreign key (education_id) 
        references hb_educations;
    alter table st_std_examinees 
        add constraint FK_m9d6nfxtatehv40foyd6h9d6h 
        foreign key (education_mode_id) 
        references hb_education_modes;
    alter table st_std_examinees 
        add constraint FK_f5vrlfbkqlp8x7iw5ww1pekbv 
        foreign key (enroll_mode_id) 
        references hb_enroll_modes;
    alter table st_std_examinees 
        add constraint FK_d8mmtxecsng44wpbv7j2v2g2p 
        foreign key (examinee_type_id) 
        references hb_examinee_types;
    alter table st_std_examinees 
        add constraint FK_59x91n11ek29mt0hdck7h7tk8 
        foreign key (language_id) 
        references gb_languages;
    alter table st_std_examinees 
        add constraint FK_6ww63toflj64h3t6tr32al9nv 
        foreign key (origin_division_id) 
        references gb_divisions;
    alter table st_std_examinees_scores 
        add constraint FK_oxq49wq0g4li3tiqqytq5rvmc 
        foreign key (std_examinee_id) 
        references st_std_examinees;
    alter table st_std_graduations 
        add constraint FK_3f0kqpryn2ts9fhx7qto6lk4w 
        foreign key (std_id) 
        references c_students;
    alter table st_std_graduations 
        add constraint FK_30mgqylocsl8s1u6egsn7xhof 
        foreign key (degree_id) 
        references gb_degrees;
    alter table st_std_graduations 
        add constraint FK_awcnqsj6jx0aytsk4qntt8mkn 
        foreign key (graduate_state_id) 
        references hb_graduate_states;
    alter table st_user_student_conditions 
        add constraint FK_7ri3ndkar09s04vl97lqx6n3o 
        foreign key (user_id) 
        references se_users;
    alter table sys_business_log_details 
        add constraint FK_gptatpw33c10h5jg6wbfy302u 
        foreign key (log_id) 
        references sys_business_logs;
    alter table sys_business_logs 
        add constraint FK_kgp0tfa5as07obrntaw1mxrcm 
        foreign key (detail_id) 
        references sys_business_log_details;
    alter table sys_code_categories 
        add constraint FK_7la64bjipyqsc34sq2at2i11c 
        foreign key (parent_id) 
        references sys_code_categories;
    alter table sys_code_metas 
        add constraint FK_swgahynkg9qph4y8kwrve2lgw 
        foreign key (category_id) 
        references sys_code_categories;
    alter table sys_manager_notices 
        add constraint FK_dik1fo99l278w0cxtryiu5v7l 
        foreign key (content_id) 
        references sys_notice_contents;
    alter table sys_message_contents 
        add constraint FK_ptuthn89x78ls09107iq5jr6e 
        foreign key (sender_id) 
        references se_users;
    alter table sys_property_metas 
        add constraint FK_px6tcihvjh9ps85xtdjyjb8v1 
        foreign key (meta_id) 
        references sys_entity_metas;
    alter table sys_report_templates 
        add constraint FK_81qbpd1flba12mgjeykv1umrn 
        foreign key (project_id) 
        references c_projects;
    alter table sys_rule_config_params 
        add constraint FK_ic6u2jtgjv1v7h9w6sfbxok0s 
        foreign key (config_id) 
        references sys_rule_configs;
    alter table sys_rule_config_params 
        add constraint FK_8mx5cylyu6h65okvi54tgoy7u 
        foreign key (param_id) 
        references sys_rule_parameters;
    alter table sys_rule_configs 
        add constraint FK_o2h5sp9x9ckt4rgccsr0005iy 
        foreign key (rule_id) 
        references sys_rules;
    alter table sys_rule_parameters 
        add constraint FK_8wb2bl8lypbv58kkjvypfnape 
        foreign key (parent_id) 
        references sys_rule_parameters;
    alter table sys_rule_parameters 
        add constraint FK_oo3h7tptsjxtb884ja2uyi16e 
        foreign key (rule_id) 
        references sys_rules;
    alter table sys_student_documents_departs 
        add constraint FK_aad5ocwleg6n7uvdn6irxgvqo 
        foreign key (department_id) 
        references c_departments;
    alter table sys_student_documents_departs 
        add constraint FK_14akfp730d7rwgb6uny56fclb 
        foreign key (student_document_id) 
        references sys_student_documents;
    alter table SYS_STD_DOCS_STD_TYPES 
        add constraint FK_k7j0dapqt9d7oss9frsfseih1 
        foreign key (std_type_id) 
        references xb_std_types;
    alter table SYS_STD_DOCS_STD_TYPES 
        add constraint FK_dig650r7ipmrihrqbkpke1kqq 
        foreign key (student_document_id) 
        references sys_student_documents;
    alter table sys_student_notices 
        add constraint FK_5fb85h1m3b1f2qee9jyt6rv2i 
        foreign key (content_id) 
        references sys_notice_contents;
    alter table sys_student_notices_departs 
        add constraint FK_4yd0cb5xx3ys941yclwbn6y5n 
        foreign key (department_id) 
        references c_departments;
    alter table sys_student_notices_departs 
        add constraint FK_9yeywwp1dqn8a1dguyl9ejntj 
        foreign key (student_notice_id) 
        references sys_student_notices;
    alter table sys_student_notices_std_types 
        add constraint FK_pxb11qww0dkm7fydp4ukvtqja 
        foreign key (std_type_id) 
        references xb_std_types;
    alter table sys_student_notices_std_types 
        add constraint FK_bsi8ojba8yr38rqv5i4qhvre9 
        foreign key (student_notice_id) 
        references sys_student_notices;
    alter table sys_system_message_configs 
        add constraint FK_kgrprvh6pco42q874ioioy49o 
        foreign key (project_id) 
        references c_projects;
    alter table sys_system_messages 
        add constraint FK_tlso104qpm7tiv4fgd63i4tvt 
        foreign key (content_id) 
        references sys_message_contents;
    alter table sys_system_messages 
        add constraint FK_nl1f4g0auhqlme8a0w0y5dney 
        foreign key (recipient_id) 
        references se_users;
    alter table sys_teacher_notices 
        add constraint FK_fvm8n978v9kcf4gqiiktha0ri 
        foreign key (content_id) 
        references sys_notice_contents;
    alter table t_arrange_suggests 
        add constraint FK_pikr2pd05it4j0ry66lrfkx3c 
        foreign key (lesson_id) 
        references t_lessons;
    alter table t_arrange_suggests_rooms 
        add constraint FK_b8hqk8vgfq5h7u7y7k8msccre 
        foreign key (classroom_id) 
        references c_classrooms;
    alter table t_arrange_suggests_rooms 
        add constraint FK_jduw53mk0jscnn1xnfo3ub3iq 
        foreign key (arrange_suggest_id) 
        references t_arrange_suggests;
    alter table t_collision_resources 
        add constraint FK_plvfqcrfoqsdfqjnjkd2frst5 
        foreign key (lesson_id) 
        references t_lessons;
    alter table t_collision_resources 
        add constraint FK_34ed51d278swlrkmo1ng8m88p 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_constraint_loggers 
        add constraint FK_2ql7m6myly1k84al2hdv8sk1x 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_course_activities 
        add constraint FK_95hlg2g6hwafdk7fes8jv8x56 
        foreign key (lesson_id) 
        references t_lessons;
    alter table t_course_activities_rooms 
        add constraint FK_yr7w0y8906pllsonw48gkdj6 
        foreign key (classroom_id) 
        references c_classrooms;
    alter table t_course_activities_rooms 
        add constraint FK_ogbaxswofc4awy4mvf4i90xfl 
        foreign key (course_activity_id) 
        references t_course_activities;
    alter table t_course_activities_teachers 
        add constraint FK_gc8hu217v0s9k863fdnj4771b 
        foreign key (teacher_id) 
        references c_teachers;
    alter table t_course_activities_teachers 
        add constraint FK_rj6tewarl9awep8hfqxb1itoy 
        foreign key (course_activity_id) 
        references t_course_activities;
    alter table t_course_arrange_alters 
        add constraint FK_mww7g0vl0bq6cwdv0lnybptv6 
        foreign key (alter_by_id) 
        references se_users;
    alter table t_course_arrange_alters 
        add constraint FK_46l57jj83ddatqcx1a53k2abi 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_course_arrange_switches 
        add constraint FK_4kbhiv8r0s5pch4whtluk0u78 
        foreign key (project_id) 
        references c_projects;
    alter table t_course_arrange_switches 
        add constraint FK_r7ulxros5u0d48c2l0oqh89lu 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_course_code_standards 
        add constraint FK_p5ahq4h8x8pkpngpc9tmwuolc 
        foreign key (project_id) 
        references c_projects;
    alter table t_course_ext_infoes 
        add constraint FK_m2eybva2aaf2oqho5y4a1eju3 
        foreign key (course_id) 
        references t_courses;
    alter table t_course_ext_infoes_teachers 
        add constraint FK_lqn2ro354p8o134eq18opdxro 
        foreign key (teacher_id) 
        references c_teachers;
    alter table t_course_ext_infoes_teachers 
        add constraint FK_f5sedqebc1m6v2a4aolx407ck 
        foreign key (course_ext_info_id) 
        references t_course_ext_infoes;
    alter table t_course_grade_states 
        add constraint FK_qbd4mjtel76q5wd9vw6wp70r2 
        foreign key (score_mark_style_id) 
        references hb_score_mark_styles;
    alter table t_course_grade_states 
        add constraint FK_kfp7l8gls2986x3mg3n96rfev 
        foreign key (extra_inputer_id) 
        references se_users;
    alter table t_course_grade_states 
        add constraint FK_5x7icadiibcd3qsi9wtdd29f8 
        foreign key (lesson_id) 
        references t_lessons;
    alter table t_course_grades 
        add constraint FK_s8wl5s1cj10ndj6xp5fh8g53t 
        foreign key (mark_style_id) 
        references hb_score_mark_styles;
    alter table t_course_grades 
        add constraint FK_1np0qvemy17i6db6od3h3xgfc 
        foreign key (project_id) 
        references c_projects;
    alter table t_course_grades 
        add constraint FK_excyn57gsi1demb7kmwaqvnr3 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_course_grades 
        add constraint FK_3vk3q266kvhpi4dr22s44il5y 
        foreign key (std_id) 
        references c_students;
    alter table t_course_grades 
        add constraint FK_taamv61qgb66wri98xd0g7fdb 
        foreign key (course_id) 
        references t_courses;
    alter table t_course_grades 
        add constraint FK_nultg958rrsxyspew0up5dnnd 
        foreign key (course_take_type_id) 
        references hb_course_take_types;
    alter table t_course_grades 
        add constraint FK_lvqwj4pkj28o21l554sqo9x8w 
        foreign key (course_type_id) 
        references xb_course_types;
    alter table t_course_grades 
        add constraint FK_8xhq6snho466rn6jn60gfd1lm 
        foreign key (exam_mode_id) 
        references hb_exam_modes;
    alter table t_course_grades 
        add constraint FK_20fdn44px3k146k5lcbs69ikw 
        foreign key (lesson_id) 
        references t_lessons;
    alter table t_course_grades_exchanges 
        add constraint FK_ou5iuqf7e9tg2b6pn3ytehil8 
        foreign key (exchange_course_id) 
        references t_exchange_courses;
    alter table t_course_grades_exchanges 
        add constraint FK_58f9xqvn0na9xhirmvgbj5ose 
        foreign key (course_grade_id) 
        references t_course_grades;
    alter table t_course_hours 
        add constraint FK_tpeu0eej2dq4pbeqo7ocea5d4 
        foreign key (course_id) 
        references t_courses;
    alter table t_course_hours 
        add constraint FK_ixebhuk8mxesjt0jetfar9v8u 
        foreign key (type_id) 
        references xb_course_hour_types;
    alter table t_course_limit_groups 
        add constraint FK_t4gsb4nbqertrf0oketfdy38j 
        foreign key (lesson_id) 
        references t_lessons;
    alter table t_course_limit_items 
        add constraint FK_iau92qthqw8dgoyy73yc45fsw 
        foreign key (group_id) 
        references t_course_limit_groups;
    alter table t_course_limit_items 
        add constraint FK_9ay9we57fr399kj78ek70lklh 
        foreign key (meta_id) 
        references t_course_limit_metas;
    alter table t_course_mail_settings 
        add constraint FK_l2s79nbijtameaaslo7rmomof 
        foreign key (creator_id) 
        references se_users;
    alter table t_course_materials 
        add constraint FK_9n0hm5yn4xakm71ryhhtx19lt 
        foreign key (course_id) 
        references t_courses;
    alter table t_course_materials 
        add constraint FK_fji1rau1qhf6ev9u4awnptjt3 
        foreign key (department_id) 
        references c_departments;
    alter table t_course_materials 
        add constraint FK_rfmhecv45ywtfwchteia16ifn 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_course_materials_books 
        add constraint FK_s9y2w2k2jm5gvw03by74m3e00 
        foreign key (textbook_id) 
        references t_textbooks;
    alter table t_course_materials_books 
        add constraint FK_p3fktbnb8i8hnm3rmm6tib1w7 
        foreign key (course_material_id) 
        references t_course_materials;
    alter table t_course_table_checks 
        add constraint FK_apmrru9hl1657tupxeb7ur8f8 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_course_table_checks 
        add constraint FK_6l44nbjin46o1uqpt1g9p5xsu 
        foreign key (std_id) 
        references c_students;
    alter table t_course_takes 
        add constraint FK_kgvustu26i9ypeh6l4k9g4ef8 
        foreign key (bill_id) 
        references f_bills;
    alter table t_course_takes 
        add constraint FK_dfrjh70rqob0oypssfmyheqe2 
        foreign key (course_take_type_id) 
        references hb_course_take_types;
    alter table t_course_takes 
        add constraint FK_8xp17aeo2hr60bttrkk72tk22 
        foreign key (election_mode_id) 
        references hb_election_modes;
    alter table t_course_takes 
        add constraint FK_apirn2c61k102tyektekodbdd 
        foreign key (lesson_id) 
        references t_lessons;
    alter table t_course_takes 
        add constraint FK_r0lqw0jbmvukl237xs2554ssj 
        foreign key (limit_group_id) 
        references t_course_limit_groups;
    alter table t_course_takes 
        add constraint FK_etm5efrr6ncg31tsv6cc2fqlm 
        foreign key (std_id) 
        references c_students;
    alter table t_courses 
        add constraint FK_cbv2x85e274ua5ycf8hpujwbw 
        foreign key (project_id) 
        references c_projects;
    alter table t_courses 
        add constraint FK_dx8yniwiireudl7439aus8fv3 
        foreign key (category_id) 
        references xb_course_categories;
    alter table t_courses 
        add constraint FK_dly2gw9251wc67s93xmbyv4jk 
        foreign key (course_type_id) 
        references xb_course_types;
    alter table t_courses 
        add constraint FK_g952l84bcng1lkuk53ght0qss 
        foreign key (department_id) 
        references c_departments;
    alter table t_courses 
        add constraint FK_srg32xxj4uhc662ivd0yl8iiv 
        foreign key (education_id) 
        references hb_educations;
    alter table t_courses 
        add constraint FK_b11gnr4euadcrkym33a3h9ocl 
        foreign key (exam_mode_id) 
        references hb_exam_modes;
    alter table t_courses 
        add constraint FK_7fos1hctp3wmrr4hjj6wv6ugi 
        foreign key (mark_style_id) 
        references hb_score_mark_styles;
    alter table t_courses_ability_rates 
        add constraint FK_98tp5qb5gk15ynyit0339ogeo 
        foreign key (course_ability_rate_id) 
        references xb_course_ability_rates;
    alter table t_courses_ability_rates 
        add constraint FK_6cc3p1prcx11uxreaocin85p7 
        foreign key (course_id) 
        references t_courses;
    alter table t_courses_majors 
        add constraint FK_99ooj2wsjykxcslmhvvqe6wqp 
        foreign key (major_id) 
        references c_majors;
    alter table t_courses_majors 
        add constraint FK_3uj1o1e0y1p3ofqlowerxbcl6 
        foreign key (course_id) 
        references t_courses;
    alter table t_courses_prerequisites 
        add constraint FK_alr390x5l4rmg6vm16v0by2a8 
        foreign key (precourse_id) 
        references t_courses;
    alter table t_courses_prerequisites 
        add constraint FK_h8ckhjjcwy9qjf49xdutwvugs 
        foreign key (course_id) 
        references t_courses;
    alter table t_courses_referbooks 
        add constraint FK_jxpmg3j50k27lnjcu7h5l3rke 
        foreign key (textbook_id) 
        references t_textbooks;
    alter table t_courses_referbooks 
        add constraint FK_7vjtjifefbfs7cp7udj1b66x3 
        foreign key (course_id) 
        references t_courses;
    alter table t_courses_textbooks 
        add constraint FK_fvc0nj9uv9ekpnr1eerldh7qi 
        foreign key (textbook_id) 
        references t_textbooks;
    alter table t_courses_textbooks 
        add constraint FK_5aukgqamnlnxxps50twg1g9k6 
        foreign key (course_id) 
        references t_courses;
    alter table t_courses_xmajors 
        add constraint FK_p3flf4nbtc0yatgjuqd4jxkrd 
        foreign key (major_id) 
        references c_majors;
    alter table t_courses_xmajors 
        add constraint FK_peefusm6uthck48sys3u0xfbs 
        foreign key (course_id) 
        references t_courses;
    alter table t_curriculum_change_applys 
        add constraint FK_3g8ynfwmnrkhdhc11dcr87cxn 
        foreign key (lesson_id) 
        references t_lessons;
    alter table t_curriculum_change_applys 
        add constraint FK_sngrsmykeq9ttdu6mxq1kon82 
        foreign key (teacher_id) 
        references c_teachers;
    alter table t_elect_loggers 
        add constraint FK_n4x2u7o5pkciuksddm28cxs1r 
        foreign key (course_take_type_id) 
        references hb_course_take_types;
    alter table t_elect_loggers 
        add constraint FK_ad0e2pwhurn8oa3968u6lffe9 
        foreign key (election_mode_id) 
        references hb_election_modes;
    alter table t_elect_loggers 
        add constraint FK_rcpum31c1g6ve7hc0apm53fnp 
        foreign key (project_id) 
        references c_projects;
    alter table t_elect_loggers 
        add constraint FK_d3068voqr5hce09x1lny9x58e 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_elect_plans_rule_configs 
        add constraint FK_fq8tnl70rg5wqj9ir266vjvwx 
        foreign key (rule_config_id) 
        references sys_rule_configs;
    alter table t_elect_plans_rule_configs 
        add constraint FK_mfw983hctqdyhkjgkqxywnt4y 
        foreign key (elect_plan_id) 
        references t_elect_plans;
    alter table t_election_profiles 
        add constraint FK_pskg6p52sqj7onw0y88u9ea4a 
        foreign key (project_id) 
        references c_projects;
    alter table t_election_profiles 
        add constraint FK_elsxowfe7jxyvhwxooyl9cslu 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_election_profiles_departs 
        add constraint FK_p0uopusyi0yx930eh68bm3uyk 
        foreign key (election_profile_id) 
        references t_election_profiles;
    alter table t_election_profiles_directions 
        add constraint FK_ckd9u8juna4y0vxpkj5gmbc1c 
        foreign key (election_profile_id) 
        references t_election_profiles;
    alter table t_election_profiles_grades 
        add constraint FK_a3l5skf7o47pn29pv391mri99 
        foreign key (election_profile_id) 
        references t_election_profiles;
    alter table t_election_profiles_majors 
        add constraint FK_ocfrwpsyefdfnh002ma97vkd6 
        foreign key (election_profile_id) 
        references t_election_profiles;
    alter table t_election_profiles_std_types 
        add constraint FK_d2yu0b250qxtvlbru9navt2a5 
        foreign key (election_profile_id) 
        references t_election_profiles;
    alter table t_election_profiles_stds 
        add constraint FK_s3cyfcb4ju3poelyxk6j7rr94 
        foreign key (election_profile_id) 
        references t_election_profiles;
    alter table t_exam_activities 
        add constraint FK_7bt5gp2htb4swck2u0akhvqan 
        foreign key (exam_type_id) 
        references hb_exam_types;
    alter table t_exam_activities 
        add constraint FK_b66e9f714ec540h0mr7t1amge 
        foreign key (lesson_id) 
        references t_lessons;
    alter table t_exam_activities 
        add constraint FK_qgxu9ti23ds0w1xppetno8sqg 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_exam_activities_exam_rooms 
        add constraint FK_jenco3ce80nvgbvb55tnfvo26 
        foreign key (exam_room_id) 
        references t_exam_rooms;
    alter table t_exam_activities_exam_rooms 
        add constraint FK_tqcmvcfx9fnmoevwmqbkw7is4 
        foreign key (exam_activity_id) 
        references t_exam_activities;
    alter table t_exam_applies 
        add constraint FK_46bmys7a0x30759tp9ybgsic2 
        foreign key (exam_take_id) 
        references t_exam_takes;
    alter table t_exam_apply_switches 
        add constraint FK_fo2dhtj5frtlh5styyy6x9r5 
        foreign key (project_id) 
        references c_projects;
    alter table t_exam_apply_switches 
        add constraint FK_9d5pxh6ulo5iia1w8xmdcxnig 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_exam_grade_states 
        add constraint FK_btvtw2g23nn7n0otu6b5yb50t 
        foreign key (score_mark_style_id) 
        references hb_score_mark_styles;
    alter table t_exam_grade_states 
        add constraint FK_95fuhmn5i6u99l29vt6cv3k7b 
        foreign key (grade_state_id) 
        references t_course_grade_states;
    alter table t_exam_grade_states 
        add constraint FK_t1lagla3qpfnc2mv759ed2dq0 
        foreign key (grade_type_id) 
        references hb_grade_types;
    alter table t_exam_grades 
        add constraint FK_fmwyk8xh4ysku7ocxb227j9xm 
        foreign key (course_grade_id) 
        references t_course_grades;
    alter table t_exam_grades 
        add constraint FK_pmc9snnb900vijwm1wl4wmaqv 
        foreign key (exam_status_id) 
        references hb_exam_statuses;
    alter table t_exam_grades 
        add constraint FK_add854vrvdtyl6ucbmlntmynj 
        foreign key (grade_type_id) 
        references hb_grade_types;
    alter table t_exam_grades 
        add constraint FK_4tqvyoj4yn2di17tbjc5myq1h 
        foreign key (mark_style_id) 
        references hb_score_mark_styles;
    alter table t_exam_groups 
        add constraint FK_62hg2c326lygtjqdff06kpubd 
        foreign key (exam_type_id) 
        references hb_exam_types;
    alter table t_exam_groups 
        add constraint FK_5wv6jlqwo7yjigwcbct33v3eq 
        foreign key (project_id) 
        references c_projects;
    alter table t_exam_groups 
        add constraint FK_mp4ga0bd2ilfxjtnyjifv1hwt 
        foreign key (room_program_id) 
        references t_exam_room_programs;
    alter table t_exam_groups 
        add constraint FK_1yl615me49oo7gak98jkxk4tw 
        foreign key (scheme_id) 
        references t_exam_turn_schemes;
    alter table t_exam_groups 
        add constraint FK_7ffrjjneof6yari3qa16ugyty 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_exam_groups_lessons 
        add constraint FK_7unwa3081og7remv7uqfo281h 
        foreign key (lesson_id) 
        references t_lessons;
    alter table t_exam_groups_lessons 
        add constraint FK_gv4rcx7q83bwqg6qft6odn1yk 
        foreign key (exam_group_id) 
        references t_exam_groups;
    alter table t_exam_monitors 
        add constraint FK_gylqsvx9hhcuty9jflvk8ur4p 
        foreign key (department_id) 
        references c_departments;
    alter table t_exam_monitors 
        add constraint FK_1d4l1o29uv2uplssdvlky392y 
        foreign key (exam_room_id) 
        references t_exam_rooms;
    alter table t_exam_monitors 
        add constraint FK_jjgx1buwsfxtroprq7avbny9m 
        foreign key (teacher_id) 
        references c_teachers;
    alter table t_exam_papers 
        add constraint FK_9l0vgtkvqd5myfwibu37wct0s 
        foreign key (exam_type_id) 
        references hb_exam_types;
    alter table t_exam_papers 
        add constraint FK_2rya6r3tf5yitjdx2mnldle5a 
        foreign key (project_id) 
        references c_projects;
    alter table t_exam_papers 
        add constraint FK_62v9bcsnt5bitax5nb8onv066 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_exam_papers_lessons 
        add constraint FK_fea9bhuw77v9k4si70eu9foo7 
        foreign key (lesson_id) 
        references t_lessons;
    alter table t_exam_papers_lessons 
        add constraint FK_dlqllvf2xl0iw2djqljsektxd 
        foreign key (exam_paper_id) 
        references t_exam_papers;
    alter table t_exam_room_capacities 
        add constraint FK_tesepqtvfisuotl6bn1928hmx 
        foreign key (classroom_id) 
        references c_classrooms;
    alter table t_exam_room_programs_rooms 
        add constraint FK_66qqepepeptw1htxce0clj3fn 
        foreign key (classroom_id) 
        references c_classrooms;
    alter table t_exam_room_programs_rooms 
        add constraint FK_fdhgculf35wbf7sxpracbdf3k 
        foreign key (exam_room_program_id) 
        references t_exam_room_programs;
    alter table t_exam_rooms 
        add constraint FK_1mm0wco0h1tedsuj3b2kbjxq 
        foreign key (department_id) 
        references c_departments;
    alter table t_exam_rooms 
        add constraint FK_bjv0ctop2gvkimk3l5i0yaw4q 
        foreign key (examiner_id) 
        references c_teachers;
    alter table t_exam_rooms 
        add constraint FK_p4ya584dgfca9pxif8gggdvi2 
        foreign key (room_id) 
        references c_classrooms;
    alter table t_exam_rooms 
        add constraint FK_b4n9f375xain079xrvwctb7p2 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_exam_takes 
        add constraint FK_qjn6fm41tnlpcu68axuj7fe1o 
        foreign key (exam_room_id) 
        references t_exam_rooms;
    alter table t_exam_takes 
        add constraint FK_4eefr232vayjdlj4iod1mxwe 
        foreign key (exam_status_id) 
        references hb_exam_statuses;
    alter table t_exam_takes 
        add constraint FK_bwuvyt0nw30twgn58yvahxcxw 
        foreign key (exam_type_id) 
        references hb_exam_types;
    alter table t_exam_takes 
        add constraint FK_gt7ssj9nvo40ld7o35lc7jl4o 
        foreign key (lesson_id) 
        references t_lessons;
    alter table t_exam_takes 
        add constraint FK_ljtrvcdg3scgin6ai132u5cgj 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_exam_takes 
        add constraint FK_eedtysi0305m0byp66u0kus2a 
        foreign key (std_id) 
        references c_students;
    alter table t_exam_turn_schemes 
        add constraint FK_732bpc17cb5qu1vrpyu0fkxlj 
        foreign key (exam_type_id) 
        references hb_exam_types;
    alter table t_exam_turn_schemes 
        add constraint FK_k96eo9jrms8kvn0xe48k928s0 
        foreign key (project_id) 
        references c_projects;
    alter table t_exam_turns 
        add constraint FK_r552thj90cs632od0m7bat7f 
        foreign key (examTurnScheme_id) 
        references t_exam_turn_schemes;
    alter table t_exchange_configs 
        add constraint FK_gr1h1i4jyqa23xws3dok3o7b6 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_exchange_course_grades 
        add constraint FK_92w1etpe7ako4l6t6tgcefnd3 
        foreign key (course_id) 
        references t_courses;
    alter table t_exchange_course_grades 
        add constraint FK_7kshl1pknd11towmsgyx2kqcc 
        foreign key (course_type_id) 
        references xb_course_types;
    alter table t_exchange_course_grades 
        add constraint FK_pwcy22ik3uqx0vssa0ixg58h3 
        foreign key (mark_style_id) 
        references hb_score_mark_styles;
    alter table t_exchange_course_grades 
        add constraint FK_l2tex2equqyner2r33fo9k0tq 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_exchange_courses 
        add constraint FK_5sq741xv167khccp48u8jr4i5 
        foreign key (school_id) 
        references t_exchange_schools;
    alter table t_exchange_grades 
        add constraint FK_cc8qxsn09a8e0nexrxtdg0wii 
        foreign key (course_id) 
        references t_exchange_courses;
    alter table t_exchange_grades 
        add constraint FK_byyirgi4thj1eehx57s7q73sl 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_exchange_grades 
        add constraint FK_o3n9uper63pwmu5kgsxu2cuhw 
        foreign key (session_id) 
        references t_exchange_sessions;
    alter table t_exchange_grades 
        add constraint FK_2qgv5gie1fsgpack24s0x378y 
        foreign key (std_id) 
        references c_students;
    alter table t_exchange_grades_converts 
        add constraint FK_n53xsn74d1a6ypsiw2b1qx0xd 
        foreign key (exchange_course_grade_id) 
        references t_exchange_course_grades;
    alter table t_exchange_grades_converts 
        add constraint FK_7hw8x4uuemc5xtvc9xhe7v03q 
        foreign key (exchange_grade_id) 
        references t_exchange_grades;
    alter table t_exchange_logs 
        add constraint FK_jyag5b0har9f0b1v00vjdl2i6 
        foreign key (user_id) 
        references se_users;
    alter table t_exchange_projects 
        add constraint FK_4q7ldw2h0434h7t88s7j30vk 
        foreign key (education_id) 
        references hb_educations;
    alter table t_exchange_projects 
        add constraint FK_ptjr4p7i3m58uwmxqvs0x6tq7 
        foreign key (school_id) 
        references t_exchange_schools;
    alter table t_exchange_projects 
        add constraint FK_iuptncpg8sh9dpcj7f7o0vq8d 
        foreign key (school_type_id) 
        references XB_EXCH_SCHOOL_TYPES;
    alter table t_exchange_projects 
        add constraint FK_acu4u81ssaaw3q00d0gl4p7w3 
        foreign key (type_id) 
        references XB_EXCHANGE_TYPES;
    alter table t_exchange_schools 
        add constraint FK_6a4389iea0tbogwvt65xvjq1h 
        foreign key (country_id) 
        references gb_countries;
    alter table t_exchange_sessions 
        add constraint FK_9uhhjqm8wwtvn8jwe31yfmsfc 
        foreign key (project_id) 
        references t_exchange_projects;
    alter table t_exchange_sessions 
        add constraint FK_4s1hvrao4tu6prnjbqx7vv6rt 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_exchange_students 
        add constraint FK_nnw1bq5artul77nv4nd7ro533 
        foreign key (session_id) 
        references t_exchange_sessions;
    alter table t_exchange_students 
        add constraint FK_qxdpdc2bs2qajy06bfnhrge0 
        foreign key (std_id) 
        references c_students;
    alter table t_exclusive_subjects 
        add constraint FK_k38ufyafdfuhh0mkd75h1bwl3 
        foreign key (config_id) 
        references t_other_exam_configs;
    alter table t_exclusive_subjects 
        add constraint FK_rwj1x9cxpisnewfs4sovboehk 
        foreign key (subject_one_id) 
        references hb_other_exam_subjects;
    alter table t_exclusive_subjects 
        add constraint FK_p2l0l94rurwrbr3n6p4rumw57 
        foreign key (subject_two_id) 
        references hb_other_exam_subjects;
    alter table t_grade_input_switches 
        add constraint FK_fv9b6xlvwhg0c61ogxj3qjn7s 
        foreign key (project_id) 
        references c_projects;
    alter table t_grade_input_switches 
        add constraint FK_akxgpyue56s1btjs8pd4yjf1l 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_grade_input_switches_types 
        add constraint FK_9njgycqurow35yowisnskc30c 
        foreign key (grade_type_id) 
        references hb_grade_types;
    alter table t_grade_input_switches_types 
        add constraint FK_dqi1jo0vqm2dmg288p3028c2r 
        foreign key (grade_input_switch_id) 
        references t_grade_input_switches;
    alter table t_grade_modify_applies 
        add constraint FK_fmciwaueubernkij5sv2ct67o 
        foreign key (course_id) 
        references t_courses;
    alter table t_grade_modify_applies 
        add constraint FK_6hfeqe8p64hkuwekmfxbrvyir 
        foreign key (exam_status_id) 
        references hb_exam_statuses;
    alter table t_grade_modify_applies 
        add constraint FK_stp60xqci2vrs35vv4c83ok1o 
        foreign key (exam_status_before_id) 
        references hb_exam_statuses;
    alter table t_grade_modify_applies 
        add constraint FK_bu4gcj5a6hmeudls72abp09sb 
        foreign key (grade_type_id) 
        references hb_grade_types;
    alter table t_grade_modify_applies 
        add constraint FK_g9iy2hqnvttu5tditnwo4vw01 
        foreign key (project_id) 
        references c_projects;
    alter table t_grade_modify_applies 
        add constraint FK_rt4inw1y2d8s37rkkqjnxp3y 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_grade_modify_applies 
        add constraint FK_sqnu9s2o73nqoptib7h0i2bdm 
        foreign key (std_id) 
        references c_students;
    alter table t_grade_rate_configs 
        add constraint FK_hlakmsplajc5emyjkvfb5e7qf 
        foreign key (project_id) 
        references c_projects;
    alter table t_grade_rate_configs 
        add constraint FK_1r1frn594noejii08fbhuak5v 
        foreign key (score_mark_style_id) 
        references hb_score_mark_styles;
    alter table t_grade_rate_items 
        add constraint FK_68oko4767qe0m9dmsblt04g28 
        foreign key (config_id) 
        references t_grade_rate_configs;
    alter table t_grade_view_scopes_educations 
        add constraint FK_e1sf0ft9p65ggeu2o5bydan09 
        foreign key (education_id) 
        references hb_educations;
    alter table t_grade_view_scopes_educations 
        add constraint FK_1sois1gee59iprwdy3v12an4w 
        foreign key (grade_view_scope_id) 
        references t_grade_view_scopes;
    alter table t_grade_view_scopes_projects 
        add constraint FK_ikgk5km5y9i6py8nvbyck9gbb 
        foreign key (project_id) 
        references c_projects;
    alter table t_grade_view_scopes_projects 
        add constraint FK_i1hhmsm4tto6nw8an8jhvltim 
        foreign key (grade_view_scope_id) 
        references t_grade_view_scopes;
    alter table t_grade_view_scopes_std_types 
        add constraint FK_irye7yde4tl3rkux7pmkqs1m6 
        foreign key (std_type_id) 
        references xb_std_types;
    alter table t_grade_view_scopes_std_types 
        add constraint FK_ljte76yxcue7bgkf4vwyy3cea 
        foreign key (grade_view_scope_id) 
        references t_grade_view_scopes;
    alter table t_last_makeup_takes 
        add constraint FK_tmii468ruatqygi74mvyhbycu 
        foreign key (course_type_id) 
        references xb_course_types;
    alter table t_last_makeup_takes 
        add constraint FK_l1n68ykx38w1xqsjwmbh39iuu 
        foreign key (std_id) 
        references c_students;
    alter table t_last_makeup_takes 
        add constraint FK_8etd68hgnxyyyl01a1bqwpql4 
        foreign key (task_id) 
        references t_last_makeup_tasks;
    alter table t_last_makeup_tasks 
        add constraint FK_2dxtdhwb2oucci40qfhjih1u6 
        foreign key (project_id) 
        references c_projects;
    alter table t_last_makeup_tasks 
        add constraint FK_55usryc9p65gb6hdagf9xylxh 
        foreign key (course_id) 
        references t_courses;
    alter table t_last_makeup_tasks 
        add constraint FK_as16h29akx2pytr7bwo2cv6t1 
        foreign key (depart_id) 
        references c_departments;
    alter table t_last_makeup_tasks 
        add constraint FK_1v887af94xk432klw2bcc64s9 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_last_makeup_tasks 
        add constraint FK_jvm00s5ib35pa79jklyp7t8xo 
        foreign key (teacher_id) 
        references c_teachers;
    alter table t_last_makeup_tasks_classes 
        add constraint FK_s9uckn89mbrrra1t6mvqueuty 
        foreign key (adminclass_id) 
        references c_adminclasses;
    alter table t_last_makeup_tasks_classes 
        add constraint FK_raayv80h5im2yw984mnsmectu 
        foreign key (last_makeup_task_id) 
        references t_last_makeup_tasks;
    alter table t_lesson_college_switches 
        add constraint FK_7fltqwa6myn0i6gaqocaichbd 
        foreign key (project_id) 
        references c_projects;
    alter table t_lesson_college_switches 
        add constraint FK_frvs69kfmj7m7itm3afqpbu5q 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_lesson_for_departs 
        add constraint FK_lqimsus0b5ueu91esxtinj6gp 
        foreign key (department_id) 
        references c_departments;
    alter table t_lesson_for_departs 
        add constraint FK_2pig7tof2cgu3uhgsitfbdbm7 
        foreign key (project_id) 
        references c_projects;
    alter table t_lesson_for_departs 
        add constraint FK_7i84ld1k8x94t44yp8qkqwagm 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_lesson_groups 
        add constraint FK_s1236l4bjd9kun6iiwa2aqryx 
        foreign key (project_id) 
        references c_projects;
    alter table t_lesson_groups 
        add constraint FK_87t1sxfyvhs8s8elj6qehhk48 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_lesson_groups 
        add constraint FK_pltweqmcwcv8dvjgmpc7h46ax 
        foreign key (teach_depart_id) 
        references c_departments;
    alter table t_lesson_materials 
        add constraint FK_vlsb3duymiilpris2epf7yu9 
        foreign key (lesson_id) 
        references t_lessons;
    alter table t_lesson_materials_books 
        add constraint FK_5tgdbfqblp3o3kuu64glr28pu 
        foreign key (textbook_id) 
        references t_textbooks;
    alter table t_lesson_materials_books 
        add constraint FK_jcqtpfxv7dpxduk6hmulpmdvr 
        foreign key (lesson_material_id) 
        references t_lesson_materials;
    alter table t_lesson_plan_relations 
        add constraint FK_ok2odt2sw8ty47oaqty44ka9h 
        foreign key (lesson_id) 
        references t_lessons;
    alter table t_lesson_plan_relations 
        add constraint FK_6gr7o48i70h8bqlajouob0j0x 
        foreign key (plan_id) 
        references t_ma_plans;
    alter table t_lesson_tags 
        add constraint FK_8v4cx4kn38irlol6xqkwovs4y 
        foreign key (project_id) 
        references c_projects;
    alter table t_lessons 
        add constraint FK_qxl98qm0n9wnejf775y067xg7 
        foreign key (project_id) 
        references c_projects;
    alter table t_lessons 
        add constraint FK_nhj97lyq94pwcr7ehncf6m33v 
        foreign key (campus_id) 
        references c_campuses;
    alter table t_lessons 
        add constraint FK_bliwi0d8ue92hrt9b6o2991tg 
        foreign key (course_id) 
        references t_courses;
    alter table t_lessons 
        add constraint FK_ajta5pols0jl7j1akevby2rj1 
        foreign key (room_type_id) 
        references xb_classroom_types;
    alter table t_lessons 
        add constraint FK_1vq8ghxdudk7fiefijoo7sq8i 
        foreign key (course_type_id) 
        references xb_course_types;
    alter table t_lessons 
        add constraint FK_ocgq8mqnpb2asq8ripc1neb5n 
        foreign key (exam_mode_id) 
        references hb_exam_modes;
    alter table t_lessons 
        add constraint FK_l3ahfgmcpxyj4awwaaecof9n1 
        foreign key (group_id) 
        references t_lesson_groups;
    alter table t_lessons 
        add constraint FK_1bd33ejlrog5bacvnxlky8k6y 
        foreign key (lang_type_id) 
        references hb_teach_lang_types;
    alter table t_lessons 
        add constraint FK_rbdb2dj4qhos7022j8jhe19f7 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_lessons 
        add constraint FK_1v7i774qjd5im0352h6xpvlp3 
        foreign key (depart_id) 
        references c_departments;
    alter table t_lessons 
        add constraint FK_rts9wqujrdupkv0dptji4lm6c 
        foreign key (teach_depart_id) 
        references c_departments;
    alter table t_lessons_exam_types 
        add constraint FK_61rxk9j7559aohak6ysenabao 
        foreign key (exam_type_id) 
        references hb_exam_types;
    alter table t_lessons_exam_types 
        add constraint FK_i8ker9pt4xqp1ix57yn8qro37 
        foreign key (lesson_id) 
        references t_lessons;
    alter table t_lessons_tags 
        add constraint FK_3yf2phlek3y567mrvruoaqxeh 
        foreign key (lesson_tag_id) 
        references t_lesson_tags;
    alter table t_lessons_tags 
        add constraint FK_42vhbqqw63wdi61a4juy4i9o0 
        foreign key (lesson_id) 
        references t_lessons;
    alter table t_lessons_teachers 
        add constraint FK_hqfpgsyx0hs2pnhr2fyyl7ype 
        foreign key (teacher_id) 
        references c_teachers;
    alter table t_lessons_teachers 
        add constraint FK_8ed9yhh692te8o7j6fm4g5yxg 
        foreign key (lesson_id) 
        references t_lessons;
    alter table t_ma_plans 
        add constraint FK_rx9d0lpl6rl3a7vdhfwtl4dc2 
        foreign key (program_id) 
        references t_programs;
    alter table t_major_credit_constraints 
        add constraint FK_dsajv64sebhm6ah570p5r09kw 
        foreign key (department_id) 
        references c_departments;
    alter table t_major_credit_constraints 
        add constraint FK_iicder4y29pmevicev5juyiwc 
        foreign key (direction_id) 
        references c_directions;
    alter table t_major_credit_constraints 
        add constraint FK_ske612qibr7jbe7i1gqlj05hw 
        foreign key (education_id) 
        references hb_educations;
    alter table t_major_credit_constraints 
        add constraint FK_394j203kicgg37asgud6gpyuy 
        foreign key (major_id) 
        references c_majors;
    alter table t_major_credit_constraints 
        add constraint FK_d1m72cjjig1jxbkypdb2w5v8y 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_major_credit_constraints 
        add constraint FK_t5lpq0fx91ivd9fixh4os75xu 
        foreign key (std_type_id) 
        references xb_std_types;
    alter table t_major_plan_comments 
        add constraint FK_r2jfx9se9en1w0i25s2hfdjds 
        foreign key (major_plan_id) 
        references t_ma_plans;
    alter table t_normal_classes 
        add constraint FK_44mcumcnx4n0dvj7j4o1estj 
        foreign key (education_id) 
        references hb_educations;
    alter table t_normal_classes 
        add constraint FK_bpdpch18vax2vsfuk96sspnws 
        foreign key (project_id) 
        references c_projects;
    alter table t_normal_classes_students 
        add constraint FK_h29h5a0vf4e8h0pj94m17i619 
        foreign key (student_id) 
        references c_students;
    alter table t_normal_classes_students 
        add constraint FK_abd1p4vgx077n0cnnsmacoovu 
        foreign key (normal_class_id) 
        references t_normal_classes;
    alter table t_not_pass_credit_statss 
        add constraint FK_kc3gyry4o9jotl29852fgo3hr 
        foreign key (course_id) 
        references t_courses;
    alter table t_not_pass_credit_statss 
        add constraint FK_ryo06d1rqc5j4d0aan1jpljsv 
        foreign key (course_type_id) 
        references xb_course_types;
    alter table t_not_pass_credit_statss 
        add constraint FK_ownbcsi1kg6scfg1sfxmgidxh 
        foreign key (std_id) 
        references c_students;
    alter table t_off_campus_tutors 
        add constraint FK_mcpxjq64u4bnmhhp6mmc5pdmr 
        foreign key (title_id) 
        references gb_teacher_titles;
    alter table t_other_exam_configs 
        add constraint FK_4ieb54lu1t0kx4phq79b501es 
        foreign key (category_id) 
        references hb_other_exam_categories;
    alter table t_other_exam_configs 
        add constraint FK_qh6up6ulcl4m4jqreyc0t5dju 
        foreign key (project_id) 
        references c_projects;
    alter table t_other_exam_configs 
        add constraint FK_a2i5r29quuunuak6upt0gpjb8 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_other_exam_configs_campuses 
        add constraint FK_1c19s4y0i9xiuyrhib4bc2dbd 
        foreign key (campus_id) 
        references c_campuses;
    alter table t_other_exam_configs_campuses 
        add constraint FK_huvyy88hsufeoa3r5axhw9m36 
        foreign key (t_other_exam_configs_id) 
        references t_other_exam_configs;
    alter table t_other_exam_settings 
        add constraint FK_bx8h2ywc2aj8gcfk165r7oi0y 
        foreign key (config_id) 
        references t_other_exam_configs;
    alter table t_other_exam_settings 
        add constraint FK_5tkft7i3oj2fjasnc5wfqmlah 
        foreign key (subject_id) 
        references hb_other_exam_subjects;
    alter table t_other_exam_settings 
        add constraint FK_e2fv9gkki8ggipc5qg1n6i9u2 
        foreign key (super_subject_id) 
        references hb_other_exam_subjects;
    alter table t_other_exam_settings_fb_stds 
        add constraint FK_5yu6739fc75ukibd6jcaaiq4j 
        foreign key (student_id) 
        references c_students;
    alter table t_other_exam_settings_fb_stds 
        add constraint FK_ev7fasbfx3e19lrqv70y3y47j 
        foreign key (t_other_exam_settings_id) 
        references t_other_exam_settings;
    alter table t_other_exam_settings_pm_stds 
        add constraint FK_oa5hycfx2nvxxe2n7aqst98od 
        foreign key (student_id) 
        references c_students;
    alter table t_other_exam_settings_pm_stds 
        add constraint FK_ls82gmb4i70qm4oclq2fnq4yp 
        foreign key (t_other_exam_settings_id) 
        references t_other_exam_settings;
    alter table t_other_exam_sign_ups 
        add constraint FK_1vegt7aihw4wovxclhd7pcb9y 
        foreign key (bill_id) 
        references f_bills;
    alter table t_other_exam_sign_ups 
        add constraint FK_fo0e5bym5sa35jphqtlsywyu3 
        foreign key (campus_id) 
        references c_campuses;
    alter table t_other_exam_sign_ups 
        add constraint FK_v02jcib9nx2qfdemubvp9a26 
        foreign key (pay_state_id) 
        references hb_pay_states;
    alter table t_other_exam_sign_ups 
        add constraint FK_m17hevn0j9vylm4up942npnx6 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_other_exam_sign_ups 
        add constraint FK_fanrpjhlbitvdpw6to53e8qfr 
        foreign key (std_id) 
        references c_students;
    alter table t_other_exam_sign_ups 
        add constraint FK_293qqnfajihkk8mlud7nfksr2 
        foreign key (subject_id) 
        references hb_other_exam_subjects;
    alter table t_other_fee_configs 
        add constraint FK_cnvma5ktpjm34o6rwfq5848td 
        foreign key (fee_type_id) 
        references xb_fee_types;
    alter table t_other_fee_configs 
        add constraint FK_kp32df9ytvd4n45r6q9ngwqr7 
        foreign key (project_id) 
        references c_projects;
    alter table t_other_fee_configs 
        add constraint FK_bsgrn3gd3ycdxr0nb803ox5nx 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_other_grade_alter_infoes 
        add constraint FK_9y7nm1xvtvkltmkslfq1e5p2x 
        foreign key (grade_id) 
        references t_other_grades;
    alter table t_other_grades 
        add constraint FK_8gf1siqnyawh8hjstgeqjj5fs 
        foreign key (mark_style_id) 
        references hb_score_mark_styles;
    alter table t_other_grades 
        add constraint FK_dxg2qpakimdutsi8x0ryps5p3 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_other_grades 
        add constraint FK_o4ok6n8a80troynqci6b2heo 
        foreign key (std_id) 
        references c_students;
    alter table t_other_grades 
        add constraint FK_44psvhm5xikby1a46hlv7emrl 
        foreign key (subject_id) 
        references hb_other_exam_subjects;
    alter table t_program_doc_metas 
        add constraint FK_syxm4blpw833xqacfd9gtkpp9 
        foreign key (template_id) 
        references t_program_doc_templates;
    alter table t_program_doc_sections 
        add constraint FK_4km7le1bexman3rsiflpp7g0a 
        foreign key (doc_id) 
        references t_program_docs;
    alter table t_program_doc_sections 
        add constraint FK_jvjafhlotpowopkfbdlwewiv1 
        foreign key (parent_id) 
        references t_program_doc_sections;
    alter table t_program_doc_templates 
        add constraint FK_9h7oy3tgdg5yl2a0nnhd410ou 
        foreign key (project_id) 
        references c_projects;
    alter table t_program_doc_templates 
        add constraint FK_ha1g7rd4fja8tqi2v0s5w9yki 
        foreign key (education_id) 
        references hb_educations;
    alter table t_program_doc_templates_types 
        add constraint FK_s9tib3m36ewg1etbkn5je6grp 
        foreign key (std_type_id) 
        references xb_std_types;
    alter table t_program_doc_templates_types 
        add constraint FK_hmh0kii31fpovuetdx5k8xaj3 
        foreign key (program_doc_template_id) 
        references t_program_doc_templates;
    alter table t_program_docs 
        add constraint FK_s0e1hvarqh4qfce4jj10ur2vs 
        foreign key (program_id) 
        references t_programs;
    alter table t_programs 
        add constraint FK_7bwn5qnjf6pnp2bnbr4cexb6s 
        foreign key (degree_id) 
        references gb_degrees;
    alter table t_programs 
        add constraint FK_joeyfo69k5tudu0y4kmw8gli7 
        foreign key (department_id) 
        references c_departments;
    alter table t_programs 
        add constraint FK_7y65fke9f4yg4p7iblktojxqb 
        foreign key (direction_id) 
        references c_directions;
    alter table t_programs 
        add constraint FK_qwbqik02ny7aj5lt13w3adf28 
        foreign key (education_id) 
        references hb_educations;
    alter table t_programs 
        add constraint FK_3jt371grujnwikipwxg32sd96 
        foreign key (major_id) 
        references c_majors;
    alter table t_programs 
        add constraint FK_722jvh5el9lm56nj4veuxx5og 
        foreign key (std_type_id) 
        references xb_std_types;
    alter table t_programs 
        add constraint FK_r9xt7w1a96t6stjk02sfgej32 
        foreign key (study_type_id) 
        references gb_study_types;
    alter table t_retake_fee_configs 
        add constraint FK_2jg0c8qpn3wioar3eeba0lb9c 
        foreign key (fee_type_id) 
        references xb_fee_types;
    alter table t_retake_fee_configs 
        add constraint FK_a3hqa9jgq3pilkulb5jy7kldu 
        foreign key (project_id) 
        references c_projects;
    alter table t_retake_fee_configs 
        add constraint FK_aylrttec9ldwpo77um3ovim5r 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_std_course_abilities 
        add constraint FK_aq1yuaa8h4rer24p1s8vno435 
        foreign key (ability_rate_id) 
        references xb_course_ability_rates;
    alter table t_std_course_abilities 
        add constraint FK_sc04aaiveb07s5tl4o3fr505 
        foreign key (std_id) 
        references c_students;
    alter table t_std_credit_constraints 
        add constraint FK_cj2f1oyl1do22ynpgkn2wdq0w 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_std_credit_constraints 
        add constraint FK_oy6xksvxbx90prrpbrnn6pu2q 
        foreign key (std_id) 
        references c_students;
    alter table t_std_gpas 
        add constraint FK_11f8q3seput51oma0x049c4fq 
        foreign key (std_id) 
        references c_students;
    alter table t_std_semester_gpas 
        add constraint FK_5djumjb2l3s5tkjm9p4gs4r05 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_std_semester_gpas 
        add constraint FK_oogqwn5grrkigieiasq7b9nck 
        foreign key (std_gpa_id) 
        references t_std_gpas;
    alter table t_std_year_gpas 
        add constraint FK_k40n9063xpqo3q0jn0o6pq168 
        foreign key (std_gpa_id) 
        references t_std_gpas;
    alter table t_student_programs 
        add constraint FK_ky9k3hek4tnnmq8h4wr5wiodo 
        foreign key (program_id) 
        references t_programs;
    alter table t_student_programs 
        add constraint FK_fa7tvjuynds1yccs679pqloml 
        foreign key (std_id) 
        references c_students;
    alter table t_suggest_activities 
        add constraint FK_5asfv9tmyjvaf8l9paqcaotsj 
        foreign key (arrange_suggest_id) 
        references t_arrange_suggests;
    alter table t_suggest_activities_teachers 
        add constraint FK_92vqvupfxh1ui4uuxxlb2mgph 
        foreign key (teacher_id) 
        references c_teachers;
    alter table t_suggest_activities_teachers 
        add constraint FK_6b71l6a692km7y0tyujwueoo4 
        foreign key (suggest_activity_id) 
        references t_suggest_activities;
    alter table t_teach_qualities 
        add constraint FK_s9imv1mwviqq5d9yk13tfioum 
        foreign key (lesson_id) 
        references t_lessons;
    alter table t_teach_qualities 
        add constraint FK_alawsl7nwyjhk5jtn5ruj9ujj 
        foreign key (project_id) 
        references c_projects;
    alter table t_teach_qualities 
        add constraint FK_quyn3dskshgncn78aa3vyxoyp 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_teach_qualities 
        add constraint FK_nwsldh9p5bt49of030bkvb68c 
        foreign key (teacher_id) 
        references c_teachers;
    alter table t_teacherbook_nums 
        add constraint FK_qm66b5jj98m7h5jnjpml5apj5 
        foreign key (course_id) 
        references t_courses;
    alter table t_teacherbook_nums 
        add constraint FK_m7n5qxusnydwmf692qngnhggr 
        foreign key (department_id) 
        references c_departments;
    alter table t_teacherbook_nums 
        add constraint FK_moncv75w7rmb499jsqysm7e2q 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_teacherbook_nums 
        add constraint FK_dpsyo34wicvr35simtj3crytv 
        foreign key (textbook_id) 
        references t_textbooks;
    alter table t_textbook_order_lines 
        add constraint FK_rayftt81emo6pdg6lo7skn4of 
        foreign key (lesson_id) 
        references t_lessons;
    alter table t_textbook_order_lines 
        add constraint FK_dbfpkjqmk7qvp59ex4pbio0dq 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_textbook_order_lines 
        add constraint FK_o675c9vk35qchy13ul1s39eh8 
        foreign key (student_id) 
        references c_students;
    alter table t_textbook_order_lines 
        add constraint FK_srdcwk2edrxsdn1jl0on8lv5e 
        foreign key (textbook_id) 
        references t_textbooks;
    alter table t_textbook_prices 
        add constraint FK_aqfjaxvdfjtrh1xxjmrqdx36c 
        foreign key (project_id) 
        references c_projects;
    alter table t_textbook_prices 
        add constraint FK_5ijbb1iqd1ybprir8anyfmrfh 
        foreign key (semester_id) 
        references c_semesters;
    alter table t_textbook_prices 
        add constraint FK_r27kehr1qkgyurjgdmj3m3ggk 
        foreign key (textbook_id) 
        references t_textbooks;
    alter table t_textbooks 
        add constraint FK_ro40m8616494gg5f1h57kvegp 
        foreign key (award_type_id) 
        references hb_book_award_types;
    alter table t_textbooks 
        add constraint FK_ds5qw7cy8ejyvhqqm8mpqgdr4 
        foreign key (book_type_id) 
        references xb_book_types;
    alter table t_textbooks 
        add constraint FK_8lxq4c2r4t5tx8ok0c2taltu6 
        foreign key (press_id) 
        references hb_presses;
    alter table t_theses 
        add constraint FK_lx4mg1odpu0y1futeck6t2osd 
        foreign key (off_campus_tutor_id) 
        references t_off_campus_tutors;
    alter table t_theses 
        add constraint FK_dh6uyw8wext64nuel1u5xfe7u 
        foreign key (std_id) 
        references c_students;
    alter table t_total_credit_statss 
        add constraint FK_lw3th7opvly11vw2o3yuw32bb 
        foreign key (std_id) 
        references c_students;
    alter table tc_external_contacts 
        add constraint FK_mdbopk1ftkitja9pdi136nsw5 
        foreign key (person_id) 
        references tc_external_people;
    alter table tc_external_people 
        add constraint FK_55iiti66fiobta3f0nfg1oltk 
        foreign key (country_id) 
        references gb_countries;
    alter table tc_external_people 
        add constraint FK_5dle3pi0xe7ygmyj4s1u3seed 
        foreign key (department_id) 
        references c_departments;
    alter table tc_external_people 
        add constraint FK_m85sf7m0bqqtn1d6ipwf9wef3 
        foreign key (gender_id) 
        references gb_genders;
    alter table tc_external_people 
        add constraint FK_18i3ggyy5mjj4mhcmqdt4xa4i 
        foreign key (idcard_type_id) 
        references hb_idcard_types;
    alter table tc_external_people 
        add constraint FK_5egd1odohjc022rohn07gawnv 
        foreign key (nation_id) 
        references gb_nations;
    alter table tc_external_people 
        add constraint FK_3ye0kbrcjpbju3dw5wb3b2m2k 
        foreign key (politic_visage_id) 
        references gb_politic_visages;
    alter table tc_external_people 
        add constraint FK_2evlrnx53arho0w1vkwj45uv9 
        foreign key (unit_type_id) 
        references hb_teacher_unit_types;
    alter table tc_external_teachers 
        add constraint FK_3j819lo9ysg3yfax4n42f18h3 
        foreign key (degree_id) 
        references gb_degrees;
    alter table tc_external_teachers 
        add constraint FK_1u4kb4d2e93air06600kakytm 
        foreign key (department_id) 
        references c_departments;
    alter table tc_external_teachers 
        add constraint FK_7fh666mv6598n4of7urqp8xhk 
        foreign key (education_id) 
        references hb_educations;
    alter table tc_external_teachers 
        add constraint FK_clolk8qhpjjsdi94bsi154jpm 
        foreign key (person_id) 
        references tc_external_people;
    alter table tc_external_teachers 
        add constraint FK_o8lfcywrngubalfxspkr1sr60 
        foreign key (state_id) 
        references hb_teacher_states;
    alter table tc_external_teachers 
        add constraint FK_jipvnmvepcd55yg1hb5ga07k3 
        foreign key (teacher_type_id) 
        references hb_teacher_types;
    alter table tc_external_teachers 
        add constraint FK_3bbwdku808koi7cpq65qtlvjw 
        foreign key (title_id) 
        references gb_teacher_titles;
    alter table tc_external_teachers 
        add constraint FK_f0b83megvj02d7svlj5pn13ts 
        foreign key (tutor_type_id) 
        references hb_tutor_types;
    alter table tc_parttime_contacts 
        add constraint FK_8nv8ut61t3qtdfr12c5lsoi4k 
        foreign key (person_id) 
        references tc_parttime_people;
    alter table tc_parttime_people 
        add constraint FK_h5sinnm1iefc5sxxwtrgkueiw 
        foreign key (country_id) 
        references gb_countries;
    alter table tc_parttime_people 
        add constraint FK_icuew2s20bhq05ac5ny7ubyud 
        foreign key (department_id) 
        references c_departments;
    alter table tc_parttime_people 
        add constraint FK_lhfe1j3ecgcaqt5ngpjcfteoa 
        foreign key (gender_id) 
        references gb_genders;
    alter table tc_parttime_people 
        add constraint FK_ad19x4qq2csiqu3sggdjvcide 
        foreign key (idcard_type_id) 
        references hb_idcard_types;
    alter table tc_parttime_people 
        add constraint FK_p91ovoc6spq3b9pckiquk2cwn 
        foreign key (nation_id) 
        references gb_nations;
    alter table tc_parttime_people 
        add constraint FK_ogh97w2k3jetqfq7t74r0vkq8 
        foreign key (politic_visage_id) 
        references gb_politic_visages;
    alter table tc_parttime_teachers 
        add constraint FK_l2n0u83hbbo4p8y82q8429rul 
        foreign key (degree_id) 
        references gb_degrees;
    alter table tc_parttime_teachers 
        add constraint FK_6dofg818vb0rlg2fvxi9xjggh 
        foreign key (department_id) 
        references c_departments;
    alter table tc_parttime_teachers 
        add constraint FK_8734h08ajms33rjicownhgl5o 
        foreign key (education_id) 
        references hb_educations;
    alter table tc_parttime_teachers 
        add constraint FK_etpwaln94uxsjfi7vhd7rerei 
        foreign key (parttime_depart_id) 
        references c_departments;
    alter table tc_parttime_teachers 
        add constraint FK_phui3rjf1xo41024qgfd388e 
        foreign key (person_id) 
        references tc_parttime_people;
    alter table tc_parttime_teachers 
        add constraint FK_1q4lwx5qpegml0gd0239xnow2 
        foreign key (state_id) 
        references hb_teacher_states;
    alter table tc_parttime_teachers 
        add constraint FK_m85o9v9oxvw48exd6uh625rs2 
        foreign key (teacher_type_id) 
        references hb_teacher_types;
    alter table tc_parttime_teachers 
        add constraint FK_b1i2uepmae5uw7flag2eyxmy 
        foreign key (title_id) 
        references gb_teacher_titles;
    alter table tc_parttime_teachers 
        add constraint FK_anxqrrbqk44su5bvxwxt4kuts 
        foreign key (tutor_type_id) 
        references hb_tutor_types;
    alter table tc_teacher_contacts 
        add constraint FK_jc7eowr2bo255vqoci76y92oq 
        foreign key (staff_id) 
        references c_staffs;
    alter table xb_std_labels 
        add constraint FK_gq70sy62tdhaiigoim7dc4e7q 
        foreign key (type_id) 
        references xb_std_label_types;

    create sequence seq_D_GOOD_THESISES start with 1 increment by 1;
    create sequence seq_D_THESIS_DOCUMENT_TACHES start with 1 increment by 1;
    create sequence seq_Q_EVA_TEACH_REMESSAGE start with 1 increment by 1;
    create sequence seq_ST_DA_APPLIES start with 1 increment by 1;
    create sequence seq_ST_DA_ITEM_RESULTS start with 1 increment by 1;
    create sequence seq_ST_DA_LOGS start with 1 increment by 1;
    create sequence seq_ST_DA_SEASONS start with 1 increment by 1;
    create sequence seq_ST_DA_STANDARDS start with 1 increment by 1;
    create sequence seq_ST_GA_ITEM_RESULTS start with 1 increment by 1;
    create sequence seq_ST_GA_LOGS start with 1 increment by 1;
    create sequence seq_ST_GA_RESULTS start with 1 increment by 1;
    create sequence seq_ST_GA_SEASONS start with 1 increment by 1;
    create sequence seq_ST_GA_STANDARDS start with 1 increment by 1;
    create sequence seq_ST_PA_COURSE_RESULTS start with 1 increment by 1;
    create sequence seq_ST_PA_GROUP_RESULTS start with 1 increment by 1;
    create sequence seq_ST_PA_LOGS start with 1 increment by 1;
    create sequence seq_ST_PA_RESULTS start with 1 increment by 1;
    create sequence seq_ST_PA_STANDARDS start with 1 increment by 1;
    create sequence seq_T_COURSE_TYPE_CREDIT_CONS start with 1 increment by 1;
    create sequence seq_T_EXAM_APPLY_PARAM start with 1 increment by 1;
    create sequence seq_T_MAJOR_PLAN_CG_MODIFIES start with 1 increment by 1;
    create sequence seq_T_MAJOR_PLAN_CG_MOD_AFTERS start with 1 increment by 1;
    create sequence seq_T_MAJOR_PLAN_CG_MOD_BEFORS start with 1 increment by 1;
    create sequence seq_T_MAJOR_PLAN_C_MODIFIES start with 1 increment by 1;
    create sequence seq_T_MAJOR_PLAN_C_MOD_AFTERS start with 1 increment by 1;
    create sequence seq_T_MAJOR_PLAN_C_MOD_BEFORS start with 1 increment by 1;
    create sequence seq_T_MA_COURSE_SUBS start with 1 increment by 1;
    create sequence seq_T_MA_PLAN_COURSES start with 1 increment by 1;
    create sequence seq_T_MA_PLAN_C_GROUPS start with 1 increment by 1;
    create sequence seq_T_ORI_PLANS start with 1 increment by 1;
    create sequence seq_T_ORI_PLAN_COURSES start with 1 increment by 1;
    create sequence seq_T_ORI_PLAN_C_GROUPS start with 1 increment by 1;
    create sequence seq_T_PER_PLANS start with 1 increment by 1;
    create sequence seq_T_PER_PLAN_COURSES start with 1 increment by 1;
    create sequence seq_T_PER_PLAN_C_GROUPS start with 1 increment by 1;
    create sequence seq_T_SHR_PLANS start with 1 increment by 1;
    create sequence seq_T_SHR_PLAN_COURSES start with 1 increment by 1;
    create sequence seq_T_SHR_PLAN_C_GROUPS start with 1 increment by 1;
    create sequence seq_T_STD_COURSE_COUNT_CONS start with 1 increment by 1;
    create sequence seq_T_STD_COURSE_SUBS start with 1 increment by 1;
    create sequence seq_T_STD_TOTAL_CREDIT_CONS start with 1 increment by 1;
    create sequence seq_XB_EXCHANGE_TYPES start with 1 increment by 1;
    create sequence seq_XB_EXCH_SCHOOL_TYPES start with 1 increment by 1;
    create sequence seq_c_adminclasses start with 1 increment by 1;
    create sequence seq_c_building_course_units start with 1 increment by 1;
    create sequence seq_c_buildings start with 1 increment by 1;
    create sequence seq_c_calendars start with 1 increment by 1;
    create sequence seq_c_campuses start with 1 increment by 1;
    create sequence seq_c_classrooms start with 1 increment by 1;
    create sequence seq_c_default_course_units start with 1 increment by 1;
    create sequence seq_c_departments start with 1 increment by 1;
    create sequence seq_c_direction_journals start with 1 increment by 1;
    create sequence seq_c_directions start with 1 increment by 1;
    create sequence seq_c_habilitations start with 1 increment by 1;
    create sequence seq_c_holidays start with 1 increment by 1;
    create sequence seq_c_major_journals start with 1 increment by 1;
    create sequence seq_c_majors start with 1 increment by 1;
    create sequence seq_c_project_classrooms start with 1 increment by 1;
    create sequence seq_c_project_codes start with 1 increment by 1;
    create sequence seq_c_project_configs start with 1 increment by 1;
    create sequence seq_c_project_properties start with 1 increment by 1;
    create sequence seq_c_projects start with 1 increment by 1;
    create sequence seq_c_schools start with 1 increment by 1;
    create sequence seq_c_semester_stages start with 1 increment by 1;
    create sequence seq_c_semesters start with 1 increment by 1;
    create sequence seq_c_staffs start with 1 increment by 1;
    create sequence seq_c_std_people start with 1 increment by 1;
    create sequence seq_c_student_journals start with 1 increment by 1;
    create sequence seq_c_students start with 1 increment by 1;
    create sequence seq_c_teacher_journals start with 1 increment by 1;
    create sequence seq_c_teachers start with 1 increment by 1;
    create sequence seq_c_time_settings start with 1 increment by 1;
    create sequence seq_cl_apply_time_units start with 1 increment by 1;
    create sequence seq_cl_occupancies start with 1 increment by 1;
    create sequence seq_cl_price_catalogs start with 1 increment by 1;
    create sequence seq_cl_price_configs start with 1 increment by 1;
    create sequence seq_cl_room_applies start with 1 increment by 1;
    create sequence seq_cl_room_usage_capacities start with 1 increment by 1;
    create sequence seq_course_modified_records start with 1 increment by 1;
    create sequence seq_course_modifieds start with 1 increment by 1;
    create sequence seq_d_thesis_active_types start with 1 increment by 1;
    create sequence seq_d_thesis_annotate_actives start with 1 increment by 1;
    create sequence seq_d_thesis_annotate_books start with 1 increment by 1;
    create sequence seq_d_thesis_annotate_filters start with 1 increment by 1;
    create sequence seq_d_thesis_annotate_teachers start with 1 increment by 1;
    create sequence seq_d_thesis_annotates start with 1 increment by 1;
    create sequence seq_d_thesis_answer_actives start with 1 increment by 1;
    create sequence seq_d_thesis_answer_filters start with 1 increment by 1;
    create sequence seq_d_thesis_answers start with 1 increment by 1;
    create sequence seq_d_thesis_coders start with 1 increment by 1;
    create sequence seq_d_thesis_documents start with 1 increment by 1;
    create sequence seq_d_thesis_evaluate_projects start with 1 increment by 1;
    create sequence seq_d_thesis_notices start with 1 increment by 1;
    create sequence seq_d_thesis_pre_ans_actives start with 1 increment by 1;
    create sequence seq_d_thesis_pre_ans_filters start with 1 increment by 1;
    create sequence seq_d_thesis_pre_answers start with 1 increment by 1;
    create sequence seq_d_thesis_processes start with 1 increment by 1;
    create sequence seq_d_thesis_ranks start with 1 increment by 1;
    create sequence seq_d_thesis_sh_annotates start with 1 increment by 1;
    create sequence seq_d_thesis_sh_evaluations start with 1 increment by 1;
    create sequence seq_d_thesis_std_innovates start with 1 increment by 1;
    create sequence seq_d_thesis_teacher_evals start with 1 increment by 1;
    create sequence seq_d_thesis_teacher_innovates start with 1 increment by 1;
    create sequence seq_d_thesis_topic_opn_actives start with 1 increment by 1;
    create sequence seq_d_thesis_topic_opn_filters start with 1 increment by 1;
    create sequence seq_d_thesis_topic_opens start with 1 increment by 1;
    create sequence seq_d_thesis_topic_origins start with 1 increment by 1;
    create sequence seq_d_thesis_types start with 1 increment by 1;
    create sequence seq_d_thesis_ug_actives start with 1 increment by 1;
    create sequence seq_d_thesis_ug_filters start with 1 increment by 1;
    create sequence seq_d_thesis_undergraduates start with 1 increment by 1;
    create sequence seq_f_bill_logs start with 1 increment by 1;
    create sequence seq_f_bills start with 1 increment by 1;
    create sequence seq_f_check_fee_types start with 1 increment by 1;
    create sequence seq_f_pays start with 1 increment by 1;
    create sequence seq_f_tuitions start with 1 increment by 1;
    create sequence seq_gb_countries start with 1 increment by 1;
    create sequence seq_gb_degrees start with 1 increment by 1;
    create sequence seq_gb_divisions start with 1 increment by 1;
    create sequence seq_gb_genders start with 1 increment by 1;
    create sequence seq_gb_languages start with 1 increment by 1;
    create sequence seq_gb_marital_statuses start with 1 increment by 1;
    create sequence seq_gb_nations start with 1 increment by 1;
    create sequence seq_gb_politic_visages start with 1 increment by 1;
    create sequence seq_gb_social_relations start with 1 increment by 1;
    create sequence seq_gb_study_types start with 1 increment by 1;
    create sequence seq_gb_teacher_title_levels start with 1 increment by 1;
    create sequence seq_gb_teacher_titles start with 1 increment by 1;
    create sequence seq_hb_admission_types start with 1 increment by 1;
    create sequence seq_hb_attendance_types start with 1 increment by 1;
    create sequence seq_hb_book_award_types start with 1 increment by 1;
    create sequence seq_hb_course_take_types start with 1 increment by 1;
    create sequence seq_hb_education_modes start with 1 increment by 1;
    create sequence seq_hb_educations start with 1 increment by 1;
    create sequence seq_hb_election_modes start with 1 increment by 1;
    create sequence seq_hb_enroll_modes start with 1 increment by 1;
    create sequence seq_hb_exam_modes start with 1 increment by 1;
    create sequence seq_hb_exam_statuses start with 1 increment by 1;
    create sequence seq_hb_exam_types start with 1 increment by 1;
    create sequence seq_hb_examinee_types start with 1 increment by 1;
    create sequence seq_hb_family_economic_states start with 1 increment by 1;
    create sequence seq_hb_fee_origins start with 1 increment by 1;
    create sequence seq_hb_grade_types start with 1 increment by 1;
    create sequence seq_hb_graduate_states start with 1 increment by 1;
    create sequence seq_hb_hsch_grade_types start with 1 increment by 1;
    create sequence seq_hb_hskdegrees start with 1 increment by 1;
    create sequence seq_hb_idcard_types start with 1 increment by 1;
    create sequence seq_hb_other_exam_categories start with 1 increment by 1;
    create sequence seq_hb_other_exam_subjects start with 1 increment by 1;
    create sequence seq_hb_passport_types start with 1 increment by 1;
    create sequence seq_hb_pay_states start with 1 increment by 1;
    create sequence seq_hb_pay_types start with 1 increment by 1;
    create sequence seq_hb_press_levels start with 1 increment by 1;
    create sequence seq_hb_presses start with 1 increment by 1;
    create sequence seq_hb_production_award_levels start with 1 increment by 1;
    create sequence seq_hb_production_award_types start with 1 increment by 1;
    create sequence seq_hb_production_types start with 1 increment by 1;
    create sequence seq_hb_publication_grades start with 1 increment by 1;
    create sequence seq_hb_publications start with 1 increment by 1;
    create sequence seq_hb_railway_stations start with 1 increment by 1;
    create sequence seq_hb_residences start with 1 increment by 1;
    create sequence seq_hb_room_usages start with 1 increment by 1;
    create sequence seq_hb_score_mark_styles start with 1 increment by 1;
    create sequence seq_hb_std_alter_reasons start with 1 increment by 1;
    create sequence seq_hb_std_alter_types start with 1 increment by 1;
    create sequence seq_hb_std_award_types start with 1 increment by 1;
    create sequence seq_hb_std_punish_types start with 1 increment by 1;
    create sequence seq_hb_std_statuses start with 1 increment by 1;
    create sequence seq_hb_teach_lang_types start with 1 increment by 1;
    create sequence seq_hb_teach_modes start with 1 increment by 1;
    create sequence seq_hb_teacher_states start with 1 increment by 1;
    create sequence seq_hb_teacher_types start with 1 increment by 1;
    create sequence seq_hb_teacher_unit_types start with 1 increment by 1;
    create sequence seq_hb_tutor_types start with 1 increment by 1;
    create sequence seq_hb_uncheckin_reasons start with 1 increment by 1;
    create sequence seq_hb_unregister_reasons start with 1 increment by 1;
    create sequence seq_hb_visa_types start with 1 increment by 1;
    create sequence seq_jb_discipline_catalogs start with 1 increment by 1;
    create sequence seq_jb_discipline_categories start with 1 increment by 1;
    create sequence seq_jb_disciplines start with 1 increment by 1;
    create sequence seq_jb_institutions start with 1 increment by 1;
    create sequence seq_q_college_option_stats start with 1 increment by 1;
    create sequence seq_q_depart_evaluations start with 1 increment by 1;
    create sequence seq_q_department_option_stats start with 1 increment by 1;
    create sequence seq_q_eval_criteria_items start with 1 increment by 1;
    create sequence seq_q_evaluate_results start with 1 increment by 1;
    create sequence seq_q_evaluate_switches start with 1 increment by 1;
    create sequence seq_q_evaluation_criterias start with 1 increment by 1;
    create sequence seq_q_not_evaluate_students start with 1 increment by 1;
    create sequence seq_q_opposite_questions start with 1 increment by 1;
    create sequence seq_q_option_groups start with 1 increment by 1;
    create sequence seq_q_option_stats start with 1 increment by 1;
    create sequence seq_q_options start with 1 increment by 1;
    create sequence seq_q_question_detail_stats start with 1 increment by 1;
    create sequence seq_q_question_results start with 1 increment by 1;
    create sequence seq_q_question_type_stats start with 1 increment by 1;
    create sequence seq_q_question_types start with 1 increment by 1;
    create sequence seq_q_questionnaire_lessons start with 1 increment by 1;
    create sequence seq_q_questionnaire_stats start with 1 increment by 1;
    create sequence seq_q_questionnaires start with 1 increment by 1;
    create sequence seq_q_questions start with 1 increment by 1;
    create sequence seq_q_teacher_option_stats start with 1 increment by 1;
    create sequence seq_q_text_eval_switches start with 1 increment by 1;
    create sequence seq_q_text_evaluations start with 1 increment by 1;
    create sequence seq_s_awards start with 1 increment by 1;
    create sequence seq_s_punishments start with 1 increment by 1;
    create sequence seq_s_std_abroads start with 1 increment by 1;
    create sequence seq_s_std_apply_edit_noteses start with 1 increment by 1;
    create sequence seq_s_std_contacts start with 1 increment by 1;
    create sequence seq_s_std_home_members start with 1 increment by 1;
    create sequence seq_s_std_homes start with 1 increment by 1;
    create sequence seq_s_student_apply_edits start with 1 increment by 1;
    create sequence seq_s_student_equivalents start with 1 increment by 1;
    create sequence seq_s_student_logs start with 1 increment by 1;
    create sequence seq_se_data_fields start with 1 increment by 1;
    create sequence seq_se_data_permissions start with 1 increment by 1;
    create sequence seq_se_data_resources start with 1 increment by 1;
    create sequence seq_se_data_types start with 1 increment by 1;
    create sequence seq_se_func_permissions start with 1 increment by 1;
    create sequence seq_se_func_resources start with 1 increment by 1;
    create sequence seq_se_members start with 1 increment by 1;
    create sequence seq_se_menu_profiles start with 1 increment by 1;
    create sequence seq_se_menus start with 1 increment by 1;
    create sequence seq_se_profile_fields start with 1 increment by 1;
    create sequence seq_se_role_profiles start with 1 increment by 1;
    create sequence seq_se_role_properties start with 1 increment by 1;
    create sequence seq_se_roles start with 1 increment by 1;
    create sequence seq_se_session_profiles start with 1 increment by 1;
    create sequence seq_se_session_stats start with 1 increment by 1;
    create sequence seq_se_user_profiles start with 1 increment by 1;
    create sequence seq_se_user_properties start with 1 increment by 1;
    create sequence seq_se_users start with 1 increment by 1;
    create sequence seq_st_checkins start with 1 increment by 1;
    create sequence seq_st_register_user_groups start with 1 increment by 1;
    create sequence seq_st_registers start with 1 increment by 1;
    create sequence seq_st_report_login_switches start with 1 increment by 1;
    create sequence seq_st_std_admission_majors start with 1 increment by 1;
    create sequence seq_st_std_admissions start with 1 increment by 1;
    create sequence seq_st_std_alteration_items start with 1 increment by 1;
    create sequence seq_st_std_alterations start with 1 increment by 1;
    create sequence seq_st_std_edit_restrictions start with 1 increment by 1;
    create sequence seq_st_std_examinees start with 1 increment by 1;
    create sequence seq_st_std_graduations start with 1 increment by 1;
    create sequence seq_st_std_property_editors start with 1 increment by 1;
    create sequence seq_st_user_student_conditions start with 1 increment by 1;
    create sequence seq_sys_business_log_details start with 1 increment by 1;
    create sequence seq_sys_business_logs start with 1 increment by 1;
    create sequence seq_sys_code_categories start with 1 increment by 1;
    create sequence seq_sys_code_metas start with 1 increment by 1;
    create sequence seq_sys_code_scripts start with 1 increment by 1;
    create sequence seq_sys_entity_metas start with 1 increment by 1;
    create sequence seq_sys_manager_documents start with 1 increment by 1;
    create sequence seq_sys_manager_notices start with 1 increment by 1;
    create sequence seq_sys_message_contents start with 1 increment by 1;
    create sequence seq_sys_notice_contents start with 1 increment by 1;
    create sequence seq_sys_property_config_items start with 1 increment by 1;
    create sequence seq_sys_property_metas start with 1 increment by 1;
    create sequence seq_sys_report_templates start with 1 increment by 1;
    create sequence seq_sys_rule_config_params start with 1 increment by 1;
    create sequence seq_sys_rule_configs start with 1 increment by 1;
    create sequence seq_sys_rule_parameters start with 1 increment by 1;
    create sequence seq_sys_rules start with 1 increment by 1;
    create sequence seq_sys_student_documents start with 1 increment by 1;
    create sequence seq_sys_student_notices start with 1 increment by 1;
    create sequence seq_sys_system_message_configs start with 1 increment by 1;
    create sequence seq_sys_system_messages start with 1 increment by 1;
    create sequence seq_sys_teacher_documents start with 1 increment by 1;
    create sequence seq_sys_teacher_notices start with 1 increment by 1;
    create sequence seq_sys_wkhtmltopdf_paths start with 1 increment by 1;
    create sequence seq_t_arrange_suggests start with 1 increment by 1;
    create sequence seq_t_available_times start with 1 increment by 1;
    create sequence seq_t_book_require_configs start with 1 increment by 1;
    create sequence seq_t_collision_resources start with 1 increment by 1;
    create sequence seq_t_constraint_loggers start with 1 increment by 1;
    create sequence seq_t_course_activities start with 1 increment by 1;
    create sequence seq_t_course_arrange_alters start with 1 increment by 1;
    create sequence seq_t_course_arrange_switches start with 1 increment by 1;
    create sequence seq_t_course_code_standards start with 1 increment by 1;
    create sequence seq_t_course_ext_infoes start with 1 increment by 1;
    create sequence seq_t_course_grade_states start with 1 increment by 1;
    create sequence seq_t_course_grades start with 1 increment by 1;
    create sequence seq_t_course_hours start with 1 increment by 1;
    create sequence seq_t_course_limit_groups start with 1 increment by 1;
    create sequence seq_t_course_limit_items start with 1 increment by 1;
    create sequence seq_t_course_limit_metas start with 1 increment by 1;
    create sequence seq_t_course_mail_settings start with 1 increment by 1;
    create sequence seq_t_course_materials start with 1 increment by 1;
    create sequence seq_t_course_table_checks start with 1 increment by 1;
    create sequence seq_t_course_takes start with 1 increment by 1;
    create sequence seq_t_courses start with 1 increment by 1;
    create sequence seq_t_credit_award_criterias start with 1 increment by 1;
    create sequence seq_t_curriculum_change_applys start with 1 increment by 1;
    create sequence seq_t_elect_loggers start with 1 increment by 1;
    create sequence seq_t_elect_mail_templates start with 1 increment by 1;
    create sequence seq_t_elect_plans start with 1 increment by 1;
    create sequence seq_t_election_profiles start with 1 increment by 1;
    create sequence seq_t_exam_activities start with 1 increment by 1;
    create sequence seq_t_exam_applies start with 1 increment by 1;
    create sequence seq_t_exam_apply_switches start with 1 increment by 1;
    create sequence seq_t_exam_grade_states start with 1 increment by 1;
    create sequence seq_t_exam_grades start with 1 increment by 1;
    create sequence seq_t_exam_groups start with 1 increment by 1;
    create sequence seq_t_exam_monitors start with 1 increment by 1;
    create sequence seq_t_exam_papers start with 1 increment by 1;
    create sequence seq_t_exam_room_capacities start with 1 increment by 1;
    create sequence seq_t_exam_room_programs start with 1 increment by 1;
    create sequence seq_t_exam_rooms start with 1 increment by 1;
    create sequence seq_t_exam_takes start with 1 increment by 1;
    create sequence seq_t_exam_turn_schemes start with 1 increment by 1;
    create sequence seq_t_exam_turns start with 1 increment by 1;
    create sequence seq_t_exchange_configs start with 1 increment by 1;
    create sequence seq_t_exchange_course_grades start with 1 increment by 1;
    create sequence seq_t_exchange_courses start with 1 increment by 1;
    create sequence seq_t_exchange_grades start with 1 increment by 1;
    create sequence seq_t_exchange_logs start with 1 increment by 1;
    create sequence seq_t_exchange_projects start with 1 increment by 1;
    create sequence seq_t_exchange_schools start with 1 increment by 1;
    create sequence seq_t_exchange_sessions start with 1 increment by 1;
    create sequence seq_t_exchange_students start with 1 increment by 1;
    create sequence seq_t_exclusive_subjects start with 1 increment by 1;
    create sequence seq_t_grade_input_switches start with 1 increment by 1;
    create sequence seq_t_grade_modify_applies start with 1 increment by 1;
    create sequence seq_t_grade_rate_configs start with 1 increment by 1;
    create sequence seq_t_grade_rate_items start with 1 increment by 1;
    create sequence seq_t_grade_view_scopes start with 1 increment by 1;
    create sequence seq_t_last_makeup_takes start with 1 increment by 1;
    create sequence seq_t_last_makeup_tasks start with 1 increment by 1;
    create sequence seq_t_lesson_college_switches start with 1 increment by 1;
    create sequence seq_t_lesson_for_departs start with 1 increment by 1;
    create sequence seq_t_lesson_groups start with 1 increment by 1;
    create sequence seq_t_lesson_materials start with 1 increment by 1;
    create sequence seq_t_lesson_plan_relations start with 1 increment by 1;
    create sequence seq_t_lesson_tags start with 1 increment by 1;
    create sequence seq_t_lessons start with 1 increment by 1;
    create sequence seq_t_ma_plans start with 1 increment by 1;
    create sequence seq_t_major_credit_constraints start with 1 increment by 1;
    create sequence seq_t_major_plan_comments start with 1 increment by 1;
    create sequence seq_t_normal_classes start with 1 increment by 1;
    create sequence seq_t_not_pass_credit_statss start with 1 increment by 1;
    create sequence seq_t_off_campus_tutors start with 1 increment by 1;
    create sequence seq_t_other_exam_configs start with 1 increment by 1;
    create sequence seq_t_other_exam_loggers start with 1 increment by 1;
    create sequence seq_t_other_exam_settings start with 1 increment by 1;
    create sequence seq_t_other_exam_sign_ups start with 1 increment by 1;
    create sequence seq_t_other_fee_configs start with 1 increment by 1;
    create sequence seq_t_other_grade_alter_infoes start with 1 increment by 1;
    create sequence seq_t_other_grades start with 1 increment by 1;
    create sequence seq_t_program_doc_metas start with 1 increment by 1;
    create sequence seq_t_program_doc_sections start with 1 increment by 1;
    create sequence seq_t_program_doc_templates start with 1 increment by 1;
    create sequence seq_t_program_docs start with 1 increment by 1;
    create sequence seq_t_programs start with 1 increment by 1;
    create sequence seq_t_retake_fee_configs start with 1 increment by 1;
    create sequence seq_t_score_sections start with 1 increment by 1;
    create sequence seq_t_std_apply_logs start with 1 increment by 1;
    create sequence seq_t_std_course_abilities start with 1 increment by 1;
    create sequence seq_t_std_credit_constraints start with 1 increment by 1;
    create sequence seq_t_std_gpas start with 1 increment by 1;
    create sequence seq_t_std_semester_gpas start with 1 increment by 1;
    create sequence seq_t_std_year_gpas start with 1 increment by 1;
    create sequence seq_t_student_programs start with 1 increment by 1;
    create sequence seq_t_suggest_activities start with 1 increment by 1;
    create sequence seq_t_teach_qualities start with 1 increment by 1;
    create sequence seq_t_teacherbook_nums start with 1 increment by 1;
    create sequence seq_t_textbook_order_configs start with 1 increment by 1;
    create sequence seq_t_textbook_order_lines start with 1 increment by 1;
    create sequence seq_t_textbook_prices start with 1 increment by 1;
    create sequence seq_t_textbooks start with 1 increment by 1;
    create sequence seq_t_theses start with 1 increment by 1;
    create sequence seq_t_total_credit_statss start with 1 increment by 1;
    create sequence seq_tc_external_contacts start with 1 increment by 1;
    create sequence seq_tc_external_people start with 1 increment by 1;
    create sequence seq_tc_external_teachers start with 1 increment by 1;
    create sequence seq_tc_parttime_contacts start with 1 increment by 1;
    create sequence seq_tc_parttime_people start with 1 increment by 1;
    create sequence seq_tc_parttime_teachers start with 1 increment by 1;
    create sequence seq_tc_teacher_contacts start with 1 increment by 1;
    create sequence seq_xb_book_types start with 1 increment by 1;
    create sequence seq_xb_classroom_types start with 1 increment by 1;
    create sequence seq_xb_course_ability_rates start with 1 increment by 1;
    create sequence seq_xb_course_apply_types start with 1 increment by 1;
    create sequence seq_xb_course_categories start with 1 increment by 1;
    create sequence seq_xb_course_hour_types start with 1 increment by 1;
    create sequence seq_xb_course_types start with 1 increment by 1;
    create sequence seq_xb_exam_styles start with 1 increment by 1;
    create sequence seq_xb_fee_types start with 1 increment by 1;
    create sequence seq_xb_std_label_types start with 1 increment by 1;
    create sequence seq_xb_std_labels start with 1 increment by 1;
    create sequence seq_xb_std_types start with 1 increment by 1;
