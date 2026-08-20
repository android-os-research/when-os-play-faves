.class public Lcom/samsung/android/media/AudioParameter;
.super Ljava/lang/Object;
.source "AudioParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/AudioParameter$Builder;
    }
.end annotation


# static fields
.field public static final blacklist AOSP_BT_A2DP_SUSPENDED:Ljava/lang/String; = "A2dpSuspended"

.field public static final blacklist AOSP_BT_HEADSET_NREC:Ljava/lang/String; = "bt_headset_nrec"

.field public static final blacklist AOSP_BT_SCO_STATE:Ljava/lang/String; = "BT_SCO"

.field public static final blacklist AOSP_CALL_HAC:Ljava/lang/String; = "HACSetting"

.field public static final blacklist AOSP_DEVICE_SHUTDOWN:Ljava/lang/String; = "dev_shutdown"

.field public static final blacklist AOSP_MEDIA_SERVER_RESTART:Ljava/lang/String; = "restarting"

.field public static final blacklist AOSP_SCREEN_STATE:Ljava/lang/String; = "screen_state"

.field public static final blacklist SEC_GLOBAL_A2DP_DELAY_REPORT:Ljava/lang/String; = "g_a2dp_delay_report"

.field public static final blacklist SEC_GLOBAL_BT_REMOTE_VOLUME_CONTROL_SUPPORT:Ljava/lang/String; = "g_sco_rvc_support"

.field public static final blacklist SEC_GLOBAL_BT_SCO_CODEC_TYPE:Ljava/lang/String; = "g_bt_sco_codec_type"

.field public static final blacklist SEC_GLOBAL_CALL_BAND:Ljava/lang/String; = "g_call_band"

.field public static final blacklist SEC_GLOBAL_CALL_EXTRA_VOLUME_ENABLE:Ljava/lang/String; = "g_call_extra_volume_enable"

.field public static final blacklist SEC_GLOBAL_CALL_FORWARDING_ENABLE:Ljava/lang/String; = "g_call_forwarding_enable"

.field public static final blacklist SEC_GLOBAL_CALL_IMS_CODEC_TYPE:Ljava/lang/String; = "g_call_ims_codec_type"

.field public static final blacklist SEC_GLOBAL_CALL_MEMO_STATE:Ljava/lang/String; = "g_call_memo_state"

.field public static final blacklist SEC_GLOBAL_CALL_RINGBACKTONE_STATE:Ljava/lang/String; = "g_call_ringbacktone_state"

.field public static final blacklist SEC_GLOBAL_CALL_SAR_BACKOFF_ENABLE:Ljava/lang/String; = "g_call_sar_backoff_enable"

.field public static final blacklist SEC_GLOBAL_CALL_SIM_SLOT:Ljava/lang/String; = "g_call_sim_slot"

.field public static final blacklist SEC_GLOBAL_CALL_SPECTRO_ENABLE:Ljava/lang/String; = "g_call_spectro_enable"

.field public static final blacklist SEC_GLOBAL_CALL_STATE:Ljava/lang/String; = "g_call_state"

.field public static final blacklist SEC_GLOBAL_DMB_SPK_ENABLE:Ljava/lang/String; = "g_dmb_spk_enable"

.field public static final blacklist SEC_GLOBAL_EFFECT_DOLBY_ENABLE:Ljava/lang/String; = "g_effect_dolby_enable"

.field public static final blacklist SEC_GLOBAL_EFFECT_DOLBY_PROFILE:Ljava/lang/String; = "g_effect_dolby_profile"

.field public static final blacklist SEC_GLOBAL_EFFECT_DV_ADAPT_SOUND:Ljava/lang/String; = "g_effect_dv_adapt_sound"

.field public static final blacklist SEC_GLOBAL_EFFECT_GOOGLE_RESAMPLER_ENABLE:Ljava/lang/String; = "g_effect_google_resampler_enable"

