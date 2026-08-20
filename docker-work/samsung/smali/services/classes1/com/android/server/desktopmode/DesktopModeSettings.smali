.class public Lcom/android/server/desktopmode/DesktopModeSettings;
.super Ljava/lang/Object;
.source "DesktopModeSettings.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.android.desktopmode.uiservice.SettingsProvider"

.field public static final CALL_METHOD_CLEAR:Ljava/lang/String; = "clearSettings"

.field public static final CALL_METHOD_DELETE:Ljava/lang/String; = "deleteSettings"

.field public static final CALL_METHOD_DUMP_APP:Ljava/lang/String; = "dumpApp"

.field public static final CALL_METHOD_GET:Ljava/lang/String; = "getSettings"

.field public static final CALL_METHOD_SET:Ljava/lang/String; = "setSettings"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXTERNAL_DISPLAY_MODE_DUAL:Ljava/lang/String; = "dual"

.field public static final SETTINGS_GLOBAL_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_GLOBAL_KEY_DOCK_USBPD_IDS:Ljava/lang/String; = "dock_usbpd_ids"

.field public static final SETTINGS_GLOBAL_KEY_DOCK_VERSION:Ljava/lang/String; = "dock_version"

.field public static final SETTINGS_HDMI_DEFAULT:I = -0x1

.field public static final SETTINGS_HDMI_DESKTOP_MODE:I = 0x0

.field public static final SETTINGS_HDMI_INITIAL_CONNECTION_DIALOG_SHOWN:Ljava/lang/String; = "hdmi_initial_connection_dialog_shown"

.field public static final SETTINGS_HDMI_MIRRORING_MODE:I = 0x1

.field public static final SETTINGS_KEY_AUDIO_OUTPUT_TO_DISPLAY:Ljava/lang/String; = "audio_output_to_display"

.field public static final SETTINGS_KEY_AUTO_OPEN_LAST_APP:Ljava/lang/String; = "auto_open_last_app"

.field public static final SETTINGS_KEY_BIXBY_ENABLED:Ljava/lang/String; = "bixby_enabled"

.field public static final SETTINGS_KEY_DEFAULT_HOME_PACKAGE:Ljava/lang/String; = "default_home_package"

.field public static final SETTINGS_KEY_DEX_MIRRORING_TIPS_NOTIFICATION_SHOWN:Ljava/lang/String; = "dex_mirroring_tips_notification_shown"

.field public static final SETTINGS_KEY_DISPLAY_TYPE:Ljava/lang/String; = "display_type"

.field public static final SETTINGS_KEY_DOCK_FASTCHARGER_WARNING:Ljava/lang/String; = "dock_fastcharger_warning"

.field public static final SETTINGS_KEY_DUAL_MODE_SCREEN_ZOOM:Ljava/lang/String; = "dual_mode_screen_zoom"

.field public static final SETTINGS_KEY_ENABLED:Ljava/lang/String; = "enabled"

.field public static final SETTINGS_KEY_EXTERNAL_DISPLAY_MODE:Ljava/lang/String; = "external_display_mode"

.field public static final SETTINGS_KEY_FLOW_POINTER_TO_PHONE_SCREEN:Ljava/lang/String; = "flow_pointer_is_on_dex"

.field public static final SETTINGS_KEY_FONT_SCALE:Ljava/lang/String; = "font_scale"

.field public static final SETTINGS_KEY_HDMI_AUTO_ENTER:Ljava/lang/String; = "hdmi_auto_enter"

.field public static final SETTINGS_KEY_HDMI_AUTO_ENTER_BACKUP:Ljava/lang/String; = "hdmi_auto_enter_backup"

.field public static final SETTINGS_KEY_HIDE_TASKBAR:Ljava/lang/String; = "taskbar_hide_bar"

.field public static final SETTINGS_KEY_HIDE_TASKBAR_ENABLED:Ljava/lang/String; = "taskbar_hide_bar_enabled"

.field public static final SETTINGS_KEY_HIGH_RESOLUTIONS_FOR_EXTERNAL:Ljava/lang/String; = "high_resolutions_for_external"

.field public static final SETTINGS_KEY_HOW_TO_OPEN_TOUCHPAD_SHOWN:Ljava/lang/String; = "how_to_open_touchpad_shown"

