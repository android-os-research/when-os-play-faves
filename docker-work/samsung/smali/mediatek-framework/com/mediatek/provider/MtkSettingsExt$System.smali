.class public final Lcom/mediatek/provider/MtkSettingsExt$System;
.super Ljava/lang/Object;
.source "MtkSettingsExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/provider/MtkSettingsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final blacklist ACCELEROMETER_ROTATION_RESTORE:Ljava/lang/String; = "accelerometer_rotation_restore"

.field public static final blacklist AUTO_TIME_GPS:Ljava/lang/String; = "auto_time_gps"

.field public static blacklist BASE_VOICE_WAKEUP_COMMAND_KEY:Ljava/lang/String; = null

.field public static final blacklist BG_POWER_SAVING_ENABLE:Ljava/lang/String; = "background_power_saving_enable"

.field public static final blacklist DEFAULT_SIM_NOT_SET:J = -0x5L

.field public static final blacklist DEFAULT_SIM_SETTING_ALWAYS_ASK:J = -0x2L

.field public static final blacklist HDMI_AUDIO_OUTPUT_MODE:Ljava/lang/String; = "hdmi_audio_output_mode"

.field public static final blacklist HDMI_CABLE_PLUGGED:Ljava/lang/String; = "hdmi_cable_plugged"

.field public static final blacklist HDMI_ENABLE_STATUS:Ljava/lang/String; = "hdmi_enable_status"

.field public static final blacklist HDMI_VIDEO_RESOLUTION:Ljava/lang/String; = "hdmi_video_resolution"

.field public static final blacklist HDMI_VIDEO_SCALE:Ljava/lang/String; = "hdmi_video_scale"

.field public static final blacklist LAST_SIMID_BEFORE_WIFI_DISCONNECTED:Ljava/lang/String; = "last_simid_before_wifi_disconnected"

.field public static final blacklist MSIM_MODE_SETTING:Ljava/lang/String; = "msim_mode_setting"

.field public static final blacklist SMS_SIM_SETTING:Ljava/lang/String; = "sms_sim_setting"

.field public static final blacklist SMS_SIM_SETTING_AUTO:J = -0x3L

.field public static final blacklist SOUND_RECORDING_ERROR_STATUS:Ljava/lang/String; = "sound_recording_error_status"

.field public static blacklist SWITCH_RESOLUTION_BY_MODE:Ljava/lang/String; = null

.field public static final blacklist VOICE_CALL_SIM_SETTING_INTERNET:J = -0x2L

.field public static final blacklist VOICE_TRAINING_RETRAIN_CALLBACK_STATUS:Ljava/lang/String; = "voice_training_retrain_callback_status"

.field public static blacklist VOICE_TRIGGER_ACTIVE_COMMAND_ID:Ljava/lang/String; = null

.field public static blacklist VOICE_TRIGGER_COMMAND_STATUS:Ljava/lang/String; = null

.field public static blacklist VOICE_TRIGGER_MODE:Ljava/lang/String; = null

.field public static blacklist VOICE_WAKEUP_ACTIVE_COMMAND_ID:Ljava/lang/String; = null

.field public static blacklist VOICE_WAKEUP_COMMAND_STATUS:Ljava/lang/String; = null

.field public static blacklist VOICE_WAKEUP_COMMAND_STATUS_UPDATE:Ljava/lang/String; = null

.field public static blacklist VOICE_WAKEUP_COMMAND_UI_ACTION_1ENK:Ljava/lang/String; = null

.field public static final blacklist VOICE_WAKEUP_MANAGER_COMMAND_STATUS_UPDATE:Ljava/lang/String; = "voice_wakeup_manager_command_status_update"

.field public static blacklist VOICE_WAKEUP_MODE:Ljava/lang/String; = null

.field public static final blacklist WIFI_CONNECT_AP_TYPE:Ljava/lang/String; = "wifi_ap_connect_type"

.field public static final blacklist WIFI_CONNECT_AP_TYPE_AUTO:I = 0x0

.field public static final blacklist WIFI_CONNECT_REMINDER:Ljava/lang/String; = "wifi_connect_reminder"

.field public static final blacklist WIFI_CONNECT_TYPE:Ljava/lang/String; = "wifi_connect_type"

.field public static final blacklist WIFI_CONNECT_TYPE_ASK:I = 0x2

.field public static final blacklist WIFI_CONNECT_TYPE_AUTO:I = 0x0

.field public static final blacklist WIFI_CONNECT_TYPE_MANUL:I = 0x1

.field public static final blacklist WIFI_HOTSPOT_AUTO_DISABLE:Ljava/lang/String; = "wifi_hotspot_auto_disable"

.field public static final blacklist WIFI_HOTSPOT_AUTO_DISABLE_FOR_FIVE_MINS:I = 0x1

.field public static final blacklist WIFI_HOTSPOT_IS_ALL_DEVICES_ALLOWED:Ljava/lang/String; = "wifi_hotspot_is_all_devices_allowed"

.field public static final blacklist WIFI_HOTSPOT_MAX_CLIENT_NUM:Ljava/lang/String; = "wifi_hotspot_max_client_num"

.field public static final blacklist WIFI_PRIORITY_TYPE:Ljava/lang/String; = "wifi_priority_type"

.field public static final blacklist WIFI_PRIORITY_TYPE_DEFAULT:I = 0x0

.field public static final blacklist WIFI_PRIORITY_TYPE_MAMUAL:I = 0x1

.field public static final blacklist WIFI_SELECT_SSID_AUTO:I = 0x0

