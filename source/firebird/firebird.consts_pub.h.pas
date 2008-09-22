unit firebird.consts_pub.h;

interface

(*
 * MODULE:  consts_pub.h
 * DESCRIPTION: Public constants' definitions
 *
 * The contents of this filename are subject to the Interbase Public
 * License Version 1.0 (the 'License'); you may not use this filename
 * except in compliance with the License. You may obtain a copy
 * of the License at http://www.Inprise.com/IPL.html
 *
 * Software distributed under the License is distributed on an
 * 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, either express
 * or implied. See the License for the specific language governing
 * rights and limitations under the License.
 *
 * The Original Code was created by Inprise Corporation
 * and its predecessors. Portions created by Inprise Corporation are
 * Copyright (C) Inprise Corporation.
 *
 * All Rights Reserved.
 * Contributor(s): ______________________________________.
 *
 * 18.08.2006 Dimitry Sibiryakov: Extracted it from ibase.h
 *
 *)

//ifndef INCLUDE_CONSTS_PUB_H
//const INCLUDE_CONSTS_PUB_H =;

(**********************************)
(* Database parameter block stuff *)
(**********************************)

const isc_dpb_version1 =                  1;
const isc_dpb_cdd_pathname =              1;
const isc_dpb_allocation =                2;
const isc_dpb_journal =                   3;
const isc_dpb_page_size =                 4;
const isc_dpb_num_buffers =               5;
const isc_dpb_buffer_length =             6;
const isc_dpb_debug =                     7;
const isc_dpb_garbage_collect =           8;
const isc_dpb_verify =                    9;
const isc_dpb_sweep =                     10;
const isc_dpb_enable_journal =            11;
const isc_dpb_disable_journal =           12;
const isc_dpb_dbkey_scope =               13;
const isc_dpb_number_of_users =           14;
const isc_dpb_trace =                     15;
const isc_dpb_no_garbage_collect =        16;
const isc_dpb_damaged =                   17;
const isc_dpb_license =                   18;
const isc_dpb_sys_user_name =             19;
const isc_dpb_encrypt_key =               20;
const isc_dpb_activate_shadow =           21;
const isc_dpb_sweep_interval =            22;
const isc_dpb_delete_shadow =             23;
const isc_dpb_force_write =               24;
const isc_dpb_begin_log =                 25;
const isc_dpb_quit_log =                  26;
const isc_dpb_no_reserve =                27;
const isc_dpb_user_name =                 28;
const isc_dpb_password =                  29;
const isc_dpb_password_enc =              30;
const isc_dpb_sys_user_name_enc =         31;
const isc_dpb_interp =                    32;
const isc_dpb_online_dump =               33;
const isc_dpb_old_file_size =             34;
const isc_dpb_old_num_files =             35;
const isc_dpb_old_file =                  36;
const isc_dpb_old_start_page =            37;
const isc_dpb_old_start_seqno =           38;
const isc_dpb_old_start_file =            39;
const isc_dpb_drop_walfile =              40;
const isc_dpb_old_dump_id =               41;
const isc_dpb_wal_backup_dir =            42;
const isc_dpb_wal_chkptlen =              43;
const isc_dpb_wal_numbufs =               44;
const isc_dpb_wal_bufsize =               45;
const isc_dpb_wal_grp_cmt_wait =          46;
const isc_dpb_lc_messages =               47;
const isc_dpb_lc_ctype =                  48;
const isc_dpb_cache_manager =             49;
const isc_dpb_shutdown =                  50;
const isc_dpb_online =                    51;
const isc_dpb_shutdown_delay =            52;
const isc_dpb_reserved =                  53;
const isc_dpb_overwrite =                 54;
const isc_dpb_sec_attach =                55;
const isc_dpb_disable_wal =               56;
const isc_dpb_connect_timeout =           57;
const isc_dpb_dummy_packet_interval =     58;
const isc_dpb_gbak_attach =               59;
const isc_dpb_sql_role_name =             60;
const isc_dpb_set_page_buffers =          61;
const isc_dpb_working_directory =         62;
const isc_dpb_sql_dialect =               63;
const isc_dpb_set_db_readonly =           64;
const isc_dpb_set_db_sql_dialect =        65;
const isc_dpb_gfix_attach =               66;
const isc_dpb_gstat_attach =              67;
const isc_dpb_set_db_charset =            68;
const isc_dpb_gsec_attach =               69;
const isc_dpb_address_path =              70;
const isc_dpb_process_id =                71;
const isc_dpb_no_db_triggers =            72;
const isc_dpb_trusted_auth =              73;
const isc_dpb_process_name =              74;
const isc_dpb_trusted_role =              75;
const isc_dpb_org_filename =              76;