.field public static final SETTINGS_KEY_KNOX_HDMI_AUTO_ENTER_STATE:Ljava/lang/String; = "knox_hdmi_auto_enter_state"

.field public static final SETTINGS_KEY_LABS_ENABLED:Ljava/lang/String; = "labs_enabled"

.field public static final SETTINGS_KEY_LABS_RESIZABLE_WINDOW_ENABLED:Ljava/lang/String; = "labs_resizable_window_enabled"

.field public static final SETTINGS_KEY_LAUNCH_POLICY_DEVELOPER_ENABLED:Ljava/lang/String; = "launch_policy_developer_enabled"

.field public static final SETTINGS_KEY_LAUNCH_POLICY_MODE:Ljava/lang/String; = "launch_policy_mode"

.field public static final SETTINGS_KEY_MAX_VISIBLE_FREEFORM_COUNT:Ljava/lang/String; = "max_visible_freeform_count"

.field public static final SETTINGS_KEY_MIRRORING_SWITCH_DISABLED:Ljava/lang/String; = "mirroring_switch_disabled"

.field public static final SETTINGS_KEY_MONITOR_CHANGED:Ljava/lang/String; = "monitor_changed"

.field public static final SETTINGS_KEY_MONITOR_INFO:Ljava/lang/String; = "monitor_info"

.field public static final SETTINGS_KEY_MOUSE_IMMERSIVE_TIME_CONTROL:Ljava/lang/String; = "mouse_immersive_time_control"

.field public static final SETTINGS_KEY_POGO_AUTO_ENTER:Ljava/lang/String; = "pogo_auto_enter"

.field public static final SETTINGS_KEY_POINTER_FLOW_DIRECTION:Ljava/lang/String; = "flow_pointer_from_where_dex"

.field public static final SETTINGS_KEY_RESOLUTION_MAX_SUPPORT:Ljava/lang/String; = "resolution_max"

.field public static final SETTINGS_KEY_RESOLUTION_USER_SETTING:Ljava/lang/String; = "resolution_user_setting"

.field public static final SETTINGS_KEY_SCREENSAVER_BACKUP:Ljava/lang/String; = "screensaver_backup"

.field public static final SETTINGS_KEY_SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "timeout_dex"

.field public static final SETTINGS_KEY_SCREEN_OFF_TIMEOUT_BACKUP:Ljava/lang/String; = "timeout_backup"

.field public static final SETTINGS_KEY_SECURED_APP_DIALOG_SHOWN:Ljava/lang/String; = "secured_app_dialog_shown"

.field public static final SETTINGS_KEY_SKIP_WELCOME_SCREEN:Ljava/lang/String; = "skip_welcome_screen"

.field public static final SETTINGS_KEY_SPEED_LIMIT_BACKUP:Ljava/lang/String; = "speed_limit_backup"

.field public static final SETTINGS_KEY_SPEN_ENABLED:Ljava/lang/String; = "spen_enabled"

.field public static final SETTINGS_KEY_SPEN_INPUT_CHANGE_SUPPORT:Ljava/lang/String; = "spen_input_change_support"

.field public static final SETTINGS_KEY_SPEN_MODE:Ljava/lang/String; = "spen_mode"

.field public static final SETTINGS_KEY_SPEN_MODE_ICON:Ljava/lang/String; = "spen_mode_icon"

.field public static final SETTINGS_KEY_STABILIZER_MODE:Ljava/lang/String; = "stabilizer_mode"

.field public static final SETTINGS_KEY_STABILIZER_MODE_CONSENT:Ljava/lang/String; = "stabilizer_mode_consent"

.field public static final SETTINGS_KEY_STANDALONE_MODE_ROTATE_APP:Ljava/lang/String; = "standalone_mode_rotate_app"

.field public static final SETTINGS_KEY_STANDALONE_MODE_SCREEN_ZOOM:Ljava/lang/String; = "standalone_mode_screen_zoom"

.field public static final SETTINGS_KEY_SUPER_FAST_CHARGING_BACKUP:Ljava/lang/String; = "super_fast_charging_backup"

.field public static final SETTINGS_KEY_TOUCHPAD_AUTO_RUN:Ljava/lang/String; = "touchpad_auto_run"