.field public static final blacklist SEC_GLOBAL_EFFECT_HEADTRACKER_AVAILABLE:Ljava/lang/String; = "g_effect_headtracker_available"

.field public static final blacklist SEC_GLOBAL_EFFECT_MYSPACE_TYPE:Ljava/lang/String; = "g_effect_myspace_type"

.field public static final blacklist SEC_GLOBAL_EFFECT_OFFLOAD_VSP_PARAM:Ljava/lang/String; = "g_effect_offload_vsp_param"

.field public static final blacklist SEC_GLOBAL_EFFECT_PARAM_KEY:Ljava/lang/String; = "g_effect_param_key"

.field public static final blacklist SEC_GLOBAL_FACTORY_CALIBRATION_KEY:Ljava/lang/String; = "spk_calibration"

.field public static final blacklist SEC_GLOBAL_FACTORY_LOOPBACK_KEY:Ljava/lang/String; = "factory_test_loopback"

.field public static final blacklist SEC_GLOBAL_FACTORY_MIC_CHECK:Ljava/lang/String; = "factory_test_mic_check"

.field public static final blacklist SEC_GLOBAL_FACTORY_PREFIX:Ljava/lang/String; = "factory_test"

.field public static final blacklist SEC_GLOBAL_FACTORY_ROUTE:Ljava/lang/String; = "factory_test_route"

.field public static final blacklist SEC_GLOBAL_FACTORY_SPK_PATH:Ljava/lang/String; = "factory_test_spkpath"

.field public static final blacklist SEC_GLOBAL_FMRADIO_ENABLE:Ljava/lang/String; = "g_fmradio_enable"

.field public static final blacklist SEC_GLOBAL_FMRADIO_MUTE:Ljava/lang/String; = "g_fmradio_mute"

.field public static final blacklist SEC_GLOBAL_GAME_UID_LIST:Ljava/lang/String; = "g_game_uid"

.field public static final blacklist SEC_GLOBAL_HW_DISPLAY_ROTATION:Ljava/lang/String; = "g_hw_display_rotation"

.field public static final blacklist SEC_GLOBAL_KNOX_AUDIORECORD_ALLOWED:Ljava/lang/String; = "g_knox_audiorecord_allowed"

.field public static final blacklist SEC_GLOBAL_KNOX_MICROPHONE_ALLOWED:Ljava/lang/String; = "g_knox_microphone_allowed"

.field public static final blacklist SEC_GLOBAL_MULTI_SOUND_PIN_APP_NAME:Ljava/lang/String; = "g_multi_sound_pin_app_name"

.field public static final blacklist SEC_GLOBAL_MULTI_SOUND_PRIORITY_DEVICE:Ljava/lang/String; = "g_multi_sound_priority_device"

.field public static final blacklist SEC_GLOBAL_PCM_DUMP_AP_CALL_STATE:Ljava/lang/String; = "g_pcm_dump_ap_call_state"

.field public static final blacklist SEC_GLOBAL_PCM_DUMP_STATE:Ljava/lang/String; = "g_pcm_dump_state"

.field public static final blacklist SEC_GLOBAL_PREFIX:Ljava/lang/String; = "g_"

.field public static final blacklist SEC_GLOBAL_PTT_CALL_VOLUME_ENABLE:Ljava/lang/String; = "g_ptt_call_volume_enable"

.field public static final blacklist SEC_GLOBAL_PTT_MODE:Ljava/lang/String; = "g_ptt_mode"

.field public static final blacklist SEC_GLOBAL_PTT_MODE_3RD_PARTY:Ljava/lang/String; = "ptt_mode"

.field public static final blacklist SEC_GLOBAL_RECORD_BEAMFORMING_MODE:Ljava/lang/String; = "g_record_beamforming_mode"

.field public static final blacklist SEC_GLOBAL_RECORD_CONVERSATION_ENERGY_KEY:Ljava/lang/String; = "g_record_conversation_energy_key"