(**************************************************)
(* clumplet tags used inside isc_dpb_address_path *)
(*       and isc_spb_address_path *)
(**************************************************)

(* Format of this clumplet is the following:

 <address-path-clumplet> .=
 isc_dpb_address_path <byte-clumplet-length> <address-stack>

 <address-stack> .=
 <address-descriptor>  or 
 <address-stack> <address-descriptor>

 <address-descriptor> .=
 isc_dpb_address <byte-clumplet-length> <address-elements>

 <address-elements> .=
 <address-element>  or 
 <address-elements> <address-element>

 <address-element> .=
 isc_dpb_addr_protocol <byte-clumplet-length> <protocol-string>  or 
 isc_dpb_addr_endpoint <byte-clumplet-length> <remote-endpoint-string>

 <protocol-string> .=
 'TCPv4'  or 
 'TCPv6'  or 
 'XNET'  or 
 'WNET'  or 
 Args: array of const.

 <remote-endpoint-string> .=
 <IPv4-address> or // such as "172.20.1.1"
 <IPv6-address> or // such as "2001:0:13FF:09FF::1"
 <xnet-process-id> or // such as "17864"
 Args: array of const
*)

const isc_dpb_address = 1;

const isc_dpb_addr_protocol = 1;
const isc_dpb_addr_endpoint = 2;

(*********************************)
(* isc_dpb_verify specific flags *)
(*********************************)

const isc_dpb_pages =                     1;
const isc_dpb_records =                   2;
const isc_dpb_indices =                   4;
const isc_dpb_transactions =              8;
const isc_dpb_no_update =                 16;
const isc_dpb_repair =                    32;
const isc_dpb_ignore =                    64;

(***********************************)
(* isc_dpb_shutdown specific flags *)
(***********************************)

const isc_dpb_shut_cache =               $1;
const isc_dpb_shut_attachment =          $2;
const isc_dpb_shut_transaction =         $4;
const isc_dpb_shut_force =               $8;
const isc_dpb_shut_mode_mask =          $70;

const isc_dpb_shut_default =             $0;
const isc_dpb_shut_normal =             $10;
const isc_dpb_shut_multi =              $20;
const isc_dpb_shut_single =             $30;
const isc_dpb_shut_full =               $40;

(**************************************)
(* Bit assignments in RDB$SYSTEM_FLAG *)
(**************************************)

const RDB_system =                         1;
const RDB_id_assigned =                    2;
(* 2 is for QLI. See jrd/constants.h for more Firebird-specific values. *)


(*************************************)
(* Transaction parameter block stuff *)
(*************************************)

const isc_tpb_version1 =                  1;
const isc_tpb_version3 =                  3;
const isc_tpb_consistency =               1;
const isc_tpb_concurrency =               2;
const isc_tpb_shared =                    3;
const isc_tpb_protected =                 4;
const isc_tpb_exclusive =                 5;
const isc_tpb_wait =                      6;
const isc_tpb_nowait =                    7;
const isc_tpb_read =                      8;
const isc_tpb_write =                     9;
const isc_tpb_lock_read =                 10;
const isc_tpb_lock_write =                11;
const isc_tpb_verb_time =                 12;
const isc_tpb_commit_time =               13;
const isc_tpb_ignore_limbo =              14;
const isc_tpb_read_committed =           15;
const isc_tpb_autocommit =                16;
const isc_tpb_rec_version =               17;
const isc_tpb_no_rec_version =            18;
const isc_tpb_restart_requests =          19;
const isc_tpb_no_auto_undo =              20;
const isc_tpb_lock_timeout =              21;


(************************)
(* Blob Parameter Block *)
(************************)

const isc_bpb_version1 =                  1;
const isc_bpb_source_type =               1;
const isc_bpb_target_type =               2;
const isc_bpb_type =                      3;
const isc_bpb_source_interp =             4;
const isc_bpb_target_interp =             5;
const isc_bpb_filter_parameter =          6;
const isc_bpb_storage =                   7;

const isc_bpb_type_segmented =            $0;
const isc_bpb_type_stream =               $1;
const isc_bpb_storage_main =              $0;
const isc_bpb_storage_temp =              $2;


(*********************************)
(* Service parameter block stuff *)
(*********************************)