.field public static final SETTINGS_KEY_TOUCHPAD_AUTO_RUN_GUIDE_COUNT:Ljava/lang/String; = "touchpad_auto_run_guide_count"

.field public static final SETTINGS_KEY_TOUCHPAD_ENABLED:Ljava/lang/String; = "touchpad_enabled"

.field public static final SETTINGS_KEY_TOUCH_KEYBOARD:Ljava/lang/String; = "touch_keyboard"

.field public static final SETTINGS_KEY_TOUCH_KEYBOARD_BACKUP:Ljava/lang/String; = "touch_keyboard_backup"

.field public static final SETTINGS_KEY_UIBC_FINGER_ENABLED:Ljava/lang/String; = "uibc_finger_enabled"

.field public static final SETTINGS_KEY_VIRTUAL_KEYBOARD:Ljava/lang/String; = "keyboard_dex"

.field public static final SETTINGS_KEY_VIRTUAL_KEYBOARD_BACKUP:Ljava/lang/String; = "keyboard_backup"

.field public static final SETTINGS_KEY_WELCOME_COMPLETED:Ljava/lang/String; = "welcome_completed"

.field public static final SETTINGS_KEY_WIRELESS_DEX:Ljava/lang/String; = "wireless_dex"

.field public static final SETTINGS_KEY_WIRELESS_DEX_BLE_MAC_ADDRESS_LIST:Ljava/lang/String; = "ble_mac_address_list"

.field public static final SETTINGS_KEY_WIRELESS_DEX_QOS_DIALOG_CLOSED:Ljava/lang/String; = "wireless_dex_qos_notification_deleted"

.field public static final SETTINGS_KEY_WIRELESS_DEX_SCAN_DEVICE:Ljava/lang/String; = "wireless_dex_scan_device"

.field public static final SETTINGS_KEY_WIRELESS_DEX_UUID:Ljava/lang/String; = "wireless_dex_uuid"

.field public static final SETTINGS_POGO_INITIAL_CONNECTION_DIALOG_SHOWN:Ljava/lang/String; = "pogo_initial_connection_dialog_shown"

.field public static final SETTINGS_SPEN_INPUT_MODE_MOUSE:Ljava/lang/String; = "mouse"

.field public static final SETTINGS_SPEN_INPUT_MODE_PEN:Ljava/lang/String; = "pen"

.field public static final SYSPROP_PERSIST_PREFIX:Ljava/lang/String; = "persist.service.dex."

.field public static final SYSPROP_PREFIX:Ljava/lang/String; = "service.dex."

.field public static final TAG:Ljava/lang/String;