.field public static final blacklist SEC_GLOBAL_RECORD_INPUT_LATENCY:Ljava/lang/String; = "g_record_input_latency"

.field public static final blacklist SEC_GLOBAL_RECORD_NSRI_SECURITY_ENABLE:Ljava/lang/String; = "g_record_nsri_security_enable"

.field public static final blacklist SEC_GLOBAL_RECORD_SEC_VOICE_RECORDER_ENABLE:Ljava/lang/String; = "g_record_sec_voice_recorder_enable"

.field public static final blacklist SEC_GLOBAL_RECORD_TX_INVERSION:Ljava/lang/String; = "g_record_tx_inversion"

.field public static final blacklist SEC_GLOBAL_SCO_SAMPLERATE:Ljava/lang/String; = "g_sco_samplerate"

.field public static final blacklist SEC_GLOBAL_SET_A2DP_AV_SYNC:Ljava/lang/String; = "g_a2dp_av_sync"

.field public static final blacklist SEC_GLOBAL_SHUTDOWN_MUTE:Ljava/lang/String; = "g_shutdown_mute"

.field public static final blacklist SEC_GLOBAL_SHUTDOWN_SUSPEND:Ljava/lang/String; = "g_shutdown_suspend"

.field public static final blacklist SEC_GLOBAL_SOUND_PATH_ACTIVE_ADDRESS:Ljava/lang/String; = "g_sound_path_active_address"

.field public static final blacklist SEC_GLOBAL_SOUND_PATH_AVAILABLE_DEVICES:Ljava/lang/String; = "g_sound_path_available_devices"

.field public static final blacklist SEC_GLOBAL_TUNING_RELOAD_VOLUME:Ljava/lang/String; = "g_tuning_reload_volume"

.field public static final blacklist SEC_GLOBAL_TUNING_SOUNDBOOSTER_RELOAD:Ljava/lang/String; = "g_tuning_soundbooster_reload"

.field public static final blacklist SEC_GLOBAL_UHQ_RESTORED_TRACK_ENABLE:Ljava/lang/String; = "g_uhq_restored_track_enable"

.field public static final blacklist SEC_GLOBAL_VOICE_WAKEUP_BABYCRY_ENABLE:Ljava/lang/String; = "g_voice_wakeup_babycry_enable"

.field public static final blacklist SEC_GLOBAL_VOICE_WAKEUP_ENABLE:Ljava/lang/String; = "g_voice_wakeup_enable"

.field public static final blacklist SEC_GLOBAL_VOICE_WAKEUP_KEYWORD_GRAMMAR_PATH:Ljava/lang/String; = "g_voice_wakeup_keyword_grammar_path"

.field public static final blacklist SEC_GLOBAL_VOICE_WAKEUP_KEYWORD_PATH:Ljava/lang/String; = "g_voice_wakeup_keyword_path"

.field public static final blacklist SEC_GLOBAL_VOICE_WAKEUP_REGISTER_VOICE_KEYWORD:Ljava/lang/String; = "g_voice_wakeup_register_voice_keyword"

.field public static final blacklist SEC_GLOBAL_VOICE_WAKEUP_SEAMLESS_ENABLE:Ljava/lang/String; = "g_voice_wakeup_seamless_enable"

.field public static final blacklist SEC_GLOBAL_VOICE_WAKEUP_TRIGGER_BACKLOG_TIME:Ljava/lang/String; = "g_voice_wakeup_trigger_backlog_time"

.field public static final blacklist SEC_GLOBAL_VOLUME_MONITOR_WARNING:Ljava/lang/String; = "g_volume_monitor_warning_level"

.field public static final blacklist SEC_GLOBAL_VOLUME_SITUATION_KEY:Ljava/lang/String; = "g_volume_situation_key"

