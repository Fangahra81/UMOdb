--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6
-- Dumped by pg_dump version 14.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.roleoperation DROP CONSTRAINT userrole_fkey;
ALTER TABLE ONLY public.app_user DROP CONSTRAINT userrole_fkey;
ALTER TABLE ONLY public.user_session DROP CONSTRAINT user_session_fk;
ALTER TABLE ONLY public.t_ware_set_item DROP CONSTRAINT t_ware_set_item_id_ware_fkey;
ALTER TABLE ONLY public.t_ware_set_item DROP CONSTRAINT t_ware_set_item_id_set_fkey;
ALTER TABLE ONLY public.t_ware_set DROP CONSTRAINT t_ware_set_id_segment_fkey;
ALTER TABLE ONLY public.t_payment_map_to_userrole DROP CONSTRAINT t_payment_map_to_userrole_t_payment_map_id_fk;
ALTER TABLE ONLY public.t_payment_map_to_userrole DROP CONSTRAINT t_payment_map_to_role_userrole_id_fk;
ALTER TABLE ONLY public.t_basket_item_defect DROP CONSTRAINT t_basket_item_defect_basket_item_id_fkey;
ALTER TABLE ONLY public.basket_item DROP CONSTRAINT storage;
ALTER TABLE ONLY public.t_shp_trade_region_territory DROP CONSTRAINT shp_to_trade_region;
ALTER TABLE ONLY public.t_shp_trade_region_territory DROP CONSTRAINT shp_to_territory;
ALTER TABLE ONLY public.salesession DROP CONSTRAINT salesession_fkey2;
ALTER TABLE ONLY public.salesession DROP CONSTRAINT salesession_fkey;
ALTER TABLE ONLY public.ware DROP CONSTRAINT licensor_fkey;
ALTER TABLE ONLY public.basket_payments DROP CONSTRAINT fke307dd66df28d982;
ALTER TABLE ONLY public.disabledinteract DROP CONSTRAINT fkd0103cf23023929e;
ALTER TABLE ONLY public.disabledinteract DROP CONSTRAINT fkd0103cf23023929d;
ALTER TABLE ONLY public.basketdisc DROP CONSTRAINT fka21bc49bc0c95409;
ALTER TABLE ONLY public.basketdisc DROP CONSTRAINT fka21bc49b29d124bb;
ALTER TABLE ONLY public.t_ware_warranty DROP CONSTRAINT fk_ware_warranty_to_ware_warranty;
ALTER TABLE ONLY public.t_ware_warranty DROP CONSTRAINT fk_ware_warranty_to_ware;
ALTER TABLE ONLY public.t_user_barcode DROP CONSTRAINT fk_user_barcode_to_user;
ALTER TABLE ONLY public.t_ware_extra_gtin DROP CONSTRAINT fk_t_ware_extra_gtin_to_ware;
ALTER TABLE ONLY public.t_vat_correction_prev DROP CONSTRAINT fk_t_vat_correction_prev_to_basket;
ALTER TABLE ONLY public.t_vat_correction_prev_print DROP CONSTRAINT fk_t_vat_correction_prev_print_to_t_vat_correction_prev;
ALTER TABLE ONLY public.t_vat_correction_prev_item DROP CONSTRAINT fk_t_vat_correction_prev_item_to_ware;
ALTER TABLE ONLY public.t_vat_correction_prev_item DROP CONSTRAINT fk_t_vat_correction_prev_item_to_t_vat_correction_prev;
ALTER TABLE ONLY public.t_vat_correction_cheque DROP CONSTRAINT fk_t_vat_correction_cheque_to_basket;
ALTER TABLE ONLY public.t_vat_correction_cheque_item DROP CONSTRAINT fk_t_vat_correction_cheque_item_to_t_vat_correction_cheque;
ALTER TABLE ONLY public.t_personal_order_items DROP CONSTRAINT fk_t_personal_order_items_to_ware;
ALTER TABLE ONLY public.t_personal_order_items DROP CONSTRAINT fk_t_personal_order_items_to_basket;
ALTER TABLE ONLY public.t_basket_vat_rates DROP CONSTRAINT fk_t_basket_vat_rates_to_basket;
ALTER TABLE ONLY public.t_basket_item_vat_rates DROP CONSTRAINT fk_t_basket_item_vat_rates_to_basket_item;
ALTER TABLE ONLY public.t_spec_ware_card DROP CONSTRAINT fk_spec_ware_card_to_ware;
ALTER TABLE ONLY public.t_pay_card_to_processing_company DROP CONSTRAINT fk_pay_card_to_processing_company_to_processing_company;
ALTER TABLE ONLY public.t_pay_card_to_processing_company DROP CONSTRAINT fk_pay_card_to_processing_company_to_pay_card_type;
ALTER TABLE ONLY public.t_pay_card_terminal_salepoint DROP CONSTRAINT fk_pay_card_terminal_salepoint_to_pay_card_terminal;
ALTER TABLE ONLY public.t_pay_card_terminal_cliche DROP CONSTRAINT fk_pay_card_terminal_cliche_to_processing_company;
ALTER TABLE ONLY public.t_pay_card_terminal_cliche DROP CONSTRAINT fk_pay_card_terminal_cliche_to_pay_card_terminal;
ALTER TABLE ONLY public.t_km_report_fiscal_parameters DROP CONSTRAINT fk_km_report_fiscal_parameters_to_salesession;
ALTER TABLE ONLY public.t_basket_cheque DROP CONSTRAINT fk_electronic_cheque_basket;
ALTER TABLE ONLY public.discappl DROP CONSTRAINT fk_disc_appl_to_basket_club_pro_promotion;
ALTER TABLE ONLY public.t_correction_op DROP CONSTRAINT fk_correction_op_to_salesession;
ALTER TABLE ONLY public.t_correction_cheque_stamp DROP CONSTRAINT fk_correction_cheque_stamp_to_correction_op;
ALTER TABLE ONLY public.t_control_scanning_stamp_item DROP CONSTRAINT fk_control_scanning_stamp_item_to_basket;
ALTER TABLE ONLY public.t_club_pro_promotion_applicability DROP CONSTRAINT fk_club_pro_promotion_applicability_to_club_pro_promotion;
ALTER TABLE ONLY public.t_client_promo_message DROP CONSTRAINT fk_client_promo_message_to_basket;
ALTER TABLE ONLY public.t_cheque_stamp DROP CONSTRAINT fk_cheque_stamp_to_basket;
ALTER TABLE ONLY public.t_cheque_payment_stamp DROP CONSTRAINT fk_cheque_payment_stamp_to_cheque_stamp;
ALTER TABLE ONLY public.t_cheque_item_stamp DROP CONSTRAINT fk_cheque_item_stamp_to_cheque_stamp;
ALTER TABLE ONLY public.t_cheque_attribute_stamp DROP CONSTRAINT fk_cheque_attr_stamp_to_cheque_stamp;
ALTER TABLE ONLY public.t_cheque_attribute_stamp DROP CONSTRAINT fk_cheque_attr_stamp_to_cheque_payment_stamp;
ALTER TABLE ONLY public.t_cheque_attribute_stamp DROP CONSTRAINT fk_cheque_attr_stamp_to_cheque_item_stamp;
ALTER TABLE ONLY public.t_cheque_attribute_stamp DROP CONSTRAINT fk_cheque_attr_stamp_to_cheque_correction_stamp;
ALTER TABLE ONLY public.basketdisc DROP CONSTRAINT fk_basketdisc_to_club_pro_bonus;
ALTER TABLE ONLY public.basketdisc DROP CONSTRAINT fk_basketdisc_to_basket_club_pro_promotion;
ALTER TABLE ONLY public.basket_payments DROP CONSTRAINT fk_basket_payment_to_pay_card_to_processing_company_ext;
ALTER TABLE ONLY public.basket_payments DROP CONSTRAINT fk_basket_payment_to_pay_card_to_processing_company;
ALTER TABLE ONLY public.basket_payments DROP CONSTRAINT fk_basket_payment_to_pay_card_terminal;
ALTER TABLE ONLY public.basket_item DROP CONSTRAINT fk_basket_item_ware_set;
ALTER TABLE ONLY public.basket_item DROP CONSTRAINT fk_basket_item_to_basket_club_pro_promotion;
ALTER TABLE ONLY public.t_basket_coupon DROP CONSTRAINT fk_basket_coupon_to_basket;
ALTER TABLE ONLY public.t_basket_club_pro_promotion DROP CONSTRAINT fk_basket_club_pro_promotion_to_club_pro_promotion;
ALTER TABLE ONLY public.t_basket_club_pro_promotion DROP CONSTRAINT fk_basket_club_pro_promotion_to_basket;
ALTER TABLE ONLY public.t_basket_club_pro_forbid_promotion DROP CONSTRAINT fk_basket_club_pro_forbid_promotion_to_club_pro_promotion;
ALTER TABLE ONLY public.t_basket_club_pro_forbid_promotion DROP CONSTRAINT fk_basket_club_pro_forbid_promotion_to_basket;
ALTER TABLE ONLY public.basket DROP CONSTRAINT fk762ca5e6683ece9;
ALTER TABLE ONLY public.ware_complect DROP CONSTRAINT fk59b34abb7941a0db;
ALTER TABLE ONLY public.ware_complect DROP CONSTRAINT fk59b34abb4d53fa9f;
ALTER TABLE ONLY public.basket_item DROP CONSTRAINT fk3f6fa5ec4bc10d19;
ALTER TABLE ONLY public.basket_item DROP CONSTRAINT fk3f6fa5ec39670f0a;
ALTER TABLE ONLY public.basket_item DROP CONSTRAINT fk3f6fa5ec29d124bb;
ALTER TABLE ONLY public.discountspread DROP CONSTRAINT fk2c6eb1f4ec17c629;
ALTER TABLE ONLY public.discountspread DROP CONSTRAINT fk2c6eb1f4a77dc406;
ALTER TABLE ONLY public.discountspread DROP CONSTRAINT fk2c6eb1f43dc2cff1;
ALTER TABLE ONLY public.cash_op DROP CONSTRAINT fk2114466d683ece9;
ALTER TABLE ONLY public.discount DROP CONSTRAINT fk1422d961157350d1;
ALTER TABLE ONLY public.discappl DROP CONSTRAINT fk140dddc0cfb6be10;
ALTER TABLE ONLY public.discappl DROP CONSTRAINT fk140dddc01617d1ae;
ALTER TABLE ONLY public.discappl DROP CONSTRAINT discspread_fkey;
ALTER TABLE ONLY public.ware DROP CONSTRAINT disc_pattern_fkey;
ALTER TABLE ONLY public.club_card_type DROP CONSTRAINT disc_fk;
ALTER TABLE ONLY public.club_card_prefix DROP CONSTRAINT cct_fk;
ALTER TABLE ONLY public.barcode DROP CONSTRAINT barcode_fkey;
DROP TRIGGER "basket$bu" ON public.basket;
DROP INDEX public.t_km_report_fiscal_parameters_session_id_report_type_index;
DROP INDEX public.t_km_report_fiscal_parameters_report_dtm_report_type_index;
DROP INDEX public.t_external_payments_id_uindex;
DROP INDEX public.i_ware_last_updated;
DROP INDEX public.i_ware_gtin;
DROP INDEX public.i_ware_complect_complect_id;
DROP INDEX public.i_ware_code;
DROP INDEX public.i_trade_region;
DROP INDEX public.i_t_ware_warranty_last_updated;
DROP INDEX public.i_t_ware_warranty_id_ware;
DROP INDEX public.i_t_ware_set_item_id_ware;
DROP INDEX public.i_t_ware_set_item_id_set;
DROP INDEX public.i_t_ware_set_is_actual;
DROP INDEX public.i_t_spec_ware_card_cis_serial_serial_num;
DROP INDEX public.i_t_noncondition_ware_serial_num;
DROP INDEX public.i_t_basket_item_ware_set_id;
DROP INDEX public.i_t_basket_coupon_id_basket;
DROP INDEX public.i_t_basket_club_pro_promotion_id_basket;
DROP INDEX public.i_t_basket_club_pro_promotion;
DROP INDEX public.i_t_basket_club_pro_forbid_promotion_id_basket;
DROP INDEX public.i_t_basket_club_pro_forbid_promotion;
DROP INDEX public.i_t_basket_cheque_id_basket;
DROP INDEX public.i_spec_ware_card_barcode;
DROP INDEX public.i_salesession_num_sale_point;
DROP INDEX public.i_sale_session_opened;
DROP INDEX public.i_portion_dtmtimestamps;
DROP INDEX public.i_discountspread_id_basket_item;
DROP INDEX public.i_discountspread_id_basket_disc;
DROP INDEX public.i_discountspread_id_basket;
DROP INDEX public.i_discappl_id_basket_club_pro_promotion;
DROP INDEX public.i_discappl_disccountspread_id;
DROP INDEX public.i_discappl_basketitem_basket_item_id;
DROP INDEX public.i_discappl_basketdisc_bd_id;
DROP INDEX public.i_correction_op_state;
DROP INDEX public.i_correction_op_ext_id;
DROP INDEX public.i_correction_op_dtm;
DROP INDEX public.i_cheque_stamp_basket;
DROP INDEX public.i_cheque_payment_stamp;
DROP INDEX public.i_cheque_item_stamp;
DROP INDEX public.i_cash_op;
DROP INDEX public.i_basketdisc_id_basket_club_pro_promotion;
DROP INDEX public.i_basketdisc_discount_disc_id;
DROP INDEX public.i_basketdisc_bd_id;
DROP INDEX public.i_basketdisc_basket_id;
DROP INDEX public.i_basket_payments_basket_id;
DROP INDEX public.i_basket_item_ware_ware_id;
DROP INDEX public.i_basket_item_storage_id;
DROP INDEX public.i_basket_item_parent_id;
DROP INDEX public.i_basket_item_id_basket_club_pro_promotion;
DROP INDEX public.i_basket_item_basket_id;
DROP INDEX public.i_barcode_id_ware;
DROP INDEX public.i_barcode;
DROP INDEX public.electronic_cheque_is_sent_idx;
ALTER TABLE ONLY public.ware DROP CONSTRAINT ware_pkey;
ALTER TABLE ONLY public.ware_disc_pattern DROP CONSTRAINT ware_disc_pattern_pkey;
ALTER TABLE ONLY public.ware_complect DROP CONSTRAINT ware_complect_pkey;
ALTER TABLE ONLY public.ware DROP CONSTRAINT ware_code_key;
ALTER TABLE ONLY public.userrole DROP CONSTRAINT userrole_pkey;
ALTER TABLE ONLY public.user_session DROP CONSTRAINT user_session_pk;
ALTER TABLE ONLY public.t_club_pro_promotion_applicability DROP CONSTRAINT uk_id_club_pro_promotion_date;
ALTER TABLE ONLY public.t_territory DROP CONSTRAINT territory_pkey;
ALTER TABLE ONLY public.t_ware_set DROP CONSTRAINT t_ware_set_pkey;
ALTER TABLE ONLY public.t_ware_set_item DROP CONSTRAINT t_ware_set_item_pkey;
ALTER TABLE ONLY public.t_ware_extra_gtin DROP CONSTRAINT t_ware_extra_gtin_pkey;
ALTER TABLE ONLY public.t_telephone_mask DROP CONSTRAINT t_telephone_mask_pkey;
ALTER TABLE ONLY public.t_street DROP CONSTRAINT t_street_pkey;
ALTER TABLE ONLY public.t_sending_auth_code_rules DROP CONSTRAINT t_sending_auth_code_rules_pkey;
ALTER TABLE ONLY public.t_sending_auth_code_attempts DROP CONSTRAINT t_sending_auth_code_attempts_pkey;
ALTER TABLE ONLY public.t_sellers DROP CONSTRAINT t_sellers_pkey;
ALTER TABLE ONLY public.t_present_card_prefix DROP CONSTRAINT t_present_card_prefix_pk;
ALTER TABLE ONLY public.t_payment_map_to_userrole DROP CONSTRAINT t_payment_map_to_role_pk;
ALTER TABLE ONLY public.t_payment_map DROP CONSTRAINT t_payment_map_pk;
ALTER TABLE ONLY public.t_mark_code_status DROP CONSTRAINT t_mark_code_status_pkey;
ALTER TABLE ONLY public.t_file_cache DROP CONSTRAINT t_file_cache_pkey;
ALTER TABLE ONLY public.t_external_payments DROP CONSTRAINT t_external_payments_pk;
ALTER TABLE ONLY public.t_email_domain DROP CONSTRAINT t_email_domain_pkey;
ALTER TABLE ONLY public.t_credit_product DROP CONSTRAINT t_credit_product_pkey;
ALTER TABLE ONLY public.t_club_pro_promotion DROP CONSTRAINT t_club_pro_promotion_pkey;
ALTER TABLE ONLY public.t_basket_item_defect DROP CONSTRAINT t_basket_item_defect_pkey;
ALTER TABLE ONLY public.t_basket_coupon DROP CONSTRAINT t_basket_coupon_pkey;
ALTER TABLE ONLY public.t_basket_club_pro_promotion DROP CONSTRAINT t_basket_club_pro_promotion_pkey;
ALTER TABLE ONLY public.t_basket_club_pro_forbid_promotion DROP CONSTRAINT t_basket_club_pro_forbid_promotion_pkey;
ALTER TABLE ONLY public.t_adaptive_fields DROP CONSTRAINT t_adaptive_fields_pk;
ALTER TABLE ONLY public.t_shp_trade_region_territory DROP CONSTRAINT shp_pkey;
ALTER TABLE ONLY public.salesession DROP CONSTRAINT salesession_pkey;
ALTER TABLE ONLY public.rounding_algorithm DROP CONSTRAINT rounding_algorithm_pkey;
ALTER TABLE ONLY public.round_bonus_rules DROP CONSTRAINT round_bonus_rules_pkey;
ALTER TABLE ONLY public.roleoperation DROP CONSTRAINT roleoperation_pkey;
ALTER TABLE ONLY public.rfid_ware DROP CONSTRAINT rfid_ware_pkey;
ALTER TABLE ONLY public.t_trade_region DROP CONSTRAINT region_pkey;
ALTER TABLE ONLY public.questionnairesequence DROP CONSTRAINT questionnairesequence_pkey;
ALTER TABLE ONLY public.questionnaire_prefix DROP CONSTRAINT questionnaire_prefix_pkey;
ALTER TABLE ONLY public.portion DROP CONSTRAINT portion_pkey;
ALTER TABLE ONLY public.t_ware_warranty DROP CONSTRAINT pk_ware_warranty;
ALTER TABLE ONLY public.t_vat_correction_prev_print DROP CONSTRAINT pk_t_vat_correction_prev_print;
ALTER TABLE ONLY public.t_vat_correction_prev_item DROP CONSTRAINT pk_t_vat_correction_prev_item;
ALTER TABLE ONLY public.t_vat_correction_prev DROP CONSTRAINT pk_t_vat_correction_prev;
ALTER TABLE ONLY public.t_vat_correction_cheque_item DROP CONSTRAINT pk_t_vat_correction_cheque_item;
ALTER TABLE ONLY public.t_vat_correction_cheque DROP CONSTRAINT pk_t_vat_correction_cheque;
ALTER TABLE ONLY public.t_user_barcode DROP CONSTRAINT pk_t_user_barcode;
ALTER TABLE ONLY public.t_spec_ware_card_cis_serial DROP CONSTRAINT pk_t_spec_ware_card_cis_serial;
ALTER TABLE ONLY public.t_spec_ware_card DROP CONSTRAINT pk_t_spec_ware_card;
ALTER TABLE ONLY public.t_shop_parameter DROP CONSTRAINT pk_t_shop_parameter;
ALTER TABLE ONLY public.t_personal_order_items DROP CONSTRAINT pk_t_personal_order_items;
ALTER TABLE ONLY public.t_noncondition_ware DROP CONSTRAINT pk_t_noncondition_ware;
ALTER TABLE ONLY public.t_correction_op DROP CONSTRAINT pk_t_correction_op;
ALTER TABLE ONLY public.t_basket_vat_rates DROP CONSTRAINT pk_t_basket_vat_rates;
ALTER TABLE ONLY public.t_basket_item_vat_rates DROP CONSTRAINT pk_t_basket_item_vat_rates;
ALTER TABLE ONLY public.t_sale_point DROP CONSTRAINT pk_sale_point;
ALTER TABLE ONLY public.t_reject_reason DROP CONSTRAINT pk_reject_reason;
ALTER TABLE ONLY public.t_processing_company DROP CONSTRAINT pk_processing_company;
ALTER TABLE ONLY public.t_pay_card_type DROP CONSTRAINT pk_pay_card_type;
ALTER TABLE ONLY public.t_pay_card_to_processing_company DROP CONSTRAINT pk_pay_card_to_processing_company;
ALTER TABLE ONLY public.t_pay_card_terminal_salepoint DROP CONSTRAINT pk_pay_card_terminal_salepoint;
ALTER TABLE ONLY public.t_pay_card_terminal_cliche DROP CONSTRAINT pk_pay_card_terminal_cliche;
ALTER TABLE ONLY public.t_pay_card_terminal DROP CONSTRAINT pk_pay_card_terminal;
ALTER TABLE ONLY public.t_merch_colorsize DROP CONSTRAINT pk_merch_colorsize;
ALTER TABLE ONLY public.t_km_report_fiscal_parameters DROP CONSTRAINT pk_km_report_fiscal_parameters;
ALTER TABLE ONLY public.t_correction_cheque_stamp DROP CONSTRAINT pk_correction_cheque_stamp;
ALTER TABLE ONLY public.t_control_scanning_stamp_item DROP CONSTRAINT pk_control_scanning_stamp_item;
ALTER TABLE ONLY public.t_com_pro_return_payments DROP CONSTRAINT pk_com_pro_return_payments;
ALTER TABLE ONLY public.t_club_pro_promotion_applicability DROP CONSTRAINT pk_club_pro_promotion_applicability;
ALTER TABLE ONLY public.t_club_pro_bonus DROP CONSTRAINT pk_club_pro_bonus;
ALTER TABLE ONLY public.t_client_promo_message DROP CONSTRAINT pk_client_promo_message;
ALTER TABLE ONLY public.t_cheque_stamp DROP CONSTRAINT pk_cheque_stamp;
ALTER TABLE ONLY public.t_cheque_payment_stamp DROP CONSTRAINT pk_cheque_payment_stamp;
ALTER TABLE ONLY public.t_cheque_item_stamp DROP CONSTRAINT pk_cheque_item_stamp;
ALTER TABLE ONLY public.t_cheque_attribute_stamp DROP CONSTRAINT pk_cheque_attribute_stamp;
ALTER TABLE ONLY public.parametervalue DROP CONSTRAINT parametervalue_pkey;
ALTER TABLE ONLY public.global_log DROP CONSTRAINT log_pkey;
ALTER TABLE ONLY public.licensor DROP CONSTRAINT licensor_pkey;
ALTER TABLE ONLY public.interactgroup DROP CONSTRAINT interactgroup_pkey;
ALTER TABLE ONLY public.storage DROP CONSTRAINT id;
ALTER TABLE ONLY public.fiscal_printer_counter DROP CONSTRAINT fiscal_printer_counter_pkey;
ALTER TABLE ONLY public.exchange_log DROP CONSTRAINT exchange_log_pkey;
ALTER TABLE ONLY public.t_basket_cheque DROP CONSTRAINT electronic_cheque_pkey;
ALTER TABLE ONLY public.discountspread DROP CONSTRAINT discountspread_pkey;
ALTER TABLE ONLY public.discount DROP CONSTRAINT discount_pkey;
ALTER TABLE ONLY public.discappl DROP CONSTRAINT discappl_pkey;
ALTER TABLE ONLY public.disabledinteract DROP CONSTRAINT disabledinteract_pkey;
ALTER TABLE ONLY public.currency_nominal DROP CONSTRAINT cur_nom_pkey;
ALTER TABLE ONLY public.club_card_type DROP CONSTRAINT cct_pk;
ALTER TABLE ONLY public.club_card_prefix DROP CONSTRAINT ccp_pk;
ALTER TABLE ONLY public.cash_op DROP CONSTRAINT cash_op_pkey;
ALTER TABLE ONLY public.basketnumsequence DROP CONSTRAINT basketnumsequence_pkey;
ALTER TABLE ONLY public.basketdisc DROP CONSTRAINT basketdisc_pkey;
ALTER TABLE ONLY public.basket DROP CONSTRAINT basket_pkey;
ALTER TABLE ONLY public.basket_item DROP CONSTRAINT basket_item_pkey;
ALTER TABLE ONLY public.barcode DROP CONSTRAINT barcode_pkey;
ALTER TABLE ONLY public.app_user DROP CONSTRAINT app_user_pkey;
DROP TABLE public.ware_disc_pattern;
DROP TABLE public.ware_complect;
DROP TABLE public.ware;
DROP TABLE public.version;
DROP TABLE public.userrole;
DROP TABLE public.user_session;
DROP TABLE public.t_ware_warranty;
DROP TABLE public.t_ware_set_item;
DROP TABLE public.t_ware_set;
DROP TABLE public.t_ware_extra_gtin;
DROP TABLE public.t_vat_correction_prev_print;
DROP TABLE public.t_vat_correction_prev_item;
DROP TABLE public.t_vat_correction_prev;
DROP TABLE public.t_vat_correction_cheque_item;
DROP TABLE public.t_vat_correction_cheque;
DROP TABLE public.t_user_barcode;
DROP TABLE public.t_trade_region;
DROP TABLE public.t_territory;
DROP TABLE public.t_telephone_mask;
DROP TABLE public.t_street;
DROP TABLE public.t_spec_ware_card_cis_serial;
DROP TABLE public.t_spec_ware_card;
DROP TABLE public.t_shp_trade_region_territory;
DROP TABLE public.t_shop_parameter;
DROP TABLE public.t_sending_auth_code_rules;
DROP SEQUENCE public.t_sending_auth_code_attempts_id_sequence;
DROP TABLE public.t_sending_auth_code_attempts;
DROP TABLE public.t_sellers;
DROP TABLE public.t_sale_point;
DROP TABLE public.t_reject_reason;
DROP TABLE public.t_processing_company;
DROP TABLE public.t_present_card_prefix;
DROP TABLE public.t_personal_order_items;
DROP TABLE public.t_payment_map_to_userrole;
DROP TABLE public.t_payment_map;
DROP TABLE public.t_pay_card_type;
DROP TABLE public.t_pay_card_to_processing_company;
DROP TABLE public.t_pay_card_terminal_salepoint;
DROP TABLE public.t_pay_card_terminal_cliche;
DROP TABLE public.t_pay_card_terminal;
DROP TABLE public.t_noncondition_ware;
DROP TABLE public.t_merch_colorsize;
DROP SEQUENCE public.t_mark_code_status_id_sequence;
DROP TABLE public.t_mark_code_status;
DROP TABLE public.t_km_report_fiscal_parameters;
DROP TABLE public.t_file_cache;
DROP TABLE public.t_external_payments;
DROP TABLE public.t_email_domain;
DROP TABLE public.t_credit_product;
DROP TABLE public.t_correction_op;
DROP TABLE public.t_correction_cheque_stamp;
DROP TABLE public.t_control_scanning_stamp_item;
DROP TABLE public.t_com_pro_return_payments;
DROP TABLE public.t_club_pro_promotion_applicability;
DROP TABLE public.t_club_pro_promotion;
DROP TABLE public.t_club_pro_bonus;
DROP TABLE public.t_client_promo_message;
DROP TABLE public.t_cheque_stamp;
DROP TABLE public.t_cheque_payment_stamp;
DROP TABLE public.t_cheque_item_stamp;
DROP TABLE public.t_cheque_attribute_stamp;
DROP TABLE public.t_basket_vat_rates;
DROP SEQUENCE public.t_basket_prepayments_info_id_sequence;
DROP TABLE public.t_basket_prepayments_info;
DROP TABLE public.t_basket_item_vat_rates;
DROP TABLE public.t_basket_item_defect;
DROP TABLE public.t_basket_coupon;
DROP TABLE public.t_basket_club_pro_promotion;
DROP TABLE public.t_basket_club_pro_forbid_promotion;
DROP TABLE public.t_basket_cheque;
DROP SEQUENCE public.t_adaptive_fields_id_seq;
DROP TABLE public.t_adaptive_fields;
DROP TABLE public.storage;
DROP SEQUENCE public.seq_t_vat_correction_cheque;
DROP SEQUENCE public.seq_t_vat_correction;
DROP SEQUENCE public.seq_t_personal_order_items;
DROP SEQUENCE public.seq_t_basket_vat_rates;
DROP SEQUENCE public.seq_t_basket_item_vat_rates;
DROP SEQUENCE public.seq_file_cache;
DROP SEQUENCE public.seq_control_scanning_stamp_item_id;
DROP SEQUENCE public.seq_club_pro_promotion_applicability;
DROP SEQUENCE public.seq_client_promo_message;
DROP SEQUENCE public.seq_basket_item_defect;
DROP SEQUENCE public.seq_basket_item_cis;
DROP SEQUENCE public.seq_basket_cheque;
DROP TABLE public.salesession;
DROP TABLE public.rounding_algorithm;
DROP TABLE public.round_bonus_rules;
DROP SEQUENCE public.roleoperation_id_sequence;
DROP TABLE public.roleoperation;
DROP TABLE public.rfid_ware;
DROP TABLE public.questionnairesequence;
DROP TABLE public.questionnaire_prefix;
DROP SEQUENCE public.portion_id_sequence;
DROP TABLE public.portion;
DROP SEQUENCE public.payment_id_sequence;
DROP TABLE public.parametervalue;
DROP SEQUENCE public.log_seq;
DROP TABLE public.licensor;
DROP TABLE public.interactgroup;
DROP SEQUENCE public.hibernate_sequence;
DROP TABLE public.global_log;
DROP TABLE public.fiscal_printer_counter;
DROP SEQUENCE public.ext_payment_id_sequence;
DROP SEQUENCE public.exchange_log_id_sequence;
DROP TABLE public.exchange_log;
DROP TABLE public.discountspread;
DROP TABLE public.discount;
DROP TABLE public.discappl;
DROP TABLE public.disabledinteract;
DROP SEQUENCE public.datecs_salesession;
DROP TABLE public.currency_nominal;
DROP TABLE public.club_card_type;
DROP TABLE public.club_card_prefix;
DROP TABLE public.cash_op;
DROP TABLE public.basketnumsequence;
DROP TABLE public.basketdisc;
DROP SEQUENCE public.basket_promotion_id_sequence;
DROP SEQUENCE public.basket_promo_action_id_sequence;
DROP TABLE public.basket_payments;
DROP SEQUENCE public.basket_order_num_sequence;
DROP SEQUENCE public.basket_num_sequence;
DROP TABLE public.basket_item;
DROP SEQUENCE public.basket_id_sequence;
DROP TABLE public.basket;
DROP TABLE public.barcode;
DROP TABLE public.app_user;
DROP FUNCTION public.merge_roleoperation(a_access character varying, a_operation_type character varying, a_role_id integer);
DROP FUNCTION public.merge_roleoperation(a_role_id integer, a_operation_type character varying, a_access character varying);
DROP FUNCTION public.check_state();
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: check_state(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.check_state() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

BEGIN

  IF OLD.basket_state = 'UNLOADED' AND (NEW.basket_state != 'STORNED' AND NEW.basket_state != 'STORNING') AND ((OLD.is_sent_to_clubpro != 'N' AND NEW.is_sent_to_clubpro != 'Y')/* OR (OLD.is_sent_to_clubpro = NEW.is_sent_to_clubpro)*/) THEN

    -- god_save_the_oracle_autonomous_transaction

    --INSERT INTO global_log(id_log, dtm_create, text) VALUES (nextval('log_seq'), now(), 'Ошибка на корзине '||NEW.is_sent_to_clubpro||OLD.is_sent_to_clubpro);

    RAISE EXCEPTION 'Некорректный переход корзины. Ошибка.';

  END IF;

  RETURN NEW;

END;

$$;


ALTER FUNCTION public.check_state() OWNER TO postgres;

--
-- Name: merge_roleoperation(integer, character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.merge_roleoperation(a_role_id integer, a_operation_type character varying, a_access character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    LOOP
        update roleoperation set access = a_access  where operation_type = a_operation_type and role_id = a_role_id;
        IF found THEN
            RETURN;
        END IF;
        BEGIN
            INSERT INTO roleoperation (useroperation_id, operation_type, access, role_id)
                    VALUES((SELECT nextval('roleoperation_id_sequence')), a_operation_type, a_access, a_role_id);
            RETURN;
        EXCEPTION WHEN unique_violation THEN
            -- Do nothing, and loop to try the UPDATE again.
        END;
    END LOOP;
END;
$$;


ALTER FUNCTION public.merge_roleoperation(a_role_id integer, a_operation_type character varying, a_access character varying) OWNER TO postgres;

--
-- Name: merge_roleoperation(character varying, character varying, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.merge_roleoperation(a_access character varying, a_operation_type character varying, a_role_id integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    LOOP
        update roleoperation set access = a_access  where operation_type = a_operation_type and role_id = a_role_id;
        IF found THEN
            RETURN;
        END IF;
        BEGIN
            INSERT INTO roleoperation (useroperation_id, operation_type, access, role_id)
                    VALUES((SELECT nextval('roleoperation_id_sequence')), a_operation_type, a_access, a_role_id);
            RETURN;
        EXCEPTION WHEN unique_violation THEN
            -- Do nothing, and loop to try the UPDATE again.
        END;
    END LOOP;
END;
$$;


ALTER FUNCTION public.merge_roleoperation(a_access character varying, a_operation_type character varying, a_role_id integer) OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: app_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_user (
    login character varying(255) NOT NULL,
    is_actual boolean NOT NULL,
    username character varying(255),
    password character varying(255),
    signature character varying(255),
    role_id bigint NOT NULL,
    card_number character varying(255),
    is_shop_kis boolean DEFAULT false,
    inn character varying(32),
    code_1c character varying(32),
    first_name character varying(255)
);


ALTER TABLE public.app_user OWNER TO postgres;

--
-- Name: barcode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.barcode (
    id_ware_barcode bigint NOT NULL,
    id_ware bigint,
    last_updated date,
    barcode character varying(255)
);


ALTER TABLE public.barcode OWNER TO postgres;

--
-- Name: basket; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basket (
    basket_id bigint NOT NULL,
    cashier character varying(255) NOT NULL,
    created timestamp without time zone NOT NULL,
    dtmcancel timestamp without time zone,
    dtmpay timestamp without time zone,
    dtmstorn timestamp without time zone,
    num character varying(255) NOT NULL,
    basket_state character varying(255) NOT NULL,
    basket_type character varying(255) NOT NULL,
    usercancel character varying(255),
    userprove character varying(255),
    userstorn character varying(255),
    salesession_salesession_id bigint,
    external_num character varying(255),
    client_id bigint,
    bonus_discount_state character varying(255) DEFAULT 'ASSIGN'::character varying,
    identification_key character varying(255),
    identification_method character varying(255),
    external_shop_number bigint,
    is_sent_to_clubpro boolean DEFAULT false NOT NULL,
    reserve_num character varying(255),
    is_calculated_in_club_pro boolean DEFAULT false,
    client_name character varying(255),
    cheque_print_status character varying(255),
    cheque_print_comment character varying(1000),
    dtm_order timestamp without time zone,
    sknoid character varying(255),
    buyer_email character varying(255),
    buyer_phone character varying(255),
    vat_source character varying(10),
    storno_order integer,
    electronic_cheque_send_type character varying(100),
    id_macrocity bigint,
    order_pay_type bigint,
    order_type integer,
    source_type character varying(255),
    order_num character varying(255),
    dtmsale timestamp without time zone,
    is_sent_to_comm_pro boolean DEFAULT false,
    return_overpayment_type character varying(255),
    com_pro_order_code character varying(255),
    com_pro_order_num character varying(255),
    personal_order_cancel_reason character varying(255),
    compro_delivery_method character varying(10),
    vat_kkm_correct boolean DEFAULT false NOT NULL,
    prepayment_autocreate boolean DEFAULT false,
    forced_clubpro_calculation boolean DEFAULT false,
    is_lost_order boolean,
    source_id bigint,
    is_sms_authorization_done boolean DEFAULT false,
    overpay_sum numeric(19,2),
    returned_without_cheque boolean DEFAULT false NOT NULL,
    returned_with_spec_cn boolean,
    buyer_nip character varying(255),
    buyer_name character varying(255),
    buyer_address character varying(255),
    print_invoice boolean DEFAULT false NOT NULL,
    is_retail_order boolean DEFAULT false,
    compro_is_ret_advance boolean DEFAULT false,
    order_prepayment_card_num_src character varying(255),
    original_sale_cheque_num bigint,
    original_sale_crn character varying(50),
    personal_order_status character varying(255),
    newgen_cheque_print_resp text,
    newgen_cheque_info_resp text,
    credit_product_id bigint,
    need_invoice_cheque boolean DEFAULT false,
    is_ret_sale_pc boolean DEFAULT false,
    client_kind character varying(255),
    is_ret_advance_trpos boolean DEFAULT false,
    external_control_num character varying(255),
    prepaid_date date,
    call_global_id_pkkt character varying(255) DEFAULT NULL::character varying,
    pkkt_cheque_num bigint,
    pkkt_session_num character varying(255) DEFAULT NULL::character varying,
    payment_processing_type character varying(255) DEFAULT NULL::character varying,
    has_final_calculation boolean DEFAULT false,
    initial_lite_num character varying(255),
    reserve_is_local boolean,
    ware_processing character varying(255) DEFAULT 'SKU'::character varying,
    email_confirmed boolean DEFAULT false,
    printed_cheque_type character varying(50),
    is_cheque_copy_printed boolean DEFAULT false NOT NULL,
    agreed_terms_date timestamp without time zone,
    lk_ret_order_num character varying,
    has_mobile_app boolean DEFAULT false,
    credit_application_num character varying,
    is_prepayment_online boolean DEFAULT false,
    order_accepted_amount numeric(19,2),
    is_cashless_postpay boolean DEFAULT false,
    date_cheque_sale timestamp without time zone,
    fiscal_doc_sign character varying(255),
    subscribe_email_check integer DEFAULT 0,
    email_for_check character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.basket OWNER TO postgres;

--
-- Name: basket_id_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.basket_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basket_id_sequence OWNER TO postgres;

--
-- Name: basket_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basket_item (
    basket_item_id bigint NOT NULL,
    catalogprice numeric(19,2),
    created timestamp without time zone NOT NULL,
    finalprice numeric(19,2) NOT NULL,
    initialprice numeric(19,2),
    quantity integer NOT NULL,
    seller character varying(255),
    basket_item_state character varying(255) NOT NULL,
    basket_item_type character varying(255) NOT NULL,
    basket_id bigint NOT NULL,
    ware_id bigint,
    present_card_id character varying(255),
    parent_id bigint,
    external_id bigint,
    storage_id bigint,
    id_knt bigint,
    knt_price numeric(19,2),
    present_card_manual_input_done boolean DEFAULT false NOT NULL,
    id_basket_club_pro_promotion bigint,
    is_external boolean DEFAULT false NOT NULL,
    ware_set_id bigint,
    initial_quantity integer DEFAULT 0,
    spec_ware_card_id bigint,
    rfid_id character varying(100),
    weight numeric(19,3),
    storned_item_id bigint,
    storno_order integer,
    npp integer,
    ngroup integer,
    is_created_by_order boolean DEFAULT false,
    order_prepayment_card_num character varying(255),
    order_order_num character varying(255),
    order_sum_price numeric(19,2),
    order_prepayment_sum numeric(19,2),
    order_min_prepayment_sum numeric(19,2),
    order_max_prepayment_sum numeric(19,2),
    order_order_code character varying(255),
    personal_order_cancel_reason character varying(255),
    usercancel character varying(255),
    userprove character varying(255),
    cis_num character varying(50),
    cis_barcode character varying(255),
    is_consideration boolean DEFAULT false,
    previous_parent bigint,
    order_catalog_price numeric(19,2) DEFAULT NULL::numeric,
    order_initial_price numeric(19,2) DEFAULT NULL::numeric,
    quantity_to_return integer DEFAULT 0,
    reserve_basket_num character varying(50),
    prepayment_card_num character varying(255),
    present_card_processing_type character varying(50) DEFAULT NULL::character varying,
    order_prepayment_card_num_src character varying(255),
    present_card_activated boolean DEFAULT false,
    receipt_num_src character varying(255),
    cancel_kis_discount boolean DEFAULT false,
    mark_code_status integer,
    special_mark_desc text,
    id_specialty_img character varying(255),
    retail_kind character varying(255) DEFAULT 'DEFAULT'::character varying,
    order_retail_kind character varying(255) DEFAULT 'DEFAULT'::character varying,
    special_mark character varying(255),
    sellers_name character varying,
    sellers_phone character varying,
    sellers_inn character varying,
    nsppercent numeric(19,2),
    id_ret_reason character varying,
    mp_deal_type character varying,
    is_replaced boolean DEFAULT false,
    no_vat boolean DEFAULT false,
    icpu character varying(30) DEFAULT NULL::character varying,
    errand_price numeric(19,2) DEFAULT NULL::numeric,
    crpt_sale_allow boolean,
    crpt_verify_uuid character varying(36),
    crpt_verify_time bigint
);


ALTER TABLE public.basket_item OWNER TO postgres;

--
-- Name: COLUMN basket_item.crpt_sale_allow; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.basket_item.crpt_sale_allow IS 'Признак проверки км в ЦРПТ';


--
-- Name: COLUMN basket_item.crpt_verify_uuid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.basket_item.crpt_verify_uuid IS 'Id проверки в ЦРПТ';


--
-- Name: COLUMN basket_item.crpt_verify_time; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.basket_item.crpt_verify_time IS 'Время проверки в ЦРПТ';


--
-- Name: basket_num_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.basket_num_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basket_num_sequence OWNER TO postgres;

--
-- Name: basket_order_num_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.basket_order_num_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basket_order_num_sequence OWNER TO postgres;

--
-- Name: basket_payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basket_payments (
    basket_id bigint,
    inputsumma numeric(19,2) NOT NULL,
    summa numeric(19,2) NOT NULL,
    payment_type character varying(255) NOT NULL,
    card_id character varying(32),
    status character varying(255),
    urn character varying(255),
    return_urn character varying(255),
    id_payment bigint NOT NULL,
    present_card_type character varying(255),
    present_card_manual_input_done boolean DEFAULT false NOT NULL,
    comment character varying(1000),
    slip_text character varying,
    terminal_operation character varying(100),
    storned_payment_id bigint,
    storno_order integer,
    id_pay_card_type_to_processing_company bigint,
    id_pay_card_terminal bigint,
    customer_code character varying(255),
    sale_summ numeric(19,2),
    id_ext_payment character varying(255),
    dtm_pay timestamp without time zone,
    payment_action character varying(255),
    is_first_return boolean,
    eftpos_id character varying(255),
    description character varying(255),
    dept_num character varying(255),
    payment_guid character varying(255),
    paycard_client_name character varying(45),
    surplus numeric(19,2),
    ern character varying(255),
    rrn character varying(255),
    return_ern character varying(255),
    return_rrn character varying(255),
    type_account character varying(255),
    credit_contract_num character varying(255),
    credit_contract_dt timestamp without time zone,
    reserve_basket_num character varying(50),
    fund_code bigint,
    credit_product_id bigint,
    id_pay_card_type_to_processing_company_ext bigint,
    credit_application_num character varying,
    is_cashless_postpay boolean DEFAULT false,
    sbp_payment_link_id text
);


ALTER TABLE public.basket_payments OWNER TO postgres;

--
-- Name: basket_promo_action_id_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.basket_promo_action_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basket_promo_action_id_sequence OWNER TO postgres;

--
-- Name: basket_promotion_id_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.basket_promotion_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basket_promotion_id_sequence OWNER TO postgres;

--
-- Name: basketdisc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basketdisc (
    bd_id bigint NOT NULL,
    cardnumber character varying(255),
    dtmcreate timestamp without time zone NOT NULL,
    memo character varying(255),
    percent numeric(19,2),
    summa numeric(19,2),
    userdirect character varying(255),
    userowner character varying(255) NOT NULL,
    basket_id bigint NOT NULL,
    discount_disc_id bigint NOT NULL,
    is_external boolean NOT NULL,
    present_card_manual_input_done boolean DEFAULT false NOT NULL,
    id_basket_club_pro_promotion bigint,
    id_club_pro_bonus bigint,
    is_com_pro_assigned boolean,
    external_index character varying(255),
    price numeric(19,2),
    present_card_pay_status character varying(20) DEFAULT NULL::character varying,
    proc_type numeric(2,0),
    seller_discount_part numeric(19,2) DEFAULT NULL::numeric,
    sm_discount_part numeric(19,2) DEFAULT NULL::numeric
);


ALTER TABLE public.basketdisc OWNER TO postgres;

--
-- Name: basketnumsequence; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basketnumsequence (
    id character varying(255) NOT NULL
);


ALTER TABLE public.basketnumsequence OWNER TO postgres;

--
-- Name: cash_op; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cash_op (
    cashop_type character varying(31) NOT NULL,
    cashop_id bigint NOT NULL,
    dtm timestamp without time zone NOT NULL,
    summa numeric(19,2) NOT NULL,
    username character varying(255) NOT NULL,
    salesession_salesession_id bigint,
    envelop_num character varying(255),
    is_cash_recalculation boolean DEFAULT false NOT NULL
);


ALTER TABLE public.cash_op OWNER TO postgres;

--
-- Name: club_card_prefix; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.club_card_prefix (
    id_shpref_prefix_cc bigint NOT NULL,
    prefix character varying(32),
    id_card_type bigint,
    num_length bigint,
    get_num_way character varying(64),
    is_actual boolean,
    encode_type integer
);


ALTER TABLE public.club_card_prefix OWNER TO postgres;

--
-- Name: club_card_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.club_card_type (
    id_shpref_cc_type bigint NOT NULL,
    code character varying(64),
    name character varying(255),
    is_actual boolean,
    discount_type character varying(255),
    id_discount bigint,
    discount character varying(255)
);


ALTER TABLE public.club_card_type OWNER TO postgres;

--
-- Name: currency_nominal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.currency_nominal (
    national_nominals_id bigint NOT NULL,
    kind character varying(1),
    value numeric(10,4),
    is_actual boolean
);


ALTER TABLE public.currency_nominal OWNER TO postgres;

--
-- Name: datecs_salesession; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.datecs_salesession
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.datecs_salesession OWNER TO postgres;

--
-- Name: disabledinteract; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.disabledinteract (
    di_id bigint NOT NULL,
    is_actual boolean NOT NULL,
    reason character varying(255),
    ig_id1 bigint NOT NULL,
    ig_id2 bigint NOT NULL
);


ALTER TABLE public.disabledinteract OWNER TO postgres;

--
-- Name: discappl; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discappl (
    id bigint NOT NULL,
    summa numeric(19,2) NOT NULL,
    basketdisc_bd_id bigint,
    basketitem_basket_item_id bigint NOT NULL,
    discountspread_id bigint,
    id_basket_club_pro_promotion bigint
);


ALTER TABLE public.discappl OWNER TO postgres;

--
-- Name: discount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discount (
    disc_id bigint NOT NULL,
    is_actual boolean NOT NULL,
    dtbegin date,
    dtend date,
    eauthorization character varying(255),
    erate character varying(255),
    is_auto_set boolean NOT NULL,
    maxpercent numeric(19,2),
    disc_name character varying(255) NOT NULL,
    oldnum bigint NOT NULL,
    ratevalue numeric(19,2),
    disc_type character varying(255) NOT NULL,
    interactgroup bigint,
    code_club_pro bigint,
    bonus_type bigint,
    is_used_in_shop boolean
);


ALTER TABLE public.discount OWNER TO postgres;

--
-- Name: discountspread; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discountspread (
    id bigint NOT NULL,
    id_basket bigint NOT NULL,
    id_basket_disc bigint NOT NULL,
    id_basket_item bigint
);


ALTER TABLE public.discountspread OWNER TO postgres;

--
-- Name: exchange_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exchange_log (
    exchange_log_id bigint NOT NULL,
    creationkind character varying(255),
    detail text,
    dictionarytype character varying(255),
    direction character varying(255),
    filepath character varying(1000),
    result character varying(255),
    timestampstart timestamp without time zone,
    timestampstop timestamp without time zone
);


ALTER TABLE public.exchange_log OWNER TO postgres;

--
-- Name: exchange_log_id_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.exchange_log_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.exchange_log_id_sequence OWNER TO postgres;

--
-- Name: ext_payment_id_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ext_payment_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ext_payment_id_sequence OWNER TO postgres;

--
-- Name: fiscal_printer_counter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fiscal_printer_counter (
    id_fiscal_printer_counter bigint NOT NULL,
    counter_name character varying(255),
    counter_value numeric(19,2)
);


ALTER TABLE public.fiscal_printer_counter OWNER TO postgres;

--
-- Name: global_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.global_log (
    id_log bigint NOT NULL,
    text character varying(255),
    dtm_create date
);


ALTER TABLE public.global_log OWNER TO postgres;

--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- Name: interactgroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.interactgroup (
    ig_id bigint NOT NULL,
    is_actual boolean NOT NULL,
    ig_code character varying(255) NOT NULL,
    ig_name character varying(255) NOT NULL
);


ALTER TABLE public.interactgroup OWNER TO postgres;

--
-- Name: licensor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.licensor (
    licensor_id bigint NOT NULL,
    is_actual boolean,
    dtm_beg date,
    dtm_end date,
    licensor_name character varying(255)
);


ALTER TABLE public.licensor OWNER TO postgres;

--
-- Name: log_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.log_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.log_seq OWNER TO postgres;

--
-- Name: parametervalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parametervalue (
    name character varying(255) NOT NULL,
    description character varying(255),
    value text
);


ALTER TABLE public.parametervalue OWNER TO postgres;

--
-- Name: payment_id_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_id_sequence OWNER TO postgres;

--
-- Name: portion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.portion (
    portion_id bigint NOT NULL,
    created timestamp without time zone NOT NULL,
    dtmbegin timestamp without time zone NOT NULL,
    dtmend timestamp without time zone NOT NULL,
    memo text,
    portion_state character varying(255) NOT NULL,
    portion_type character varying(255),
    salesession_id bigint,
    basket_id bigint
);


ALTER TABLE public.portion OWNER TO postgres;

--
-- Name: portion_id_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.portion_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.portion_id_sequence OWNER TO postgres;

--
-- Name: questionnaire_prefix; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questionnaire_prefix (
    id_shpref_sc_scope bigint NOT NULL,
    is_actual boolean,
    prefix character varying(20) NOT NULL
);


ALTER TABLE public.questionnaire_prefix OWNER TO postgres;

--
-- Name: questionnairesequence; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questionnairesequence (
    id character varying(255) NOT NULL
);


ALTER TABLE public.questionnairesequence OWNER TO postgres;

--
-- Name: rfid_ware; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rfid_ware (
    rfid_id character varying(100) NOT NULL,
    ware_id bigint NOT NULL
);


ALTER TABLE public.rfid_ware OWNER TO postgres;

--
-- Name: roleoperation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roleoperation (
    useroperation_id bigint NOT NULL,
    operation_type character varying(255) NOT NULL,
    access character varying(255) NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.roleoperation OWNER TO postgres;

--
-- Name: roleoperation_id_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roleoperation_id_sequence
    START WITH 15
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roleoperation_id_sequence OWNER TO postgres;

--
-- Name: round_bonus_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.round_bonus_rules (
    type_id integer NOT NULL,
    is_actual boolean,
    e_round_side character varying(100),
    name character varying(255),
    rate integer
);


ALTER TABLE public.round_bonus_rules OWNER TO postgres;

--
-- Name: rounding_algorithm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rounding_algorithm (
    round_algorythm_items_id bigint NOT NULL,
    is_actual boolean NOT NULL,
    max_price numeric(19,2),
    min_price numeric(19,2),
    priority bigint,
    kind character varying(255),
    step numeric(19,2),
    value numeric(19,2),
    algorithm_type character varying(255) DEFAULT 'basket'::character varying
);


ALTER TABLE public.rounding_algorithm OWNER TO postgres;

--
-- Name: salesession; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salesession (
    salesession_id bigint NOT NULL,
    closed timestamp without time zone,
    num bigint NOT NULL,
    opened timestamp without time zone NOT NULL,
    session_state character varying(255) NOT NULL,
    app_user character varying(255),
    closing_user character varying(255),
    sale_point integer,
    fiscal_drive_num character varying(255),
    reg_num character varying(255),
    ingenico_initialized boolean,
    version_kkm_firmware character varying(32),
    version_kkm_upd character varying(32),
    kkm_ip character varying(32),
    kkm_address character varying(255),
    kkm_place character varying(255)
);


ALTER TABLE public.salesession OWNER TO postgres;

--
-- Name: seq_basket_cheque; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seq_basket_cheque
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_basket_cheque OWNER TO postgres;

--
-- Name: seq_basket_item_cis; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seq_basket_item_cis
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_basket_item_cis OWNER TO postgres;

--
-- Name: seq_basket_item_defect; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seq_basket_item_defect
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_basket_item_defect OWNER TO postgres;

--
-- Name: seq_client_promo_message; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seq_client_promo_message
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_client_promo_message OWNER TO postgres;

--
-- Name: seq_club_pro_promotion_applicability; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seq_club_pro_promotion_applicability
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_club_pro_promotion_applicability OWNER TO postgres;

--
-- Name: seq_control_scanning_stamp_item_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seq_control_scanning_stamp_item_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_control_scanning_stamp_item_id OWNER TO postgres;

--
-- Name: seq_file_cache; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seq_file_cache
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_file_cache OWNER TO postgres;

--
-- Name: seq_t_basket_item_vat_rates; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seq_t_basket_item_vat_rates
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_t_basket_item_vat_rates OWNER TO postgres;

--
-- Name: seq_t_basket_vat_rates; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seq_t_basket_vat_rates
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_t_basket_vat_rates OWNER TO postgres;

--
-- Name: seq_t_personal_order_items; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seq_t_personal_order_items
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_t_personal_order_items OWNER TO postgres;

--
-- Name: seq_t_vat_correction; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seq_t_vat_correction
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_t_vat_correction OWNER TO postgres;

--
-- Name: seq_t_vat_correction_cheque; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seq_t_vat_correction_cheque
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_t_vat_correction_cheque OWNER TO postgres;

--
-- Name: storage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.storage (
    id bigint NOT NULL,
    code character varying(50),
    name character varying(255),
    sort_num integer,
    is_actual boolean,
    bs_main character varying(255)
);


ALTER TABLE public.storage OWNER TO postgres;

--
-- Name: t_adaptive_fields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_adaptive_fields (
    id bigint NOT NULL,
    field_name character varying(100) NOT NULL,
    field_type character varying(15) NOT NULL,
    values_codes character varying(255),
    values_captions character varying(255),
    caption character varying(50) NOT NULL,
    for_sort integer NOT NULL,
    for_new_client boolean,
    for_change_client boolean,
    is_multi_element boolean,
    is_main_ident boolean,
    is_required boolean,
    is_actual boolean,
    visibility boolean DEFAULT true
);


ALTER TABLE public.t_adaptive_fields OWNER TO postgres;

--
-- Name: t_adaptive_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t_adaptive_fields_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t_adaptive_fields_id_seq OWNER TO postgres;

--
-- Name: t_basket_cheque; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_basket_cheque (
    id bigint NOT NULL,
    id_basket bigint NOT NULL,
    type character varying(100),
    fiscal_doc_num bigint,
    fiscal_doc_date timestamp without time zone,
    fiscal_doc_sum numeric(19,2),
    fiscal_doc_sign bigint,
    fiscal_doc_operation_type bigint,
    kkt_reg_code character varying(100),
    fiscal_storage_number character varying(100),
    inn_ofd character varying(100),
    cheque_site character varying(100),
    send_type character varying(100),
    is_sent boolean,
    storno_order integer,
    global_number bigint,
    per_session_number bigint,
    buyer_email character varying(255),
    buyer_phone character varying(255),
    control_num character varying(255),
    buyer_nip character varying(255),
    buyer_name character varying(255),
    buyer_address character varying(255),
    invoice_number character varying(255),
    email_confirmed boolean DEFAULT false,
    kkt_factory_number character varying(255),
    subscribe_email_check integer DEFAULT 0,
    email_for_check character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.t_basket_cheque OWNER TO postgres;

--
-- Name: t_basket_club_pro_forbid_promotion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_basket_club_pro_forbid_promotion (
    id_basket_club_pro_forbid_promotion bigint NOT NULL,
    dtm_created timestamp without time zone NOT NULL,
    id_basket bigint NOT NULL,
    id_club_pro_promotion bigint NOT NULL
);


ALTER TABLE public.t_basket_club_pro_forbid_promotion OWNER TO postgres;

--
-- Name: t_basket_club_pro_promotion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_basket_club_pro_promotion (
    id_basket_club_pro_promotion bigint NOT NULL,
    dtm_created timestamp without time zone NOT NULL,
    id_basket bigint NOT NULL,
    id_club_pro_promotion bigint NOT NULL,
    is_assigned boolean NOT NULL
);


ALTER TABLE public.t_basket_club_pro_promotion OWNER TO postgres;

--
-- Name: t_basket_coupon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_basket_coupon (
    id_basket_coupon bigint NOT NULL,
    coupon_number character varying(255) NOT NULL,
    operation character varying(255) NOT NULL,
    id_basket bigint NOT NULL,
    basket_coupon_state character varying(255)
);


ALTER TABLE public.t_basket_coupon OWNER TO postgres;

--
-- Name: t_basket_item_defect; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_basket_item_defect (
    id_basket_item_defect bigint NOT NULL,
    basket_item_id bigint NOT NULL,
    defect_description character varying(4000)
);


ALTER TABLE public.t_basket_item_defect OWNER TO postgres;

--
-- Name: t_basket_item_vat_rates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_basket_item_vat_rates (
    id bigint NOT NULL,
    basket_item_id bigint NOT NULL,
    type character varying(100),
    sum numeric(19,2),
    rate numeric(3,0)
);


ALTER TABLE public.t_basket_item_vat_rates OWNER TO postgres;

--
-- Name: t_basket_prepayments_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_basket_prepayments_info (
    id bigint,
    id_payment bigint,
    prepayment_fundcode character varying(255),
    prepayment_num character varying(255),
    prepayment_type character varying(255),
    prepayment_subtype bigint,
    prepayment_summa numeric(19,2),
    prepayment_isused boolean,
    prepayment_status character varying(255),
    prepayment_cardnum_pc character varying(255),
    prepayment_overpay_pc numeric(19,2),
    prepayment_credit_product_id bigint
);


ALTER TABLE public.t_basket_prepayments_info OWNER TO postgres;

--
-- Name: t_basket_prepayments_info_id_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t_basket_prepayments_info_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t_basket_prepayments_info_id_sequence OWNER TO postgres;

--
-- Name: t_basket_vat_rates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_basket_vat_rates (
    id bigint NOT NULL,
    basket_id bigint NOT NULL,
    type character varying(100),
    sum numeric(19,2),
    rate numeric(3,0)
);


ALTER TABLE public.t_basket_vat_rates OWNER TO postgres;

--
-- Name: t_cheque_attribute_stamp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_cheque_attribute_stamp (
    id bigint NOT NULL,
    cheque_stamp_id bigint,
    cheque_item_stamp_id bigint,
    cheque_paymnet_stamp_id bigint,
    key text,
    value text,
    cheque_correction_stamp_id bigint
);


ALTER TABLE public.t_cheque_attribute_stamp OWNER TO postgres;

--
-- Name: t_cheque_item_stamp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_cheque_item_stamp (
    id bigint NOT NULL,
    id_cheque_stamp bigint,
    ware_name character varying(255),
    ware_code character varying(255),
    final_price numeric(19,2),
    amount numeric(19,3),
    ware_unit character varying(255),
    vat_index character varying(255),
    dept_num character varying(255),
    ware_kind character varying(255),
    payment_type character varying(255)
);


ALTER TABLE public.t_cheque_item_stamp OWNER TO postgres;

--
-- Name: t_cheque_payment_stamp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_cheque_payment_stamp (
    id bigint NOT NULL,
    id_cheque_stamp bigint,
    payment_type character varying(255),
    input_summa numeric(19,2),
    pay_card_name character varying(255),
    additional_pay_summa numeric(19,2),
    change_summa numeric(19,2),
    vat1_index character varying(255),
    vat1_sum numeric(19,2),
    vat2_index character varying(255),
    vat2_sum numeric(19,2),
    vat3_index character varying(255),
    vat3_sum numeric(19,2),
    vat4index character varying(255),
    vat4_sum numeric(19,2),
    vat5_index character varying(255),
    vat5_sum numeric(19,2),
    vat6_index character varying(255),
    vat6_sum numeric(19,2)
);


ALTER TABLE public.t_cheque_payment_stamp OWNER TO postgres;

--
-- Name: t_cheque_stamp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_cheque_stamp (
    id bigint NOT NULL,
    id_basket bigint,
    ffd_version character varying(255),
    date timestamp without time zone,
    cheque_type character varying(255),
    cheque_format character varying(255),
    cashier character varying(255),
    cashier_inn character varying(255),
    sale_session_cheque_num character varying(255),
    fiscal_doc_num character varying(255),
    kkm_type text,
    fiscal_doc_sign character varying(255),
    fiscal_drive_num character varying(255)
);


ALTER TABLE public.t_cheque_stamp OWNER TO postgres;

--
-- Name: t_client_promo_message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_client_promo_message (
    id_message bigint NOT NULL,
    message_code bigint NOT NULL,
    id_basket bigint NOT NULL,
    message_type character varying(255) NOT NULL,
    text character varying(4000) NOT NULL,
    is_shown boolean NOT NULL,
    source character varying(255),
    content_type character varying(255) DEFAULT 'TEXT'::character varying NOT NULL,
    source_type character varying(32) DEFAULT 'CLUB_PRO'::character varying
);


ALTER TABLE public.t_client_promo_message OWNER TO postgres;

--
-- Name: t_club_pro_bonus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_club_pro_bonus (
    id_club_pro_bonus bigint NOT NULL,
    name character varying(255)
);


ALTER TABLE public.t_club_pro_bonus OWNER TO postgres;

--
-- Name: t_club_pro_promotion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_club_pro_promotion (
    id_club_pro_promotion bigint NOT NULL,
    name character varying(255) NOT NULL,
    date_beg timestamp without time zone,
    date_end timestamp without time zone
);


ALTER TABLE public.t_club_pro_promotion OWNER TO postgres;

--
-- Name: t_club_pro_promotion_applicability; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_club_pro_promotion_applicability (
    id_club_pro_promotion_applicability bigint NOT NULL,
    id_club_pro_promotion bigint NOT NULL,
    dt date NOT NULL
);


ALTER TABLE public.t_club_pro_promotion_applicability OWNER TO postgres;

--
-- Name: t_com_pro_return_payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_com_pro_return_payments (
    id bigint NOT NULL,
    id_payment bigint,
    payment_num character varying(255),
    ref_payment_num character varying(255),
    return_method integer,
    amount numeric(19,2)
);


ALTER TABLE public.t_com_pro_return_payments OWNER TO postgres;

--
-- Name: t_control_scanning_stamp_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_control_scanning_stamp_item (
    id bigint NOT NULL,
    id_basket_item bigint,
    id_basket bigint,
    id_ware bigint,
    quantity integer,
    id_spec_ware_card bigint,
    is_created_by_order boolean DEFAULT false,
    kiz_barcode character varying(255),
    present_card_id character varying(255),
    id_knt bigint,
    ware_set_id bigint
);


ALTER TABLE public.t_control_scanning_stamp_item OWNER TO postgres;

--
-- Name: t_correction_cheque_stamp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_correction_cheque_stamp (
    id bigint NOT NULL,
    id_correction_op bigint,
    date timestamp without time zone,
    ffd_version character varying(255),
    correction_type character varying(255),
    cashier character varying(255),
    cashier_inn character varying(255),
    correction_summa numeric(19,2),
    cash_summa numeric(19,2),
    cashless_summa numeric(19,2),
    advance_summa numeric(19,2),
    credit_summa numeric(19,2),
    barter_summa numeric(19,2),
    correction_purpose character varying(255),
    correction_num character varying(255),
    corrected_doc character varying(255),
    vat_index character varying(255),
    fiscal_doc_num character varying(255),
    correction_dtm timestamp without time zone,
    kkm_type text
);


ALTER TABLE public.t_correction_cheque_stamp OWNER TO postgres;

--
-- Name: t_correction_op; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_correction_op (
    id_correction_op bigint NOT NULL,
    correction_type character varying(64) NOT NULL,
    state character varying(64) NOT NULL,
    op_dtm timestamp without time zone,
    cash_summa numeric(19,2),
    cashless_summa numeric(19,2),
    nds_summa numeric(19,2),
    username character varying(255) NOT NULL,
    salesession_salesession_id bigint NOT NULL,
    external_id bigint,
    external_num character varying(255),
    correction_dtm timestamp without time zone,
    correction_purpose character varying(1024),
    corrected_doc character varying(255),
    cheque_owner character varying(255),
    cheque_hash character varying(1024),
    prepay_summa numeric(19,2),
    nds_code character varying(45),
    document_purpose_date timestamp without time zone,
    document_purpose character varying(255)
);


ALTER TABLE public.t_correction_op OWNER TO postgres;

--
-- Name: t_credit_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_credit_product (
    id_credit_product bigint NOT NULL,
    cred_serv_provider character varying,
    credit_product_type character varying,
    name character varying,
    cred_order_edit character varying,
    cred_payment character varying,
    cred_check_type character varying,
    proces_kred bigint,
    proces_vozvrat_p bigint,
    proces_vozvrat_a bigint,
    razr_obmen bigint,
    razr_smesh_oplata bigint,
    process_company_sale character varying,
    process_company_return character varying,
    is_actual boolean
);


ALTER TABLE public.t_credit_product OWNER TO postgres;

--
-- Name: t_email_domain; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_email_domain (
    id_domain bigint NOT NULL,
    domain_name character varying,
    is_actual boolean
);


ALTER TABLE public.t_email_domain OWNER TO postgres;

--
-- Name: t_external_payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_external_payments (
    payment_id bigint NOT NULL,
    payment_type character varying(255) NOT NULL,
    basket_id bigint NOT NULL,
    card_id character varying(50),
    ext_payment_id character varying(255),
    description character varying(255),
    amount numeric(19,2) NOT NULL,
    payment_type_account character varying(255)
);


ALTER TABLE public.t_external_payments OWNER TO postgres;

--
-- Name: t_file_cache; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_file_cache (
    id_file_cache bigint NOT NULL,
    file_name character varying(400),
    file_content text NOT NULL,
    error character varying(4000),
    dtm_ins timestamp without time zone,
    file_dest_system character varying(40),
    payload_type text DEFAULT 'STRING'::text
);


ALTER TABLE public.t_file_cache OWNER TO postgres;

--
-- Name: t_km_report_fiscal_parameters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_km_report_fiscal_parameters (
    id_km_report_fiscal_parameters bigint NOT NULL,
    session_num bigint NOT NULL,
    report_dtm timestamp without time zone NOT NULL,
    sale_balance numeric(19,2),
    growing_beg numeric(19,2),
    growing_end numeric(19,2),
    ret_balance numeric(19,2),
    sale_cash_balance numeric(19,2),
    sale_card_balance numeric(19,2),
    ret_cash_balance numeric(19,2),
    ret_card_balance numeric(19,2),
    corr_receipt_balance numeric(19,2),
    growing_ret_beg numeric(19,2),
    growing_ret_end numeric(19,2),
    growing_corr_receipt_beg numeric(19,2),
    growing_corr_receipt_end numeric(19,2),
    cash_in_box numeric(19,2),
    session_id bigint,
    kkm_registration_num character varying(255),
    fiscal_storage_number character varying(255),
    kkm_type character varying(255),
    sale_advance_balance numeric(19,2),
    report_type character varying(40) NOT NULL,
    create_user character varying(255),
    sale_present_card_balance numeric(19,2),
    ret_present_card_balance numeric(19,2),
    sale_credit_balance numeric(19,2),
    ret_credit_balance numeric(19,2),
    sale_cashless_balance numeric(19,2),
    ret_cashless_balance numeric(19,2),
    sale_present_card_sm_balance numeric(19,2),
    sale_present_card_gsp_balance numeric(19,2),
    sale_present_card_sdx_balance numeric(19,2),
    sale_present_card_mbf_balance numeric(19,2),
    sale_present_card_mdc_balance numeric(19,2),
    sale_present_card_bns_balance numeric(19,2),
    sale_present_card_sdx2_balance numeric(19,2),
    sale_present_card_sdx_pass_balance numeric(19,2),
    sale_consideration_balance numeric(19,2),
    ret_consideration_balance numeric(19,2)
);


ALTER TABLE public.t_km_report_fiscal_parameters OWNER TO postgres;

--
-- Name: t_mark_code_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_mark_code_status (
    id bigint NOT NULL,
    dtm_created timestamp without time zone NOT NULL,
    basket_num character varying,
    order_num character varying,
    ware_id bigint NOT NULL,
    cis_barcode character varying NOT NULL,
    mark_code_status integer NOT NULL,
    is_actual boolean
);


ALTER TABLE public.t_mark_code_status OWNER TO postgres;

--
-- Name: t_mark_code_status_id_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t_mark_code_status_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t_mark_code_status_id_sequence OWNER TO postgres;

--
-- Name: t_merch_colorsize; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_merch_colorsize (
    id_merch_colorsize bigint NOT NULL,
    code character varying(255),
    name character varying(255),
    last_updated date
);


ALTER TABLE public.t_merch_colorsize OWNER TO postgres;

--
-- Name: t_noncondition_ware; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_noncondition_ware (
    id_non_cond_ware bigint NOT NULL,
    id_scat_noncond character varying(255),
    ware_id bigint,
    knt_barcode character varying(255),
    serial_num character varying(255),
    is_actual boolean DEFAULT true
);


ALTER TABLE public.t_noncondition_ware OWNER TO postgres;

--
-- Name: t_pay_card_terminal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_pay_card_terminal (
    id bigint NOT NULL,
    terminal_num character varying(255) NOT NULL,
    connection character varying(255),
    terminal_kind character varying(255),
    is_integrated boolean,
    is_default boolean,
    is_actual boolean,
    is_deleted boolean DEFAULT false,
    is_blocked boolean DEFAULT false,
    unknown_ern character varying(255)
);


ALTER TABLE public.t_pay_card_terminal OWNER TO postgres;

--
-- Name: t_pay_card_terminal_cliche; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_pay_card_terminal_cliche (
    id bigint NOT NULL,
    id_card_terminal bigint NOT NULL,
    id_process_company bigint NOT NULL,
    cliche character varying(255) NOT NULL,
    is_actual boolean
);


ALTER TABLE public.t_pay_card_terminal_cliche OWNER TO postgres;

--
-- Name: t_pay_card_terminal_salepoint; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_pay_card_terminal_salepoint (
    id bigint NOT NULL,
    id_terminal bigint NOT NULL,
    salepoint_code integer NOT NULL,
    is_actual boolean
);


ALTER TABLE public.t_pay_card_terminal_salepoint OWNER TO postgres;

--
-- Name: t_pay_card_to_processing_company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_pay_card_to_processing_company (
    id bigint NOT NULL,
    title character varying(4000),
    id_paycard_type bigint NOT NULL,
    id_process_company bigint NOT NULL,
    ordernum integer,
    is_actual boolean
);


ALTER TABLE public.t_pay_card_to_processing_company OWNER TO postgres;

--
-- Name: t_pay_card_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_pay_card_type (
    id bigint NOT NULL,
    title character varying(4000),
    num integer NOT NULL,
    is_actual boolean
);


ALTER TABLE public.t_pay_card_type OWNER TO postgres;

--
-- Name: t_payment_map; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_payment_map (
    id bigint NOT NULL,
    payment_type character varying(50) NOT NULL,
    mapped_payment_type character varying(50) NOT NULL,
    priority integer
);


ALTER TABLE public.t_payment_map OWNER TO postgres;

--
-- Name: t_payment_map_to_userrole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_payment_map_to_userrole (
    id bigint NOT NULL,
    role_id bigint,
    map_id bigint
);


ALTER TABLE public.t_payment_map_to_userrole OWNER TO postgres;

--
-- Name: t_personal_order_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_personal_order_items (
    id bigint NOT NULL,
    basket_id bigint NOT NULL,
    ware_id bigint,
    id_merch_colorsize bigint,
    quantity integer NOT NULL,
    catalog_price numeric(19,2),
    final_price numeric(19,2),
    discount_total numeric(19,2)
);


ALTER TABLE public.t_personal_order_items OWNER TO postgres;

--
-- Name: t_present_card_prefix; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_present_card_prefix (
    id_pk_prefix bigint NOT NULL,
    bin_prefix integer NOT NULL,
    is_actual boolean
);


ALTER TABLE public.t_present_card_prefix OWNER TO postgres;

--
-- Name: t_processing_company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_processing_company (
    id bigint NOT NULL,
    title character varying(4000),
    is_actual boolean
);


ALTER TABLE public.t_processing_company OWNER TO postgres;

--
-- Name: t_reject_reason; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_reject_reason (
    id_reject_reason bigint NOT NULL,
    reason_id character varying(255) NOT NULL,
    reason_name character varying(255) NOT NULL,
    is_actual boolean
);


ALTER TABLE public.t_reject_reason OWNER TO postgres;

--
-- Name: t_sale_point; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_sale_point (
    id bigint NOT NULL,
    num character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    last_basket character varying(255),
    last_active date,
    reg_num character varying(255),
    is_actual boolean NOT NULL,
    pkkt_client_code character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.t_sale_point OWNER TO postgres;

--
-- Name: t_sellers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_sellers (
    id_contractor character varying NOT NULL,
    id_sellers character varying NOT NULL,
    sellers_name character varying,
    sellers_phone character varying,
    sellers_inn character varying,
    is_actual boolean
);


ALTER TABLE public.t_sellers OWNER TO postgres;

--
-- Name: t_sending_auth_code_attempts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_sending_auth_code_attempts (
    id bigint NOT NULL,
    phone_number character varying,
    sending_date timestamp without time zone,
    sending_method character varying,
    id_basket bigint,
    is_inputed boolean
);


ALTER TABLE public.t_sending_auth_code_attempts OWNER TO postgres;

--
-- Name: t_sending_auth_code_attempts_id_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t_sending_auth_code_attempts_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t_sending_auth_code_attempts_id_sequence OWNER TO postgres;

--
-- Name: t_sending_auth_code_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_sending_auth_code_rules (
    reauthorization_period bigint NOT NULL,
    number_of_calls bigint NOT NULL,
    is_actual boolean,
    number_of_vk integer DEFAULT 0
);


ALTER TABLE public.t_sending_auth_code_rules OWNER TO postgres;

--
-- Name: t_shop_parameter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_shop_parameter (
    code character varying(255) NOT NULL,
    name character varying(255),
    value character varying(32000),
    type character varying(255),
    last_updated date
);


ALTER TABLE public.t_shop_parameter OWNER TO postgres;

--
-- Name: t_shp_trade_region_territory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_shp_trade_region_territory (
    id character varying(32) NOT NULL,
    id_territory bigint NOT NULL,
    id_trade_region bigint NOT NULL,
    is_actual boolean
);


ALTER TABLE public.t_shp_trade_region_territory OWNER TO postgres;

--
-- Name: t_spec_ware_card; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_spec_ware_card (
    id_spec_ware_card bigint NOT NULL,
    num character varying(255) NOT NULL,
    ware_id bigint NOT NULL,
    barcode character varying(26) NOT NULL,
    is_actual boolean
);


ALTER TABLE public.t_spec_ware_card OWNER TO postgres;

--
-- Name: t_spec_ware_card_cis_serial; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_spec_ware_card_cis_serial (
    id_spec_ware_card_cis_barcode bigint NOT NULL,
    id_spec_ware_card bigint NOT NULL,
    serial_num character varying(255) NOT NULL,
    is_actual boolean DEFAULT true
);


ALTER TABLE public.t_spec_ware_card_cis_serial OWNER TO postgres;

--
-- Name: t_street; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_street (
    id_street bigint NOT NULL,
    id_territory bigint NOT NULL,
    name character varying(255) NOT NULL,
    is_actual boolean
);


ALTER TABLE public.t_street OWNER TO postgres;

--
-- Name: t_telephone_mask; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_telephone_mask (
    id_telephone_mask bigint NOT NULL,
    location character varying(3),
    phone_prefix integer,
    mask_num_len integer,
    is_actual boolean DEFAULT false
);


ALTER TABLE public.t_telephone_mask OWNER TO postgres;

--
-- Name: t_territory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_territory (
    id_territory bigint NOT NULL,
    name character varying(255) NOT NULL,
    is_actual boolean,
    full_name character varying(255) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.t_territory OWNER TO postgres;

--
-- Name: t_trade_region; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_trade_region (
    id_trade_region bigint NOT NULL,
    name character varying(255) NOT NULL,
    is_actual boolean
);


ALTER TABLE public.t_trade_region OWNER TO postgres;

--
-- Name: t_user_barcode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_user_barcode (
    key_user character varying(255) NOT NULL,
    barcode character varying(255) NOT NULL,
    fast_auth boolean NOT NULL,
    is_actual boolean NOT NULL
);


ALTER TABLE public.t_user_barcode OWNER TO postgres;

--
-- Name: t_vat_correction_cheque; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_vat_correction_cheque (
    id bigint NOT NULL,
    basket_id bigint,
    receipt_num character varying(255),
    receipt_num_src character varying(255),
    dtm_print timestamp without time zone,
    cheque_type character varying(255),
    total_sum numeric(19,2),
    cashless_sum numeric(19,2)
);


ALTER TABLE public.t_vat_correction_cheque OWNER TO postgres;

--
-- Name: t_vat_correction_cheque_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_vat_correction_cheque_item (
    id bigint NOT NULL,
    vat_correction_cheque_id bigint,
    ware_id bigint,
    code character varying(255),
    amount integer,
    catalogprice numeric(19,2),
    retailprice numeric(19,2),
    finalrowprice numeric(19,2)
);


ALTER TABLE public.t_vat_correction_cheque_item OWNER TO postgres;

--
-- Name: t_vat_correction_prev; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_vat_correction_prev (
    id bigint NOT NULL,
    basket_id bigint,
    receipt_num_src character varying(255),
    receipt_dtm_src timestamp without time zone,
    need_corr_cheque boolean DEFAULT false
);


ALTER TABLE public.t_vat_correction_prev OWNER TO postgres;

--
-- Name: t_vat_correction_prev_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_vat_correction_prev_item (
    id bigint NOT NULL,
    vat_correction_prev_id bigint,
    ware_id bigint,
    code character varying(255),
    amount integer,
    catalogprice numeric(19,2),
    retailprice numeric(19,2),
    finalrowprice numeric(19,2)
);


ALTER TABLE public.t_vat_correction_prev_item OWNER TO postgres;

--
-- Name: t_vat_correction_prev_print; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_vat_correction_prev_print (
    id bigint NOT NULL,
    vat_correction_prev_id bigint,
    receipt_num character varying(255),
    dtm_print timestamp without time zone,
    seq_id integer
);


ALTER TABLE public.t_vat_correction_prev_print OWNER TO postgres;

--
-- Name: t_ware_extra_gtin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_ware_extra_gtin (
    id_ware bigint NOT NULL,
    extra_gtin character varying NOT NULL,
    is_actual boolean
);


ALTER TABLE public.t_ware_extra_gtin OWNER TO postgres;

--
-- Name: t_ware_set; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_ware_set (
    id_set bigint NOT NULL,
    set_num character varying(32) NOT NULL,
    set_name character varying(4000),
    barcode character varying(256),
    id_segment bigint,
    kind character varying(100),
    is_actual boolean
);


ALTER TABLE public.t_ware_set OWNER TO postgres;

--
-- Name: t_ware_set_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_ware_set_item (
    id_set_str bigint NOT NULL,
    id_set bigint NOT NULL,
    id_ware bigint NOT NULL,
    quantity integer NOT NULL,
    is_basic_ware boolean,
    str_num integer,
    is_actual boolean,
    id_spec_ware_card bigint
);


ALTER TABLE public.t_ware_set_item OWNER TO postgres;

--
-- Name: t_ware_warranty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_ware_warranty (
    id_ware_warranty bigint NOT NULL,
    id_ware bigint,
    warranty_period_length bigint,
    warranty_period_unit character varying(1),
    dt_beg date,
    dt_end date,
    id_parent bigint,
    sort_number bigint,
    component_name character varying(4000),
    last_updated date
);


ALTER TABLE public.t_ware_warranty OWNER TO postgres;

--
-- Name: user_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_session (
    user_session_id bigint NOT NULL,
    login character varying(255) NOT NULL,
    is_finished boolean,
    dt_start timestamp without time zone,
    dt_finish timestamp without time zone,
    last_changed timestamp without time zone,
    standalone boolean DEFAULT true
);


ALTER TABLE public.user_session OWNER TO postgres;

--
-- Name: userrole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userrole (
    name character varying(255) NOT NULL,
    id bigint NOT NULL,
    purpose character varying(255),
    is_editable boolean DEFAULT true NOT NULL
);


ALTER TABLE public.userrole OWNER TO postgres;

--
-- Name: version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.version (
    version character varying(255),
    dtm timestamp without time zone
);


ALTER TABLE public.version OWNER TO postgres;

--
-- Name: ware; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ware (
    ware_id bigint NOT NULL,
    catalogprice numeric(19,2),
    code character varying(100) NOT NULL,
    collection character varying(255),
    collection2 character varying(255),
    last_updated date,
    madein character varying(255),
    price numeric(19,2) NOT NULL,
    producer character varying(255),
    sex character varying(10),
    size character varying(255),
    trademark character varying(255),
    vatpercent numeric(19,2),
    warekind character varying(255),
    warename character varying(255) NOT NULL,
    warenode character varying(255),
    color character varying(255),
    kind character varying(16),
    id_disc_pattern bigint,
    id_licensor bigint,
    model_name character varying(255),
    is_ware_write_off boolean DEFAULT false NOT NULL,
    model_code character varying(4000),
    is_allowed_for_sale boolean DEFAULT true NOT NULL,
    id_ware_color_model bigint,
    weighted_out boolean,
    ware_unit character varying(100),
    sign_cis boolean DEFAULT false NOT NULL,
    gtin_num character varying(20),
    ware_in_complect boolean DEFAULT false,
    sign_cis_plus integer,
    sign_siz character varying(255),
    ware_tnved character varying(10),
    warename_eng character varying(255),
    mark_label boolean,
    credit_product_id bigint,
    nsppercent numeric(19,2),
    id_merch_colorsize bigint,
    online_only boolean DEFAULT false,
    id_contractor character varying,
    id_sellers character varying,
    id_ware_replace bigint,
    no_vat boolean DEFAULT false,
    icpu character varying(30) DEFAULT NULL::character varying,
    local_warename character varying(4000) DEFAULT NULL::character varying,
    ware_unit_icpu_code character varying
);


ALTER TABLE public.ware OWNER TO postgres;

--
-- Name: ware_complect; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ware_complect (
    id_ware_complect bigint NOT NULL,
    last_updated date,
    quantity integer NOT NULL,
    complect_id bigint NOT NULL,
    ware_id bigint NOT NULL
);


ALTER TABLE public.ware_complect OWNER TO postgres;

--
-- Name: ware_disc_pattern; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ware_disc_pattern (
    id_ware_disc_pattern bigint NOT NULL,
    is_actual boolean,
    bonuses_payment boolean,
    bonuses_charge boolean,
    catalog_discount boolean,
    check_position_promodisc boolean,
    check_promodisc boolean,
    manual_adjustment boolean,
    pdk_disc boolean
);


ALTER TABLE public.ware_disc_pattern OWNER TO postgres;

--
-- Data for Name: app_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_user (login, is_actual, username, password, signature, role_id, card_number, is_shop_kis, inn, code_1c, first_name) FROM stdin;
admin	t	Администратор	DB4240635B8E088263FFBB090AFF0902		3	\N	f	\N	\N	\N
\.


--
-- Data for Name: barcode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.barcode (id_ware_barcode, id_ware, last_updated, barcode) FROM stdin;
\.


--
-- Data for Name: basket; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.basket (basket_id, cashier, created, dtmcancel, dtmpay, dtmstorn, num, basket_state, basket_type, usercancel, userprove, userstorn, salesession_salesession_id, external_num, client_id, bonus_discount_state, identification_key, identification_method, external_shop_number, is_sent_to_clubpro, reserve_num, is_calculated_in_club_pro, client_name, cheque_print_status, cheque_print_comment, dtm_order, sknoid, buyer_email, buyer_phone, vat_source, storno_order, electronic_cheque_send_type, id_macrocity, order_pay_type, order_type, source_type, order_num, dtmsale, is_sent_to_comm_pro, return_overpayment_type, com_pro_order_code, com_pro_order_num, personal_order_cancel_reason, compro_delivery_method, vat_kkm_correct, prepayment_autocreate, forced_clubpro_calculation, is_lost_order, source_id, is_sms_authorization_done, overpay_sum, returned_without_cheque, returned_with_spec_cn, buyer_nip, buyer_name, buyer_address, print_invoice, is_retail_order, compro_is_ret_advance, order_prepayment_card_num_src, original_sale_cheque_num, original_sale_crn, personal_order_status, newgen_cheque_print_resp, newgen_cheque_info_resp, credit_product_id, need_invoice_cheque, is_ret_sale_pc, client_kind, is_ret_advance_trpos, external_control_num, prepaid_date, call_global_id_pkkt, pkkt_cheque_num, pkkt_session_num, payment_processing_type, has_final_calculation, initial_lite_num, reserve_is_local, ware_processing, email_confirmed, printed_cheque_type, is_cheque_copy_printed, agreed_terms_date, lk_ret_order_num, has_mobile_app, credit_application_num, is_prepayment_online, order_accepted_amount, is_cashless_postpay, date_cheque_sale, fiscal_doc_sign, subscribe_email_check, email_for_check) FROM stdin;
\.


--
-- Data for Name: basket_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.basket_item (basket_item_id, catalogprice, created, finalprice, initialprice, quantity, seller, basket_item_state, basket_item_type, basket_id, ware_id, present_card_id, parent_id, external_id, storage_id, id_knt, knt_price, present_card_manual_input_done, id_basket_club_pro_promotion, is_external, ware_set_id, initial_quantity, spec_ware_card_id, rfid_id, weight, storned_item_id, storno_order, npp, ngroup, is_created_by_order, order_prepayment_card_num, order_order_num, order_sum_price, order_prepayment_sum, order_min_prepayment_sum, order_max_prepayment_sum, order_order_code, personal_order_cancel_reason, usercancel, userprove, cis_num, cis_barcode, is_consideration, previous_parent, order_catalog_price, order_initial_price, quantity_to_return, reserve_basket_num, prepayment_card_num, present_card_processing_type, order_prepayment_card_num_src, present_card_activated, receipt_num_src, cancel_kis_discount, mark_code_status, special_mark_desc, id_specialty_img, retail_kind, order_retail_kind, special_mark, sellers_name, sellers_phone, sellers_inn, nsppercent, id_ret_reason, mp_deal_type, is_replaced, no_vat, icpu, errand_price, crpt_sale_allow, crpt_verify_uuid, crpt_verify_time) FROM stdin;
\.


--
-- Data for Name: basket_payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.basket_payments (basket_id, inputsumma, summa, payment_type, card_id, status, urn, return_urn, id_payment, present_card_type, present_card_manual_input_done, comment, slip_text, terminal_operation, storned_payment_id, storno_order, id_pay_card_type_to_processing_company, id_pay_card_terminal, customer_code, sale_summ, id_ext_payment, dtm_pay, payment_action, is_first_return, eftpos_id, description, dept_num, payment_guid, paycard_client_name, surplus, ern, rrn, return_ern, return_rrn, type_account, credit_contract_num, credit_contract_dt, reserve_basket_num, fund_code, credit_product_id, id_pay_card_type_to_processing_company_ext, credit_application_num, is_cashless_postpay, sbp_payment_link_id) FROM stdin;
\.


--
-- Data for Name: basketdisc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.basketdisc (bd_id, cardnumber, dtmcreate, memo, percent, summa, userdirect, userowner, basket_id, discount_disc_id, is_external, present_card_manual_input_done, id_basket_club_pro_promotion, id_club_pro_bonus, is_com_pro_assigned, external_index, price, present_card_pay_status, proc_type, seller_discount_part, sm_discount_part) FROM stdin;
\.


--
-- Data for Name: basketnumsequence; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.basketnumsequence (id) FROM stdin;
\.


--
-- Data for Name: cash_op; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cash_op (cashop_type, cashop_id, dtm, summa, username, salesession_salesession_id, envelop_num, is_cash_recalculation) FROM stdin;
\.


--
-- Data for Name: club_card_prefix; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.club_card_prefix (id_shpref_prefix_cc, prefix, id_card_type, num_length, get_num_way, is_actual, encode_type) FROM stdin;
\.


--
-- Data for Name: club_card_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.club_card_type (id_shpref_cc_type, code, name, is_actual, discount_type, id_discount, discount) FROM stdin;
\.


--
-- Data for Name: currency_nominal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.currency_nominal (national_nominals_id, kind, value, is_actual) FROM stdin;
\.


--
-- Data for Name: disabledinteract; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.disabledinteract (di_id, is_actual, reason, ig_id1, ig_id2) FROM stdin;
\.


--
-- Data for Name: discappl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.discappl (id, summa, basketdisc_bd_id, basketitem_basket_item_id, discountspread_id, id_basket_club_pro_promotion) FROM stdin;
\.


--
-- Data for Name: discount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.discount (disc_id, is_actual, dtbegin, dtend, eauthorization, erate, is_auto_set, maxpercent, disc_name, oldnum, ratevalue, disc_type, interactgroup, code_club_pro, bonus_type, is_used_in_shop) FROM stdin;
\.


--
-- Data for Name: discountspread; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.discountspread (id, id_basket, id_basket_disc, id_basket_item) FROM stdin;
\.


--
-- Data for Name: exchange_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exchange_log (exchange_log_id, creationkind, detail, dictionarytype, direction, filepath, result, timestampstart, timestampstop) FROM stdin;
\.


--
-- Data for Name: fiscal_printer_counter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fiscal_printer_counter (id_fiscal_printer_counter, counter_name, counter_value) FROM stdin;
\.


--
-- Data for Name: global_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.global_log (id_log, text, dtm_create) FROM stdin;
\.


--
-- Data for Name: interactgroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.interactgroup (ig_id, is_actual, ig_code, ig_name) FROM stdin;
\.


--
-- Data for Name: licensor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.licensor (licensor_id, is_actual, dtm_beg, dtm_end, licensor_name) FROM stdin;
\.


--
-- Data for Name: parametervalue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parametervalue (name, description, value) FROM stdin;
ClubProTimeout	\N	\N
ErPilot	Типы электронной регистрации анкеты	OFF
ShowExtBasketInfo	Показывать инфоокно	NOT_ALLOW
WarePresentCardPay	ПК-Оплата ПК при продаже ПК	NOT_ALLOW
WarePresentCardStorno	ПК-Сторнирование ПК в корзине	NOT_ALLOW
WarePresentCardMultiPay	ПК-Оплата двумя видами при продаже ПК	ALLOW
CheckKkmSessionWithSameNum	проверять дублирование номера смены	ALLOW
RussianFederalLaw54CanPayByPresentCards		ALLOW
NeedConfirmRiskOperationsWithCard		NOT_ALLOW
TransferOfOwnership	Переход права собственности	ON_PAYMENT
ComProConnectTimeout	Таймаут подключения сервиса ComPro (мс)	10000
ComProSocketTimeout	Таймаут ожидания сервиса ComPro (мс)	20000
CanPrintChequeWithZeroPrice	Печатать нулевой фискальный чек	NOT_ALLOW
KizSwitch	Включить работу с маркировкой КИЗ	NOT_ALLOW
AllowLimitLessPayCardPayments	Неограниченное число оплат	NOT_ALLOW
PCardsServiceConnectTimeout	Таймаут подключения (мс)	10000
PCardsService	Адрес сервиса PCards	http://pcards-ws.gksm.local/pcards-lite/PCardsPort/CardPort
PCardsServiceConnectAttempts	Количество попыток подключения	3
CalculationDiscountsInClubPro	Применение скидок на стороне ClubPro	NOT_ALLOW
AllowManualKizInput	Ручной ввод КИЗ	NOT_ALLOW
KntKizSwitch	Включить работу с КНТ КИЗ	NOT_ALLOW
DefaultArm	defaultArm	CASHIER
ComProDefaultRejectReason	Значение по-умолчанию причины отказов	101
PresentCardMinValue	Минимальная сумма номинала БПК	500
PresentCardMaxValue	Максимальная сумма номинала БПК	150000
PresentCardMaxReturnValue	Максимальная сумма возврата на БПК	150000
PresentCardExpirationTerm	Срок действия БПК, в месяцах	1200
CanEnterBlankPresentCardNumber	Возможность вводить номер БПК	NOT_ALLOW
UsePresentCardMSROnSaleScreen	Возможность прокатывать ПК на вкладке "Сканирование"	ALLOW
BonusSmsAuth	СМС-авторизация для списания бонусов	NOT_ALLOW
CSMUrl	Адрес CSM	http://call-center-dev:7003/call-center/#order:orderType=2&orderId=
PresentCardNominalIdWare	id товара БПК(Безноминальная подарочная карта)	176496150299
AuthorisationByPassport	Авторизация клиента по паспорту	NOT_ALLOW
WechatAddress	Адрес сервиса	api.mch.weixin.qq.com
AllowSellWithoutScanCis	Разрешить продажу маркированного товара без обязательного сканирования ШК КИЗ	NOT_ALLOW
AllowExchangeBasket	Включить функционал "Обмена"	NOT_ALLOW
ShowVirtualKeyboardOnFocus	Вызов виртуальной клавиатуры	NOT_ALLOW
CanCreateClientWithElectronicForm	Способ создания клиента	OFFLINE
FeedbackTerminalHost	Адрес	localhost
FeedbackTerminalPort	Порт	14001
FeedbackTerminalOn	FeedbackTerminal включен	NOT_ALLOW
FeedbackTerminalConnectionTimeout	Таймаут подключения	5000
FeedbackTerminalSocketTimeout	Таймаут ответа	5000
CheckOutOrderScanIfFitting	Контрольное сканирование заказа при выдаче на примерку	ALLOW
WorkWithDefectAndSpecWareOnKizBarcode	Работа с КИЗ КТО/КНТ	ALLOW
TrposGuiPort	Порт для подключения терминала TRPOS к Лайт	13000
TrposGuiTimeout	Таймаут для подключения терминала TRPOS к Лайт (с)	30
AllowExorigoUposOperatorConst	Разрешить общего оператора для касс FP-T88FVA	ALLOW
ExorigoUposOperator	Имя оператора за смену для касс FP-T88FVA	GO SPORT
Header5	Строка 5 заголовка чека	
Header6	Строка 6 заголовка чека	
AllowSearchComProOrderOnAddingClient	Привязка заказа OMS к корзине при авторизации клиента	ALLOW
PresentCardElectronMinValue	Минимальная сумма номинала ЭПК	500
ShopType	\N	SPORTMASTER
ClubProService		http://clubcards.moscow.sportmaster.ru/ClubPro/CardPort
ClubProServiceReserve		http://clubcards2.moscow.sportmaster.ru/ClubPro/CardPort
ClubProConnectTimeout	таймаут подключения	3000
ClubProSocketTimeout	таймаут ожидания	6000
ComProService	Адрес сервиса ComPro	http://compro-ws.gksm.local/compro-lite/ComLiteApiPort
PCardsServiceSocketTimeout	Таймаут ожидания (мс)	20000
KisLiteRestService	Сервис КИС РМ	http://shopordsevobalancer.gateway.k8s.dark.sportmaster.com/tst6819_web/shop/lite_service/
UseCorrectionTypeWrongPrice	Использование корректировки Неверная цена	ALLOW
CanPayByPresentCards	Оплата подарочными картами	ALLOW
NeedEnrollCardForConfirmation	Включить подтверждение рисковых операций электронной картой сотрудника	ALLOW
PersonalOrderSupport	Разрешить работу с ПЗ	ALLOW
PresentCardElectronMaxValue	Максимальная сумма номинала ЭПК	150000
PresentCardElectronIdWare	Список товаров ЭПК	156242890299
PrepaymentOrderAvailableForCashier	Внесение предоплаты в АРМ кассира	NOT_ALLOW
ImageService	Адрес сервиса изображений	http://shopterminal.moscow.sportmaster.ru/catalog/picture
WorkWithImages	Разрешить изображения на строке	NOT_ALLOW
KisLiteRestServiceConnectTimeout	Таймаут подключения сервиса КИС РМ (мс)	40000
KisLiteRestServiceSocketTimeout	Таймаут ожидания сервиса КИС РМ (мс)	40000
KisLiteMasterUrlService	Сервис для получения адреса к КИС РМ	http://ogw.moscow.sportmaster.ru/ords/dbadmin/ordsmapping/v2/
ImRestService	Сервис заказов ИМ	
ImRestServiceConnectTimeout	Таймаут подключения сервиса Интернет-Магазина (мс)	40000
ImRestServiceSocketTimeout	Таймаут ожидания сервиса Интернет-Магазина (мс)	40000
PGateRestService	Сервис PGate	
PGateRestServiceConnectTimeout	Таймаут подключения PGate (мс)	40000
PGateRestServiceSocketTimeout	Таймаут ожидания PGate (мс)	50000
AvangardOpenApiRestService	Сервис Авангард	
AvangardOpenApiRestServiceConnectTimeout	Таймаут подключения Авангард (мс)	40000
AvangardOpenApiRestServiceSocketTimeout	Таймаут ожидания Авангард (мс)	50000
CompassService	Сервис КОМПАС	
CompassServiceConnectTimeout	Таймаут подключения КОМПАС (мс)	40000
CompassServiceSocketTimeout	Таймаут ожидания КОМПАС (мс)	50000
AllowPaymentByLink	Оплата по ссылке	ALLOW
SBPMerchantAccount	Account - Зарегистрированный расчётный счёт в рамках магазина/сети в СБП	
SBPMerchantAddress	Адрес сервиса SBP : Merchant	
SBPConnectionTimeout	Таймаут подключения (мс)	40000
SBPSocketTimeout	Таймаут ответа (мс)	40000
SBPcertificate	Контейнер с сертификатами СБП	
SBPcertificatePassword	Ключ к контейнеру с сертификатами СБП	
SBPShowQROnCashierScreen	Отображать QR-код СБП на экране кассира	NOT_ALLOW
AuthorizationByEmail	\N	NOT_ALLOW
SBPWaitTimeout	Таймаут подтверждения оплаты (мс)	120000
ProhibitParallelAuth	Запрет параллельной авторизации	NOT_ALLOW
NeedShowComProOrderCellNum	Отображать номер ячейки заказа	NOT_ALLOW
WareInfoExpirationTime	Обновление информации по товару, в днях	5
AllowTechnicalDiscountMemoPrinting	Тех. уценка. Печать заметок и запрет назначения на корзину	NOT_ALLOW
LogstashEnable	Отправка логов	NOT_ALLOW
AllowMarkCodeValidation	Поддерживает ли ККМ валидацию ШК	NOT_ALLOW
AllowOpenCashDrawer	Открытие денежного ящика	NOT_ALLOW
NewFiscalNumber	Регистрационный номер подключенной ККМ	\N
AllowInvertKizOnCapsLockPressed	Инвертирование КИЗ при включенном CAPS	ALLOW
MarkizRestService	Сервис МАРКИЗ	\N
MarkizRestServiceConnectTimeout	Таймаут подключения МАРКИЗ (мс)	40000
MarkizRestServiceSocketTimeout	Таймаут ожидания МАРКИЗ (мс)	50000
MarkizServiceIsEnabled	Запрос проверки принадлежности КИЗ к ЮЛ в МАРКИЗ	NOT_ALLOW
EnableKisPickup	Выводить предоплаченные PickUp из оборота РМ	NOT_ALLOW
KisPickupShopNum	Номер магазина самовывоза	7735
PkktClientCode	Код клиента ПККТ	\N
PkktUlName	Название ЮЛ	\N
PkktUlInn	ИНН ЮЛ	\N
PkktRetailChain	Торговая сеть	\N
PkktProcessCode	Бизнес-процесс	\N
PkktOspCode	Код обособленного подразделения	\N
PkktOspName	Название обособленного подразделения	\N
PkktShopNum	Номер магазина	\N
PkktShopAddress	Адрес магазина	\N
PkktWorkplace	Идентификатор клиентского рабочего места (кассовое место у Lite)	\N
PkktTimeZone	Временная зона	\N
PkktServiceAddress	Сервис ПККТ	\N
PkktServiceConnectTimeout	Таймаут подключения ПККТ (мс)	40000
PkktServiceSocketTimeout	Таймаут ожидания ПККТ (мс) 	50000
PhoneMaskFromDictionary	Вывод масок телефонных номеров из справочника	NOT_ALLOW
AllowClientRegistrationWithoutSms	Регистрация клиента без подтверждения по СМС	NOT_ALLOW
AllowBlockSellerChangeForComProOrder	Блокировать смену продавца на строках OMS-заказов	NOT_ALLOW
AllowSendECheck	Электрочек ФНС	NOT_ALLOW
WareSpecialtyImgLinkPattern	Паттерн ссылки для просмотра фото товара с особенностью	http://pattern/
PrintSlipsByKkm	Печать банковских слипов на ККМ	ALLOW
AllowShowTimerOnSessionClose	Таймер при закрытии смены	NOT_ALLOW
ShowElAnketaTooltips	Подсказки при заполнении анкеты	NOT_ALLOW
Footer5	Строка 5 подвала чека	
Footer6	Строка 6 подвала чека	
CommonClicheControl	Централизованное управление заголовком/окончанием чека	NOT_ALLOW
PrintControlNumber	Печать КН	ALLOW
SendEcheque	Электронные чеки	NOT_ALLOW
SBPStaticQr	Статичный QR-код СБП	NOT_ALLOW
ChequeWithUnconfirmedEmail	Чек при подтвержденном Email	PRINT_PAPER_CHEQUE
SMSAuthOnClubCardBarcode	СМС авторизация по не защищенному ШК КК	NOT_ALLOW
SBPPaymentPurpose	Назначение платежа СБП	
PrintTerminalReportsByKkm	Печать отчетов банковского терминала	ALLOW
PrintPaymentSystemReport	Печать отчета по платежным системам	NOT_ALLOW
AllowBasketSearchOnClosedSession	Поиск корзин при закрытой смене	NOT_ALLOW
DisablePrintXReportAndOpenSessionReport	Отключить печать X-отчета и отчета открытия смены	ALLOW
ShowPrintQrButton	Печать QR-code СБП на чеке	NOT_ALLOW
SendEchequeCompath	Отправка электронного чека КОМПАС	NOT_ALLOW
TwoLanguagesOnDisplayToggle	Вывод информации на дисплей на 2‑х языках	NOT_ALLOW
TwoLanguagesOnDisplaySwitchFrequency	Частота переключения языка на дисплее покупателя	5
MaxSaleWoIin	Максимальная сумма продажи без ИИН покупателя	3180000
SendReportsToKis	Передача отчетов в КИС РМ	NOT_ALLOW
ClubProServiceClient	Сервис ClubPro - клиентский	http://cardsw-sms.moscow.sportmaster.ru/ClubPro-ClientRetail/CardPort
ClubProClientConnectTimeout	таймаут подключения	20000
ClubProClientSocketTimeout	таймаут ожидания	20000
ForbidSeveralPcInBasket	Запрет продажи нескольких ПК в одной корзине	NOT_ALLOW
ShowEmailTooltips	Подсказки при заполнении EMAIL	NOT_ALLOW
IdTradenet	id торговой сети	\N
SendCodeByCompath	Отправка кода через КОМПАС	NOT_ALLOW
ComProAllowSkipFittingForMarketplace	Выдача заказов с товаром МП без примерки	NOT_ALLOW
KkmRegistrationAddress	Адрес регистрации ККМ	\N
TimerToPrintQRSBP	Таймер на печать QR СБП	7
MaxCashSale	Максимальная сумма оплаты наличными(в Армении)	300000
AllowSellWithoutGtin	Разрешить продажу товара без GTIN	ALLOW
SbpPaymentMode	Режим работ с СБП	old_dynamic_links
SbpPaymentLink1	id ссылки СБП N1	
SbpPaymentLink2	id ссылки СБП N2	
AllowWaitingItemToAdd	Ожидание добавления товара	NOT_ALLOW
ShopName	shopName	\N
ShopAddress	Адрес магазина	\N
ErTabletService	URL сервиса анкет на планшете	\N
ConfirmRiskOperationsByAnyoneWithCard	ПРО по наличию карты	\N
LineDisplayAlignment	Выравнивание текста дисплея	\N
ShopTerritory	shopTerritory	\N
ShopTradeRegion	shopTradeRegion	\N
AlipayId	Идентификатор магазина	\N
AlipayTimeout	Таймаут запроса, сек	\N
AlipayRequestAddress	Адрес сервиса	\N
AlipayPrivateKey	Личный ключ	\N
AlipayPublicKey	Публичный ключ	\N
WechatId	Идентификатор магазина	\N
WechatVendorId	Идентификатор продавца	\N
WechatTimeout	Таймаут запроса, сек	\N
WechatSignature	Цифровая подпись	\N
WechatCertPath	Путь к сертификату	\N
WechatCertPassword	Пароль к сертификату	\N
SendyPayAddress	Адрес сервера	\N
SendySerialId	Серийный номер кассового места	\N
SendySubjectId	Идентификатор терминала	\N
SendyToken	Токен активации	\N
SendyPrivateKey	Приватный ключ активации	\N
SBPlogin	Логин	\N
SBPpassword	Пароль	\N
NewGenerationSessionKey	newGenerationSessionKey	\N
CheckRemains	Проверка остатков	\N
PrepaymentOrderAvailableForOmni	Внесение предоплаты в АРМ OMNI	\N
ShopNumber	Номер магазина	6819
BasketsUnloadingPeriod	Период выгрузки корзин (мин.)	2
MaximumCashAmount	Максимальная сумма наличности в кассе	30000
Country	Страна	RUSSIA
ChequeTop	Текст в начале чека	
ChequeBottom	Текст в конце чека	
LineDisplayTop	Текст в первой строке дисплея	ООО "СПОРТМАСТЕР" 
LineDisplayBottom	Текст во второй строке дисплея	Добро пожаловать
LineDisplay3	lineDisplay3	Спасибо за покупки
LineDisplay4	lineDisplay4	Ждем Вас вновь
LineDisplay6	lineDisplay6	с 10:00 до 22:00
Header2	Строка 2 заголовка чека	<ИНДЕКС> <Адрес магазина>
Header3	Строка 3 заголовка чека	<Адрес магазина>
Footer1	Строка 1 подвала чека	СПАСИБО ЗА ПОКУПКУ!
Footer3	Строка 3 подвала чека	является товарным чеком п. 46 Постанов
OverpayTransfer	Перенос переплаты по заказу	\N
SalePointCode	Номер кассового места	1
NeedCheckFiscalNumber	\N	ALLOW
ReversalSalesOff	Запрет сторнирования корзин	ALLOW
ComProServiceReserve	Адрес резервного сервиса ComPro	http://compro-ws.gksm.local/compro-lite/ComLiteApiPort
WareShopBarcode	Добавление товара в корзину по ШК магазина	NOT_ALLOW
LineDisplay5	lineDisplay5	Режим работы
Header1	Строка 1 заголовка чека	ООО "СПОРТМАСТЕР"
Header4	Строка 4 заголовка чека	КПП< > <тел. магазина>
Footer2	Строка 2 подвала чека	ч.работы с 10:00 до 22:00 без выходных
Footer4	Строка 4 подвала чека	ление Правительства РФ №55 от 19.01.98
PGateWaitTimeout	Таймаут подтверждения оплаты PGate (мс)	30000
YandexSplitPayment	Доступность оплаты по Яндекс Сплит	NOT_ALLOW
PriorityMethodClientAuthorization	Приоритетный способ авторизации клиента	phone
CurrentFirmwareForPRIM	Актуальная версия прошивки ККМ ПРИМ	C110403,E120402
TemplateForMsRestService	Шаблон ссылки Сервиса Модуль Продаж	http://{shopNum}.salesapi.kassa.localcorp.net
SystemConfigCode	Код системы конфигурирования	rmlite
MsRestServiceConnectTimeout	Таймаут подключения сервиса Модуля Продаж (мс)	40000
MsRestServiceSocketTimeout	Таймаут ожидания сервиса Модуля Продаж (мс)	40000
CisMovementInfo	Информация по движению КИЗ	NOT_ALLOW
EntryPoint	Точка входа для работы с Модулем Продаж.	sm_lite
IssueOrderFromMsRestService	Параметр типа ENUM для включения различных процессов работы с заказами на РМ ЛАЙТ через Модуль Продаж.	NONE
ComProServiceIntegrationDirectory	Директория файлового обмена c ComPro	C:\\rmlite\\Compro
PCardsServiceIntegrationDirectory	Директория файлового обмена	C:\\rmlite\\Pcards
OperatingSystemType	Тип операционной системы	WINDOWS
KisRestServiceShopNumberOnChange	Номер магазина, при котором было последнее обновление адреса КИС РМ	6819
FiscalNumber	Регистрационный номер ККМ	0000666695033366
LoadDictionaryDirectory	Директория информационного обмена	smb://ftpload2:ftpload2@shpumo.moscow.sportmaster.ru/astra6819
\.


--
-- Data for Name: portion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.portion (portion_id, created, dtmbegin, dtmend, memo, portion_state, portion_type, salesession_id, basket_id) FROM stdin;
\.


--
-- Data for Name: questionnaire_prefix; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.questionnaire_prefix (id_shpref_sc_scope, is_actual, prefix) FROM stdin;
\.


--
-- Data for Name: questionnairesequence; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.questionnairesequence (id) FROM stdin;
\.


--
-- Data for Name: rfid_ware; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rfid_ware (rfid_id, ware_id) FROM stdin;
E280110020007042B1CB08DB	157223890299
E280110020007052B1CF08DB	154130660299
E28011002000705CB1CE08DB	159578340299
E28011002000704EB1CB08DB	157311000299
E280110020007056B1CF08DB	157223350299
E280110020007054B1CF08DB	155261680299
E28011002000704AB1CB08DB	155997770299
E280110020007046B1CB08DB	160066980299
E28011002000704CB1CB08DB	142170420299
E280110020007044B1CB08DB	155119100299
\.


--
-- Data for Name: roleoperation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roleoperation (useroperation_id, operation_type, access, role_id) FROM stdin;
13	MONEY_BACK	ALLOW	1
23	MONEY_BACK	NEED_SIGNATURE	5
38	SALE_DEFECT	DENY	4
4	SALE	ALLOW	1
5	ASSIGN_CORRECT	NEED_SIGNATURE	1
6	MANUAL_INPUT	NEED_SIGNATURE	1
7	CANCEL_BASKET	NEED_SIGNATURE	1
8	DELETE_ITEM	NEED_SIGNATURE	1
9	MODIFY_AMOUNT	NEED_SIGNATURE	1
14	RETURN_BASKET_OPERATIONS	ALLOW	1
11	APPLICATION_ADMIN	DENY	1
35	SALE_DEFECT	ALLOW	1
33	SET_COMPENSATION	ALLOW	1
41	MANUALLY_ADD_WARE_BY_CODE	NEED_SIGNATURE	1
42	ORDER_DELIVERY	ALLOW	1
43	ARM_CHANGE	ALLOW	1
44	OPEN_CSM	ALLOW	1
45	SCAN_SBP_LINKS	ALLOW	1
10	STORN	ALLOW	1
1	SALE	ALLOW	2
27	ASSIGN_CORRECT	NEED_SIGNATURE	2
28	MANUAL_INPUT	DENY	2
29	CANCEL_BASKET	DENY	2
2	DELETE_ITEM	DENY	2
3	MODIFY_AMOUNT	DENY	2
31	RETURN_BASKET_OPERATIONS	ALLOW	2
32	APPLICATION_ADMIN	DENY	2
36	SALE_DEFECT	ALLOW	2
34	SET_COMPENSATION	ALLOW	2
46	MANUALLY_ADD_WARE_BY_CODE	DENY	2
47	ORDER_DELIVERY	DENY	2
48	ARM_CHANGE	DENY	2
49	OPEN_CSM	DENY	2
50	SCAN_SBP_LINKS	DENY	2
30	STORN	DENY	2
16	SALE	ALLOW	5
17	ASSIGN_CORRECT	NEED_SIGNATURE	5
18	MANUAL_INPUT	NEED_SIGNATURE	5
19	CANCEL_BASKET	NEED_SIGNATURE	5
20	DELETE_ITEM	NEED_SIGNATURE	5
21	MODIFY_AMOUNT	NEED_SIGNATURE	5
24	RETURN_BASKET_OPERATIONS	ALLOW	5
25	APPLICATION_ADMIN	DENY	5
39	SALE_DEFECT	ALLOW	5
51	SET_COMPENSATION	ALLOW	5
52	MANUALLY_ADD_WARE_BY_CODE	NEED_SIGNATURE	5
53	ORDER_DELIVERY	DENY	5
54	ARM_CHANGE	DENY	5
55	OPEN_CSM	DENY	5
56	SCAN_SBP_LINKS	DENY	5
22	STORN	DENY	5
57	SALE	ALLOW	6
58	ASSIGN_CORRECT	NEED_SIGNATURE	6
59	MANUAL_INPUT	NEED_SIGNATURE	6
60	CANCEL_BASKET	NEED_SIGNATURE	6
61	DELETE_ITEM	NEED_SIGNATURE	6
62	MODIFY_AMOUNT	NEED_SIGNATURE	6
63	RETURN_BASKET_OPERATIONS	ALLOW	6
64	APPLICATION_ADMIN	DENY	6
40	SALE_DEFECT	ALLOW	6
65	SET_COMPENSATION	ALLOW	6
66	MANUALLY_ADD_WARE_BY_CODE	NEED_SIGNATURE	6
67	ORDER_DELIVERY	ALLOW	6
68	ARM_CHANGE	ALLOW	6
69	OPEN_CSM	ALLOW	6
70	SCAN_SBP_LINKS	DENY	6
71	STORN	NEED_SIGNATURE	6
72	SALE	DENY	3
73	ASSIGN_CORRECT	DENY	3
74	MANUAL_INPUT	DENY	3
75	CANCEL_BASKET	DENY	3
76	DELETE_ITEM	DENY	3
77	MODIFY_AMOUNT	DENY	3
78	RETURN_BASKET_OPERATIONS	DENY	3
26	APPLICATION_ADMIN	ALLOW	3
37	SALE_DEFECT	DENY	3
79	SET_COMPENSATION	DENY	3
80	MANUALLY_ADD_WARE_BY_CODE	DENY	3
81	ORDER_DELIVERY	DENY	3
82	ARM_CHANGE	DENY	3
83	OPEN_CSM	DENY	3
84	SCAN_SBP_LINKS	ALLOW	3
85	STORN	DENY	3
86	SALE	ALLOW	7
87	ASSIGN_CORRECT	NEED_SIGNATURE	7
88	MANUAL_INPUT	DENY	7
89	CANCEL_BASKET	DENY	7
90	DELETE_ITEM	DENY	7
91	MODIFY_AMOUNT	DENY	7
92	RETURN_BASKET_OPERATIONS	ALLOW	7
93	APPLICATION_ADMIN	DENY	7
94	SALE_DEFECT	ALLOW	7
95	SET_COMPENSATION	ALLOW	7
96	MANUALLY_ADD_WARE_BY_CODE	DENY	7
97	ORDER_DELIVERY	ALLOW	7
98	ARM_CHANGE	ALLOW	7
99	OPEN_CSM	ALLOW	7
100	SCAN_SBP_LINKS	DENY	7
101	STORN	DENY	7
102	SALE	ALLOW	8
103	ASSIGN_CORRECT	NEED_SIGNATURE	8
104	MANUAL_INPUT	NEED_SIGNATURE	8
105	CANCEL_BASKET	NEED_SIGNATURE	8
106	DELETE_ITEM	NEED_SIGNATURE	8
107	MODIFY_AMOUNT	NEED_SIGNATURE	8
108	RETURN_BASKET_OPERATIONS	ALLOW	8
109	APPLICATION_ADMIN	ALLOW	8
110	SALE_DEFECT	ALLOW	8
111	SET_COMPENSATION	ALLOW	8
112	MANUALLY_ADD_WARE_BY_CODE	NEED_SIGNATURE	8
113	ORDER_DELIVERY	ALLOW	8
114	ARM_CHANGE	ALLOW	8
115	OPEN_CSM	ALLOW	8
116	SCAN_SBP_LINKS	ALLOW	8
117	STORN	ALLOW	8
\.


--
-- Data for Name: round_bonus_rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.round_bonus_rules (type_id, is_actual, e_round_side, name, rate) FROM stdin;
\.


--
-- Data for Name: rounding_algorithm; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rounding_algorithm (round_algorythm_items_id, is_actual, max_price, min_price, priority, kind, step, value, algorithm_type) FROM stdin;
\.


--
-- Data for Name: salesession; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.salesession (salesession_id, closed, num, opened, session_state, app_user, closing_user, sale_point, fiscal_drive_num, reg_num, ingenico_initialized, version_kkm_firmware, version_kkm_upd, kkm_ip, kkm_address, kkm_place) FROM stdin;
\.


--
-- Data for Name: storage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.storage (id, code, name, sort_num, is_actual, bs_main) FROM stdin;
\.


--
-- Data for Name: t_adaptive_fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_adaptive_fields (id, field_name, field_type, values_codes, values_captions, caption, for_sort, for_new_client, for_change_client, is_multi_element, is_main_ident, is_required, is_actual, visibility) FROM stdin;
2	FIRST_NAME	name	\N	\N	Имя	1	t	t	f	f	t	t	t
3	BIRTHDAY	date	\N	\N	Дата рождения	5	t	t	f	f	t	t	t
4	MOBILE_PHONE_MAIN	phone	\N	\N	Мобильный	6	t	t	f	t	t	t	t
5	EMAIL	email	\N	\N	Электронная почта	8	t	t	f	f	f	t	t
6	IS_EMAIL_CONFIRMED	int	\N	\N	Подтверждение эл. почты	9	f	t	f	f	f	t	t
7	WANT_RECEIVE_CHECK	checkbox	1		Получать электронные чеки	9	t	t	f	t	f	t	t
8	ID_CITY	int	\N	\N	ID_CITY	14	t	t	f	f	f	t	f
9	ADDR_CITY	string	\N	\N	Город	15	t	t	f	f	f	t	t
10	ID_STREET	int	\N	\N	ID_STREET	16	t	t	f	f	f	t	f
11	ADDR_STREET	string	\N	\N	Улица	17	t	t	f	f	f	t	t
12	ADDR_HOUSE	string	\N	\N	Дом	19	t	t	f	f	f	t	t
\.


--
-- Data for Name: t_basket_cheque; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_basket_cheque (id, id_basket, type, fiscal_doc_num, fiscal_doc_date, fiscal_doc_sum, fiscal_doc_sign, fiscal_doc_operation_type, kkt_reg_code, fiscal_storage_number, inn_ofd, cheque_site, send_type, is_sent, storno_order, global_number, per_session_number, buyer_email, buyer_phone, control_num, buyer_nip, buyer_name, buyer_address, invoice_number, email_confirmed, kkt_factory_number, subscribe_email_check, email_for_check) FROM stdin;
\.


--
-- Data for Name: t_basket_club_pro_forbid_promotion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_basket_club_pro_forbid_promotion (id_basket_club_pro_forbid_promotion, dtm_created, id_basket, id_club_pro_promotion) FROM stdin;
\.


--
-- Data for Name: t_basket_club_pro_promotion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_basket_club_pro_promotion (id_basket_club_pro_promotion, dtm_created, id_basket, id_club_pro_promotion, is_assigned) FROM stdin;
\.


--
-- Data for Name: t_basket_coupon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_basket_coupon (id_basket_coupon, coupon_number, operation, id_basket, basket_coupon_state) FROM stdin;
\.


--
-- Data for Name: t_basket_item_defect; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_basket_item_defect (id_basket_item_defect, basket_item_id, defect_description) FROM stdin;
\.


--
-- Data for Name: t_basket_item_vat_rates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_basket_item_vat_rates (id, basket_item_id, type, sum, rate) FROM stdin;
\.


--
-- Data for Name: t_basket_prepayments_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_basket_prepayments_info (id, id_payment, prepayment_fundcode, prepayment_num, prepayment_type, prepayment_subtype, prepayment_summa, prepayment_isused, prepayment_status, prepayment_cardnum_pc, prepayment_overpay_pc, prepayment_credit_product_id) FROM stdin;
\.


--
-- Data for Name: t_basket_vat_rates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_basket_vat_rates (id, basket_id, type, sum, rate) FROM stdin;
\.


--
-- Data for Name: t_cheque_attribute_stamp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_cheque_attribute_stamp (id, cheque_stamp_id, cheque_item_stamp_id, cheque_paymnet_stamp_id, key, value, cheque_correction_stamp_id) FROM stdin;
\.


--
-- Data for Name: t_cheque_item_stamp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_cheque_item_stamp (id, id_cheque_stamp, ware_name, ware_code, final_price, amount, ware_unit, vat_index, dept_num, ware_kind, payment_type) FROM stdin;
\.


--
-- Data for Name: t_cheque_payment_stamp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_cheque_payment_stamp (id, id_cheque_stamp, payment_type, input_summa, pay_card_name, additional_pay_summa, change_summa, vat1_index, vat1_sum, vat2_index, vat2_sum, vat3_index, vat3_sum, vat4index, vat4_sum, vat5_index, vat5_sum, vat6_index, vat6_sum) FROM stdin;
\.


--
-- Data for Name: t_cheque_stamp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_cheque_stamp (id, id_basket, ffd_version, date, cheque_type, cheque_format, cashier, cashier_inn, sale_session_cheque_num, fiscal_doc_num, kkm_type, fiscal_doc_sign, fiscal_drive_num) FROM stdin;
\.


--
-- Data for Name: t_client_promo_message; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_client_promo_message (id_message, message_code, id_basket, message_type, text, is_shown, source, content_type, source_type) FROM stdin;
\.


--
-- Data for Name: t_club_pro_bonus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_club_pro_bonus (id_club_pro_bonus, name) FROM stdin;
\.


--
-- Data for Name: t_club_pro_promotion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_club_pro_promotion (id_club_pro_promotion, name, date_beg, date_end) FROM stdin;
\.


--
-- Data for Name: t_club_pro_promotion_applicability; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_club_pro_promotion_applicability (id_club_pro_promotion_applicability, id_club_pro_promotion, dt) FROM stdin;
\.


--
-- Data for Name: t_com_pro_return_payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_com_pro_return_payments (id, id_payment, payment_num, ref_payment_num, return_method, amount) FROM stdin;
\.


--
-- Data for Name: t_control_scanning_stamp_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_control_scanning_stamp_item (id, id_basket_item, id_basket, id_ware, quantity, id_spec_ware_card, is_created_by_order, kiz_barcode, present_card_id, id_knt, ware_set_id) FROM stdin;
\.


--
-- Data for Name: t_correction_cheque_stamp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_correction_cheque_stamp (id, id_correction_op, date, ffd_version, correction_type, cashier, cashier_inn, correction_summa, cash_summa, cashless_summa, advance_summa, credit_summa, barter_summa, correction_purpose, correction_num, corrected_doc, vat_index, fiscal_doc_num, correction_dtm, kkm_type) FROM stdin;
\.


--
-- Data for Name: t_correction_op; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_correction_op (id_correction_op, correction_type, state, op_dtm, cash_summa, cashless_summa, nds_summa, username, salesession_salesession_id, external_id, external_num, correction_dtm, correction_purpose, corrected_doc, cheque_owner, cheque_hash, prepay_summa, nds_code, document_purpose_date, document_purpose) FROM stdin;
\.


--
-- Data for Name: t_credit_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_credit_product (id_credit_product, cred_serv_provider, credit_product_type, name, cred_order_edit, cred_payment, cred_check_type, proces_kred, proces_vozvrat_p, proces_vozvrat_a, razr_obmen, razr_smesh_oplata, process_company_sale, process_company_return, is_actual) FROM stdin;
\.


--
-- Data for Name: t_email_domain; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_email_domain (id_domain, domain_name, is_actual) FROM stdin;
\.


--
-- Data for Name: t_external_payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_external_payments (payment_id, payment_type, basket_id, card_id, ext_payment_id, description, amount, payment_type_account) FROM stdin;
\.


--
-- Data for Name: t_file_cache; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_file_cache (id_file_cache, file_name, file_content, error, dtm_ins, file_dest_system, payload_type) FROM stdin;
\.


--
-- Data for Name: t_km_report_fiscal_parameters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_km_report_fiscal_parameters (id_km_report_fiscal_parameters, session_num, report_dtm, sale_balance, growing_beg, growing_end, ret_balance, sale_cash_balance, sale_card_balance, ret_cash_balance, ret_card_balance, corr_receipt_balance, growing_ret_beg, growing_ret_end, growing_corr_receipt_beg, growing_corr_receipt_end, cash_in_box, session_id, kkm_registration_num, fiscal_storage_number, kkm_type, sale_advance_balance, report_type, create_user, sale_present_card_balance, ret_present_card_balance, sale_credit_balance, ret_credit_balance, sale_cashless_balance, ret_cashless_balance, sale_present_card_sm_balance, sale_present_card_gsp_balance, sale_present_card_sdx_balance, sale_present_card_mbf_balance, sale_present_card_mdc_balance, sale_present_card_bns_balance, sale_present_card_sdx2_balance, sale_present_card_sdx_pass_balance, sale_consideration_balance, ret_consideration_balance) FROM stdin;
\.


--
-- Data for Name: t_mark_code_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_mark_code_status (id, dtm_created, basket_num, order_num, ware_id, cis_barcode, mark_code_status, is_actual) FROM stdin;
\.


--
-- Data for Name: t_merch_colorsize; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_merch_colorsize (id_merch_colorsize, code, name, last_updated) FROM stdin;
\.


--
-- Data for Name: t_noncondition_ware; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_noncondition_ware (id_non_cond_ware, id_scat_noncond, ware_id, knt_barcode, serial_num, is_actual) FROM stdin;
\.


--
-- Data for Name: t_pay_card_terminal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_pay_card_terminal (id, terminal_num, connection, terminal_kind, is_integrated, is_default, is_actual, is_deleted, is_blocked, unknown_ern) FROM stdin;
\.


--
-- Data for Name: t_pay_card_terminal_cliche; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_pay_card_terminal_cliche (id, id_card_terminal, id_process_company, cliche, is_actual) FROM stdin;
\.


--
-- Data for Name: t_pay_card_terminal_salepoint; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_pay_card_terminal_salepoint (id, id_terminal, salepoint_code, is_actual) FROM stdin;
\.


--
-- Data for Name: t_pay_card_to_processing_company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_pay_card_to_processing_company (id, title, id_paycard_type, id_process_company, ordernum, is_actual) FROM stdin;
\.


--
-- Data for Name: t_pay_card_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_pay_card_type (id, title, num, is_actual) FROM stdin;
\.


--
-- Data for Name: t_payment_map; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_payment_map (id, payment_type, mapped_payment_type, priority) FROM stdin;
\.


--
-- Data for Name: t_payment_map_to_userrole; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_payment_map_to_userrole (id, role_id, map_id) FROM stdin;
\.


--
-- Data for Name: t_personal_order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_personal_order_items (id, basket_id, ware_id, id_merch_colorsize, quantity, catalog_price, final_price, discount_total) FROM stdin;
\.


--
-- Data for Name: t_present_card_prefix; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_present_card_prefix (id_pk_prefix, bin_prefix, is_actual) FROM stdin;
\.


--
-- Data for Name: t_processing_company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_processing_company (id, title, is_actual) FROM stdin;
\.


--
-- Data for Name: t_reject_reason; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_reject_reason (id_reject_reason, reason_id, reason_name, is_actual) FROM stdin;
\.


--
-- Data for Name: t_sale_point; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_sale_point (id, num, state, last_basket, last_active, reg_num, is_actual, pkkt_client_code) FROM stdin;
837476819	0	ACTUAL	\N	2024-12-10	0	t	\N
888076819	1	FUTURE	\N	\N	0000666695033366	t	\N
888086819	2	FUTURE	\N	\N	0000666664016174	t	\N
888096819	3	FUTURE	\N	\N	0000666667043468	t	\N
888106819	4	FUTURE	\N	\N	0000666673063493	t	\N
888116819	5	FUTURE	\N	\N	0000666115032091	t	\N
888126819	6	FUTURE	\N	\N	0000020507051791	t	\N
888136819	7	FUTURE	\N	\N	0000666671011204	t	\N
888146819	8	FUTURE	\N	\N	0000020507059917	t	\N
907096819	10	ACTUAL	ПР-0017715	2024-12-05	10	t	\N
907106819	11	FUTURE	\N	\N	11	t	\N
907086819	9	ACTUAL	ПР-0019431	2024-12-10	9	t	\N
907876819	13	ACTUAL	ПР-0024125	2024-12-26	13	t	\N
907886819	14	ACTUAL	ПР-0019451	2024-12-10	14	t	\N
907476819	12	ACTUAL	ПР-0017135	2024-12-02	12	t	\N
907486819	120	ACTUAL	ПР-0035860	2025-02-05	120	t	\N
\.


--
-- Data for Name: t_sellers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_sellers (id_contractor, id_sellers, sellers_name, sellers_phone, sellers_inn, is_actual) FROM stdin;
\.


--
-- Data for Name: t_sending_auth_code_attempts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_sending_auth_code_attempts (id, phone_number, sending_date, sending_method, id_basket, is_inputed) FROM stdin;
\.


--
-- Data for Name: t_sending_auth_code_rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_sending_auth_code_rules (reauthorization_period, number_of_calls, is_actual, number_of_vk) FROM stdin;
\.


--
-- Data for Name: t_shop_parameter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_shop_parameter (code, name, value, type, last_updated) FROM stdin;
ShopAddress	Адрес	Тестовый магазин СМ Россия	string	2025-02-05
ShopTerritory	id города(territory)	1720920299	number	2025-02-05
ShopTradeRegion	id региона(trade_region)	10060299	number	2025-02-05
IdTradenet	Id торговой сети	10000299	string	2025-02-05
ShopName	Наименование юр. лица	ООО "Спортмастер"	string	2025-02-05
ClubProServiceReserve	Резервный сервис Club Pro	http://sks-price-retail.dsks.gksm.local/api/v1/CardPort?wsdl	string	2025-02-05
CommonClicheControl	Централизованное управление заголовком/окончанием чека	ALLOW	string	2025-02-05
PCardsServiceConnectTimeout	Таймаут подключения PCards (мс)	10000	number	2025-02-05
PCardsServiceSocketTimeout	Таймаут ожидания PCards (мс)	10000	number	2025-02-05
PersonalOrderSupport	Разрешить работу с ПЗ	ALLOW	string	2025-02-05
SBPStaticQr	Статичный QR-код СБП	ALLOW	string	2025-02-05
SBPWaitTimeout	Таймаут подтверждения оплаты СБП(мс)	180000	number	2025-02-05
CompassService	Сервис КОМПАС	http://compath-prod.app.local	string	2025-02-05
CompassServiceConnectTimeout	Таймаут подключения КОМПАС (мс)	40000	number	2025-02-05
CompassServiceSocketTimeout	Таймаут ожидания КОМПАС (мс)	50000	number	2025-02-05
ComProAllowSkipFittingForMarketplace	Выдача заказов с товаром МП без примерки	ALLOW	string	2025-02-05
ComProConnectTimeout	Таймаут подключения сервиса ComPro (мс)	10000	number	2025-02-05
ComProDefaultRejectReason	Значение по умолчанию причины отказов	101	string	2025-02-05
SendReportsToKis	Передача отчетов в КИС РМ	NOT_ALLOW	string	2025-02-05
ShopType	Тип магазина	SPORTMASTER	string	2025-02-05
AllowBasketSearchOnClosedSession	Поиск корзин при закрытой смене	NOT_ALLOW	string	2025-02-05
ComProService	Адрес сервиса ComPro	http://compro-ws.gksm.local/compro-lite/ComLiteApiPort	string	2025-02-05
ComProServiceReserve	Адрес резервного сервиса ComPro	http://compro-ws.gksm.local/compro-lite/ComLiteApiPort	string	2025-02-05
ComProSocketTimeout	Таймаут ожидания сервиса ComPro (мс)	20000	number	2025-02-05
ShowElAnketaTooltips	Подсказки при заполнении анкеты	NOT_ALLOW	string	2025-02-05
ShowEmailTooltips	Подсказки при заполнении EMAIL	ALLOW	string	2025-02-05
ShowExtBasketInfo	Показывать инфоокно	ALLOW	string	2025-02-05
ShowPrintQrButton	Печать QR-code СБП на чеке	ALLOW	string	2025-02-05
AllowBlockSellerChangeForComProOrder	Блокировать смену продавца на строках OMS-заказов	ALLOW	string	2025-02-05
AllowClientRegistrationWithoutSms	Регистрация клиента без подтверждения по СМС	NOT_ALLOW	string	2025-02-05
ConfirmRiskOperationsByAnyoneWithCard	ПРО по наличию карты	NOT_ALLOW	string	2025-02-05
CSMUrl	Адрес CSM	https://csm.moscow.sportmaster.ru/call-center/#order:orderType=2&orderId=	string	2025-02-05
SMSAuthOnClubCardBarcode	СМС авторизация по не защищенному ШК КК	ALLOW	string	2025-02-05
TimerToPrintQRSBP	Таймер на печать QR СБП	1	number	2025-02-05
TransferOfOwnership	Переход права собственности	ON_PAYMENT	string	2025-02-05
AllowExchangeBasket	Включить функционал "Обмена"	NOT_ALLOW	string	2025-02-05
AllowExorigoUposOperatorConst	Разрешить общего оператора для касс FP-T88FVA	ALLOW	string	2025-02-05
EnableKisPickup	Выводить предоплаченные PickUp из оборота РМ	NOT_ALLOW	string	2025-02-05
PGateRestService	Сервис Pgate	http://pgate-sm.gksm.local/pgate/rest/v2	string	2025-02-05
PGateRestServiceConnectTimeout	Таймаут подключения PGate (мс)	40000	number	2025-02-05
PGateRestServiceSocketTimeout	Таймаут ожидания PGate (мс)	50000	number	2025-02-05
TwoLanguagesOnDisplayToggle	Вывод информации на дисплей на 2х языках	NOT_ALLOW	string	2025-02-05
UseCorrectionTypeWrongPrice	Использование корректировки Неверная цена	ALLOW	string	2025-02-05
UsePresentCardMSROnSaleScreen	Возможность прокатывать ПК на вкладке Сканирование	ALLOW	string	2025-02-05
AllowLimitLessPayCardPayments	Неограниченное число оплат	NOT_ALLOW	string	2025-02-05
AllowManualKizInput	Ручной ввод КИЗ	NOT_ALLOW	string	2025-02-05
AllowOpenCashDrawer	Открытие денежного ящика	NOT_ALLOW	string	2025-02-05
ErPilot	Типы электронной регистрации анкеты	OFF	string	2025-02-05
PhoneMaskFromDictionary	Вывод масок телефонных номеров из справочника	NOT_ALLOW	string	2025-02-05
PkktServiceAddress	Сервис ПККТ	http://pkkt.kassa.localcorp.net/	string	2025-02-05
PkktServiceConnectTimeout	Таймаут подключения ПККТ (мс)	40000	number	2025-02-05
WareInfoExpirationTime	Обновление информации по товару	1	number	2025-02-05
WarePresentCardMultiPay	ПК-Оплата двумя видами при продаже ПК	ALLOW	string	2025-02-05
WarePresentCardPay	ПК-Оплата ПК при продаже ПК	NOT_ALLOW	string	2025-02-05
AllowPaymentByLink	Оплата по ссылке	ALLOW	string	2025-02-05
AllowSellWithoutGtin	Разрешить продажу без GTIN	ALLOW	string	2025-02-05
AllowSellWithoutScanCis	Разрешить продажу маркированного товара без обязательного сканирования ШК КИЗ	NOT_ALLOW	string	2025-02-05
ErTabletService	URL сервиса анкет на планшете		string	2025-02-05
ExorigoUposOperator	Имя оператора за смену для касс FP-T88FVA	GO SPORT	string	2025-02-05
Footer1	Строка 1 подвала чека		string	2025-02-05
PkktServiceSocketTimeout	Таймаут ожидания ПККТ (мс)	50000	number	2025-02-05
PrepaymentOrderAvailableForCashier	Внесение предоплаты в АРМ кассира	ALLOW	string	2025-02-05
PrepaymentOrderAvailableForOmni	Внесение предоплаты в АРМ OMNI	ALLOW	string	2025-02-05
PresentCardElectronIdWare	Список товаров ЭПК	156242890299	string	2025-02-05
WarePresentCardStorno	ПК-Сторнирование ПК в корзине	NOT_ALLOW	string	2025-02-05
WareShopBarcode	Добавление товара в корзину по ШК магазина	NOT_ALLOW	string	2025-02-05
AllowSendECheck	Электрочек ФНС	ALLOW	string	2025-02-05
AllowShowTimerOnSessionClose	Таймер при закрытии смены	ALLOW	string	2025-02-05
AllowTechnicalDiscountMemoPrinting	Тех. уценка. Печать заметок и запрет назначения на корзину	ALLOW	string	2025-02-05
Footer2	Строка 2 подвала чека		string	2025-02-05
Footer3	Строка 3 подвала чека		string	2025-02-05
Footer4	Строка 4 подвала чека		string	2025-02-05
PresentCardElectronMaxValue	Максимальная сумма номинала ЭПК	150000	number	2025-02-05
PresentCardElectronMinValue	Минимальная сумма номинала ЭПК	500	number	2025-02-05
PresentCardExpirationTerm	Срок действия БПК, в месяцах	36	string	2025-02-05
WareSpecialtyImgLinkPattern	Паттерн ссылки для просмотра фото товара с особенностью	https://mir-cd.app.local/ea/faces/login?TK=UFVPRm14NjRwSDc3eUUyUmcxWHlxK2RJMG1HUnJ5OEpIRFhTa250cnZ1d3pVcSs5WlIxbm8ySnA0NDNVTzBMRGVyaFRLNWg4TVZFPQ&MRM_ID=	string	2025-02-05
WorkWithDefectAndSpecWareOnKizBarcode	Работа с КИЗ КТО/КНТ	ALLOW	string	2025-02-05
WorkWithImages	Разрешить изображения на строке	ALLOW	string	2025-02-05
AuthorisationByPassport	Авторизация клиента по паспорту	NOT_ALLOW	string	2025-02-05
AuthorizationByEmail	Авторизация клиента по email	NOT_ALLOW	string	2025-02-05
ForbidSeveralPcInBasket	Запрет продажи нескольких ПК в одной корзине	NOT_ALLOW	string	2025-02-05
Header1	Строка 1 заголовка чека		string	2025-02-05
Header2	Строка 2 заголовка чека		string	2025-02-05
Header3	Строка 3 заголовка чека		string	2025-02-05
PresentCardMaxValue	Максимальная сумма номинала БПК	150000	string	2025-02-05
PresentCardMinValue	Минимальная сумма номинала БПК	500	string	2025-02-05
YandexSplitPayment	Доступность оплаты по Яндекс сплит	NOT_ALLOW	string	2025-02-05
AvangardOpenApiRestService	Сервис Авангард	http://avangard-ru-by-kz-api.gksm.local/api/v1/	string	2025-02-05
AvangardOpenApiRestServiceConnectTimeout	Таймаут подключения Авангард (мс)	40000	number	2025-02-05
AvangardOpenApiRestServiceSocketTimeout	Таймаут ожидания Авангард (мс)	50000	number	2025-02-05
Header4	Строка 4 заголовка чека		string	2025-02-05
ImageService	Адрес сервиса изображений	http://172.16.4.228:2080/MobileStick/api/picture/	string	2025-02-05
KizSwitch	Включить работу с маркировкой КИЗ	ALLOW	string	2025-02-05
PresentCardNominalIdWare	id товара БПК	176496150299	string	2025-02-05
PrintControlNumber	Печать КН	ALLOW	string	2025-02-05
PrintPaymentSystemReport	Печать отчета по платежным системам	ALLOW	string	2025-02-05
PrintSlipsByKkm	Печать банковских слипов на ККМ	NOT_ALLOW	string	2025-02-05
BasketsUnloadingPeriod	Период выгрузки корзин (мин.)	5	number	2025-02-05
BonusSmsAuth	СМС-авторизация для списания бонусов	ALLOW	string	2025-02-05
CalculationDiscountsInClubPro	Применение скидок на стороне ClubPro	ALLOW	string	2025-02-05
KntKizSwitch	Включить работу с КНТ КИЗ	ALLOW	string	2025-02-05
LogstashEnable	Отправка логов	NOT_ALLOW	string	2025-02-05
MarkizRestService	Сервис МАРКИЗ	http://kizprint.gksm.local/marking/api-rm/	string	2025-02-05
PrintTerminalReportsByKkm	Печать отчётов банковского терминала	NOT_ALLOW	string	2025-02-05
PriorityMethodClientAuthorization	Приоритетный способ авторизации клиента	QR	string	2025-02-05
ProhibitParallelAuth	Запрет параллельной авторизации	NOT_ALLOW	string	2025-02-05
CanCreateClientWithElectronicForm	Создание клиента через электронную анкету	OFFLINE_ELECTRONIC	string	2025-02-05
CanEnterBlankPresentCardNumber	Возможность вводить номер БПК	NOT_ALLOW	string	2025-02-05
CanPayByPresentCards	Оплата подарочными картами	ALLOW	string	2025-02-05
MarkizRestServiceConnectTimeout	Таймаут подключения МАРКИЗ (мс)	40000	number	2025-02-05
MarkizRestServiceSocketTimeout	Таймаут ожидания МАРКИЗ (мс)	50000	number	2025-02-05
MarkizServiceIsEnabled	Запрос проверки принадлежности КИЗ к ЮЛ в МАРКИЗ	ALLOW	string	2025-02-05
ReversalSalesOff	Запрет сторнирования корзин	ALLOW	string	2025-02-05
SBPcertificate	Контейнер с сертификатами СБП		string	2025-02-05
SBPcertificatePassword	Ключ к контейнеру с сертификатами СБП	123456	string	2025-02-05
CanPrintChequeWithZeroPrice	Печатать нулевой фискальный чек	NOT_ALLOW	string	2025-02-05
CheckKkmSessionWithSameNum	Проверять дублирование номера смены	ALLOW	string	2025-02-05
CheckOutOrderScanIfFitting	Контрольное сканирование заказа при выдаче на примерку	ALLOW	string	2025-02-05
CheckRemains	Проверка остатков	NOT_ALLOW	string	2025-02-05
MaximumCashAmount	Максимальная сумма наличности в кассе	100000	number	2025-02-05
NeedCheckFiscalNumber	Проверка регистрационного номера ККТ	ALLOW	string	2025-02-05
SBPConnectionTimeout	Таймаут подключения СБП (мс)	40000	number	2025-02-05
SBPlogin	Логин СБП	LA0000098776	string	2025-02-05
SBPMerchantAccount	Зарегистрированный расчётный счёт в рамках магазина/сети в СБП	30232810591295170094	string	2025-02-05
SBPMerchantAddress	Адрес сервиса SBP : Merchant	https://195.225.38.159:9443	string	2025-02-05
ChequeBottom	Текст в конце чека		string	2025-02-05
ChequeTop	Текст в начале чека		string	2025-02-05
ChequeWithUnconfirmedEmail	Чек при неподтвержденном Email	PRINT_PAPER_CHEQUE	string	2025-02-05
NeedConfirmRiskOperationsWithCard	Обязательное подтверждение РО картой сотрудника	NOT_ALLOW	string	2025-02-05
NeedEnrollCardForConfirmation	Включить подтверждение рисковых операций электронной картой сотрудника	NOT_ALLOW	string	2025-02-05
NeedShowComProOrderCellNum	Отображать номер ячейки заказа	ALLOW	string	2025-02-05
SBPpassword	Пароль СБП	7J91rtsBi9p7Sd	string	2025-02-05
ClubProClientConnectTimeout	Таймаут подключения ClubPro - клиентский (мс)	20000	number	2025-02-05
ClubProClientSocketTimeout	Таймаут ожидания ClubPro - клиентский (мс)	20000	number	2025-02-05
OverpayTransfer	Перенос переплаты по заказу	ALLOW	string	2025-02-05
PCardsService	Адрес сервиса Pcards	http://pcards-ws.gksm.local/pcards-lite/PCardsPort/CardPort	string	2025-02-05
PCardsServiceConnectAttempts	Количество попыток подключения	3	number	2025-02-05
SbpPaymentMode	Режим работ с СБП	new_static_links	string	2025-02-05
SBPPaymentPurpose	Назначение платежа СБП		string	2025-02-05
SBPShowQROnCashierScreen	Отображать QR-код СБП на экране кассира	NOT_ALLOW	string	2025-02-05
SBPSocketTimeout	Таймаут ответа СБП (мс)	40000	number	2025-02-05
ClubProService	Сервис Club Pro	http://sks-price-retail.dsks.gksm.local/api/v1/CardPort?wsdl	string	2025-02-05
PGateWaitTimeout	Таймаут подтверждения оплаты PGate (мс)	60000	number	2025-02-05
ClubProServiceClient	Сервис ClubPro - клиентский	http://sks-clientprofile-retail.dsks.gksm.local/api/v1/CardPort?wsdl	string	2025-02-05
CisMovementInfo	Информация по движению КИЗ	ALLOW	string	2025-02-05
SendEcheque	Электронные чеки	ALLOW	string	2025-02-05
SendEchequeCompath	Отправка электронного чека КОМПАС	ALLOW	string	2025-02-05
CurrentFirmwareForPRIM	Актуальная версия прошивки ККМ ПРИМ	C110403, E120402, E420402, E410500, C110500	string	2025-02-05
ClubProConnectTimeout	Таймаут подключения ClubPro (мс)	10000	number	2025-02-05
ClubProSocketTimeout	Таймаут ожидания ClubPro (мс)	10000	number	2025-02-05
SendCodeByCompath	Отправка кода через КОМПАС	NOT_ALLOW	string	2025-02-05
AllowSearchComProOrderOnAddingClient	Привязка заказа OMS к корзине при авторизации клиента	NOT_ALLOW	string	2025-02-05
\.


--
-- Data for Name: t_shp_trade_region_territory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_shp_trade_region_territory (id, id_territory, id_trade_region, is_actual) FROM stdin;
\.


--
-- Data for Name: t_spec_ware_card; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_spec_ware_card (id_spec_ware_card, num, ware_id, barcode, is_actual) FROM stdin;
\.


--
-- Data for Name: t_spec_ware_card_cis_serial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_spec_ware_card_cis_serial (id_spec_ware_card_cis_barcode, id_spec_ware_card, serial_num, is_actual) FROM stdin;
\.


--
-- Data for Name: t_street; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_street (id_street, id_territory, name, is_actual) FROM stdin;
\.


--
-- Data for Name: t_telephone_mask; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_telephone_mask (id_telephone_mask, location, phone_prefix, mask_num_len, is_actual) FROM stdin;
\.


--
-- Data for Name: t_territory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_territory (id_territory, name, is_actual, full_name) FROM stdin;
\.


--
-- Data for Name: t_trade_region; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_trade_region (id_trade_region, name, is_actual) FROM stdin;
\.


--
-- Data for Name: t_user_barcode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_user_barcode (key_user, barcode, fast_auth, is_actual) FROM stdin;
\.


--
-- Data for Name: t_vat_correction_cheque; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_vat_correction_cheque (id, basket_id, receipt_num, receipt_num_src, dtm_print, cheque_type, total_sum, cashless_sum) FROM stdin;
\.


--
-- Data for Name: t_vat_correction_cheque_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_vat_correction_cheque_item (id, vat_correction_cheque_id, ware_id, code, amount, catalogprice, retailprice, finalrowprice) FROM stdin;
\.


--
-- Data for Name: t_vat_correction_prev; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_vat_correction_prev (id, basket_id, receipt_num_src, receipt_dtm_src, need_corr_cheque) FROM stdin;
\.


--
-- Data for Name: t_vat_correction_prev_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_vat_correction_prev_item (id, vat_correction_prev_id, ware_id, code, amount, catalogprice, retailprice, finalrowprice) FROM stdin;
\.


--
-- Data for Name: t_vat_correction_prev_print; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_vat_correction_prev_print (id, vat_correction_prev_id, receipt_num, dtm_print, seq_id) FROM stdin;
\.


--
-- Data for Name: t_ware_extra_gtin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_ware_extra_gtin (id_ware, extra_gtin, is_actual) FROM stdin;
\.


--
-- Data for Name: t_ware_set; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_ware_set (id_set, set_num, set_name, barcode, id_segment, kind, is_actual) FROM stdin;
\.


--
-- Data for Name: t_ware_set_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_ware_set_item (id_set_str, id_set, id_ware, quantity, is_basic_ware, str_num, is_actual, id_spec_ware_card) FROM stdin;
\.


--
-- Data for Name: t_ware_warranty; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_ware_warranty (id_ware_warranty, id_ware, warranty_period_length, warranty_period_unit, dt_beg, dt_end, id_parent, sort_number, component_name, last_updated) FROM stdin;
\.


--
-- Data for Name: user_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_session (user_session_id, login, is_finished, dt_start, dt_finish, last_changed, standalone) FROM stdin;
1	admin	t	2025-02-05 17:49:22.147	2025-02-05 17:55:15.021	2025-02-05 17:55:15.021	t
\.


--
-- Data for Name: userrole; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userrole (name, id, purpose, is_editable) FROM stdin;
Администратор	1	Admin	t
Настройщик	3	Tuner	t
Продавец	4	Seller	t
Директор	6	Director	t
ОРЗИМ	7	Orzim	t
Кассир	2	Cashier	f
Старший кассир	5	Adv_cashier	f
Администратор-настройщик	8	Admin-Tuner	t
\.


--
-- Data for Name: version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.version (version, dtm) FROM stdin;
0	2024-01-25 16:05:38.744
3.0	2024-01-25 16:05:38.771
3.0.1	2024-01-25 16:05:38.775
3.0.1.1	2024-01-25 16:05:38.777
3.0.1.2	2024-01-25 16:05:38.778
3.0.1.3	2024-01-25 16:05:38.779
3.0.1.5	2024-01-25 16:05:38.78
3.0.2	2024-01-25 16:05:38.798
3.0.2.1	2024-01-25 16:05:38.799
3.0.2.2	2024-01-25 16:05:38.799
3.0.2.3	2024-01-25 16:05:38.806
3.0.2.4	2024-01-25 16:05:38.806
3.0.3	2024-01-25 16:05:38.807
3.0.3.1	2024-01-25 16:05:38.808
3.0.3.2	2024-01-25 16:05:38.808
3.0.3.3	2024-01-25 16:05:38.81
3.0.4	2024-01-25 16:05:38.81
3.0.4.1	2024-01-25 16:05:38.811
3.0.4.2	2024-01-25 16:05:38.811
3.0.4.3	2024-01-25 16:05:38.812
3.0.4.4	2024-01-25 16:05:38.812
3.0.4.5	2024-01-25 16:05:38.813
3.0.4.6	2024-01-25 16:05:38.813
3.0.5	2024-01-25 16:05:38.814
3.0.5.1	2024-01-25 16:05:38.814
3.0.5.2	2024-01-25 16:05:38.815
3.0.5.3	2024-01-25 16:05:38.815
3.0.5.4	2024-01-25 16:05:38.816
3.0.5.5	2024-01-25 16:05:38.816
3.0.6	2024-01-25 16:05:38.823
3.0.6.1	2024-01-25 16:05:38.824
3.0.6.2	2024-01-25 16:05:38.825
3.0.6.3	2024-01-25 16:05:38.825
3.0.6.4	2024-01-25 16:05:38.826
3.0.6.5	2024-01-25 16:05:38.827
3.0.6.6	2024-01-25 16:05:38.827
3.0.7	2024-01-25 16:05:38.835
3.0.7.1	2024-01-25 16:05:38.835
3.0.7.2	2024-01-25 16:05:38.836
3.0.7.2.1	2024-01-25 16:05:38.837
3.0.7.2.3	2024-01-25 16:05:38.837
3.0.7.2.4	2024-01-25 16:05:38.838
3.0.7.2.5	2024-01-25 16:05:38.838
3.0.7.2.6	2024-01-25 16:05:38.839
3.0.7.2.7	2024-01-25 16:05:38.84
3.0.7.2.8	2024-01-25 16:05:38.84
3.0.7.2.9	2024-01-25 16:05:38.841
3.0.7.3	2024-01-25 16:05:38.846
3.0.7.4	2024-01-25 16:05:38.85
3.0.7.5	2024-01-25 16:05:38.855
3.0.7.5.1	2024-01-25 16:05:38.862
3.0.7.5.1.1	2024-01-25 16:05:38.866
3.0.7.5.2	2024-01-25 16:05:38.87
3.0.7.5.3	2024-01-25 16:05:38.873
3.0.7.5.4	2024-01-25 16:05:38.876
3.0.7.6	2024-01-25 16:05:38.879
3.0.7.6.1	2024-01-25 16:05:38.885
3.0.7.7	2024-01-25 16:05:38.89
3.0.7.7.1	2024-01-25 16:05:38.893
3.0.7.7.2	2024-01-25 16:05:38.897
3.0.7.7.3	2024-01-25 16:05:38.9
3.0.7.8	2024-01-25 16:05:38.903
3.0.7.9	2024-01-25 16:05:38.906
3.0.7.9.1	2024-01-25 16:05:38.909
3.0.8	2024-01-25 16:05:38.92
3.0.8.1	2024-01-25 16:05:38.923
3.0.8.2	2024-01-25 16:05:38.928
3.0.8.3	2024-01-25 16:05:38.932
3.0.8.4	2024-01-25 16:05:38.936
3.0.8.5	2024-01-25 16:05:38.937
3.0.8.5.1	2024-01-25 16:05:38.941
3.0.8.5.2	2024-01-25 16:05:38.942
3.0.8.5.3	2024-01-25 16:05:38.942
3.0.8.5.4	2024-01-25 16:05:38.943
3.0.8.5.8	2024-01-25 16:05:38.944
3.0.8.5.9	2024-01-25 16:05:38.944
3.0.9	2024-01-25 16:05:38.945
3.1	2024-01-25 16:05:38.945
3.1.1	2024-01-25 16:05:38.946
3.1.2	2024-01-25 16:05:38.946
3.1.2.5	2024-01-25 16:05:38.947
3.1.2.6	2024-01-25 16:05:38.947
3.1.2.7	2024-01-25 16:05:38.947
3.1.2.8	2024-01-25 16:05:38.948
3.1.3	2024-01-25 16:05:38.961
3.1.3.1	2024-01-25 16:05:38.962
3.1.3.2	2024-01-25 16:05:38.962
3.1.3.3	2024-01-25 16:05:38.962
3.1.3.4	2024-01-25 16:05:38.963
3.1.3.5	2024-01-25 16:05:38.963
3.1.3.5.1	2024-01-25 16:05:38.964
3.1.3.6	2024-01-25 16:05:38.966
3.1.3.7	2024-01-25 16:05:38.969
3.1.3.8	2024-01-25 16:05:38.969
3.1.3.9	2024-01-25 16:05:38.97
3.1.3.10	2024-01-25 16:05:38.97
3.1.3.11	2024-01-25 16:05:38.97
3.1.3.12	2024-01-25 16:05:38.971
3.1.4	2024-01-25 16:05:39.001
3.1.4.1	2024-01-25 16:05:39.003
3.1.4.2	2024-01-25 16:05:39.005
3.1.4.3	2024-01-25 16:05:39.006
3.1.4.3.1	2024-01-25 16:05:39.006
3.1.4.4	2024-01-25 16:05:39.008
3.1.4.5	2024-01-25 16:05:39.008
3.1.4.6	2024-01-25 16:05:39.009
3.1.4.7	2024-01-25 16:05:39.009
3.1.4.8	2024-01-25 16:05:39.009
3.1.4.9	2024-01-25 16:05:39.01
3.1.4.10	2024-01-25 16:05:39.01
3.1.5	2024-01-25 16:05:39.014
3.1.5.1	2024-01-25 16:05:39.027
3.1.5.2	2024-01-25 16:05:39.041
3.1.5.3	2024-01-25 16:05:39.041
3.1.5.4	2024-01-25 16:05:39.042
3.1.5.4.1	2024-01-25 16:05:39.042
3.1.5.4.2	2024-01-25 16:05:39.043
3.1.5.4.3	2024-01-25 16:05:39.043
3.1.5.4.4	2024-01-25 16:05:39.05
3.1.5.4.5	2024-01-25 16:05:39.051
3.1.5.4.6	2024-01-25 16:05:39.051
3.1.5.4.7	2024-01-25 16:05:39.052
3.1.5.4.8	2024-01-25 16:05:39.052
3.1.5.5	2024-01-25 16:05:39.052
3.1.5.5.1	2024-01-25 16:05:39.053
3.1.5.5.2	2024-01-25 16:05:39.053
3.1.5.5.3	2024-01-25 16:05:39.053
3.1.5.6	2024-01-25 16:05:39.063
3.1.5.7	2024-01-25 16:05:39.066
3.1.5.8	2024-01-25 16:05:39.066
3.1.5.9	2024-01-25 16:05:39.067
3.1.5.10	2024-01-25 16:05:39.068
3.1.5.11	2024-01-25 16:05:39.068
3.1.5.11.1	2024-01-25 16:05:39.069
3.1.5.11.2	2024-01-25 16:05:39.069
3.1.5.11.3	2024-01-25 16:05:39.07
3.1.5.11.4	2024-01-25 16:05:39.07
3.1.5.11.5	2024-01-25 16:05:39.07
3.1.5.11.6	2024-01-25 16:05:39.07
3.1.5.12	2024-01-25 16:05:39.119
3.1.5.13	2024-01-25 16:05:39.121
3.1.5.13.1	2024-01-25 16:05:39.2
3.1.5.13.2	2024-01-25 16:05:39.201
3.1.5.13.3	2024-01-25 16:05:39.201
3.1.5.13.4	2024-01-25 16:05:39.201
3.1.5.13.5	2024-01-25 16:05:39.202
3.1.5.14	2024-01-25 16:05:39.203
3.1.6	2024-01-25 16:05:39.204
3.1.6.1	2024-01-25 16:05:39.211
3.1.6.2	2024-01-25 16:05:39.212
3.1.6.2.1	2024-01-25 16:05:39.212
3.1.6.2.2	2024-01-25 16:05:39.212
3.1.6.2.3	2024-01-25 16:05:39.213
3.1.6.3	2024-01-25 16:05:39.213
3.1.6.4	2024-01-25 16:05:39.219
3.1.6.5	2024-01-25 16:05:39.22
3.1.6.6	2024-01-25 16:05:39.221
3.1.6.7	2024-01-25 16:05:39.221
3.1.6.8	2024-01-25 16:05:39.222
3.1.6.9	2024-01-25 16:05:39.222
3.1.6.10	2024-01-25 16:05:39.222
3.1.6.11	2024-01-25 16:05:39.223
3.1.7	2024-01-25 16:05:39.228
3.1.7.1	2024-01-25 16:05:39.23
3.1.7.2	2024-01-25 16:05:39.231
3.1.7.3	2024-01-25 16:05:39.232
3.1.7.4	2024-01-25 16:05:39.232
3.1.7.5	2024-01-25 16:05:39.233
3.1.7.5.3	2024-01-25 16:05:39.233
3.1.7.6	2024-01-25 16:05:39.233
3.1.8	2024-01-25 16:05:39.242
3.1.8.1	2024-01-25 16:05:39.248
3.1.8.2	2024-01-25 16:05:39.248
3.1.8.2.1	2024-01-25 16:05:39.248
3.1.8.2.2	2024-01-25 16:05:39.249
3.1.8.3	2024-01-25 16:05:39.25
3.1.8.4	2024-01-25 16:05:39.25
3.1.8.5	2024-01-25 16:05:39.25
3.1.8.6	2024-01-25 16:05:39.251
3.1.8.7	2024-01-25 16:05:39.251
3.1.8.8	2024-01-25 16:05:39.251
3.1.9	2024-01-25 16:05:39.254
3.1.9.1	2024-01-25 16:05:39.254
3.1.9.1.1	2024-01-25 16:05:39.255
3.1.9.1.2	2024-01-25 16:05:39.257
3.1.9.2	2024-01-25 16:05:39.29
3.1.9.3	2024-01-25 16:05:39.29
3.1.9.4	2024-01-25 16:05:39.291
3.1.9.5	2024-01-25 16:05:39.296
3.1.9.6	2024-01-25 16:05:39.297
3.2	2024-01-25 16:05:39.319
3.2.1	2024-01-25 16:05:39.32
3.2.2	2024-01-25 16:05:39.321
3.2.3	2024-01-25 16:05:39.321
3.2.4	2024-01-25 16:05:39.322
3.2.5	2024-01-25 16:05:39.322
3.2.6	2024-01-25 16:05:39.322
3.2.7	2024-01-25 16:05:39.33
3.2.8	2024-01-25 16:05:39.33
3.2.9	2024-01-25 16:05:39.33
3.3	2024-01-25 16:05:39.33
3.3.1	2024-01-25 16:05:39.331
3.3.2	2024-01-25 16:05:39.332
3.3.3	2024-01-25 16:05:39.332
3.3.4	2024-01-25 16:05:39.333
3.3.5	2024-01-25 16:05:39.333
3.3.6	2024-01-25 16:05:39.333
3.4	2024-01-25 16:05:39.333
3.4.1	2024-01-25 16:05:39.334
3.4.2	2024-01-25 16:05:39.334
3.4.3	2024-01-25 16:05:39.335
3.4.4	2024-01-25 16:05:39.336
3.4.5	2024-01-25 16:05:39.336
3.4.6	2024-01-25 16:05:39.336
3.4.7	2024-01-25 16:05:39.337
3.5	2024-01-25 16:05:39.356
3.5.1	2024-01-25 16:05:39.357
3.5.2	2024-01-25 16:05:39.357
3.5.3	2024-01-25 16:05:39.357
3.5.4	2024-01-25 16:05:39.358
3.5.5	2024-01-25 16:05:39.359
3.5.6	2024-01-25 16:05:39.359
3.5.7	2024-01-25 16:05:39.36
3.5.8	2024-01-25 16:05:39.36
3.5.9	2024-01-25 16:05:39.36
3.5.10	2024-01-25 16:05:39.361
3.5.11	2024-01-25 16:05:39.361
3.5.12	2024-01-25 16:05:39.361
3.5.13	2024-01-25 16:05:39.363
3.5.14	2024-01-25 16:05:39.363
3.5.15	2024-01-25 16:05:39.364
3.5.16	2024-01-25 16:05:39.364
3.6	2024-01-25 16:05:39.377
3.6.1	2024-01-25 16:05:39.384
3.6.2	2024-01-25 16:05:39.391
3.6.3	2024-01-25 16:05:39.391
3.6.4	2024-01-25 16:05:39.391
3.6.5	2024-01-25 16:05:39.392
3.6.6	2024-01-25 16:05:39.392
3.6.7	2024-01-25 16:05:39.392
3.6.8	2024-01-25 16:05:39.393
3.6.9	2024-01-25 16:05:39.393
3.6.10	2024-01-25 16:05:39.393
3.6.11	2024-01-25 16:05:39.395
3.6.12	2024-01-25 16:05:39.401
3.6.13	2024-01-25 16:05:39.402
3.6.14	2024-01-25 16:05:39.402
3.6.15	2024-01-25 16:05:39.402
3.6.16	2024-01-25 16:05:39.403
3.6.17	2024-01-25 16:05:39.403
3.6.18	2024-01-25 16:05:39.404
3.6.19	2024-01-25 16:05:39.404
3.6.20	2024-01-25 16:05:39.409
3.6.21	2024-01-25 16:05:39.409
3.6.22	2024-01-25 16:05:39.41
3.6.23	2024-01-25 16:05:39.41
3.6.24	2024-01-25 16:05:39.41
3.6.25	2024-01-25 16:05:39.41
3.6.26	2024-01-25 16:05:39.412
3.6.27	2024-01-25 16:05:39.435
3.6.28	2024-01-25 16:05:39.457
3.6.29	2024-01-25 16:05:39.464
3.6.30	2024-01-25 16:05:39.464
3.6.31	2024-01-25 16:05:39.464
3.6.32	2024-01-25 16:05:39.464
3.7	2024-01-25 16:05:39.466
3.7.1	2024-01-25 16:05:39.467
3.7.2	2024-01-25 16:05:39.467
3.7.3	2024-01-25 16:05:39.468
3.7.4	2024-01-25 16:05:39.468
3.7.5	2024-01-25 16:05:39.468
3.7.6	2024-01-25 16:05:39.469
3.7.7	2024-01-25 16:05:39.471
3.7.8	2024-01-25 16:05:39.471
3.7.9	2024-01-25 16:05:39.471
3.8	2024-01-25 16:05:39.472
3.9	2024-01-25 16:05:39.473
3.9.1	2024-01-25 16:05:39.473
3.9.2	2024-01-25 16:05:39.473
3.9.3	2024-01-25 16:05:39.474
3.9.4	2024-01-25 16:05:39.474
3.9.5	2024-01-25 16:05:39.474
3.9.6	2024-01-25 16:05:39.474
3.9.7	2024-01-25 16:05:39.475
3.9.8	2024-01-25 16:05:39.475
3.9.9	2024-01-25 16:05:39.475
3.9.10	2024-01-25 16:05:39.476
3.9.11	2024-01-25 16:05:39.483
4.0	2024-01-25 16:05:39.488
4.0.1	2024-01-25 16:05:39.489
4.0.2	2024-01-25 16:05:39.489
4.1	2024-01-25 16:05:39.584
4.1.1	2024-01-25 16:05:39.592
4.1.2	2024-01-25 16:05:39.593
4.1.3	2024-01-25 16:05:39.594
4.1.4	2024-01-25 16:05:39.595
4.1.5	2024-01-25 16:05:39.598
4.1.6	2024-01-25 16:05:39.598
4.1.7	2024-01-25 16:05:39.599
4.1.8	2024-01-25 16:05:39.6
4.1.9	2024-01-25 16:05:39.601
4.1.10	2024-01-25 16:05:39.601
4.1.11	2024-01-25 16:05:39.602
4.1.12	2024-01-25 16:05:39.603
4.1.12.1	2024-01-25 16:05:39.603
4.1.13	2024-01-25 16:05:39.604
4.1.14	2024-01-25 16:05:39.604
4.1.15	2024-01-25 16:05:39.604
4.1.16	2024-01-25 16:05:39.605
4.1.17	2024-01-25 16:05:39.605
4.1.18	2024-01-25 16:05:39.605
4.1.19	2024-01-25 16:05:39.617
4.1.20	2024-01-25 16:05:39.619
4.2	2024-01-25 16:05:39.638
4.2.1	2024-01-25 16:05:39.686
4.2.2	2024-01-25 16:05:39.689
4.2.3	2024-01-25 16:05:39.691
4.2.4	2024-01-25 16:05:39.694
4.2.5	2024-01-25 16:05:39.695
4.2.6	2024-01-25 16:05:39.695
4.2.7	2024-01-25 16:05:39.696
4.2.8	2024-01-25 16:05:39.696
4.2.9	2024-01-25 16:05:39.697
4.3	2024-01-25 16:05:39.715
4.3.1	2024-01-25 16:05:39.716
4.3.2	2024-01-25 16:05:39.717
4.3.3	2024-01-25 16:05:39.717
4.3.3.1	2024-01-25 16:05:39.719
4.3.3.2	2024-01-25 16:05:39.72
4.3.3.3	2024-01-25 16:05:39.72
4.3.4	2024-01-25 16:05:39.721
4.3.5	2024-01-25 16:05:39.723
4.3.6	2024-01-25 16:05:39.723
4.3.7	2024-01-25 16:05:39.724
4.3.8	2024-01-25 16:05:39.724
4.3.9	2024-01-25 16:05:39.725
4.3.10	2024-01-25 16:05:39.725
4.3.11	2024-01-25 16:05:39.725
4.3.12	2024-01-25 16:05:39.725
4.3.13	2024-01-25 16:05:39.726
4.4	2024-01-25 16:05:39.726
4.4.1	2024-01-25 16:05:39.727
4.4.2	2024-01-25 16:05:39.727
4.4.3	2024-01-25 16:05:39.728
4.4.4	2024-01-25 16:05:39.728
4.4.5	2024-01-25 16:05:39.729
4.5	2024-01-25 16:05:39.737
4.5.1	2024-01-25 16:05:39.737
4.5.2	2024-01-25 16:05:39.74
4.5.3	2024-01-25 16:05:39.74
4.5.4	2024-01-25 16:05:39.741
4.5.5	2024-01-25 16:05:39.741
4.5.6	2024-01-25 16:05:39.742
4.5.7	2024-01-25 16:05:39.742
4.5.8	2024-01-25 16:05:39.742
4.5.9	2024-01-25 16:05:39.743
4.5.10	2024-01-25 16:05:39.743
4.5.11	2024-01-25 16:05:39.743
4.5.12	2024-01-25 16:05:39.744
4.5.199	2024-01-25 16:05:39.745
4.6	2024-01-25 16:05:39.746
4.7	2024-01-25 16:05:39.748
4.7.1	2024-01-25 16:05:39.748
4.7.2	2024-01-25 16:05:39.748
4.7.3	2024-01-25 16:05:39.749
4.7.4	2024-01-25 16:05:39.749
4.7.5	2024-01-25 16:05:39.749
4.7.6	2024-01-25 16:05:39.75
4.7.7	2024-01-25 16:05:39.763
4.7.8	2024-01-25 16:05:39.764
4.7.9	2024-01-25 16:05:39.765
4.7.10	2024-01-25 16:05:39.766
4.7.11	2024-01-25 16:05:39.767
4.8	2024-01-25 16:05:39.767
4.8.1	2024-01-25 16:05:39.778
4.8.2	2024-01-25 16:05:39.829
4.8.3	2024-01-25 16:05:39.832
4.8.4	2024-01-25 16:05:39.875
4.8.5	2024-01-25 16:05:39.878
4.8.6	2024-01-25 16:05:39.879
4.8.7	2024-01-25 16:05:39.881
4.8.8	2024-01-25 16:05:39.881
4.8.9	2024-01-25 16:05:39.884
4.8.10	2024-01-25 16:05:39.888
4.8.11	2024-01-25 16:05:39.888
4.8.12	2024-01-25 16:05:39.89
4.8.13	2024-01-25 16:05:39.891
4.8.14	2024-01-25 16:05:39.892
4.8.15	2024-01-25 16:05:39.893
4.8.16	2024-01-25 16:05:39.901
4.8.17	2024-01-25 16:05:39.902
4.8.18	2024-01-25 16:05:39.902
4.8.19	2024-01-25 16:05:39.903
4.8.20	2024-01-25 16:05:39.903
4.9	2024-01-25 16:05:39.913
4.9.1	2024-01-25 16:05:39.914
4.9.2	2024-01-25 16:05:39.914
4.9.3	2024-01-25 16:05:39.914
4.9.4	2024-01-25 16:05:39.915
4.9.5	2024-01-25 16:05:39.915
4.9.6	2024-01-25 16:05:39.915
4.9.7	2024-01-25 16:05:39.916
4.9.8	2024-01-25 16:05:39.916
4.9.9	2024-01-25 16:05:39.916
4.9.10	2024-01-25 16:05:39.917
4.9.11	2024-01-25 16:05:39.917
4.9.12	2024-01-25 16:05:39.917
4.9.13	2024-01-25 16:05:39.918
4.9.14	2024-01-25 16:05:39.918
4.10	2024-01-25 16:05:39.924
4.10.1	2024-01-25 16:05:39.925
4.10.2	2024-01-25 16:05:39.925
4.10.3	2024-01-25 16:05:39.926
4.10.4	2024-01-25 16:05:39.926
4.10.5	2024-01-25 16:05:39.934
4.10.6	2024-01-25 16:05:39.934
4.10.7	2024-01-25 16:05:39.935
4.10.8	2024-01-25 16:05:39.935
4.10.9	2024-01-25 16:05:39.935
4.10.10	2024-01-25 16:05:39.935
4.10.11	2024-01-25 16:05:39.936
4.11	2024-01-25 16:05:39.937
4.11.1	2024-01-25 16:05:39.937
4.11.2	2024-01-25 16:05:39.937
4.11.3	2024-01-25 16:05:39.938
4.11.4	2024-01-25 16:05:39.938
4.11.5	2024-01-25 16:05:39.938
4.11.6	2024-01-25 16:05:39.939
5.0	2024-01-25 16:05:39.98
5.0.1	2024-01-25 16:05:39.987
5.0.2	2024-01-25 16:05:39.988
5.1	2024-01-25 16:05:40.015
5.1.1	2024-01-25 16:05:40.016
5.1.2	2024-01-25 16:05:40.016
5.1.3	2024-01-25 16:05:40.017
5.1.4	2024-01-25 16:05:40.018
5.1.5	2024-01-25 16:05:40.018
5.1.6	2024-01-25 16:05:40.018
5.1.7	2024-01-25 16:05:40.018
5.1.8	2024-01-25 16:05:40.02
5.1.9	2024-01-25 16:05:40.021
5.1.10	2024-01-25 16:05:40.022
5.1.11	2024-01-25 16:05:40.022
5.1.12	2024-01-25 16:05:40.023
5.2	2024-01-25 16:05:40.628
5.2.1	2024-01-25 16:05:40.629
5.2.2	2024-01-25 16:05:40.63
5.2.3	2024-01-25 16:05:40.63
5.2.4	2024-01-25 16:05:40.631
5.2.5	2024-01-25 16:05:40.631
5.2.6	2024-01-25 16:05:40.632
5.2.7	2024-01-25 16:05:40.632
5.2.8	2024-01-25 16:05:40.632
5.2.9	2024-01-25 16:05:40.633
5.2.10	2024-01-25 16:05:40.634
5.2.11	2024-01-25 16:05:40.634
5.2.12	2024-01-25 16:05:40.635
5.2.13	2024-01-25 16:05:40.635
5.3	2024-01-25 16:05:40.636
5.3.1	2024-01-25 16:05:40.637
5.3.2	2024-01-25 16:05:40.645
5.3.3	2024-01-25 16:05:40.645
5.3.4	2024-01-25 16:05:40.645
5.3.5	2024-01-25 16:05:40.646
5.4	2024-01-25 16:05:40.646
5.4.1	2024-01-25 16:05:40.647
5.4.2	2024-01-25 16:05:40.647
5.4.3	2024-01-25 16:05:40.648
5.4.4	2024-01-25 16:05:40.648
5.4.5	2024-01-25 16:05:40.648
5.5	2024-01-25 16:05:40.677
5.5.1	2024-01-25 16:05:40.678
5.5.2	2024-01-25 16:05:40.678
5.5.3	2024-01-25 16:05:40.678
5.5.4	2024-01-25 16:05:40.678
5.5.5	2024-01-25 16:05:40.679
5.5.6	2024-01-25 16:05:40.68
5.5.7	2024-01-25 16:05:40.68
5.5.8	2024-01-25 16:05:40.68
5.5.9	2024-01-25 16:05:40.681
5.5.10	2024-01-25 16:05:40.681
5.5.11	2024-01-25 16:05:40.681
5.5.12	2024-01-25 16:05:40.681
5.6	2024-01-25 16:05:40.7
5.6.1	2024-01-25 16:05:40.701
5.6.2	2024-01-25 16:05:40.709
5.6.3	2024-01-25 16:05:40.709
5.6.4	2024-01-25 16:05:40.709
5.6.5	2024-01-25 16:05:40.71
5.6.6	2024-01-25 16:05:40.71
5.6.7	2024-01-25 16:05:40.71
5.6.8	2024-01-25 16:05:40.711
5.7	2024-01-25 16:05:40.711
5.7.1	2024-01-25 16:05:40.718
5.7.2	2024-01-25 16:05:40.719
5.8	2024-01-25 16:05:40.727
5.8.1	2024-01-25 16:05:40.728
5.8.2	2024-01-25 16:05:40.728
5.8.3	2024-01-25 16:05:40.728
5.8.3.1	2024-01-25 16:05:40.729
5.8.4	2024-01-25 16:05:40.729
5.8.5	2024-01-25 16:05:40.729
5.8.6	2024-01-25 16:05:40.73
5.9	2024-01-25 16:05:40.733
5.9.1	2024-01-25 16:05:40.733
5.9.2	2024-01-25 16:05:40.734
5.9.3	2024-01-25 16:05:40.734
5.9.4	2024-01-25 16:05:40.735
5.9.5	2024-01-25 16:05:40.735
5.10	2024-01-25 16:05:40.735
5.10.1	2024-01-25 16:05:40.737
5.10.2	2024-01-25 16:05:40.741
5.10.3	2024-01-25 16:05:40.745
5.10.4	2024-01-25 16:05:40.746
5.10.5	2024-01-25 16:05:40.747
5.10.6	2024-01-25 16:05:40.747
5.10.7	2024-01-25 16:05:40.748
5.11	2024-01-25 16:05:40.77
5.11.1	2024-01-25 16:05:40.77
5.11.2	2024-01-25 16:05:40.786
5.11.3	2024-01-25 16:05:40.786
5.11.4	2024-01-25 16:05:40.79
5.11.5	2024-01-25 16:05:40.79
5.11.6	2024-01-25 16:05:40.79
5.11.7	2024-01-25 16:05:40.791
5.11.8	2024-01-25 16:05:40.791
5.11.9	2024-01-25 16:05:40.791
5.11.10	2024-01-25 16:05:40.791
5.11.11	2024-01-25 16:05:40.792
5.11.12	2024-01-25 16:05:40.792
5.12	2024-01-25 16:05:40.793
5.12.1	2024-01-25 16:05:40.793
5.12.2	2024-01-25 16:05:40.794
5.12.3	2024-01-25 16:05:40.794
5.12.4	2024-01-25 16:05:40.794
5.12.5	2024-01-25 16:05:40.794
5.13	2024-01-25 16:05:40.795
5.13.1	2024-01-25 16:05:40.795
5.13.2	2024-01-25 16:05:40.795
5.13.3	2024-01-25 16:05:40.796
5.13.4	2024-01-25 16:05:40.796
5.13.5	2024-01-25 16:05:40.796
5.13.6	2024-01-25 16:05:40.796
5.13.7	2024-01-25 16:05:40.797
5.13.8	2024-01-25 16:05:40.797
5.13.9	2024-01-25 16:05:40.797
5.14	2024-01-25 16:05:40.821
5.14.1	2024-01-25 16:05:40.821
5.14.2	2024-01-25 16:05:40.822
5.14.3	2024-01-25 16:05:40.822
5.14.4	2024-01-25 16:05:40.822
5.15	2024-01-25 16:05:40.823
5.15.1	2024-01-25 16:05:40.824
5.15.2	2024-01-25 16:05:40.824
5.15.3	2024-01-25 16:05:40.832
5.15.4	2024-01-25 16:05:40.833
5.15.5	2024-01-25 16:05:40.833
5.15.6	2024-01-25 16:05:40.833
5.15.7	2024-01-25 16:05:40.833
5.15.8	2024-01-25 16:05:40.879
5.15.9	2024-01-25 16:05:40.88
5.15.10	2024-01-25 16:05:40.88
5.16	2024-01-25 16:05:40.88
5.17	2024-01-25 16:05:40.891
5.17.1	2024-01-25 16:05:40.892
5.17.2	2024-01-25 16:05:40.892
5.17.3	2024-01-25 16:05:40.91
5.17.3.1	2024-01-25 16:05:40.911
5.17.4	2024-01-25 16:05:40.911
5.17.5	2024-01-25 16:05:40.911
5.17.6	2024-01-25 16:05:40.912
5.17.7	2024-01-25 16:05:40.912
5.17.8	2024-01-25 16:05:40.912
5.18	2024-01-25 16:05:40.913
5.18.1	2024-01-25 16:05:40.913
5.18.2	2024-01-25 16:05:40.913
5.18.3	2024-01-25 16:05:40.913
5.18.4	2024-01-25 16:05:40.914
5.18.5	2024-01-25 16:05:40.914
5.18.6	2024-01-25 16:05:40.914
5.18.7	2024-01-25 16:05:40.914
5.19	2024-01-25 16:05:40.915
5.19.1	2024-01-25 16:05:40.915
5.19.2	2024-01-25 16:05:40.915
5.19.3	2024-01-25 16:05:40.916
5.20	2024-01-25 16:05:40.916
5.20.1	2024-01-25 16:05:40.916
5.20.2	2024-01-25 16:05:40.917
5.20.3	2024-01-25 16:05:40.917
5.20.4	2024-01-25 16:05:40.917
5.20.5	2024-01-25 16:05:40.917
5.20.6	2024-01-25 16:05:40.918
5.21	2024-01-25 16:05:40.94
5.21.1	2024-01-25 16:05:40.941
5.21.2	2024-01-25 16:05:40.941
5.21.3	2024-01-25 16:05:40.941
5.21.4	2024-01-25 16:05:40.942
5.21.5	2024-01-25 16:05:40.942
5.21.6	2024-01-25 16:05:40.942
5.21.7	2024-01-25 16:05:40.943
5.21.8	2024-01-25 16:05:40.944
5.21.9	2024-01-25 16:05:40.944
5.21.10	2024-01-25 16:05:40.944
5.21.11	2024-01-25 16:05:40.945
5.22	2024-01-25 16:05:40.946
5.22.1	2024-01-25 16:05:40.947
5.22.2	2024-01-25 16:05:40.947
5.22.3	2024-01-25 16:05:40.947
5.22.4	2024-01-25 16:05:40.948
5.23	2024-01-25 16:05:40.954
5.23.1	2024-01-25 16:05:40.955
5.23.2	2024-01-25 16:05:40.955
5.23.3	2024-01-25 16:05:40.955
5.24	2024-01-25 16:05:40.962
5.24.1	2024-01-25 16:05:40.963
5.24.2	2024-01-25 16:05:40.963
5.24.3	2024-01-25 16:05:40.963
5.24.4	2024-01-25 16:05:40.964
5.25	2024-01-25 16:05:40.977
5.25.1	2024-01-25 16:05:40.98
5.25.2	2024-01-25 16:05:40.981
5.25.3	2024-01-25 16:05:40.982
5.25.4	2024-01-25 16:05:40.982
5.25.5	2024-01-25 16:05:40.982
5.25.6	2024-01-25 16:05:40.99
5.26	2024-01-25 16:05:40.991
5.26.1	2024-01-25 16:05:40.992
5.26.2	2024-01-25 16:05:40.992
5.26.3	2024-01-25 16:05:40.992
5.27	2024-01-25 16:05:41.004
5.27.1	2024-01-25 16:05:41.005
5.27.2	2024-01-25 16:05:41.005
5.27.3	2024-01-25 16:05:41.006
5.27.4	2024-01-25 16:05:41.006
5.28	2024-01-25 16:05:41.026
5.28.1	2024-01-25 16:05:41.027
5.28.2	2024-01-25 16:05:41.027
5.29	2024-01-25 16:05:41.037
5.29.1	2024-01-25 16:05:41.037
5.29.2	2024-01-25 16:05:41.038
5.29.3	2024-01-25 16:05:41.039
5.29.4	2024-01-25 16:05:41.039
5.29.5	2024-01-25 16:05:41.04
5.30	2024-01-25 16:05:41.049
5.30.1	2024-01-25 16:05:41.058
5.30.2	2024-01-25 16:05:41.059
5.30.3	2024-01-25 16:05:41.059
5.30.4	2024-01-25 16:05:41.059
5.30.5	2024-01-25 16:05:41.06
5.30.6	2024-01-25 16:05:41.06
5.30.7	2024-01-25 16:05:41.06
5.30.8	2024-01-25 16:05:41.096
5.30.9	2024-01-25 16:05:41.112
5.30.10	2024-01-25 16:05:41.112
5.30.11	2024-01-25 16:05:41.113
5.30.12	2024-01-25 16:05:41.113
5.30.13	2024-01-25 16:05:41.113
5.30.14	2024-01-25 16:05:41.113
5.30.15	2024-01-25 16:05:41.114
5.30.16	2024-01-25 16:05:41.114
5.30.17	2024-01-25 16:05:41.114
5.31	2024-01-25 16:05:41.171
5.31.1	2024-01-25 16:05:41.171
5.31.2	2024-01-25 16:05:41.172
5.31.3	2024-01-25 16:05:41.172
5.31.4	2024-01-25 16:05:41.172
5.31.5	2024-01-25 16:05:41.172
5.31.6	2024-01-25 16:05:41.173
5.31.7	2024-01-25 16:05:41.173
5.31.8	2024-01-25 16:05:41.173
5.31.9	2024-01-25 16:05:41.173
5.31.10	2024-01-25 16:05:41.174
5.31.11	2024-01-25 16:05:41.174
5.31.12	2024-01-25 16:05:41.174
5.31.13	2024-01-25 16:05:41.236
5.31.14	2024-01-25 16:05:41.236
5.31.15	2024-01-25 16:05:41.237
5.31.16	2024-01-25 16:05:41.237
5.31.17	2024-01-25 16:05:41.237
5.32	2024-01-25 16:05:41.237
5.32.1	2024-01-25 16:05:41.238
5.32.2	2025-02-05 17:48:50.268
5.32.3	2025-02-05 17:48:50.273
5.32.5	2025-02-05 17:48:50.347
5.32.6	2025-02-05 17:48:50.35
5.32.7	2025-02-05 17:48:50.353
5.32.8	2025-02-05 17:48:50.358
5.32.9	2025-02-05 17:48:50.367
5.32.10	2025-02-05 17:48:50.37
5.32.11	2025-02-05 17:48:50.373
5.32.13	2025-02-05 17:48:50.378
5.32.14	2025-02-05 17:48:50.389
5.32.15	2025-02-05 17:48:50.392
5.32.16	2025-02-05 17:48:50.395
5.32.17	2025-02-05 17:48:50.398
5.32.18	2025-02-05 17:48:50.4
5.32.19	2025-02-05 17:48:50.404
5.32.99	2025-02-05 17:48:50.409
6.0	2025-02-05 17:48:50.415
6.1	2025-02-05 17:48:50.419
6.1.1	2025-02-05 17:48:50.422
6.2	2025-02-05 17:48:50.428
2409.1	2025-02-05 17:48:50.44
2409.1.1	2025-02-05 17:48:50.443
2409.1.2	2025-02-05 17:48:50.446
2409.1.3	2025-02-05 17:48:50.448
2409.1.4	2025-02-05 17:48:50.45
2409.1.5	2025-02-05 17:48:50.452
2410.1	2025-02-05 17:48:50.456
2410.1.1	2025-02-05 17:48:50.461
2410.2	2025-02-05 17:48:50.464
2410.2.1	2025-02-05 17:48:50.466
2410.2.2	2025-02-05 17:48:50.469
2410.3	2025-02-05 17:48:50.471
2410.3.1	2025-02-05 17:48:50.473
\.


--
-- Data for Name: ware; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ware (ware_id, catalogprice, code, collection, collection2, last_updated, madein, price, producer, sex, size, trademark, vatpercent, warekind, warename, warenode, color, kind, id_disc_pattern, id_licensor, model_name, is_ware_write_off, model_code, is_allowed_for_sale, id_ware_color_model, weighted_out, ware_unit, sign_cis, gtin_num, ware_in_complect, sign_cis_plus, sign_siz, ware_tnved, warename_eng, mark_label, credit_product_id, nsppercent, id_merch_colorsize, online_only, id_contractor, id_sellers, id_ware_replace, no_vat, icpu, local_warename, ware_unit_icpu_code) FROM stdin;
\.


--
-- Data for Name: ware_complect; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ware_complect (id_ware_complect, last_updated, quantity, complect_id, ware_id) FROM stdin;
\.


--
-- Data for Name: ware_disc_pattern; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ware_disc_pattern (id_ware_disc_pattern, is_actual, bonuses_payment, bonuses_charge, catalog_discount, check_position_promodisc, check_promodisc, manual_adjustment, pdk_disc) FROM stdin;
\.


--
-- Name: basket_id_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.basket_id_sequence', 1, false);


--
-- Name: basket_num_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.basket_num_sequence', 1, false);


--
-- Name: basket_order_num_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.basket_order_num_sequence', 1, false);


--
-- Name: basket_promo_action_id_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.basket_promo_action_id_sequence', 1, false);


--
-- Name: basket_promotion_id_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.basket_promotion_id_sequence', 1, false);


--
-- Name: datecs_salesession; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.datecs_salesession', 0, false);


--
-- Name: exchange_log_id_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exchange_log_id_sequence', 1, false);


--
-- Name: ext_payment_id_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ext_payment_id_sequence', 1, false);


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 12, true);


--
-- Name: log_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.log_seq', 1, false);


--
-- Name: payment_id_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_id_sequence', 1, false);


--
-- Name: portion_id_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.portion_id_sequence', 1, false);


--
-- Name: roleoperation_id_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roleoperation_id_sequence', 117, true);


--
-- Name: seq_basket_cheque; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seq_basket_cheque', 1, false);


--
-- Name: seq_basket_item_cis; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seq_basket_item_cis', 1, false);


--
-- Name: seq_basket_item_defect; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seq_basket_item_defect', 1, false);


--
-- Name: seq_client_promo_message; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seq_client_promo_message', 1, false);


--
-- Name: seq_club_pro_promotion_applicability; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seq_club_pro_promotion_applicability', 116, true);


--
-- Name: seq_control_scanning_stamp_item_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seq_control_scanning_stamp_item_id', 1, false);


--
-- Name: seq_file_cache; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seq_file_cache', 1, false);


--
-- Name: seq_t_basket_item_vat_rates; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seq_t_basket_item_vat_rates', 1, false);


--
-- Name: seq_t_basket_vat_rates; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seq_t_basket_vat_rates', 1, false);


--
-- Name: seq_t_personal_order_items; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seq_t_personal_order_items', 0, false);


--
-- Name: seq_t_vat_correction; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seq_t_vat_correction', 0, false);


--
-- Name: seq_t_vat_correction_cheque; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seq_t_vat_correction_cheque', 0, false);


--
-- Name: t_adaptive_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t_adaptive_fields_id_seq', 1, false);


--
-- Name: t_basket_prepayments_info_id_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t_basket_prepayments_info_id_sequence', 1, false);


--
-- Name: t_mark_code_status_id_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t_mark_code_status_id_sequence', 1, false);


--
-- Name: t_sending_auth_code_attempts_id_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t_sending_auth_code_attempts_id_sequence', 1, false);


--
-- Name: app_user app_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_user
    ADD CONSTRAINT app_user_pkey PRIMARY KEY (login);


--
-- Name: barcode barcode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barcode
    ADD CONSTRAINT barcode_pkey PRIMARY KEY (id_ware_barcode);


--
-- Name: basket_item basket_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_item
    ADD CONSTRAINT basket_item_pkey PRIMARY KEY (basket_item_id);


--
-- Name: basket basket_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket
    ADD CONSTRAINT basket_pkey PRIMARY KEY (basket_id);


--
-- Name: basketdisc basketdisc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basketdisc
    ADD CONSTRAINT basketdisc_pkey PRIMARY KEY (bd_id);


--
-- Name: basketnumsequence basketnumsequence_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basketnumsequence
    ADD CONSTRAINT basketnumsequence_pkey PRIMARY KEY (id);


--
-- Name: cash_op cash_op_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cash_op
    ADD CONSTRAINT cash_op_pkey PRIMARY KEY (cashop_id);


--
-- Name: club_card_prefix ccp_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.club_card_prefix
    ADD CONSTRAINT ccp_pk PRIMARY KEY (id_shpref_prefix_cc);


--
-- Name: club_card_type cct_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.club_card_type
    ADD CONSTRAINT cct_pk PRIMARY KEY (id_shpref_cc_type);


--
-- Name: currency_nominal cur_nom_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.currency_nominal
    ADD CONSTRAINT cur_nom_pkey PRIMARY KEY (national_nominals_id);


--
-- Name: disabledinteract disabledinteract_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disabledinteract
    ADD CONSTRAINT disabledinteract_pkey PRIMARY KEY (di_id);


--
-- Name: discappl discappl_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discappl
    ADD CONSTRAINT discappl_pkey PRIMARY KEY (id);


--
-- Name: discount discount_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discount
    ADD CONSTRAINT discount_pkey PRIMARY KEY (disc_id);


--
-- Name: discountspread discountspread_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discountspread
    ADD CONSTRAINT discountspread_pkey PRIMARY KEY (id);


--
-- Name: t_basket_cheque electronic_cheque_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_basket_cheque
    ADD CONSTRAINT electronic_cheque_pkey PRIMARY KEY (id);


--
-- Name: exchange_log exchange_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exchange_log
    ADD CONSTRAINT exchange_log_pkey PRIMARY KEY (exchange_log_id);


--
-- Name: fiscal_printer_counter fiscal_printer_counter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fiscal_printer_counter
    ADD CONSTRAINT fiscal_printer_counter_pkey PRIMARY KEY (id_fiscal_printer_counter);


--
-- Name: storage id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.storage
    ADD CONSTRAINT id PRIMARY KEY (id);


--
-- Name: interactgroup interactgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interactgroup
    ADD CONSTRAINT interactgroup_pkey PRIMARY KEY (ig_id);


--
-- Name: licensor licensor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licensor
    ADD CONSTRAINT licensor_pkey PRIMARY KEY (licensor_id);


--
-- Name: global_log log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.global_log
    ADD CONSTRAINT log_pkey PRIMARY KEY (id_log);


--
-- Name: parametervalue parametervalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parametervalue
    ADD CONSTRAINT parametervalue_pkey PRIMARY KEY (name);


--
-- Name: t_cheque_attribute_stamp pk_cheque_attribute_stamp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_cheque_attribute_stamp
    ADD CONSTRAINT pk_cheque_attribute_stamp PRIMARY KEY (id);


--
-- Name: t_cheque_item_stamp pk_cheque_item_stamp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_cheque_item_stamp
    ADD CONSTRAINT pk_cheque_item_stamp PRIMARY KEY (id);


--
-- Name: t_cheque_payment_stamp pk_cheque_payment_stamp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_cheque_payment_stamp
    ADD CONSTRAINT pk_cheque_payment_stamp PRIMARY KEY (id);


--
-- Name: t_cheque_stamp pk_cheque_stamp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_cheque_stamp
    ADD CONSTRAINT pk_cheque_stamp PRIMARY KEY (id);


--
-- Name: t_client_promo_message pk_client_promo_message; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_client_promo_message
    ADD CONSTRAINT pk_client_promo_message PRIMARY KEY (id_message);


--
-- Name: t_club_pro_bonus pk_club_pro_bonus; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_club_pro_bonus
    ADD CONSTRAINT pk_club_pro_bonus PRIMARY KEY (id_club_pro_bonus);


--
-- Name: t_club_pro_promotion_applicability pk_club_pro_promotion_applicability; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_club_pro_promotion_applicability
    ADD CONSTRAINT pk_club_pro_promotion_applicability PRIMARY KEY (id_club_pro_promotion_applicability);


--
-- Name: t_com_pro_return_payments pk_com_pro_return_payments; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_com_pro_return_payments
    ADD CONSTRAINT pk_com_pro_return_payments PRIMARY KEY (id);


--
-- Name: t_control_scanning_stamp_item pk_control_scanning_stamp_item; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_control_scanning_stamp_item
    ADD CONSTRAINT pk_control_scanning_stamp_item PRIMARY KEY (id);


--
-- Name: t_correction_cheque_stamp pk_correction_cheque_stamp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_correction_cheque_stamp
    ADD CONSTRAINT pk_correction_cheque_stamp PRIMARY KEY (id);


--
-- Name: t_km_report_fiscal_parameters pk_km_report_fiscal_parameters; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_km_report_fiscal_parameters
    ADD CONSTRAINT pk_km_report_fiscal_parameters PRIMARY KEY (id_km_report_fiscal_parameters);


--
-- Name: t_merch_colorsize pk_merch_colorsize; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_merch_colorsize
    ADD CONSTRAINT pk_merch_colorsize PRIMARY KEY (id_merch_colorsize);


--
-- Name: t_pay_card_terminal pk_pay_card_terminal; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_pay_card_terminal
    ADD CONSTRAINT pk_pay_card_terminal PRIMARY KEY (id);


--
-- Name: t_pay_card_terminal_cliche pk_pay_card_terminal_cliche; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_pay_card_terminal_cliche
    ADD CONSTRAINT pk_pay_card_terminal_cliche PRIMARY KEY (id);


--
-- Name: t_pay_card_terminal_salepoint pk_pay_card_terminal_salepoint; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_pay_card_terminal_salepoint
    ADD CONSTRAINT pk_pay_card_terminal_salepoint PRIMARY KEY (id);


--
-- Name: t_pay_card_to_processing_company pk_pay_card_to_processing_company; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_pay_card_to_processing_company
    ADD CONSTRAINT pk_pay_card_to_processing_company PRIMARY KEY (id);


--
-- Name: t_pay_card_type pk_pay_card_type; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_pay_card_type
    ADD CONSTRAINT pk_pay_card_type PRIMARY KEY (id);


--
-- Name: t_processing_company pk_processing_company; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_processing_company
    ADD CONSTRAINT pk_processing_company PRIMARY KEY (id);


--
-- Name: t_reject_reason pk_reject_reason; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_reject_reason
    ADD CONSTRAINT pk_reject_reason PRIMARY KEY (id_reject_reason);


--
-- Name: t_sale_point pk_sale_point; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_sale_point
    ADD CONSTRAINT pk_sale_point PRIMARY KEY (id);


--
-- Name: t_basket_item_vat_rates pk_t_basket_item_vat_rates; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_basket_item_vat_rates
    ADD CONSTRAINT pk_t_basket_item_vat_rates PRIMARY KEY (id);


--
-- Name: t_basket_vat_rates pk_t_basket_vat_rates; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_basket_vat_rates
    ADD CONSTRAINT pk_t_basket_vat_rates PRIMARY KEY (id);


--
-- Name: t_correction_op pk_t_correction_op; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_correction_op
    ADD CONSTRAINT pk_t_correction_op PRIMARY KEY (id_correction_op);


--
-- Name: t_noncondition_ware pk_t_noncondition_ware; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_noncondition_ware
    ADD CONSTRAINT pk_t_noncondition_ware PRIMARY KEY (id_non_cond_ware);


--
-- Name: t_personal_order_items pk_t_personal_order_items; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_personal_order_items
    ADD CONSTRAINT pk_t_personal_order_items PRIMARY KEY (id);


--
-- Name: t_shop_parameter pk_t_shop_parameter; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_shop_parameter
    ADD CONSTRAINT pk_t_shop_parameter PRIMARY KEY (code);


--
-- Name: t_spec_ware_card pk_t_spec_ware_card; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_spec_ware_card
    ADD CONSTRAINT pk_t_spec_ware_card PRIMARY KEY (id_spec_ware_card);


--
-- Name: t_spec_ware_card_cis_serial pk_t_spec_ware_card_cis_serial; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_spec_ware_card_cis_serial
    ADD CONSTRAINT pk_t_spec_ware_card_cis_serial PRIMARY KEY (id_spec_ware_card_cis_barcode);


--
-- Name: t_user_barcode pk_t_user_barcode; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_user_barcode
    ADD CONSTRAINT pk_t_user_barcode PRIMARY KEY (key_user);


--
-- Name: t_vat_correction_cheque pk_t_vat_correction_cheque; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_vat_correction_cheque
    ADD CONSTRAINT pk_t_vat_correction_cheque PRIMARY KEY (id);


--
-- Name: t_vat_correction_cheque_item pk_t_vat_correction_cheque_item; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_vat_correction_cheque_item
    ADD CONSTRAINT pk_t_vat_correction_cheque_item PRIMARY KEY (id);


--
-- Name: t_vat_correction_prev pk_t_vat_correction_prev; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_vat_correction_prev
    ADD CONSTRAINT pk_t_vat_correction_prev PRIMARY KEY (id);


--
-- Name: t_vat_correction_prev_item pk_t_vat_correction_prev_item; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_vat_correction_prev_item
    ADD CONSTRAINT pk_t_vat_correction_prev_item PRIMARY KEY (id);


--
-- Name: t_vat_correction_prev_print pk_t_vat_correction_prev_print; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_vat_correction_prev_print
    ADD CONSTRAINT pk_t_vat_correction_prev_print PRIMARY KEY (id);


--
-- Name: t_ware_warranty pk_ware_warranty; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_ware_warranty
    ADD CONSTRAINT pk_ware_warranty PRIMARY KEY (id_ware_warranty);


--
-- Name: portion portion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.portion
    ADD CONSTRAINT portion_pkey PRIMARY KEY (portion_id);


--
-- Name: questionnaire_prefix questionnaire_prefix_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questionnaire_prefix
    ADD CONSTRAINT questionnaire_prefix_pkey PRIMARY KEY (id_shpref_sc_scope);


--
-- Name: questionnairesequence questionnairesequence_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questionnairesequence
    ADD CONSTRAINT questionnairesequence_pkey PRIMARY KEY (id);


--
-- Name: t_trade_region region_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_trade_region
    ADD CONSTRAINT region_pkey PRIMARY KEY (id_trade_region);


--
-- Name: rfid_ware rfid_ware_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rfid_ware
    ADD CONSTRAINT rfid_ware_pkey PRIMARY KEY (rfid_id);


--
-- Name: roleoperation roleoperation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roleoperation
    ADD CONSTRAINT roleoperation_pkey PRIMARY KEY (useroperation_id);


--
-- Name: round_bonus_rules round_bonus_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.round_bonus_rules
    ADD CONSTRAINT round_bonus_rules_pkey PRIMARY KEY (type_id);


--
-- Name: rounding_algorithm rounding_algorithm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rounding_algorithm
    ADD CONSTRAINT rounding_algorithm_pkey PRIMARY KEY (round_algorythm_items_id);


--
-- Name: salesession salesession_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salesession
    ADD CONSTRAINT salesession_pkey PRIMARY KEY (salesession_id);


--
-- Name: t_shp_trade_region_territory shp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_shp_trade_region_territory
    ADD CONSTRAINT shp_pkey PRIMARY KEY (id);


--
-- Name: t_adaptive_fields t_adaptive_fields_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_adaptive_fields
    ADD CONSTRAINT t_adaptive_fields_pk PRIMARY KEY (id);


--
-- Name: t_basket_club_pro_forbid_promotion t_basket_club_pro_forbid_promotion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_basket_club_pro_forbid_promotion
    ADD CONSTRAINT t_basket_club_pro_forbid_promotion_pkey PRIMARY KEY (id_basket_club_pro_forbid_promotion);


--
-- Name: t_basket_club_pro_promotion t_basket_club_pro_promotion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_basket_club_pro_promotion
    ADD CONSTRAINT t_basket_club_pro_promotion_pkey PRIMARY KEY (id_basket_club_pro_promotion);


--
-- Name: t_basket_coupon t_basket_coupon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_basket_coupon
    ADD CONSTRAINT t_basket_coupon_pkey PRIMARY KEY (id_basket_coupon);


--
-- Name: t_basket_item_defect t_basket_item_defect_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_basket_item_defect
    ADD CONSTRAINT t_basket_item_defect_pkey PRIMARY KEY (id_basket_item_defect);


--
-- Name: t_club_pro_promotion t_club_pro_promotion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_club_pro_promotion
    ADD CONSTRAINT t_club_pro_promotion_pkey PRIMARY KEY (id_club_pro_promotion);


--
-- Name: t_credit_product t_credit_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_credit_product
    ADD CONSTRAINT t_credit_product_pkey PRIMARY KEY (id_credit_product);


--
-- Name: t_email_domain t_email_domain_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_email_domain
    ADD CONSTRAINT t_email_domain_pkey PRIMARY KEY (id_domain);


--
-- Name: t_external_payments t_external_payments_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_external_payments
    ADD CONSTRAINT t_external_payments_pk PRIMARY KEY (payment_id);


--
-- Name: t_file_cache t_file_cache_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_file_cache
    ADD CONSTRAINT t_file_cache_pkey PRIMARY KEY (id_file_cache);


--
-- Name: t_mark_code_status t_mark_code_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_mark_code_status
    ADD CONSTRAINT t_mark_code_status_pkey PRIMARY KEY (id);


--
-- Name: t_payment_map t_payment_map_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_payment_map
    ADD CONSTRAINT t_payment_map_pk PRIMARY KEY (id);


--
-- Name: t_payment_map_to_userrole t_payment_map_to_role_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_payment_map_to_userrole
    ADD CONSTRAINT t_payment_map_to_role_pk PRIMARY KEY (id);


--
-- Name: t_present_card_prefix t_present_card_prefix_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_present_card_prefix
    ADD CONSTRAINT t_present_card_prefix_pk PRIMARY KEY (id_pk_prefix);


--
-- Name: t_sellers t_sellers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_sellers
    ADD CONSTRAINT t_sellers_pkey PRIMARY KEY (id_contractor, id_sellers);


--
-- Name: t_sending_auth_code_attempts t_sending_auth_code_attempts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_sending_auth_code_attempts
    ADD CONSTRAINT t_sending_auth_code_attempts_pkey PRIMARY KEY (id);


--
-- Name: t_sending_auth_code_rules t_sending_auth_code_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_sending_auth_code_rules
    ADD CONSTRAINT t_sending_auth_code_rules_pkey PRIMARY KEY (reauthorization_period, number_of_calls);


--
-- Name: t_street t_street_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_street
    ADD CONSTRAINT t_street_pkey PRIMARY KEY (id_street);


--
-- Name: t_telephone_mask t_telephone_mask_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_telephone_mask
    ADD CONSTRAINT t_telephone_mask_pkey PRIMARY KEY (id_telephone_mask);


--
-- Name: t_ware_extra_gtin t_ware_extra_gtin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_ware_extra_gtin
    ADD CONSTRAINT t_ware_extra_gtin_pkey PRIMARY KEY (id_ware, extra_gtin);


--
-- Name: t_ware_set_item t_ware_set_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_ware_set_item
    ADD CONSTRAINT t_ware_set_item_pkey PRIMARY KEY (id_set_str);


--
-- Name: t_ware_set t_ware_set_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_ware_set
    ADD CONSTRAINT t_ware_set_pkey PRIMARY KEY (id_set);


--
-- Name: t_territory territory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_territory
    ADD CONSTRAINT territory_pkey PRIMARY KEY (id_territory);


--
-- Name: t_club_pro_promotion_applicability uk_id_club_pro_promotion_date; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_club_pro_promotion_applicability
    ADD CONSTRAINT uk_id_club_pro_promotion_date UNIQUE (id_club_pro_promotion, dt);


--
-- Name: user_session user_session_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_session
    ADD CONSTRAINT user_session_pk PRIMARY KEY (user_session_id);


--
-- Name: userrole userrole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userrole
    ADD CONSTRAINT userrole_pkey PRIMARY KEY (id);


--
-- Name: ware ware_code_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ware
    ADD CONSTRAINT ware_code_key UNIQUE (code);


--
-- Name: ware_complect ware_complect_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ware_complect
    ADD CONSTRAINT ware_complect_pkey PRIMARY KEY (id_ware_complect);


--
-- Name: ware_disc_pattern ware_disc_pattern_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ware_disc_pattern
    ADD CONSTRAINT ware_disc_pattern_pkey PRIMARY KEY (id_ware_disc_pattern);


--
-- Name: ware ware_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ware
    ADD CONSTRAINT ware_pkey PRIMARY KEY (ware_id);


--
-- Name: electronic_cheque_is_sent_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX electronic_cheque_is_sent_idx ON public.t_basket_cheque USING btree (is_sent);


--
-- Name: i_barcode; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_barcode ON public.barcode USING btree (barcode);


--
-- Name: i_barcode_id_ware; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_barcode_id_ware ON public.barcode USING btree (id_ware);


--
-- Name: i_basket_item_basket_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_basket_item_basket_id ON public.basket_item USING btree (basket_id);


--
-- Name: i_basket_item_id_basket_club_pro_promotion; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_basket_item_id_basket_club_pro_promotion ON public.basket_item USING btree (id_basket_club_pro_promotion);


--
-- Name: i_basket_item_parent_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_basket_item_parent_id ON public.basket_item USING btree (parent_id);


--
-- Name: i_basket_item_storage_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_basket_item_storage_id ON public.basket_item USING btree (storage_id);


--
-- Name: i_basket_item_ware_ware_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_basket_item_ware_ware_id ON public.basket_item USING btree (ware_id);


--
-- Name: i_basket_payments_basket_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_basket_payments_basket_id ON public.basket_payments USING btree (basket_id);


--
-- Name: i_basketdisc_basket_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_basketdisc_basket_id ON public.basketdisc USING btree (basket_id);


--
-- Name: i_basketdisc_bd_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_basketdisc_bd_id ON public.basketdisc USING btree (bd_id);


--
-- Name: i_basketdisc_discount_disc_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_basketdisc_discount_disc_id ON public.basketdisc USING btree (discount_disc_id);


--
-- Name: i_basketdisc_id_basket_club_pro_promotion; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_basketdisc_id_basket_club_pro_promotion ON public.basketdisc USING btree (id_basket_club_pro_promotion);


--
-- Name: i_cash_op; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_cash_op ON public.cash_op USING btree (dtm);


--
-- Name: i_cheque_item_stamp; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_cheque_item_stamp ON public.t_cheque_item_stamp USING btree (id_cheque_stamp);


--
-- Name: i_cheque_payment_stamp; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_cheque_payment_stamp ON public.t_cheque_payment_stamp USING btree (id_cheque_stamp);


--
-- Name: i_cheque_stamp_basket; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_cheque_stamp_basket ON public.t_cheque_stamp USING btree (id_basket);


--
-- Name: i_correction_op_dtm; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_correction_op_dtm ON public.t_correction_op USING btree (op_dtm);


--
-- Name: i_correction_op_ext_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX i_correction_op_ext_id ON public.t_correction_op USING btree (external_id);


--
-- Name: i_correction_op_state; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_correction_op_state ON public.t_correction_op USING btree (state);


--
-- Name: i_discappl_basketdisc_bd_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_discappl_basketdisc_bd_id ON public.discappl USING btree (basketdisc_bd_id);


--
-- Name: i_discappl_basketitem_basket_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_discappl_basketitem_basket_item_id ON public.discappl USING btree (basketitem_basket_item_id);


--
-- Name: i_discappl_disccountspread_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_discappl_disccountspread_id ON public.discappl USING btree (discountspread_id);


--
-- Name: i_discappl_id_basket_club_pro_promotion; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_discappl_id_basket_club_pro_promotion ON public.discappl USING btree (id_basket_club_pro_promotion);


--
-- Name: i_discountspread_id_basket; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_discountspread_id_basket ON public.discountspread USING btree (id_basket);


--
-- Name: i_discountspread_id_basket_disc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_discountspread_id_basket_disc ON public.discountspread USING btree (id_basket_disc);


--
-- Name: i_discountspread_id_basket_item; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_discountspread_id_basket_item ON public.discountspread USING btree (id_basket_item);


--
-- Name: i_portion_dtmtimestamps; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_portion_dtmtimestamps ON public.portion USING btree (dtmbegin, dtmend);


--
-- Name: i_sale_session_opened; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_sale_session_opened ON public.salesession USING btree (opened);


--
-- Name: i_salesession_num_sale_point; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_salesession_num_sale_point ON public.salesession USING btree (num, sale_point);


--
-- Name: i_spec_ware_card_barcode; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_spec_ware_card_barcode ON public.t_spec_ware_card USING btree (barcode);


--
-- Name: i_t_basket_cheque_id_basket; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_t_basket_cheque_id_basket ON public.t_basket_cheque USING btree (id_basket);


--
-- Name: i_t_basket_club_pro_forbid_promotion; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_t_basket_club_pro_forbid_promotion ON public.t_basket_club_pro_forbid_promotion USING btree (id_club_pro_promotion);


--
-- Name: i_t_basket_club_pro_forbid_promotion_id_basket; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_t_basket_club_pro_forbid_promotion_id_basket ON public.t_basket_club_pro_forbid_promotion USING btree (id_basket);


--
-- Name: i_t_basket_club_pro_promotion; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_t_basket_club_pro_promotion ON public.t_basket_club_pro_promotion USING btree (id_club_pro_promotion);


--
-- Name: i_t_basket_club_pro_promotion_id_basket; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_t_basket_club_pro_promotion_id_basket ON public.t_basket_club_pro_promotion USING btree (id_basket);


--
-- Name: i_t_basket_coupon_id_basket; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_t_basket_coupon_id_basket ON public.t_basket_coupon USING btree (id_basket);


--
-- Name: i_t_basket_item_ware_set_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_t_basket_item_ware_set_id ON public.basket_item USING btree (ware_set_id);


--
-- Name: i_t_noncondition_ware_serial_num; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_t_noncondition_ware_serial_num ON public.t_noncondition_ware USING btree (serial_num);


--
-- Name: i_t_spec_ware_card_cis_serial_serial_num; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_t_spec_ware_card_cis_serial_serial_num ON public.t_spec_ware_card_cis_serial USING btree (serial_num);


--
-- Name: i_t_ware_set_is_actual; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_t_ware_set_is_actual ON public.t_ware_set USING btree (is_actual);


--
-- Name: i_t_ware_set_item_id_set; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_t_ware_set_item_id_set ON public.t_ware_set_item USING btree (id_set);


--
-- Name: i_t_ware_set_item_id_ware; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_t_ware_set_item_id_ware ON public.t_ware_set_item USING btree (id_ware);


--
-- Name: i_t_ware_warranty_id_ware; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_t_ware_warranty_id_ware ON public.t_ware_warranty USING btree (id_ware);


--
-- Name: i_t_ware_warranty_last_updated; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_t_ware_warranty_last_updated ON public.t_ware_warranty USING btree (last_updated);


--
-- Name: i_trade_region; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_trade_region ON public.t_shp_trade_region_territory USING btree (id_trade_region, id_territory);


--
-- Name: i_ware_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_ware_code ON public.ware USING btree (code);


--
-- Name: i_ware_complect_complect_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_ware_complect_complect_id ON public.ware_complect USING btree (complect_id);


--
-- Name: i_ware_gtin; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_ware_gtin ON public.ware USING btree (gtin_num);


--
-- Name: i_ware_last_updated; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_ware_last_updated ON public.ware USING btree (last_updated);


--
-- Name: t_external_payments_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX t_external_payments_id_uindex ON public.t_external_payments USING btree (payment_id);


--
-- Name: t_km_report_fiscal_parameters_report_dtm_report_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX t_km_report_fiscal_parameters_report_dtm_report_type_index ON public.t_km_report_fiscal_parameters USING btree (report_dtm, report_type);


--
-- Name: t_km_report_fiscal_parameters_session_id_report_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX t_km_report_fiscal_parameters_session_id_report_type_index ON public.t_km_report_fiscal_parameters USING btree (session_id, report_type);


--
-- Name: basket basket$bu; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER "basket$bu" BEFORE UPDATE ON public.basket FOR EACH ROW EXECUTE FUNCTION public.check_state();


--
-- Name: barcode barcode_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barcode
    ADD CONSTRAINT barcode_fkey FOREIGN KEY (id_ware) REFERENCES public.ware(ware_id);


--
-- Name: club_card_prefix cct_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.club_card_prefix
    ADD CONSTRAINT cct_fk FOREIGN KEY (id_card_type) REFERENCES public.club_card_type(id_shpref_cc_type);


--
-- Name: club_card_type disc_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.club_card_type
    ADD CONSTRAINT disc_fk FOREIGN KEY (id_discount) REFERENCES public.discount(disc_id);


--
-- Name: ware disc_pattern_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ware
    ADD CONSTRAINT disc_pattern_fkey FOREIGN KEY (id_disc_pattern) REFERENCES public.ware_disc_pattern(id_ware_disc_pattern);


--
-- Name: discappl discspread_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discappl
    ADD CONSTRAINT discspread_fkey FOREIGN KEY (discountspread_id) REFERENCES public.discountspread(id);


--
-- Name: discappl fk140dddc01617d1ae; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discappl
    ADD CONSTRAINT fk140dddc01617d1ae FOREIGN KEY (basketitem_basket_item_id) REFERENCES public.basket_item(basket_item_id);


--
-- Name: discappl fk140dddc0cfb6be10; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discappl
    ADD CONSTRAINT fk140dddc0cfb6be10 FOREIGN KEY (basketdisc_bd_id) REFERENCES public.basketdisc(bd_id);


--
-- Name: discount fk1422d961157350d1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discount
    ADD CONSTRAINT fk1422d961157350d1 FOREIGN KEY (interactgroup) REFERENCES public.interactgroup(ig_id);


--
-- Name: cash_op fk2114466d683ece9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cash_op
    ADD CONSTRAINT fk2114466d683ece9 FOREIGN KEY (salesession_salesession_id) REFERENCES public.salesession(salesession_id);


--
-- Name: discountspread fk2c6eb1f43dc2cff1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discountspread
    ADD CONSTRAINT fk2c6eb1f43dc2cff1 FOREIGN KEY (id_basket) REFERENCES public.basket(basket_id);


--
-- Name: discountspread fk2c6eb1f4a77dc406; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discountspread
    ADD CONSTRAINT fk2c6eb1f4a77dc406 FOREIGN KEY (id_basket_disc) REFERENCES public.basketdisc(bd_id);


--
-- Name: discountspread fk2c6eb1f4ec17c629; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discountspread
    ADD CONSTRAINT fk2c6eb1f4ec17c629 FOREIGN KEY (id_basket_item) REFERENCES public.basket_item(basket_item_id);


--
-- Name: basket_item fk3f6fa5ec29d124bb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_item
    ADD CONSTRAINT fk3f6fa5ec29d124bb FOREIGN KEY (basket_id) REFERENCES public.basket(basket_id);


--
-- Name: basket_item fk3f6fa5ec39670f0a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_item
    ADD CONSTRAINT fk3f6fa5ec39670f0a FOREIGN KEY (parent_id) REFERENCES public.basket_item(basket_item_id);


--
-- Name: basket_item fk3f6fa5ec4bc10d19; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_item
    ADD CONSTRAINT fk3f6fa5ec4bc10d19 FOREIGN KEY (ware_id) REFERENCES public.ware(ware_id);


--
-- Name: ware_complect fk59b34abb4d53fa9f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ware_complect
    ADD CONSTRAINT fk59b34abb4d53fa9f FOREIGN KEY (complect_id) REFERENCES public.ware(ware_id);


--
-- Name: ware_complect fk59b34abb7941a0db; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ware_complect
    ADD CONSTRAINT fk59b34abb7941a0db FOREIGN KEY (ware_id) REFERENCES public.ware(ware_id);


--
-- Name: basket fk762ca5e6683ece9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket
    ADD CONSTRAINT fk762ca5e6683ece9 FOREIGN KEY (salesession_salesession_id) REFERENCES public.salesession(salesession_id);


--
-- Name: t_basket_club_pro_forbid_promotion fk_basket_club_pro_forbid_promotion_to_basket; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_basket_club_pro_forbid_promotion
    ADD CONSTRAINT fk_basket_club_pro_forbid_promotion_to_basket FOREIGN KEY (id_basket) REFERENCES public.basket(basket_id);


--
-- Name: t_basket_club_pro_forbid_promotion fk_basket_club_pro_forbid_promotion_to_club_pro_promotion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_basket_club_pro_forbid_promotion
    ADD CONSTRAINT fk_basket_club_pro_forbid_promotion_to_club_pro_promotion FOREIGN KEY (id_club_pro_promotion) REFERENCES public.t_club_pro_promotion(id_club_pro_promotion);


--
-- Name: t_basket_club_pro_promotion fk_basket_club_pro_promotion_to_basket; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_basket_club_pro_promotion
    ADD CONSTRAINT fk_basket_club_pro_promotion_to_basket FOREIGN KEY (id_basket) REFERENCES public.basket(basket_id);


--
-- Name: t_basket_club_pro_promotion fk_basket_club_pro_promotion_to_club_pro_promotion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_basket_club_pro_promotion
    ADD CONSTRAINT fk_basket_club_pro_promotion_to_club_pro_promotion FOREIGN KEY (id_club_pro_promotion) REFERENCES public.t_club_pro_promotion(id_club_pro_promotion);


--
-- Name: t_basket_coupon fk_basket_coupon_to_basket; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_basket_coupon
    ADD CONSTRAINT fk_basket_coupon_to_basket FOREIGN KEY (id_basket) REFERENCES public.basket(basket_id);


--
-- Name: basket_item fk_basket_item_to_basket_club_pro_promotion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_item
    ADD CONSTRAINT fk_basket_item_to_basket_club_pro_promotion FOREIGN KEY (id_basket_club_pro_promotion) REFERENCES public.t_basket_club_pro_promotion(id_basket_club_pro_promotion);


--
-- Name: basket_item fk_basket_item_ware_set; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_item
    ADD CONSTRAINT fk_basket_item_ware_set FOREIGN KEY (ware_set_id) REFERENCES public.t_ware_set(id_set);


--
-- Name: basket_payments fk_basket_payment_to_pay_card_terminal; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_payments
    ADD CONSTRAINT fk_basket_payment_to_pay_card_terminal FOREIGN KEY (id_pay_card_terminal) REFERENCES public.t_pay_card_terminal(id);


--
-- Name: basket_payments fk_basket_payment_to_pay_card_to_processing_company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_payments
    ADD CONSTRAINT fk_basket_payment_to_pay_card_to_processing_company FOREIGN KEY (id_pay_card_type_to_processing_company) REFERENCES public.t_pay_card_to_processing_company(id);


--
-- Name: basket_payments fk_basket_payment_to_pay_card_to_processing_company_ext; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_payments
    ADD CONSTRAINT fk_basket_payment_to_pay_card_to_processing_company_ext FOREIGN KEY (id_pay_card_type_to_processing_company_ext) REFERENCES public.t_pay_card_to_processing_company(id);


--
-- Name: basketdisc fk_basketdisc_to_basket_club_pro_promotion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basketdisc
    ADD CONSTRAINT fk_basketdisc_to_basket_club_pro_promotion FOREIGN KEY (id_basket_club_pro_promotion) REFERENCES public.t_basket_club_pro_promotion(id_basket_club_pro_promotion);


--
-- Name: basketdisc fk_basketdisc_to_club_pro_bonus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basketdisc
    ADD CONSTRAINT fk_basketdisc_to_club_pro_bonus FOREIGN KEY (id_club_pro_bonus) REFERENCES public.t_club_pro_bonus(id_club_pro_bonus);


--
-- Name: t_cheque_attribute_stamp fk_cheque_attr_stamp_to_cheque_correction_stamp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_cheque_attribute_stamp
    ADD CONSTRAINT fk_cheque_attr_stamp_to_cheque_correction_stamp FOREIGN KEY (cheque_correction_stamp_id) REFERENCES public.t_correction_cheque_stamp(id);


--
-- Name: t_cheque_attribute_stamp fk_cheque_attr_stamp_to_cheque_item_stamp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_cheque_attribute_stamp
    ADD CONSTRAINT fk_cheque_attr_stamp_to_cheque_item_stamp FOREIGN KEY (cheque_item_stamp_id) REFERENCES public.t_cheque_item_stamp(id);


--
-- Name: t_cheque_attribute_stamp fk_cheque_attr_stamp_to_cheque_payment_stamp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_cheque_attribute_stamp
    ADD CONSTRAINT fk_cheque_attr_stamp_to_cheque_payment_stamp FOREIGN KEY (cheque_paymnet_stamp_id) REFERENCES public.t_cheque_payment_stamp(id);


--
-- Name: t_cheque_attribute_stamp fk_cheque_attr_stamp_to_cheque_stamp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_cheque_attribute_stamp
    ADD CONSTRAINT fk_cheque_attr_stamp_to_cheque_stamp FOREIGN KEY (cheque_stamp_id) REFERENCES public.t_cheque_stamp(id);


--
-- Name: t_cheque_item_stamp fk_cheque_item_stamp_to_cheque_stamp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_cheque_item_stamp
    ADD CONSTRAINT fk_cheque_item_stamp_to_cheque_stamp FOREIGN KEY (id_cheque_stamp) REFERENCES public.t_cheque_stamp(id);


--
-- Name: t_cheque_payment_stamp fk_cheque_payment_stamp_to_cheque_stamp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_cheque_payment_stamp
    ADD CONSTRAINT fk_cheque_payment_stamp_to_cheque_stamp FOREIGN KEY (id_cheque_stamp) REFERENCES public.t_cheque_stamp(id);


--
-- Name: t_cheque_stamp fk_cheque_stamp_to_basket; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_cheque_stamp
    ADD CONSTRAINT fk_cheque_stamp_to_basket FOREIGN KEY (id_basket) REFERENCES public.basket(basket_id);


--
-- Name: t_client_promo_message fk_client_promo_message_to_basket; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_client_promo_message
    ADD CONSTRAINT fk_client_promo_message_to_basket FOREIGN KEY (id_basket) REFERENCES public.basket(basket_id);


--
-- Name: t_club_pro_promotion_applicability fk_club_pro_promotion_applicability_to_club_pro_promotion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_club_pro_promotion_applicability
    ADD CONSTRAINT fk_club_pro_promotion_applicability_to_club_pro_promotion FOREIGN KEY (id_club_pro_promotion) REFERENCES public.t_club_pro_promotion(id_club_pro_promotion);


--
-- Name: t_control_scanning_stamp_item fk_control_scanning_stamp_item_to_basket; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_control_scanning_stamp_item
    ADD CONSTRAINT fk_control_scanning_stamp_item_to_basket FOREIGN KEY (id_basket) REFERENCES public.basket(basket_id);


--
-- Name: t_correction_cheque_stamp fk_correction_cheque_stamp_to_correction_op; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_correction_cheque_stamp
    ADD CONSTRAINT fk_correction_cheque_stamp_to_correction_op FOREIGN KEY (id_correction_op) REFERENCES public.t_correction_op(id_correction_op);


--
-- Name: t_correction_op fk_correction_op_to_salesession; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_correction_op
    ADD CONSTRAINT fk_correction_op_to_salesession FOREIGN KEY (salesession_salesession_id) REFERENCES public.salesession(salesession_id);


--
-- Name: discappl fk_disc_appl_to_basket_club_pro_promotion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discappl
    ADD CONSTRAINT fk_disc_appl_to_basket_club_pro_promotion FOREIGN KEY (id_basket_club_pro_promotion) REFERENCES public.t_basket_club_pro_promotion(id_basket_club_pro_promotion);


--
-- Name: t_basket_cheque fk_electronic_cheque_basket; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_basket_cheque
    ADD CONSTRAINT fk_electronic_cheque_basket FOREIGN KEY (id_basket) REFERENCES public.basket(basket_id);


--
-- Name: t_km_report_fiscal_parameters fk_km_report_fiscal_parameters_to_salesession; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_km_report_fiscal_parameters
    ADD CONSTRAINT fk_km_report_fiscal_parameters_to_salesession FOREIGN KEY (session_id) REFERENCES public.salesession(salesession_id);


--
-- Name: t_pay_card_terminal_cliche fk_pay_card_terminal_cliche_to_pay_card_terminal; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_pay_card_terminal_cliche
    ADD CONSTRAINT fk_pay_card_terminal_cliche_to_pay_card_terminal FOREIGN KEY (id_card_terminal) REFERENCES public.t_pay_card_terminal(id);


--
-- Name: t_pay_card_terminal_cliche fk_pay_card_terminal_cliche_to_processing_company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_pay_card_terminal_cliche
    ADD CONSTRAINT fk_pay_card_terminal_cliche_to_processing_company FOREIGN KEY (id_process_company) REFERENCES public.t_processing_company(id);


--
-- Name: t_pay_card_terminal_salepoint fk_pay_card_terminal_salepoint_to_pay_card_terminal; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_pay_card_terminal_salepoint
    ADD CONSTRAINT fk_pay_card_terminal_salepoint_to_pay_card_terminal FOREIGN KEY (id_terminal) REFERENCES public.t_pay_card_terminal(id);


--
-- Name: t_pay_card_to_processing_company fk_pay_card_to_processing_company_to_pay_card_type; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_pay_card_to_processing_company
    ADD CONSTRAINT fk_pay_card_to_processing_company_to_pay_card_type FOREIGN KEY (id_paycard_type) REFERENCES public.t_pay_card_type(id);


--
-- Name: t_pay_card_to_processing_company fk_pay_card_to_processing_company_to_processing_company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_pay_card_to_processing_company
    ADD CONSTRAINT fk_pay_card_to_processing_company_to_processing_company FOREIGN KEY (id_process_company) REFERENCES public.t_processing_company(id);


--
-- Name: t_spec_ware_card fk_spec_ware_card_to_ware; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_spec_ware_card
    ADD CONSTRAINT fk_spec_ware_card_to_ware FOREIGN KEY (ware_id) REFERENCES public.ware(ware_id);


--
-- Name: t_basket_item_vat_rates fk_t_basket_item_vat_rates_to_basket_item; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_basket_item_vat_rates
    ADD CONSTRAINT fk_t_basket_item_vat_rates_to_basket_item FOREIGN KEY (basket_item_id) REFERENCES public.basket_item(basket_item_id);


--
-- Name: t_basket_vat_rates fk_t_basket_vat_rates_to_basket; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_basket_vat_rates
    ADD CONSTRAINT fk_t_basket_vat_rates_to_basket FOREIGN KEY (basket_id) REFERENCES public.basket(basket_id);


--
-- Name: t_personal_order_items fk_t_personal_order_items_to_basket; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_personal_order_items
    ADD CONSTRAINT fk_t_personal_order_items_to_basket FOREIGN KEY (basket_id) REFERENCES public.basket(basket_id);


--
-- Name: t_personal_order_items fk_t_personal_order_items_to_ware; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_personal_order_items
    ADD CONSTRAINT fk_t_personal_order_items_to_ware FOREIGN KEY (ware_id) REFERENCES public.ware(ware_id);


--
-- Name: t_vat_correction_cheque_item fk_t_vat_correction_cheque_item_to_t_vat_correction_cheque; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_vat_correction_cheque_item
    ADD CONSTRAINT fk_t_vat_correction_cheque_item_to_t_vat_correction_cheque FOREIGN KEY (vat_correction_cheque_id) REFERENCES public.t_vat_correction_cheque(id);


--
-- Name: t_vat_correction_cheque fk_t_vat_correction_cheque_to_basket; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_vat_correction_cheque
    ADD CONSTRAINT fk_t_vat_correction_cheque_to_basket FOREIGN KEY (basket_id) REFERENCES public.basket(basket_id);


--
-- Name: t_vat_correction_prev_item fk_t_vat_correction_prev_item_to_t_vat_correction_prev; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_vat_correction_prev_item
    ADD CONSTRAINT fk_t_vat_correction_prev_item_to_t_vat_correction_prev FOREIGN KEY (vat_correction_prev_id) REFERENCES public.t_vat_correction_prev(id);


--
-- Name: t_vat_correction_prev_item fk_t_vat_correction_prev_item_to_ware; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_vat_correction_prev_item
    ADD CONSTRAINT fk_t_vat_correction_prev_item_to_ware FOREIGN KEY (ware_id) REFERENCES public.ware(ware_id);


--
-- Name: t_vat_correction_prev_print fk_t_vat_correction_prev_print_to_t_vat_correction_prev; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_vat_correction_prev_print
    ADD CONSTRAINT fk_t_vat_correction_prev_print_to_t_vat_correction_prev FOREIGN KEY (vat_correction_prev_id) REFERENCES public.t_vat_correction_prev(id);


--
-- Name: t_vat_correction_prev fk_t_vat_correction_prev_to_basket; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_vat_correction_prev
    ADD CONSTRAINT fk_t_vat_correction_prev_to_basket FOREIGN KEY (basket_id) REFERENCES public.basket(basket_id);


--
-- Name: t_ware_extra_gtin fk_t_ware_extra_gtin_to_ware; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_ware_extra_gtin
    ADD CONSTRAINT fk_t_ware_extra_gtin_to_ware FOREIGN KEY (id_ware) REFERENCES public.ware(ware_id) ON DELETE CASCADE;


--
-- Name: t_user_barcode fk_user_barcode_to_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_user_barcode
    ADD CONSTRAINT fk_user_barcode_to_user FOREIGN KEY (key_user) REFERENCES public.app_user(login);


--
-- Name: t_ware_warranty fk_ware_warranty_to_ware; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_ware_warranty
    ADD CONSTRAINT fk_ware_warranty_to_ware FOREIGN KEY (id_ware) REFERENCES public.ware(ware_id);


--
-- Name: t_ware_warranty fk_ware_warranty_to_ware_warranty; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_ware_warranty
    ADD CONSTRAINT fk_ware_warranty_to_ware_warranty FOREIGN KEY (id_parent) REFERENCES public.t_ware_warranty(id_ware_warranty);


--
-- Name: basketdisc fka21bc49b29d124bb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basketdisc
    ADD CONSTRAINT fka21bc49b29d124bb FOREIGN KEY (basket_id) REFERENCES public.basket(basket_id);


--
-- Name: basketdisc fka21bc49bc0c95409; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basketdisc
    ADD CONSTRAINT fka21bc49bc0c95409 FOREIGN KEY (discount_disc_id) REFERENCES public.discount(disc_id);


--
-- Name: disabledinteract fkd0103cf23023929d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disabledinteract
    ADD CONSTRAINT fkd0103cf23023929d FOREIGN KEY (ig_id1) REFERENCES public.interactgroup(ig_id);


--
-- Name: disabledinteract fkd0103cf23023929e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disabledinteract
    ADD CONSTRAINT fkd0103cf23023929e FOREIGN KEY (ig_id2) REFERENCES public.interactgroup(ig_id);


--
-- Name: basket_payments fke307dd66df28d982; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_payments
    ADD CONSTRAINT fke307dd66df28d982 FOREIGN KEY (basket_id) REFERENCES public.basket(basket_id);


--
-- Name: ware licensor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ware
    ADD CONSTRAINT licensor_fkey FOREIGN KEY (id_licensor) REFERENCES public.licensor(licensor_id);


--
-- Name: salesession salesession_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salesession
    ADD CONSTRAINT salesession_fkey FOREIGN KEY (app_user) REFERENCES public.app_user(login);


--
-- Name: salesession salesession_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salesession
    ADD CONSTRAINT salesession_fkey2 FOREIGN KEY (closing_user) REFERENCES public.app_user(login);


--
-- Name: t_shp_trade_region_territory shp_to_territory; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_shp_trade_region_territory
    ADD CONSTRAINT shp_to_territory FOREIGN KEY (id_territory) REFERENCES public.t_territory(id_territory);


--
-- Name: t_shp_trade_region_territory shp_to_trade_region; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_shp_trade_region_territory
    ADD CONSTRAINT shp_to_trade_region FOREIGN KEY (id_trade_region) REFERENCES public.t_trade_region(id_trade_region);


--
-- Name: basket_item storage; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_item
    ADD CONSTRAINT storage FOREIGN KEY (storage_id) REFERENCES public.storage(id);


--
-- Name: t_basket_item_defect t_basket_item_defect_basket_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_basket_item_defect
    ADD CONSTRAINT t_basket_item_defect_basket_item_id_fkey FOREIGN KEY (basket_item_id) REFERENCES public.basket_item(basket_item_id);


--
-- Name: t_payment_map_to_userrole t_payment_map_to_role_userrole_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_payment_map_to_userrole
    ADD CONSTRAINT t_payment_map_to_role_userrole_id_fk FOREIGN KEY (role_id) REFERENCES public.userrole(id);


--
-- Name: t_payment_map_to_userrole t_payment_map_to_userrole_t_payment_map_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_payment_map_to_userrole
    ADD CONSTRAINT t_payment_map_to_userrole_t_payment_map_id_fk FOREIGN KEY (map_id) REFERENCES public.t_payment_map(id);


--
-- Name: t_ware_set t_ware_set_id_segment_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_ware_set
    ADD CONSTRAINT t_ware_set_id_segment_fkey FOREIGN KEY (id_segment) REFERENCES public.storage(id);


--
-- Name: t_ware_set_item t_ware_set_item_id_set_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_ware_set_item
    ADD CONSTRAINT t_ware_set_item_id_set_fkey FOREIGN KEY (id_set) REFERENCES public.t_ware_set(id_set);


--
-- Name: t_ware_set_item t_ware_set_item_id_ware_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_ware_set_item
    ADD CONSTRAINT t_ware_set_item_id_ware_fkey FOREIGN KEY (id_ware) REFERENCES public.ware(ware_id);


--
-- Name: user_session user_session_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_session
    ADD CONSTRAINT user_session_fk FOREIGN KEY (login) REFERENCES public.app_user(login);


--
-- Name: app_user userrole_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_user
    ADD CONSTRAINT userrole_fkey FOREIGN KEY (role_id) REFERENCES public.userrole(id);


--
-- Name: roleoperation userrole_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roleoperation
    ADD CONSTRAINT userrole_fkey FOREIGN KEY (role_id) REFERENCES public.userrole(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