.field public static final blacklist WIFI_SELECT_SSID_TYPE:Ljava/lang/String; = "wifi_select_ssid_type"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 217
    const-string v0, "voice_wakeup_app"

    sput-object v0, Lcom/mediatek/provider/MtkSettingsExt$System;->BASE_VOICE_WAKEUP_COMMAND_KEY:Ljava/lang/String;

    .line 246
    const-string v0, "voice_wakeup_mode"

    sput-object v0, Lcom/mediatek/provider/MtkSettingsExt$System;->VOICE_WAKEUP_MODE:Ljava/lang/String;

    .line 256
    const-string v0, "voice_wakeup_command_status"

    sput-object v0, Lcom/mediatek/provider/MtkSettingsExt$System;->VOICE_WAKEUP_COMMAND_STATUS:Ljava/lang/String;

    .line 266
    const-string v0, "voice_wakeup_command_status_update"

    sput-object v0, Lcom/mediatek/provider/MtkSettingsExt$System;->VOICE_WAKEUP_COMMAND_STATUS_UPDATE:Ljava/lang/String;

    .line 276
    const-string v0, "voice_wakeup_command_ui_action_1enk"

    sput-object v0, Lcom/mediatek/provider/MtkSettingsExt$System;->VOICE_WAKEUP_COMMAND_UI_ACTION_1ENK:Ljava/lang/String;

    .line 286
    const-string v0, "voice_wakeup_active_command_id"

    sput-object v0, Lcom/mediatek/provider/MtkSettingsExt$System;->VOICE_WAKEUP_ACTIVE_COMMAND_ID:Ljava/lang/String;

    .line 297
    const-string v0, "voice_trigger_mode"

    sput-object v0, Lcom/mediatek/provider/MtkSettingsExt$System;->VOICE_TRIGGER_MODE:Ljava/lang/String;

    .line 307
    const-string v0, "voice_trigger_command_status"

    sput-object v0, Lcom/mediatek/provider/MtkSettingsExt$System;->VOICE_TRIGGER_COMMAND_STATUS:Ljava/lang/String;

    .line 317
    const-string v0, "voice_trigger_active_command_id"

    sput-object v0, Lcom/mediatek/provider/MtkSettingsExt$System;->VOICE_TRIGGER_ACTIVE_COMMAND_ID:Ljava/lang/String;

    .line 344
    const-string v0, "switch_resolution_by_mode"

    sput-object v0, Lcom/mediatek/provider/MtkSettingsExt$System;->SWITCH_RESOLUTION_BY_MODE:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getVoiceCommandValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "baseCommand"    # Ljava/lang/String;
    .param p2, "commandId"    # I

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist moveToGlobal(Ljava/util/HashSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 380
    .local p0, "MOVED_TO_GLOBAL":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v0, "MtkSettingsProviderExt"

    const-string v1, "System moveToGlobal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v0, "msim_mode_setting"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 382
    const-string v0, "auto_time_gps"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 383
    return-void
.end method

.method public static blacklist moveToSecure(Ljava/util/HashSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 387
    .local p0, "MOVED_TO_SECURE":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v0, "MtkSettingsProviderExt"

    const-string v1, "System moveToSecure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method

.method public static blacklist putInPublicSettings(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 348
    .local p0, "PUBLIC_SETTINGS":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "MtkSettingsProviderExt"

    const-string v1, "putInPublicSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v0, "msim_mode_setting"

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 350
    const-string v0, "auto_time_gps"

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 351
    const-string v0, "accelerometer_rotation_restore"

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 352
    const-string v0, "background_power_saving_enable"

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 353
    const-string v0, "hdmi_enable_status"

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 354
    const-string v0, "hdmi_video_resolution"

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 355
    const-string v0, "hdmi_video_scale"

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 356
    const-string v0, "hdmi_cable_plugged"

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    const-string v0, "hdmi_audio_output_mode"

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 358
    const-string v0, "wifi_connect_type"

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 359
    const-string v0, "wifi_ap_connect_type"

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 360
    const-string v0, "wifi_connect_reminder"

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    const-string v0, "wifi_priority_type"

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 362
    const-string v0, "wifi_select_ssid_type"

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 363
    const-string v0, "last_simid_before_wifi_disconnected"

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v0, Lcom/mediatek/provider/MtkSettingsExt$System;->BASE_VOICE_WAKEUP_COMMAND_KEY:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v0, Lcom/mediatek/provider/MtkSettingsExt$System;->VOICE_WAKEUP_MODE:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object v0, Lcom/mediatek/provider/MtkSettingsExt$System;->VOICE_WAKEUP_COMMAND_STATUS:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v0, Lcom/mediatek/provider/MtkSettingsExt$System;->VOICE_WAKEUP_COMMAND_STATUS_UPDATE:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v0, Lcom/mediatek/provider/MtkSettingsExt$System;->VOICE_WAKEUP_COMMAND_UI_ACTION_1ENK:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 369
    sget-object v0, Lcom/mediatek/provider/MtkSettingsExt$System;->VOICE_WAKEUP_ACTIVE_COMMAND_ID:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v0, Lcom/mediatek/provider/MtkSettingsExt$System;->VOICE_TRIGGER_MODE:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v0, Lcom/mediatek/provider/MtkSettingsExt$System;->VOICE_TRIGGER_COMMAND_STATUS:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 372
    sget-object v0, Lcom/mediatek/provider/MtkSettingsExt$System;->VOICE_TRIGGER_ACTIVE_COMMAND_ID:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    const-string v0, "voice_wakeup_manager_command_status_update"

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v0, Lcom/mediatek/provider/MtkSettingsExt$System;->SWITCH_RESOLUTION_BY_MODE:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 375
    const-string v0, "voice_training_retrain_callback_status"

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 376
    return-void
.end method

.method public static blacklist setVoiceCommandValue(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "baseCommand"    # Ljava/lang/String;
    .param p2, "commandId"    # I
    .param p3, "launchApp"    # Ljava/lang/String;

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    return-void
.end method