.field public static final blacklist SEC_LOCAL_ALL_SOUND_MUTE_ENABLE:Ljava/lang/String; = "l_all_sound_mute_enable"

.field public static final blacklist SEC_LOCAL_BIGDATA_APP:Ljava/lang/String; = "l_bigdata_app"

.field public static final blacklist SEC_LOCAL_BIGDATA_LOGGING:Ljava/lang/String; = "l_bigdata_logging"

.field public static final blacklist SEC_LOCAL_BT_GAME_LATENCY:Ljava/lang/String; = "l_bt_game_latency"

.field public static final blacklist SEC_LOCAL_BT_TYPE_HEADSET:Ljava/lang/String; = "l_bt_type_headset"

.field public static final blacklist SEC_LOCAL_CALL_2G_TDMA:Ljava/lang/String; = "l_call_2g_tdma"

.field public static final blacklist SEC_LOCAL_CALL_NB_QUALITY_ENABLE:Ljava/lang/String; = "l_call_nb_quality_enable"

.field public static final blacklist SEC_LOCAL_CALL_RAT_TYPE:Ljava/lang/String; = "l_call_rat_type"

.field public static final blacklist SEC_LOCAL_CALL_RIL_STATE_CONNECTED:Ljava/lang/String; = "l_call_ril_state_connected"

.field public static final blacklist SEC_LOCAL_CALL_VOIP_EXTRA_VOLUME_ENABLE:Ljava/lang/String; = "l_call_voip_extra_volume_enable"

.field public static final blacklist SEC_LOCAL_DEVICE_CURRENT_OUTPUT:Ljava/lang/String; = "l_device_current_output"

.field public static final blacklist SEC_LOCAL_DEX_KEY:Ljava/lang/String; = "l_dex_key"

.field public static final blacklist SEC_LOCAL_DIRECT_POWER_ENABLE:Ljava/lang/String; = "l_direct_power_enable"

.field public static final blacklist SEC_LOCAL_DUAL_SPEAKER_AMP_LEFT_POWER_ENABLE:Ljava/lang/String; = "l_dual_speaker_amp_left_power_enable"

.field public static final blacklist SEC_LOCAL_DUAL_SPEAKER_CALLING_PACKAGE:Ljava/lang/String; = "l_dual_speaker_calling_package"

.field public static final blacklist SEC_LOCAL_DUAL_SPEAKER_ENABLE:Ljava/lang/String; = "l_dual_speaker_enable"

.field public static final blacklist SEC_LOCAL_DVFS_MIN_LOCK:Ljava/lang/String; = "l_dvfs_min_lock"

.field public static final blacklist SEC_LOCAL_EFFECT_LISTENBACK_KEY:Ljava/lang/String; = "l_effect_listenback_key"

.field public static final blacklist SEC_LOCAL_EFFECT_UPSCALER_MODE:Ljava/lang/String; = "l_effect_upscaler_mode"

.field public static final blacklist SEC_LOCAL_FAST_TRACK_ENABLE:Ljava/lang/String; = "l_fast_track_enable"

.field public static final blacklist SEC_LOCAL_FMRADIO_RECORD_ACTIVE:Ljava/lang/String; = "l_fmradio_record_active"

.field public static final blacklist SEC_LOCAL_FORCED_DEVICE:Ljava/lang/String; = "l_forced_device"

.field public static final blacklist SEC_LOCAL_GAME_CHAT_ENABLE:Ljava/lang/String; = "l_game_chat_enable"

.field public static final blacklist SEC_LOCAL_HIDDEN_SOUND_KEY:Ljava/lang/String; = "l_hidden_sound_key"

.field public static final blacklist SEC_LOCAL_HW_FLAT_MOTION_STATE:Ljava/lang/String; = "l_hw_flat_motion_state"

.field public static final blacklist SEC_LOCAL_HW_FOLDER_STATE:Ljava/lang/String; = "l_hw_folder_state"