const isc_spb_version1 =                  1;
const isc_spb_current_version =           2;
const isc_spb_version =                   isc_spb_current_version;
const isc_spb_user_name =                 isc_dpb_user_name;
const isc_spb_sys_user_name =             isc_dpb_sys_user_name;
const isc_spb_sys_user_name_enc =         isc_dpb_sys_user_name_enc;
const isc_spb_password =                  isc_dpb_password;
const isc_spb_password_enc =              isc_dpb_password_enc;
const isc_spb_command_line =              105;
const isc_spb_dbname =                    106;
const isc_spb_verbose =                   107;
const isc_spb_options =                   108;
const isc_spb_address_path =              109;
const isc_spb_process_id =                110;
const isc_spb_trusted_auth =     111;
const isc_spb_process_name =              112;
const isc_spb_trusted_role =              113;


const isc_spb_connect_timeout =           isc_dpb_connect_timeout;
const isc_spb_dummy_packet_interval =     isc_dpb_dummy_packet_interval;
const isc_spb_sql_role_name =             isc_dpb_sql_role_name;

(*****************************
 * Service action items      *
 *****************************)

const isc_action_svc_backup =          1; (* Starts database backup process on the server *)
const isc_action_svc_restore =         2; (* Starts database restore process on the server *)
const isc_action_svc_repair =          3; (* Starts database repair process on the server *)
const isc_action_svc_add_user =        4; (* Adds a new user to the security database *)
const isc_action_svc_delete_user =     5; (* Deletes a user record from the security database *)
const isc_action_svc_modify_user =     6; (* Modifies a user record in the security database *)
const isc_action_svc_display_user =    7; (* Displays a user record from the security database *)
const isc_action_svc_properties =      8; (* Sets database properties *)
const isc_action_svc_add_license =     9; (* Adds a license to the license file *)
const isc_action_svc_remove_license = 10; (* Removes a license from the license file *)
const isc_action_svc_db_stats =       11; (* Retrieves database statistics *)
const isc_action_svc_get_ib_log =     12; (* Retrieves the InterBase log file from the server *)
const isc_action_svc_get_fb_log =     12; (* Retrieves the Firebird log file from the server *)

(*****************************
 * Service information items *
 *****************************)