.field public static sCurrentUserId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DesktopModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    .line 97
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->SETTINGS_GLOBAL_KEYS:Ljava/util/Set;

    const-string v1, "dock_usbpd_ids"

    .line 99
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "dock_version"

    .line 100
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    .line 105
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->CONTENT_URI:Landroid/net/Uri;

    const/16 v0, -0x2710

    .line 119
    sput v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyGlobalSettings(Landroid/content/ContentResolver;I)V
    .registers 6

    .line 130
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->SETTINGS_GLOBAL_KEYS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 131
    invoke-static {p0, v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 133
    invoke-static {p0, v1, v2, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_6

    :cond_1e
    return-void
.end method

.method public static clearSettingsAsUser(Landroid/content/ContentResolver;I)V
    .registers 4

    .line 363
    :try_start_0
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "clearSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    move-exception p0

    .line 365
    sget-object p1, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    const-string v0, "Failed to clear Dex settings"

    invoke-static {p1, v0, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-void
.end method

.method public static contains(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 312
    invoke-static {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static deleteAllSettings(Landroid/content/ContentResolver;)V
    .registers 2

    .line 354
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteAllSettingsAsUser(Landroid/content/ContentResolver;I)V

    return-void
.end method

.method public static deleteAllSettingsAsUser(Landroid/content/ContentResolver;I)V
    .registers 3

    .line 343
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteAllSettingsAsUserOrThrowException(Landroid/content/ContentResolver;I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    .line 345
    sget-object p1, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    const-string v0, "Failed to delete settings"

    invoke-static {p1, v0, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method public static deleteAllSettingsAsUserOrThrowException(Landroid/content/ContentResolver;I)V
    .registers 4

    .line 338
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "deleteSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static deleteAllSettingsOrThrowException(Landroid/content/ContentResolver;)V
    .registers 2

    .line 350
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteAllSettingsAsUserOrThrowException(Landroid/content/ContentResolver;I)V

    return-void
.end method

.method public static deleteSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3

    .line 334
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public static deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .registers 3

    .line 323
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    .line 325
    sget-object p1, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    const-string p2, "Failed to delete settings"

    invoke-static {p1, p2, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method public static deleteSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .registers 5

    .line 316
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v1, "key"

    .line 317
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "deleteSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static deleteSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3

    .line 330
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public static dump(Landroid/util/IndentingPrintWriter;Landroid/content/ContentResolver;I)V
    .registers 7

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DesktopModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 387
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current user ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") settings="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-static {p1, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettingsAsUser(Landroid/content/ContentResolver;I)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/desktopmode/Utils;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 388
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_69

    .line 391
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System user (0) settings"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 392
    invoke-static {p1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettingsAsUser(Landroid/content/ContentResolver;I)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/desktopmode/Utils;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 391
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 394
    :cond_69
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 395
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public static dumpApp(Landroid/util/IndentingPrintWriter;Landroid/content/ContentResolver;I)V
    .registers 5

    const-string v0, "dumpApp"

    .line 375
    :try_start_2
    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 377
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception p0

    .line 380
    sget-object p1, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    const-string p2, "Failed to dump"

    invoke-static {p1, p2, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    :goto_1d
    return-void
.end method

.method public static getAllSettings(Landroid/content/ContentResolver;)Landroid/os/Bundle;
    .registers 2

    .line 161
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettingsAsUser(Landroid/content/ContentResolver;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getAllSettingsAsUser(Landroid/content/ContentResolver;I)Landroid/os/Bundle;
    .registers 4

    const/4 v0, 0x0

    .line 152
    :try_start_1
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo v1, "getSettings"

    invoke-virtual {p0, p1, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 154
    sget-object p1, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get settings"

    invoke-static {p1, v1, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static getSettings(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .registers 4

    .line 217
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    return p0
.end method

.method public static getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 4

    .line 209
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getSettings(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 5

    .line 213
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 201
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .registers 4

    .line 205
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public static getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .registers 4

    .line 197
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .registers 4

    .line 189
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .registers 5

    .line 193
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p4}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 166
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 168
    sget-object p1, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    const-string p3, "Failed to get settings"

    invoke-static {p1, p3, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p2
.end method

.method public static getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z
    .registers 4

    .line 185
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    .line 174
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v1, "key"

    .line 175
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "def"

    .line 176
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object p3

    const-string/jumbo v1, "getSettings"

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 179
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    return-object p2
.end method

.method public static getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .registers 4

    .line 237
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 4

    .line 229
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 4

    .line 233
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    sget p3, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 221
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .registers 4

    .line 225
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getUri()Landroid/net/Uri;
    .registers 1

    .line 143
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getUriAsUser(I)Landroid/net/Uri;
    .registers 3

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "@"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "com.sec.android.desktopmode.uiservice.SettingsProvider"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/settings"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    .line 147
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static isGlobalKey(Ljava/lang/String;)Z
    .registers 2

    .line 126
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->SETTINGS_GLOBAL_KEYS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setCurrentUserId(I)V
    .registers 1

    .line 122
    sput p0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    return-void
.end method

.method public static setSettings(Landroid/content/ContentResolver;Ljava/lang/String;F)V
    .registers 4

    .line 288
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .registers 4

    .line 280
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettings(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .registers 4

    .line 284
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    sget p3, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 272
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 4

    .line 276
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)V
    .registers 4

    .line 268
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    .registers 4

    .line 260
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)V
    .registers 5

    .line 264
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p4}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 249
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    .line 251
    sget-object p1, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    const-string p2, "Failed to set settings"

    invoke-static {p1, p2, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method public static setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V
    .registers 4

    .line 256
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 241
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v1, "key"

    .line 242
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "val"

    .line 243
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo p2, "setSettings"

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;F)V
    .registers 4

    .line 308
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .registers 4

    .line 300
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .registers 4

    .line 304
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    sget p3, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 292
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 4

    .line 296
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSystemProperties(Ljava/lang/String;Z)V
    .registers 4

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service.dex."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