.field public static final blacklist SEC_LOCAL_HW_PROXIMITY_SENSOR_STATE:Ljava/lang/String; = "l_hw_proximity_sensor_state"

.field public static final blacklist SEC_LOCAL_IS_USING_AUDIO:Ljava/lang/String; = "l_is_using_audio"

.field public static final blacklist SEC_LOCAL_KARAOKE_ENABLE:Ljava/lang/String; = "l_karaoke_enable"

.field public static final blacklist SEC_LOCAL_MONO_TYPE:Ljava/lang/String; = "l_mono_type"

.field public static final blacklist SEC_LOCAL_MULTI_SOUND_ACTIVE_TRACK_DEVICE:Ljava/lang/String; = "l_multi_sound_active_track_device"

.field public static final blacklist SEC_LOCAL_MULTI_SOUND_ACTIVE_TRACK_UID:Ljava/lang/String; = "l_multi_sound_active_track_uid"

.field public static final blacklist SEC_LOCAL_MULTI_SOUND_KEY:Ljava/lang/String; = "l_multi_sound_key"

.field public static final blacklist SEC_LOCAL_PREFIX:Ljava/lang/String; = "l_"

.field public static final blacklist SEC_LOCAL_RECORD_ACTIVE_ENABLE:Ljava/lang/String; = "l_record_active_enable"

.field public static final blacklist SEC_LOCAL_RECOVERY:Ljava/lang/String; = "l_recovery_restarting"

.field public static final blacklist SEC_LOCAL_REMOTE_MIC_ENABLE:Ljava/lang/String; = "l_remote_mic_enable"

.field public static final blacklist SEC_LOCAL_SAFE_MEDIA_VOLUME_ENABLE:Ljava/lang/String; = "l_safe_media_volume_enable"

.field public static final blacklist SEC_LOCAL_SCREEN_CALL:Ljava/lang/String; = "l_screen_call"

.field public static final blacklist SEC_LOCAL_SET_FROM_AUDIOSERVICE:Ljava/lang/String; = "l_set_from_audioservice"

.field public static final blacklist SEC_LOCAL_SET_SAFE_MEDIA_VOLUME:Ljava/lang/String; = "l_set_safe_media_volume"

.field public static final blacklist SEC_LOCAL_SIMULATE_DEVICE_ENABLE:Ljava/lang/String; = "l_simulate_device_enable"

.field public static final blacklist SEC_LOCAL_SMART_VEIW_SPLIT_SOUND_ENABLE:Ljava/lang/String; = "l_smart_view_split_sound_enable"

.field public static final blacklist SEC_LOCAL_SMART_VIEW_ENABLE:Ljava/lang/String; = "l_smart_view_enable"

.field public static final blacklist SEC_LOCAL_SMART_VIEW_FIXED_VOLUME_ENABLE:Ljava/lang/String; = "l_smart_view_fixed_volume_enable"

.field public static final blacklist SEC_LOCAL_SMART_VIEW_MIRRORING_ACTIVE:Ljava/lang/String; = "l_smart_view_mirroring_active"

.field public static final blacklist SEC_LOCAL_SOUND_ASSISTANT_LR_SWITCH_ENABLE:Ljava/lang/String; = "l_sound_assistant_lr_switch_enable"

.field public static final blacklist SEC_LOCAL_SOUND_ASSISTANT_RING_VIA_HEADSET_ENABLE:Ljava/lang/String; = "l_sound_assistant_ring_via_headset_enable"

.field public static final blacklist SEC_LOCAL_SPEAKER_BALANCE:Ljava/lang/String; = "l_speaker_balance"

.field public static final blacklist SEC_LOCAL_STREAM_ACTIVE:Ljava/lang/String; = "l_stream_active"

.field public static final blacklist SEC_LOCAL_SUPPORT_ABSOLUTE_VOLUME:Ljava/lang/String; = "l_support_absolute_volume"