const isc_info_svc_svr_db_info =      50; (* Retrieves the number of attachments and databases *)
const isc_info_svc_get_license =      51; (* Retrieves all license keys and IDs from the license file *)
const isc_info_svc_get_license_mask = 52; (* Retrieves a bitmask representing licensed options on the server *)
const isc_info_svc_get_config =       53; (* Retrieves the parameters and values for IB_CONFIG *)
const isc_info_svc_version =          54; (* Retrieves the version of the services manager *)
const isc_info_svc_server_version =   55; (* Retrieves the version of the Firebird server *)
const isc_info_svc_implementation =   56; (* Retrieves the implementation of the Firebird server *)
const isc_info_svc_capabilities =     57; (* Retrieves a bitmask representing the server's capabilities *)
const isc_info_svc_user_dbpath =      58; (* Retrieves the path to the security database in use by the server *)
const isc_info_svc_get_env =       59; (* Retrieves the setting of $FIREBIRD *)
const isc_info_svc_get_env_lock =     60; (* Retrieves the setting of $FIREBIRD_LCK *)
const isc_info_svc_get_env_msg =      61; (* Retrieves the setting of $FIREBIRD_MSG *)
const isc_info_svc_line =             62; (* Retrieves 1 line of service output per call *)
const isc_info_svc_to_eof =           63; (* Retrieves as much of the server output as will fit in the supplied buffer *)
const isc_info_svc_timeout =          64; (* Sets / signifies a timeout value for reading service information *)
const isc_info_svc_get_licensed_users = 65; (* Retrieves the number of users licensed for accessing the server *)
const isc_info_svc_limbo_trans = 66; (* Retrieve the limbo transactions *)
const isc_info_svc_running =  67; (* Checks to see if a service is running on an attachment *)
const isc_info_svc_get_users =  68; (* Returns the user information from isc_action_svc_display_users *)

(******************************************************
 * Parameters for isc_action_{add or del or mod or disp)_user  *
 ******************************************************)

const isc_spb_sec_userid =            5;
const isc_spb_sec_groupid =           6;
const isc_spb_sec_username =          7;
const isc_spb_sec_password =          8;
const isc_spb_sec_groupname =         9;
const isc_spb_sec_firstname =         10;
const isc_spb_sec_middlename =        11;
const isc_spb_sec_lastname =          12;

(*******************************************************
 * Parameters for isc_action_svc_(add or remove)_license, *
 * isc_info_svc_get_license                            *
 *******************************************************)

const isc_spb_lic_key =               5;
const isc_spb_lic_id =                6;
const isc_spb_lic_desc =              7;


(*****************************************
 * Parameters for isc_action_svc_backup  *
 *****************************************)

const isc_spb_bkp_file =                 5;
const isc_spb_bkp_factor =               6;
const isc_spb_bkp_length =               7;
const isc_spb_bkp_ignore_checksums =     $01;
const isc_spb_bkp_ignore_limbo =         $02;
const isc_spb_bkp_metadata_only =        $04;
const isc_spb_bkp_no_garbage_collect =   $08;
const isc_spb_bkp_old_descriptions =     $10;
const isc_spb_bkp_non_transportable =    $20;
const isc_spb_bkp_convert =              $40;
const isc_spb_bkp_expand =   $80;

(********************************************
 * Parameters for isc_action_svc_properties *
 ********************************************)

const isc_spb_prp_page_buffers =  5;
const isc_spb_prp_sweep_interval =  6;
const isc_spb_prp_shutdown_db =   7;
const isc_spb_prp_deny_new_attachments = 9;
const isc_spb_prp_deny_new_transactions = 10;
const isc_spb_prp_reserve_space =  11;
const isc_spb_prp_write_mode =   12;
const isc_spb_prp_access_mode =   13;
const isc_spb_prp_set_sql_dialect =  14;
const isc_spb_prp_activate =   $0100;
const isc_spb_prp_db_online =   $0200;
const isc_spb_prp_force_shutdown =   41;
const isc_spb_prp_attachments_shutdown = 42;
const isc_spb_prp_transactions_shutdown = 43;
const isc_spb_prp_shutdown_mode =  44;
const isc_spb_prp_online_mode =   45;

(********************************************
 * Parameters for isc_spb_prp_shutdown_mode *
 *            and isc_spb_prp_online_mode   *
 ********************************************)
const isc_spb_prp_sm_normal =  0;
const isc_spb_prp_sm_multi =  1;
const isc_spb_prp_sm_single =  2;
const isc_spb_prp_sm_full =   3;

(********************************************
 * Parameters for isc_spb_prp_reserve_space *
 ********************************************)

const isc_spb_prp_res_use_full = 35;
const isc_spb_prp_res =    36;

(******************************************
 * Parameters for isc_spb_prp_write_mode  *
 ******************************************)

const isc_spb_prp_wm_async =  37;
const isc_spb_prp_wm_sync =   38;

(******************************************
 * Parameters for isc_spb_prp_access_mode *
 ******************************************)

const isc_spb_prp_am_readonly =  39;
const isc_spb_prp_am_readwrite = 40;

(*****************************************
 * Parameters for isc_action_svc_repair  *
 *****************************************)

const isc_spb_rpr_commit_trans =  15;
const isc_spb_rpr_rollback_trans =  34;
const isc_spb_rpr_recover_two_phase = 17;
const isc_spb_tra_id =     18;
const isc_spb_single_tra_id =   19;
const isc_spb_multi_tra_id =   20;
const isc_spb_tra_state =    21;
const isc_spb_tra_state_limbo =   22;
const isc_spb_tra_state_commit =  23;
const isc_spb_tra_state_rollback =  24;
const isc_spb_tra_state_unknown =  25;
const isc_spb_tra_host_site =   26;
const isc_spb_tra_remote_site =   27;
const isc_spb_tra_db_path =    28;
const isc_spb_tra_advise =    29;
const isc_spb_tra_advise_commit =  30;
const isc_spb_tra_advise_rollback =  31;
const isc_spb_tra_advise_unknown =  33;

const isc_spb_rpr_validate_db =   $01;
const isc_spb_rpr_sweep_db =   $02;
const isc_spb_rpr_mend_db =    $04;
const isc_spb_rpr_list_limbo_trans = $08;
const isc_spb_rpr_check_db =   $10;
const isc_spb_rpr_ignore_checksum =  $20;
const isc_spb_rpr_kill_shadows =  $40;
const isc_spb_rpr_full =    $80;

(*****************************************
 * Parameters for isc_action_svc_restore *
 *****************************************)

const isc_spb_res_buffers =    9;
const isc_spb_res_page_size =   10;
const isc_spb_res_length =    11;
const isc_spb_res_access_mode =   12;
const isc_spb_res_deactivate_idx =  $0100;
const isc_spb_res_no_shadow =   $0200;
const isc_spb_res_no_validity =   $0400;
const isc_spb_res_one_at_a_time =  $0800;
const isc_spb_res_replace =    $1000;
const isc_spb_res_create =    $2000;
const isc_spb_res_use_all_space =  $4000;

(******************************************
 * Parameters for isc_spb_res_access_mode  *
 ******************************************)

const isc_spb_res_am_readonly =   isc_spb_prp_am_readonly;
const isc_spb_res_am_readwrite =  isc_spb_prp_am_readwrite;

(*******************************************
 * Parameters for isc_info_svc_svr_db_info *
 *******************************************)

const isc_spb_num_att =   5;
const isc_spb_num_db =   6;

(*****************************************
 * Parameters for isc_info_svc_db_stats  *
 *****************************************)

const isc_spb_sts_data_pages =  $01;
const isc_spb_sts_db_log =   $02;
const isc_spb_sts_hdr_pages =  $04;
const isc_spb_sts_idx_pages =  $08;
const isc_spb_sts_sys_relations = $10;
const isc_spb_sts_record_versions = $20;
const isc_spb_sts_table =   $40;
const isc_spb_sts_nocreation =  $80;

(***********************************)
(* Server configuration key values *)
(***********************************)

(* Not available in Firebird 1.5 *)


(**********************************************)
(* Dynamic Data Definition Language operators *)
(**********************************************)

(******************)
(* Version number *)
(******************)

const isc_dyn_version_1 =                 1;
const isc_dyn_eoc =                       255;

(******************************)
(* Operations (may be nested) *)
(******************************)

const isc_dyn_begin =                     2;
const isc_dyn_end =                       3;
const isc_dyn_if =                        4;
const isc_dyn_def_database =              5;
const isc_dyn_def_global_fld =            6;
const isc_dyn_def_local_fld =             7;
const isc_dyn_def_idx =                   8;
const isc_dyn_def_rel =                   9;
const isc_dyn_def_sql_fld =               10;
const isc_dyn_def_view =                  12;
const isc_dyn_def_trigger =               15;
const isc_dyn_def_security_class =        120;
const isc_dyn_def_dimension =             140;
const isc_dyn_def_generator =             24;
const isc_dyn_def_function =              25;
const isc_dyn_def_filter =                26;
const isc_dyn_def_function_arg =          27;
const isc_dyn_def_shadow =                34;
const isc_dyn_def_trigger_msg =           17;
const isc_dyn_def_file =                  36;
const isc_dyn_mod_database =              39;
const isc_dyn_mod_rel =                   11;
const isc_dyn_mod_global_fld =            13;
const isc_dyn_mod_idx =                   102;
const isc_dyn_mod_local_fld =             14;
const isc_dyn_mod_sql_fld =    216;
const isc_dyn_mod_view =                  16;
const isc_dyn_mod_security_class =        122;
const isc_dyn_mod_trigger =               113;
const isc_dyn_mod_trigger_msg =           28;
const isc_dyn_delete_database =           18;
const isc_dyn_delete_rel =                19;
const isc_dyn_delete_global_fld =         20;
const isc_dyn_delete_local_fld =          21;
const isc_dyn_delete_idx =                22;
const isc_dyn_delete_security_class =     123;
const isc_dyn_delete_dimensions =         143;
const isc_dyn_delete_trigger =            23;
const isc_dyn_delete_trigger_msg =        29;
const isc_dyn_delete_filter =             32;
const isc_dyn_delete_function =           33;
const isc_dyn_delete_shadow =             35;
const isc_dyn_grant =                     30;
const isc_dyn_revoke =                    31;
const isc_dyn_def_primary_key =           37;
const isc_dyn_def_foreign_key =           38;
const isc_dyn_def_unique =                40;
const isc_dyn_def_procedure =             164;
const isc_dyn_delete_procedure =          165;
const isc_dyn_def_parameter =             135;
const isc_dyn_delete_parameter =          136;
const isc_dyn_mod_procedure =             175;
(* Deprecated.
const isc_dyn_def_log_file =              176;
const isc_dyn_def_cache_file =            180;
*)
const isc_dyn_def_exception =             181;
const isc_dyn_mod_exception =             182;
const isc_dyn_del_exception =             183;
(* Deprecated.
const isc_dyn_drop_log =                  194;
const isc_dyn_drop_cache =                195;
const isc_dyn_def_default_log =           202;
*)
const isc_dyn_def_difference =            220;
const isc_dyn_drop_difference =           221;
const isc_dyn_begin_backup =              222;
const isc_dyn_end_backup =                223;
const isc_dyn_debug_info =                240;

(***********************)
(* View specific stuff *)
(***********************)

const isc_dyn_view_blr =                  43;
const isc_dyn_view_source =               44;
const isc_dyn_view_relation =             45;
const isc_dyn_view_context =              46;
const isc_dyn_view_context_name =         47;

(**********************)
(* Generic attributes *)
(**********************)

const isc_dyn_rel_name =                  50;
const isc_dyn_fld_name =                  51;
const isc_dyn_new_fld_name =    215;
const isc_dyn_idx_name =                  52;
const isc_dyn_description =               53;
const isc_dyn_security_class =            54;
const isc_dyn_system_flag =               55;
const isc_dyn_update_flag =               56;
const isc_dyn_prc_name =                  166;
const isc_dyn_prm_name =                  137;
const isc_dyn_sql_object =                196;
const isc_dyn_fld_character_set_name =    174;

(********************************)
(* Relation specific attributes *)
(********************************)

const isc_dyn_rel_dbkey_length =          61;
const isc_dyn_rel_store_trig =            62;
const isc_dyn_rel_modify_trig =           63;
const isc_dyn_rel_erase_trig =            64;
const isc_dyn_rel_store_trig_source =     65;
const isc_dyn_rel_modify_trig_source =    66;
const isc_dyn_rel_erase_trig_source =     67;
const isc_dyn_rel_ext_file =              68;
const isc_dyn_rel_sql_protection =        69;
const isc_dyn_rel_constraint =            162;
const isc_dyn_delete_rel_constraint =     163;

const isc_dyn_rel_temporary =    238;
const isc_dyn_rel_temp_global_preserve = 1;
const isc_dyn_rel_temp_global_delete =  2;

(************************************)
(* Global field specific attributes *)
(************************************)

const isc_dyn_fld_type =                  70;
const isc_dyn_fld_length =                71;
const isc_dyn_fld_scale =                 72;
const isc_dyn_fld_sub_type =              73;
const isc_dyn_fld_segment_length =        74;
const isc_dyn_fld_query_header =          75;
const isc_dyn_fld_edit_string =           76;
const isc_dyn_fld_validation_blr =        77;
const isc_dyn_fld_validation_source =     78;
const isc_dyn_fld_computed_blr =          79;
const isc_dyn_fld_computed_source =       80;
const isc_dyn_fld_missing_value =         81;
const isc_dyn_fld_default_value =         82;
const isc_dyn_fld_query_name =            83;
const isc_dyn_fld_dimensions =            84;
const isc_dyn_fld_not_null =              85;
const isc_dyn_fld_precision =             86;
const isc_dyn_fld_char_length =           172;
const isc_dyn_fld_collation =             173;
const isc_dyn_fld_default_source =        193;
const isc_dyn_del_default =               197;
const isc_dyn_del_validation =            198;
const isc_dyn_single_validation =         199;
const isc_dyn_fld_character_set =         203;
const isc_dyn_del_computed =              242;

(***********************************)
(* Local field specific attributes *)
(***********************************)

const isc_dyn_fld_source =                90;
const isc_dyn_fld_base_fld =              91;
const isc_dyn_fld_position =              92;
const isc_dyn_fld_update_flag =           93;

(*****************************)
(* Index specific attributes *)
(*****************************)

const isc_dyn_idx_unique =                100;
const isc_dyn_idx_inactive =              101;
const isc_dyn_idx_type =                  103;
const isc_dyn_idx_foreign_key =           104;
const isc_dyn_idx_ref_column =            105;
const isc_dyn_idx_statistic =             204;

(*******************************)
(* Trigger specific attributes *)
(*******************************)

const isc_dyn_trg_type =                  110;
const isc_dyn_trg_blr =                   111;
const isc_dyn_trg_source =                112;
const isc_dyn_trg_name =                  114;
const isc_dyn_trg_sequence =              115;
const isc_dyn_trg_inactive =              116;
const isc_dyn_trg_msg_number =            117;
const isc_dyn_trg_msg =                   118;

(**************************************)
(* Security Class specific attributes *)
(**************************************)

const isc_dyn_scl_acl =                   121;
const isc_dyn_grant_user =                130;
const isc_dyn_grant_user_explicit =       219;
const isc_dyn_grant_proc =                186;
const isc_dyn_grant_trig =                187;
const isc_dyn_grant_view =                188;
const isc_dyn_grant_options =             132;
const isc_dyn_grant_user_group =          205;
const isc_dyn_grant_role =                218;
const isc_dyn_grant_grantor =     245;


(**********************************)
(* Dimension specific information *)
(**********************************)

const isc_dyn_dim_lower =                 141;
const isc_dyn_dim_upper =                 142;

(****************************)
(* File specific attributes *)
(****************************)

const isc_dyn_file_name =                 125;
const isc_dyn_file_start =                126;
const isc_dyn_file_length =               127;
const isc_dyn_shadow_number =             128;
const isc_dyn_shadow_man_auto =           129;
const isc_dyn_shadow_conditional =        130;

(********************************)
(* Log file specific attributes *)
(********************************)
(* Deprecated.
const isc_dyn_log_file_sequence =         177;
const isc_dyn_log_file_partitions =       178;
const isc_dyn_log_file_serial =           179;
const isc_dyn_log_file_overflow =         200;
const isc_dyn_log_file_raw =              201;
*)

(***************************)
(* Log specific attributes *)
(***************************)
(* Deprecated.
const isc_dyn_log_group_commit_wait =     189;
const isc_dyn_log_buffer_size =           190;
const isc_dyn_log_check_point_length =    191;
const isc_dyn_log_num_of_buffers =        192;
*)

(********************************)
(* Function specific attributes *)
(********************************)

const isc_dyn_function_name =             145;
const isc_dyn_function_type =             146;
const isc_dyn_func_module_name =          147;
const isc_dyn_func_entry_point =          148;
const isc_dyn_func_return_argument =      149;
const isc_dyn_func_arg_position =         150;
const isc_dyn_func_mechanism =            151;
const isc_dyn_filter_in_subtype =         152;
const isc_dyn_filter_out_subtype =        153;


const isc_dyn_description2 =              154;
const isc_dyn_fld_computed_source2 =      155;
const isc_dyn_fld_edit_string2 =          156;
const isc_dyn_fld_query_header2 =         157;
const isc_dyn_fld_validation_source2 =    158;
const isc_dyn_trg_msg2 =                  159;
const isc_dyn_trg_source2 =               160;
const isc_dyn_view_source2 =              161;
const isc_dyn_xcp_msg2 =                  184;

(*********************************)
(* Generator specific attributes *)
(*********************************)

const isc_dyn_generator_name =            95;
const isc_dyn_generator_id =              96;

(*********************************)
(* Procedure specific attributes *)
(*********************************)

const isc_dyn_prc_inputs =                167;
const isc_dyn_prc_outputs =               168;
const isc_dyn_prc_source =                169;
const isc_dyn_prc_blr =                   170;
const isc_dyn_prc_source2 =               171;
const isc_dyn_prc_type =                  239;

const isc_dyn_prc_t_selectable =          1;
const isc_dyn_prc_t_executable =          2;

(*********************************)
(* Parameter specific attributes *)
(*********************************)

const isc_dyn_prm_number =                138;
const isc_dyn_prm_type =                  139;
const isc_dyn_prm_mechanism =             241;

(********************************)
(* Relation specific attributes *)
(********************************)

const isc_dyn_xcp_msg =                   185;

(**********************************************)
(* Cascading referential integrity values     *)
(**********************************************)
const isc_dyn_foreign_key_update =        205;
const isc_dyn_foreign_key_delete =        206;
const isc_dyn_foreign_key_cascade =       207;
const isc_dyn_foreign_key_default =       208;
const isc_dyn_foreign_key_null =          209;
const isc_dyn_foreign_key_none =          210;

(***********************)
(* SQL role values     *)
(***********************)
const isc_dyn_def_sql_role =              211;
const isc_dyn_sql_role_name =             212;
const isc_dyn_grant_admin_options =       213;
const isc_dyn_del_sql_role =              214;
(* 215 & 216 are used some lines above. *)

(**********************************************)
(* Generators again                           *)
(**********************************************)

const isc_dyn_delete_generator =          217;

// New for comments in objects.
const isc_dyn_mod_function =              224;
const isc_dyn_mod_filter =                225;
const isc_dyn_mod_generator =             226;
const isc_dyn_mod_sql_role =              227;
const isc_dyn_mod_charset =               228;
const isc_dyn_mod_collation =             229;
const isc_dyn_mod_prc_parameter =         230;

(***********************)
(* collation values    *)
(***********************)
const isc_dyn_def_collation =      231;
const isc_dyn_coll_for_charset =     232;
const isc_dyn_coll_from =       233;
const isc_dyn_coll_from_external =     239;
const isc_dyn_coll_attribute =      234;
const isc_dyn_coll_specific_attributes_charset = 235;
const isc_dyn_coll_specific_attributes =   236;
const isc_dyn_del_collation =      237;

(******************************************)
(* Mapping OS security objects to DB ones *)
(******************************************)
const isc_dyn_mapping =        243;
const isc_dyn_map_role =       1;
const isc_dyn_unmap_role =       2;
const isc_dyn_map_user =       3;
const isc_dyn_unmap_user =       4;
const isc_dyn_automap_role =      5;
const isc_dyn_autounmap_role =      6;

(********************)
(* Users control    *)
(********************)
const isc_dyn_user =        244;
const isc_dyn_user_add =       1;
const isc_dyn_user_mod =       2;
const isc_dyn_user_del =       3;
const isc_dyn_user_passwd =       4;
const isc_dyn_user_first =       5;
const isc_dyn_user_middle =       6;
const isc_dyn_user_last =       7;
const isc_user_end =        0;

(****************************)
(* Last $dyn value assigned *)
(****************************)
// 245 is used in GRANTED BY

const isc_dyn_last_dyn_value =            246;

(******************************************)
(* Array slice description language (SDL) *)
(******************************************)

const isc_sdl_version1 =                  1;
const isc_sdl_eoc =                       255;
const isc_sdl_relation =                  2;
const isc_sdl_rid =                       3;
const isc_sdl_field =                     4;
const isc_sdl_fid =                       5;
const isc_sdl_struct =                    6;
const isc_sdl_variable =                  7;
const isc_sdl_scalar =                    8;
const isc_sdl_tiny_integer =              9;
const isc_sdl_short_integer =             10;
const isc_sdl_long_integer =              11;
const isc_sdl_literal =                   12;
const isc_sdl_add =                       13;
const isc_sdl_subtract =                  14;
const isc_sdl_multiply =                  15;
const isc_sdl_divide =                    16;
const isc_sdl_negate =                    17;
const isc_sdl_eql =                       18;
const isc_sdl_neq =                       19;
const isc_sdl_gtr =                       20;
const isc_sdl_geq =                       21;
const isc_sdl_lss =                       22;
const isc_sdl_leq =                       23;
const isc_sdl_and =                       24;
const isc_sdl_or =                        25;
const isc_sdl_not =                       26;
const isc_sdl_while =                     27;
const isc_sdl_assignment =                28;
const isc_sdl_label =                     29;
const isc_sdl_leave =                     30;
const isc_sdl_begin =                     31;
const isc_sdl_end =                       32;
const isc_sdl_do3 =                       33;
const isc_sdl_do2 =                       34;
const isc_sdl_do1 =                       35;
const isc_sdl_element =                   36;

(********************************************)
(* International text interpretation values *)
(********************************************)

const isc_interp_eng_ascii =              0;
const isc_interp_jpn_sjis =               5;
const isc_interp_jpn_euc =                6;

(*****************)
(* Blob Subtypes *)
(*****************)

(* types less than zero are reserved for customer use *)

const isc_blob_untyped =                  0;

(* internal subtypes *)

const isc_blob_text =                     1;
const isc_blob_blr =                      2;
const isc_blob_acl =                      3;
const isc_blob_ranges =                   4;
const isc_blob_summary =                  5;
const isc_blob_format =                   6;
const isc_blob_tra =                      7;
const isc_blob_extfile =                  8;
const isc_blob_debug_info =               9;
const isc_blob_max_predefined_subtype =   10;

(* the range 20-30 is reserved for dBASE and Paradox types *)

const isc_blob_formatted_memo =           20;
const isc_blob_paradox_ole =              21;
const isc_blob_graphic =                  22;
const isc_blob_dbase_ole =                23;
const isc_blob_typed_binary =             24;

(* Deprecated definitions maintained for compatibility only *)

const isc_info_db_SQL_dialect =           62;
//const isc_dpb_SQL_dialect =               63;
//const isc_dpb_set_db_SQL_dialect =        65;

(***********************************)
(* Masks for fb_shutdown_callback  *)
(***********************************)

const fb_shut_preproviders =     1;
const fb_shut_postproviders =     2;

(****************************************)
(* Shutdown reasons, used by engine     *)
(* Users should provide positive values *)
(****************************************)

const fb_shutrsn_svc_stopped =     -1;
const fb_shutrsn_no_connection =    -2;
const fb_shutrsn_app_stopped =     -3;
const fb_shutrsn_device_removed =    -4;
const fb_shutrsn_signal =      -5;
const fb_shutrsn_services =      -6;
const fb_shutrsn_exit_called =     -7;

(****************************************)
(* Cancel types for fb_cancel_operation *)
(****************************************)

const fb_cancel_disable =      1;
const fb_cancel_enable =      2;
const fb_cancel_raise =       3;

(********************************************)
(* Debug information items     *)
(********************************************)

const fb_dbg_version =    1;
const fb_dbg_end =     255;
const fb_dbg_map_src2blr =   2;
const fb_dbg_map_varname =   3;
const fb_dbg_map_argument =   4;

// sub code for fb_dbg_map_argument
const fb_dbg_arg_input =   0;
const fb_dbg_arg_output =   1;

//endif // ifndef INCLUDE_CONSTS_PUB_H
implementation

end.