.field public static final blacklist SEC_LOCAL_SYSTEM_READY:Ljava/lang/String; = "l_system_ready"

.field public static final blacklist SEC_LOCAL_VIDEO_CALL_MONSTER_SOUND:Ljava/lang/String; = "l_mic_input_control_mode_2mic"

.field public static final blacklist SEC_LOCAL_VIDEO_CALL_VOICE_EFFECT:Ljava/lang/String; = "l_mic_input_control_mode"

.field public static final blacklist SEC_LOCAL_VOICE_CALL_MONSTER_SOUND:Ljava/lang/String; = "l_call_nc_booster_enable"

.field public static final blacklist SEC_LOCAL_VOLUME_FINE_KEY:Ljava/lang/String; = "l_volume_fine_key"

.field public static final blacklist SEC_LOCAL_VOLUME_LIMIT_KEY:Ljava/lang/String; = "l_volume_limit_key"

.field public static final blacklist SEC_LOCAL_VOLUME_MONITOR_ONOFF:Ljava/lang/String; = "l_volume_monitor_onoff"

.field public static final blacklist SEC_LOCAL_VOLUME_PREVENT_OVERHEAT_KEY:Ljava/lang/String; = "l_volume_prevent_overheat_key"

.field public static final blacklist SEC_LOCAL_VOLUME_TABLE:Ljava/lang/String; = "l_volume_table"

.field public static final blacklist SUBKEY_AUDIO_PARAM:Ljava/lang/String; = "audioParam"

.field public static final blacklist SUBKEY_BLUETOOTH_ADDRESS:Ljava/lang/String; = "address"

.field public static final blacklist SUBKEY_DEX_CONNECTED:Ljava/lang/String; = "connected"

.field public static final blacklist SUBKEY_DEX_PATH:Ljava/lang/String; = "path"

.field public static final blacklist SUBKEY_DEX_STATE:Ljava/lang/String; = "state"

.field public static final blacklist SUBKEY_DEX_TYPE:Ljava/lang/String; = "type"

.field public static final blacklist SUBKEY_EFFECT_LISTENBACK_STATE:Ljava/lang/String; = "state"

.field public static final blacklist SUBKEY_EFFECT_PARAM_ADAPT_SOUND:Ljava/lang/String; = "adapt_sound"

.field public static final blacklist SUBKEY_EFFECT_PARAM_ADAPT_SOUND_ENABLE:Ljava/lang/String; = "adapt_sound_enable"

.field public static final blacklist SUBKEY_EFFECT_PARAM_HMT:Ljava/lang/String; = "hmt"

.field public static final blacklist SUBKEY_FACTORY_LOOPBACK_PATH:Ljava/lang/String; = "factory_test_path"

.field public static final blacklist SUBKEY_FACTORY_LOOPBACK_TYPE:Ljava/lang/String; = "factory_test_type"

.field public static final blacklist SUBKEY_HIDDEN_SOUND_ADDRESS:Ljava/lang/String; = "address"

.field public static final blacklist SUBKEY_HIDDEN_SOUND_PID:Ljava/lang/String; = "pid"

.field public static final blacklist SUBKEY_HIDDEN_SOUND_VERSION:Ljava/lang/String; = "version"

.field public static final blacklist SUBKEY_HIDDEN_SOUND_VOLUME:Ljava/lang/String; = "volume"

.field public static final blacklist SUBKEY_MULTI_SOUND_DEVICE:Ljava/lang/String; = "device"

.field public static final blacklist SUBKEY_MULTI_SOUND_ENABLE:Ljava/lang/String; = "enable"

.field public static final blacklist SUBKEY_MULTI_SOUND_EXCLUSIVE:Ljava/lang/String; = "exclusive"

.field public static final blacklist SUBKEY_MULTI_SOUND_PIN_DEVICE:Ljava/lang/String; = "pin_device_name"

.field public static final blacklist SUBKEY_MULTI_SOUND_TYPE:Ljava/lang/String; = "type"

.field public static final blacklist SUBKEY_MULTI_SOUND_UID:Ljava/lang/String; = "uid"

.field public static final blacklist SUBKEY_MULTI_SOUND_VOLUME:Ljava/lang/String; = "volume"

.field public static final blacklist SUBKEY_SUPPORT_VOIP:Ljava/lang/String; = "support_voip"

.field public static final blacklist SUBKEY_VOLUME_FINE_DEVICE:Ljava/lang/String; = "device"

.field public static final blacklist SUBKEY_VOLUME_FINE_INDEX:Ljava/lang/String; = "index"

.field public static final blacklist SUBKEY_VOLUME_LIMIT_ENABLE:Ljava/lang/String; = "enable"

.field public static final blacklist SUBKEY_VOLUME_LIMIT_LEVEL:Ljava/lang/String; = "level"

.field public static final blacklist SUBKEY_VOLUME_LIMIT_PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final blacklist SUBKEY_VOLUME_PREVENT_OVERHEAT_GAIN:Ljava/lang/String; = "gain"

.field public static final blacklist SUBKEY_VOLUME_PREVENT_OVERHEAT_STATE:Ljava/lang/String; = "state"

.field public static final blacklist SUBKEY_VOLUME_PREVENT_OVERHEAT_UID:Ljava/lang/String; = "uid"

.field public static final blacklist SUBKEY_VOLUME_SITUATION_DEVICE:Ljava/lang/String; = "device"

.field public static final blacklist SUBKEY_VOLUME_SITUATION_TYPE:Ljava/lang/String; = "type"

.field public static final blacklist VALUES_VM_CSD_100_WARNING:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist VALUE_2MIC:Ljava/lang/String; = "2mic"

.field public static final blacklist VALUE_ACTIVE_SOUND_INFO:Ljava/lang/String; = "active_sound_info"

.field public static final blacklist VALUE_ALWAYS_MIC_ON:Ljava/lang/String; = "always_mic_on"

.field public static final blacklist VALUE_DEX:Ljava/lang/String; = "dex"

.field public static final blacklist VALUE_DEX_PAD:Ljava/lang/String; = "pad"

.field public static final blacklist VALUE_DEX_STATION:Ljava/lang/String; = "station"

.field public static final blacklist VALUE_DOCK:Ljava/lang/String; = "dock"

.field public static final blacklist VALUE_FALSE:Ljava/lang/String; = "false"

.field public static final blacklist VALUE_FB:Ljava/lang/String; = "fb"

.field public static final blacklist VALUE_MOUNT:Ljava/lang/String; = "mount"

.field public static final blacklist VALUE_NB:Ljava/lang/String; = "nb"

.field public static final blacklist VALUE_NONE:Ljava/lang/String; = "none"

.field public static final blacklist VALUE_OFF:Ljava/lang/String; = "off"

.field public static final blacklist VALUE_ON:Ljava/lang/String; = "on"

.field public static final blacklist VALUE_RCV:Ljava/lang/String; = "rcv"

.field public static final blacklist VALUE_RESTORE:Ljava/lang/String; = "restore"

.field public static final blacklist VALUE_SPK:Ljava/lang/String; = "spk"

.field public static final blacklist VALUE_SUSPEND:Ljava/lang/String; = "suspend"

.field public static final blacklist VALUE_SWB:Ljava/lang/String; = "swb"

.field public static final blacklist VALUE_THIRD:Ljava/lang/String; = "third"

.field public static final blacklist VALUE_TRUE:Ljava/lang/String; = "true"

.field public static final blacklist VALUE_UNMOUNT:Ljava/lang/String; = "unmount"

.field public static final blacklist VALUE_VM_CSD_500_WARNING:Ljava/lang/String; = "12"

.field public static final blacklist VALUE_WB:Ljava/lang/String; = "wb"


# instance fields
.field private blacklist mAudioParams:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasLocalParameter:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 233
    const-string v0, "8"

    const-string v1, "9"

    const-string v2, "10"

    const-string v3, "11"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/AudioParameter;->VALUES_VM_CSD_100_WARNING:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 9
    .param p1, "audioParams"    # Ljava/lang/String;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/AudioParameter;->mAudioParams:Ljava/util/LinkedHashMap;

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/AudioParameter;->mHasLocalParameter:Z

    .line 240
    if-eqz p1, :cond_55

    .line 241
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ";"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .local v0, "st1":Ljava/util/StringTokenizer;
    :goto_16
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 243
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "token":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "="

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .local v2, "st2":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    goto :goto_33

    :cond_32
    const/4 v3, 0x0

    .line 246
    .local v3, "key":Ljava/lang/String;
    :goto_33
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    goto :goto_40

    :cond_3e
    const-string v4, ""

    .line 247
    .local v4, "value":Ljava/lang/String;
    :goto_40
    if-eqz v3, :cond_54

    if-eqz v4, :cond_54

    .line 248
    iget-boolean v5, p0, Lcom/samsung/android/media/AudioParameter;->mHasLocalParameter:Z

    const-string v6, "l_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/samsung/android/media/AudioParameter;->mHasLocalParameter:Z

    .line 249
    iget-object v5, p0, Lcom/samsung/android/media/AudioParameter;->mAudioParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "st2":Ljava/util/StringTokenizer;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_54
    goto :goto_16

    .line 253
    .end local v0    # "st1":Ljava/util/StringTokenizer;
    :cond_55
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/LinkedHashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 255
    .local p1, "audioParameters":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/AudioParameter;->mAudioParams:Ljava/util/LinkedHashMap;

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/AudioParameter;->mHasLocalParameter:Z

    .line 256
    iput-object p1, p0, Lcom/samsung/android/media/AudioParameter;->mAudioParams:Ljava/util/LinkedHashMap;

    .line 258
    if-eqz p1, :cond_25

    .line 259
    nop

    .line 260
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/media/AudioParameter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/media/AudioParameter$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/media/AudioParameter;->mHasLocalParameter:Z

    .line 262
    :cond_25
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Ljava/lang/String;)Z
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .line 260
    const-string v0, "l_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "strKey"    # Ljava/lang/String;

    .line 265
    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/samsung/android/media/AudioParameter;->mAudioParams:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 266
    iget-object v0, p0, Lcom/samsung/android/media/AudioParameter;->mAudioParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 268
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInt(Ljava/lang/String;I)I
    .registers 5
    .param p1, "strKey"    # Ljava/lang/String;
    .param p2, "defaultVal"    # I

    .line 272
    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/media/AudioParameter;->mAudioParams:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 273
    iget-object v0, p0, Lcom/samsung/android/media/AudioParameter;->mAudioParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_17

    return p2

    .line 276
    :cond_17
    :try_start_17
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1b} :catch_1c

    return v1

    .line 277
    :catch_1c
    move-exception v1

    .line 279
    .end local v0    # "value":Ljava/lang/String;
    :cond_1d
    return p2
.end method

.method public blacklist hasKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/samsung/android/media/AudioParameter;->mAudioParams:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_9

    .line 284
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 286
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasLocalParameter()Z
    .registers 2

    .line 291
    iget-boolean v0, p0, Lcom/samsung/android/media/AudioParameter;->mHasLocalParameter:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/media/AudioParameter;->mAudioParams:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_54

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    .line 298
    iget-object v1, p0, Lcom/samsung/android/media/AudioParameter;->mAudioParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 299
    .local v1, "i":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 300
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 301
    .local v2, "m":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 303
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 307
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .end local v2    # "m":Ljava/util/Map$Entry;
    :cond_53
    goto :goto_19

    .line 311
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
