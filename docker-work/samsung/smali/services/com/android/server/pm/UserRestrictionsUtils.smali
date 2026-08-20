.class public Lcom/android/server/pm/UserRestrictionsUtils;
.super Ljava/lang/Object;
.source "UserRestrictionsUtils.java"


# static fields
.field public static final DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEPRECATED_USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FINANCED_DEVICE_OWNER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GLOBAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMMUTABLE_BY_OWNERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROFILE_OWNER_ORGANIZATION_OWNED_GLOBAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROFILE_OWNER_ORGANIZATION_OWNED_LOCAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "UserRestrictionsUtils"

.field public static final USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 70

    const-string/jumbo v0, "no_config_wifi"

    const-string/jumbo v1, "no_config_locale"

    const-string/jumbo v2, "no_modify_accounts"

    const-string/jumbo v3, "no_install_apps"

    const-string/jumbo v4, "no_uninstall_apps"

    const-string/jumbo v5, "no_share_location"

    const-string/jumbo v6, "no_install_unknown_sources"

    const-string/jumbo v7, "no_install_unknown_sources_globally"

    const-string/jumbo v8, "no_config_bluetooth"

    const-string/jumbo v9, "no_bluetooth"

    const-string/jumbo v10, "no_bluetooth_sharing"

    const-string/jumbo v11, "no_usb_file_transfer"

    const-string/jumbo v12, "no_config_credentials"

    const-string/jumbo v13, "no_remove_user"

    const-string/jumbo v14, "no_remove_managed_profile"

    const-string/jumbo v15, "no_debugging_features"

    const-string/jumbo v16, "no_config_vpn"

    const-string/jumbo v17, "no_config_date_time"

    const-string/jumbo v18, "no_config_tethering"

    const-string/jumbo v19, "no_network_reset"

    const-string/jumbo v20, "no_factory_reset"

    const-string/jumbo v21, "no_add_user"

    const-string/jumbo v22, "no_add_managed_profile"

    const-string/jumbo v23, "no_add_clone_profile"

    const-string v24, "ensure_verify_apps"

    const-string/jumbo v25, "no_config_cell_broadcasts"

    const-string/jumbo v26, "no_config_mobile_networks"

    const-string/jumbo v27, "no_control_apps"

    const-string/jumbo v28, "no_physical_media"

    const-string/jumbo v29, "no_unmute_microphone"

    const-string/jumbo v30, "no_adjust_volume"

    const-string/jumbo v31, "no_outgoing_calls"

    const-string/jumbo v32, "no_sms"

    const-string/jumbo v33, "no_fun"

    const-string/jumbo v34, "no_create_windows"

    const-string/jumbo v35, "no_system_error_dialogs"

    const-string/jumbo v36, "no_cross_profile_copy_paste"

    const-string/jumbo v37, "no_outgoing_beam"

    const-string/jumbo v38, "no_wallpaper"

    const-string/jumbo v39, "no_safe_boot"

    const-string v40, "allow_parent_profile_app_linking"

    const-string/jumbo v41, "no_record_audio"

    const-string/jumbo v42, "no_camera"

    const-string/jumbo v43, "no_run_in_background"

    const-string/jumbo v44, "no_data_roaming"

    const-string/jumbo v45, "no_set_user_icon"

    const-string/jumbo v46, "no_set_wallpaper"

    const-string/jumbo v47, "no_oem_unlock"

    const-string v48, "disallow_unmute_device"

    const-string/jumbo v49, "no_autofill"

    const-string/jumbo v50, "no_content_capture"

    const-string/jumbo v51, "no_content_suggestions"

    const-string/jumbo v52, "no_user_switch"

    const-string/jumbo v53, "no_unified_password"

    const-string/jumbo v54, "no_config_location"

    const-string/jumbo v55, "no_airplane_mode"

    const-string/jumbo v56, "no_config_brightness"

    const-string/jumbo v57, "no_sharing_into_profile"

    const-string/jumbo v58, "no_ambient_display"

    const-string/jumbo v59, "no_config_screen_timeout"

    const-string/jumbo v60, "no_printing"

    const-string v61, "disallow_config_private_dns"

    const-string v62, "disallow_microphone_toggle"

    const-string/jumbo v63, "no_non_market_app_by_knox"

    const-string v64, "disallow_camera_toggle"

    const-string/jumbo v65, "no_change_wifi_state"

    const-string/jumbo v66, "no_wifi_tethering"

    const-string/jumbo v67, "no_sharing_admin_configured_wifi"

    const-string/jumbo v68, "no_wifi_direct"

    const-string/jumbo v69, "no_add_wifi_config"

    .line 81
    filled-new-array/range {v0 .. v69}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v0, "no_add_managed_profile"

    const-string/jumbo v1, "no_remove_managed_profile"

    .line 156
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEPRECATED_USER_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v0, "no_record_audio"

    .line 164
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v2, "no_bluetooth"

    const-string/jumbo v3, "no_usb_file_transfer"

    const-string/jumbo v4, "no_config_tethering"

    const-string/jumbo v5, "no_network_reset"

    const-string/jumbo v6, "no_factory_reset"

    const-string/jumbo v7, "no_add_user"

    const-string/jumbo v8, "no_config_cell_broadcasts"

    const-string/jumbo v9, "no_config_mobile_networks"

    const-string/jumbo v10, "no_physical_media"

    const-string/jumbo v11, "no_sms"

    const-string/jumbo v12, "no_fun"

    const-string/jumbo v13, "no_safe_boot"

    const-string/jumbo v14, "no_create_windows"

    const-string/jumbo v15, "no_data_roaming"

    const-string/jumbo v16, "no_airplane_mode"

    .line 172
    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v2, "no_user_switch"

    const-string v3, "disallow_config_private_dns"

    const-string v4, "disallow_microphone_toggle"

    const-string v5, "disallow_camera_toggle"

    const-string/jumbo v6, "no_change_wifi_state"

    const-string/jumbo v7, "no_wifi_tethering"

    const-string/jumbo v8, "no_wifi_direct"

    const-string/jumbo v9, "no_add_wifi_config"

    .line 193
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_wallpaper"

    const-string/jumbo v2, "no_oem_unlock"

    .line 207
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    const-string/jumbo v1, "no_adjust_volume"

    const-string/jumbo v2, "no_bluetooth_sharing"

    const-string/jumbo v3, "no_config_date_time"

    const-string/jumbo v4, "no_system_error_dialogs"

    const-string/jumbo v5, "no_run_in_background"

    const-string/jumbo v6, "no_unmute_microphone"

    const-string v7, "disallow_unmute_device"

    const-string/jumbo v8, "no_camera"

    .line 217
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_airplane_mode"

    const-string/jumbo v2, "no_config_date_time"

    const-string v3, "disallow_config_private_dns"

    const-string/jumbo v4, "no_change_wifi_state"

    const-string/jumbo v5, "no_wifi_tethering"

    const-string/jumbo v6, "no_wifi_direct"

    const-string/jumbo v7, "no_add_wifi_config"

    .line 232
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_config_bluetooth"

    const-string/jumbo v2, "no_config_location"

    const-string/jumbo v3, "no_config_wifi"

    const-string/jumbo v4, "no_content_capture"

    const-string/jumbo v5, "no_content_suggestions"

    const-string/jumbo v6, "no_debugging_features"

    const-string/jumbo v7, "no_share_location"

    const-string/jumbo v8, "no_outgoing_calls"

    const-string/jumbo v9, "no_camera"

    const-string/jumbo v10, "no_bluetooth"

    const-string/jumbo v11, "no_bluetooth_sharing"

    const-string/jumbo v12, "no_config_cell_broadcasts"

    const-string/jumbo v13, "no_config_mobile_networks"

    const-string/jumbo v14, "no_config_tethering"

    const-string/jumbo v15, "no_data_roaming"

    const-string/jumbo v16, "no_safe_boot"

    const-string/jumbo v17, "no_sms"

    const-string/jumbo v18, "no_usb_file_transfer"

    const-string/jumbo v19, "no_physical_media"

    const-string/jumbo v20, "no_unmute_microphone"

    .line 247
    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_LOCAL_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v0, "no_bluetooth_sharing"

    .line 278
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;

    const-string v0, "ensure_verify_apps"

    const-string/jumbo v1, "no_airplane_mode"

    const-string/jumbo v2, "no_install_unknown_sources_globally"

    .line 285
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_add_user"

    const-string/jumbo v2, "no_debugging_features"

    const-string/jumbo v3, "no_install_unknown_sources"

    const-string/jumbo v4, "no_safe_boot"

    const-string/jumbo v5, "no_config_date_time"

    const-string/jumbo v6, "no_outgoing_calls"

    .line 295
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->FINANCED_DEVICE_OWNER_RESTRICTIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V
    .registers 14

    const-string v0, "airplane_mode_on"

    .line 575
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 576
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, -0x1

    .line 578
    :try_start_b
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_190

    const-string/jumbo v6, "no_install_unknown_sources"

    const-string/jumbo v7, "no_install_unknown_sources_globally"

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v5, :sswitch_data_196

    goto/16 :goto_9e

    :sswitch_1c
    :try_start_1c
    const-string/jumbo v5, "no_debugging_features"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9e

    const/4 v4, 0x2

    goto/16 :goto_9e

    :sswitch_28
    const-string/jumbo v5, "no_safe_boot"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9e

    const/4 v4, 0x7

    goto/16 :goto_9e

    :sswitch_34
    const-string/jumbo v5, "no_share_location"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9e

    move v4, v8

    goto :goto_9e

    :sswitch_3f
    const-string/jumbo v5, "no_data_roaming"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9e

    move v4, v9

    goto :goto_9e

    :sswitch_4a
    const-string/jumbo v5, "no_run_in_background"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9e

    const/4 v4, 0x6

    goto :goto_9e

    :sswitch_55
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9e

    const/4 v4, 0x5

    goto :goto_9e

    :sswitch_5d
    const-string/jumbo v5, "no_uninstall_apps"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9e

    const/16 v4, 0xb

    goto :goto_9e

    :sswitch_69
    const-string/jumbo v5, "no_airplane_mode"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9e

    const/16 v4, 0x8

    goto :goto_9e

    :sswitch_75
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9e

    const/4 v4, 0x4

    goto :goto_9e

    :sswitch_7d
    const-string v5, "ensure_verify_apps"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9e

    const/4 v4, 0x3

    goto :goto_9e

    :sswitch_87
    const-string/jumbo v5, "no_control_apps"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9e

    const/16 v4, 0xa

    goto :goto_9e

    :sswitch_93
    const-string/jumbo v5, "no_ambient_display"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_9a
    .catchall {:try_start_1c .. :try_end_9a} :catchall_190

    if-eqz p2, :cond_9e

    const/16 v4, 0x9

    :cond_9e
    :goto_9e
    const-string p2, "0"

    packed-switch v4, :pswitch_data_1c8

    goto/16 :goto_18c

    .line 693
    :pswitch_a5
    :try_start_a5
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 695
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->removeAllNonSystemPackageSuspensions(I)V

    .line 696
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->removeAllDistractingPackageRestrictions(I)V

    .line 697
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->flushPackageRestrictions(I)V

    goto/16 :goto_18c

    :pswitch_b8
    if-eqz p3, :cond_18c

    .line 685
    new-instance p2, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {p2, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 687
    invoke-virtual {p2, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->disableDozeSettings(I)V

    goto/16 :goto_18c

    :pswitch_c4
    if-eqz p3, :cond_18c

    .line 670
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 669
    invoke-static {p1, v0, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v8, :cond_d1

    goto :goto_d2

    :cond_d1
    move v8, v9

    :goto_d2
    if-eqz v8, :cond_18c

    .line 674
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 673
    invoke-static {p1, v0, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 677
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "state"

    .line 678
    invoke-virtual {p1, p2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 679
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_18c

    .line 663
    :pswitch_ef
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "safe_boot_disallowed"

    if-eqz p3, :cond_f9

    goto :goto_fa

    :cond_f9
    move v8, v9

    .line 662
    :goto_fa
    invoke-static {p0, p1, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_18c

    :pswitch_ff
    if-eqz p3, :cond_18c

    .line 646
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0
    :try_end_105
    .catchall {:try_start_a5 .. :try_end_105} :catchall_190

    if-eq p0, p1, :cond_18c

    if-eqz p1, :cond_18c

    .line 649
    :try_start_109
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p0, p1, v9, p2}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_111
    .catch Landroid/os/RemoteException; {:try_start_109 .. :try_end_111} :catch_113
    .catchall {:try_start_109 .. :try_end_111} :catchall_190

    goto/16 :goto_18c

    :catch_113
    move-exception p0

    .line 651
    :try_start_114
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 640
    :pswitch_119
    invoke-static {p0, p1, v7, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->getNewUserRestrictionSetting(Landroid/content/Context;ILjava/lang/String;Z)I

    move-result p0

    invoke-static {v1, p1, p0}, Lcom/android/server/pm/UserRestrictionsUtils;->setInstallMarketAppsRestriction(Landroid/content/ContentResolver;II)V

    goto :goto_18c

    .line 632
    :pswitch_121
    invoke-static {p0, p1, v6, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->getNewUserRestrictionSetting(Landroid/content/Context;ILjava/lang/String;Z)I

    move-result p0

    invoke-static {v1, p1, p0}, Lcom/android/server/pm/UserRestrictionsUtils;->setInstallMarketAppsRestriction(Landroid/content/ContentResolver;II)V

    goto :goto_18c

    :pswitch_129
    if-eqz p3, :cond_18c

    .line 626
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "verifier_verify_adb_installs"

    const-string p3, "1"

    .line 625
    invoke-static {p0, p2, p3, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_18c

    :pswitch_138
    if-eqz p3, :cond_18c

    if-nez p1, :cond_18c

    const-string p0, "adb_enabled"

    .line 614
    invoke-static {v1, p0, p2, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string p0, "adb_wifi_enabled"

    .line 617
    invoke-static {v1, p0, p2, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_18c

    :pswitch_147
    if-eqz p3, :cond_18c

    const-string/jumbo p0, "location_mode"

    .line 603
    invoke-static {v1, p0, v9, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_18c

    :pswitch_150
    if-eqz p3, :cond_18c

    .line 584
    const-class p3, Landroid/telephony/SubscriptionManager;

    .line 585
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 587
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0
    :try_end_15e
    .catchall {:try_start_114 .. :try_end_15e} :catchall_190

    const-string p3, "data_roaming"

    if-eqz p0, :cond_189

    .line 589
    :try_start_162
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_166
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_189

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 590
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 590
    invoke-static {v1, v0, p2, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_166

    .line 597
    :cond_189
    invoke-static {v1, p3, p2, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_18c
    .catchall {:try_start_162 .. :try_end_18c} :catchall_190

    .line 701
    :cond_18c
    :goto_18c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_190
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 702
    throw p0

    nop

    :sswitch_data_196
    .sparse-switch
        -0x57f0a463 -> :sswitch_93
        -0x52b3922e -> :sswitch_87
        -0x4e6d1409 -> :sswitch_7d
        -0x444ddeb2 -> :sswitch_75
        -0x4080af8e -> :sswitch_69
        -0x646213 -> :sswitch_5d
        0x171409a1 -> :sswitch_55
        0x2afb8ad6 -> :sswitch_4a
        0x375d2642 -> :sswitch_3f
        0x3b5af253 -> :sswitch_34
        0x414d6f66 -> :sswitch_28
        0x68f319ac -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_1c8
    .packed-switch 0x0
        :pswitch_150
        :pswitch_147
        :pswitch_138
        :pswitch_129
        :pswitch_121
        :pswitch_119
        :pswitch_ff
        :pswitch_ef
        :pswitch_c4
        :pswitch_b8
        :pswitch_a5
        :pswitch_a5
    .end packed-switch
.end method

.method public static applyUserRestrictions(Landroid/content/Context;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 8

    .line 543
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 544
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 545
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eq v2, v3, :cond_6

    .line 548
    invoke-static {p0, p1, v1, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V

    goto :goto_6

    :cond_20
    return-void
.end method

.method public static areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 516
    :cond_4
    invoke-static {p0}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 517
    invoke-static {p1}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 519
    :cond_f
    invoke-static {p1}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    return v2

    .line 522
    :cond_17
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 523
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eq v4, v3, :cond_1f

    return v2

    .line 527
    :cond_36
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 528
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eq v4, v3, :cond_3e

    return v2

    :cond_55
    return v0
.end method

.method public static canDeviceOwnerChange(Ljava/lang/String;)Z
    .registers 2

    .line 448
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static canFinancedDeviceOwnerChange(Ljava/lang/String;)Z
    .registers 2

    .line 482
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->FINANCED_DEVICE_OWNER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 483
    invoke-static {p0}, Lcom/android/server/pm/UserRestrictionsUtils;->canDeviceOwnerChange(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static canProfileOwnerChange(Ljava/lang/String;I)Z
    .registers 3

    .line 456
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 457
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    if-eqz p1, :cond_1a

    sget-object p1, Lcom/android/server/pm/UserRestrictionsUtils;->PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 459
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public static canProfileOwnerOfOrganizationOwnedDeviceChange(Ljava/lang/String;)Z
    .registers 2

    .line 466
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_LOCAL_RESTRICTIONS:Ljava/util/Set;

    .line 467
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static contains(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_a

    .line 428
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    if-eqz p2, :cond_4a

    .line 837
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 838
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v3

    goto :goto_b

    :cond_32
    if-eqz v1, :cond_5f

    .line 844
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "none"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5f

    .line 847
    :cond_4a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method public static getDefaultEnabledForManagedProfiles()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 474
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;

    return-object v0
.end method

.method public static getNewUserRestrictionSetting(Landroid/content/Context;ILjava/lang/String;Z)I
    .registers 4

    if-nez p3, :cond_13

    .line 892
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 893
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 892
    invoke-virtual {p0, p2, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public static isGlobal(ILjava/lang/String;)Z
    .registers 3

    if-nez p0, :cond_12

    .line 491
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 492
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    :cond_12
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1d

    sget-object p0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 495
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    :cond_1d
    sget-object p0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 496
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    sget-object p0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 497
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 p0, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 p0, 0x1

    :goto_31
    return p0
.end method

.method public static isLocal(ILjava/lang/String;)Z
    .registers 2

    .line 505
    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isGlobal(ILjava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isSettingRestrictedForUser(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 11

    .line 707
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 711
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_210

    goto/16 :goto_159

    :sswitch_17
    const-string/jumbo v0, "screen_brightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_159

    :cond_22
    const/16 v3, 0x17

    goto/16 :goto_159

    :sswitch_26
    const-string/jumbo v0, "install_non_market_apps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_159

    :cond_31
    const/16 v3, 0x16

    goto/16 :goto_159

    :sswitch_35
    const-string v0, "auto_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_159

    :cond_3f
    const/16 v3, 0x15

    goto/16 :goto_159

    :sswitch_43
    const-string v0, "always_on_vpn_lockdown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_159

    :cond_4d
    const/16 v3, 0x14

    goto/16 :goto_159

    :sswitch_51
    const-string v0, "doze_pulse_on_pick_up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_159

    :cond_5b
    const/16 v3, 0x13

    goto/16 :goto_159

    :sswitch_5f
    const-string v0, "always_on_vpn_lockdown_whitelist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto/16 :goto_159

    :cond_69
    const/16 v3, 0x12

    goto/16 :goto_159

    :sswitch_6d
    const-string v0, "auto_time_zone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto/16 :goto_159

    :cond_77
    const/16 v3, 0x11

    goto/16 :goto_159

    :sswitch_7b
    const-string/jumbo v0, "private_dns_specifier"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    goto/16 :goto_159

    :cond_86
    const/16 v3, 0x10

    goto/16 :goto_159

    :sswitch_8a
    const-string v0, "doze_pulse_on_double_tap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    goto/16 :goto_159

    :cond_94
    const/16 v3, 0xf

    goto/16 :goto_159

    :sswitch_98
    const-string v0, "airplane_mode_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a2

    goto/16 :goto_159

    :cond_a2
    const/16 v3, 0xe

    goto/16 :goto_159

    :sswitch_a6
    const-string/jumbo v0, "private_dns_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    goto/16 :goto_159

    :cond_b1
    const/16 v3, 0xd

    goto/16 :goto_159

    :sswitch_b5
    const-string/jumbo v0, "screen_off_timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    goto/16 :goto_159

    :cond_c0
    const/16 v3, 0xc

    goto/16 :goto_159

    :sswitch_c4
    const-string/jumbo v0, "safe_boot_disallowed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    goto/16 :goto_159

    :cond_cf
    const/16 v3, 0xb

    goto/16 :goto_159

    :sswitch_d3
    const-string/jumbo v0, "screen_brightness_float"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_de

    goto/16 :goto_159

    :cond_de
    const/16 v3, 0xa

    goto/16 :goto_159

    :sswitch_e2
    const-string v0, "doze_pulse_on_long_press"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ec

    goto/16 :goto_159

    :cond_ec
    const/16 v3, 0x9

    goto/16 :goto_159

    :sswitch_f0
    const-string v0, "doze_always_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fa

    goto/16 :goto_159

    :cond_fa
    const/16 v3, 0x8

    goto/16 :goto_159

    :sswitch_fe
    const-string/jumbo v0, "preferred_network_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_108

    goto :goto_159

    :cond_108
    const/4 v3, 0x7

    goto :goto_159

    :sswitch_10a
    const-string v0, "always_on_vpn_app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_113

    goto :goto_159

    :cond_113
    const/4 v3, 0x6

    goto :goto_159

    :sswitch_115
    const-string/jumbo v0, "screen_brightness_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11f

    goto :goto_159

    :cond_11f
    const/4 v3, 0x5

    goto :goto_159

    :sswitch_121
    const-string v0, "adb_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12a

    goto :goto_159

    :cond_12a
    const/4 v3, 0x4

    goto :goto_159

    :sswitch_12c
    const-string/jumbo v0, "verifier_verify_adb_installs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_136

    goto :goto_159

    :cond_136
    const/4 v3, 0x3

    goto :goto_159

    :sswitch_138
    const-string v0, "doze_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_141

    goto :goto_159

    :cond_141
    const/4 v3, 0x2

    goto :goto_159

    :sswitch_143
    const-string/jumbo v0, "location_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14d

    goto :goto_159

    :cond_14d
    move v3, v1

    goto :goto_159

    :sswitch_14f
    const-string v0, "adb_wifi_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_158

    goto :goto_159

    :cond_158
    move v3, v2

    :goto_159
    const-string v0, "1"

    const-string v4, "0"

    const/16 v5, 0x3e8

    packed-switch v3, :pswitch_data_272

    const-string p4, "data_roaming"

    .line 817
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_176

    .line 818
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_171

    return v2

    :cond_171
    const-string/jumbo p1, "no_data_roaming"

    goto/16 :goto_207

    :cond_176
    return v2

    .line 724
    :pswitch_177
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17e

    return v2

    :cond_17e
    const-string/jumbo p1, "no_install_unknown_sources"

    goto/16 :goto_207

    :pswitch_183
    if-ne p4, v5, :cond_186

    return v2

    :cond_186
    const-string/jumbo p1, "no_config_date_time"

    goto/16 :goto_207

    .line 768
    :pswitch_18b
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_192

    return v2

    :cond_192
    const-string/jumbo p1, "no_airplane_mode"

    goto/16 :goto_207

    :pswitch_197
    if-ne p4, v5, :cond_19a

    return v2

    :cond_19a
    const-string p1, "disallow_config_private_dns"

    goto/16 :goto_207

    :pswitch_19e
    if-ne p4, v5, :cond_1a1

    return v2

    :cond_1a1
    const-string/jumbo p1, "no_config_screen_timeout"

    goto :goto_207

    .line 761
    :pswitch_1a5
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1ac

    return v2

    :cond_1ac
    const-string/jumbo p1, "no_safe_boot"

    goto :goto_207

    :pswitch_1b0
    const-string/jumbo p1, "no_config_mobile_networks"

    goto :goto_207

    .line 753
    :pswitch_1b4
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-eq p1, v5, :cond_1c1

    if-nez p1, :cond_1bd

    goto :goto_1c1

    :cond_1bd
    const-string/jumbo p1, "no_config_vpn"

    goto :goto_207

    :cond_1c1
    :goto_1c1
    return v2

    :pswitch_1c2
    if-ne p4, v5, :cond_1c5

    return v2

    :cond_1c5
    const-string/jumbo p1, "no_config_brightness"

    goto :goto_207

    .line 739
    :pswitch_1c9
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d0

    return v2

    :cond_1d0
    const-string p1, "ensure_verify_apps"

    goto :goto_207

    .line 779
    :pswitch_1d3
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1da

    return v2

    :cond_1da
    const-string/jumbo p1, "no_ambient_display"

    goto :goto_207

    .line 714
    :pswitch_1de
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const-string/jumbo v0, "no_config_location"

    .line 713
    invoke-virtual {p0, v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_1ee

    if-eq p4, v5, :cond_1ee

    return v1

    .line 717
    :cond_1ee
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f9

    return v2

    :cond_1f9
    const-string/jumbo p1, "no_share_location"

    goto :goto_207

    .line 732
    :pswitch_1fd
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_204

    return v2

    :cond_204
    const-string/jumbo p1, "no_debugging_features"

    .line 830
    :goto_207
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0

    :sswitch_data_210
    .sparse-switch
        -0x7d29d849 -> :sswitch_14f
        -0x6b192413 -> :sswitch_143
        -0x58d2ff08 -> :sswitch_138
        -0x4280630b -> :sswitch_12c
        -0x39d6645f -> :sswitch_121
        -0x294f7102 -> :sswitch_115
        -0x252f8dda -> :sswitch_10a
        -0x18d5c3ee -> :sswitch_fe
        -0x611a9fa -> :sswitch_f0
        -0x1efffcf -> :sswitch_e2
        -0x102879f -> :sswitch_d3
        0x3756c15 -> :sswitch_c4
        0xf689f3e -> :sswitch_b5
        0x28c0ce35 -> :sswitch_a6
        0x3733860e -> :sswitch_98
        0x3ff919a6 -> :sswitch_8a
        0x48f0b46c -> :sswitch_7b
        0x4c070b4e -> :sswitch_6d
        0x4f84b830 -> :sswitch_5f
        0x5f8b91a8 -> :sswitch_51
        0x62299f68 -> :sswitch_43
        0x6305635d -> :sswitch_35
        0x6565577f -> :sswitch_26
        0x67748604 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_272
    .packed-switch 0x0
        :pswitch_1fd
        :pswitch_1de
        :pswitch_1d3
        :pswitch_1c9
        :pswitch_1fd
        :pswitch_1c2
        :pswitch_1b4
        :pswitch_1b0
        :pswitch_1d3
        :pswitch_1d3
        :pswitch_1c2
        :pswitch_1a5
        :pswitch_19e
        :pswitch_197
        :pswitch_18b
        :pswitch_1d3
        :pswitch_197
        :pswitch_183
        :pswitch_1b4
        :pswitch_1d3
        :pswitch_1b4
        :pswitch_183
        :pswitch_177
        :pswitch_1c2
    .end packed-switch
.end method

.method public static isSystemApp(I[Ljava/lang/String;)Z
    .registers 10

    .line 341
    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    if-nez p1, :cond_c

    return v0

    .line 347
    :cond_c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    move v3, v0

    .line 348
    :goto_11
    array-length v4, p1

    if-ge v3, v4, :cond_2d

    .line 353
    :try_start_14
    aget-object v4, p1, v3

    const-wide/32 v5, 0xc2000

    .line 354
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-interface {v2, v4, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_2a

    .line 355
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_27} :catch_2a

    if-eqz v4, :cond_2a

    return v1

    :catch_2a
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_2d
    return v0
.end method

.method public static isValidRestriction(Ljava/lang/String;)Z
    .registers 7

    .line 308
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5f

    .line 310
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v2, 0x0

    .line 313
    :try_start_e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_16

    .line 317
    :catch_16
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown restriction queried by uid "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    if-eqz v2, :cond_3d

    .line 319
    array-length v5, v2

    if-lez v5, :cond_3d

    const-string v5, " ("

    .line 320
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    array-length v5, v2

    if-le v5, v1, :cond_38

    const-string v1, " et al"

    .line 323
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    const-string v1, ")"

    .line 325
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    const-string v1, ": "

    .line 327
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UserRestrictionsUtils"

    if-eqz p0, :cond_57

    .line 329
    invoke-static {v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->isSystemApp(I[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_57

    .line 330
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 332
    :cond_57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5e
    return v4

    :cond_5f
    return v1
.end method

.method public static merge(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7

    .line 432
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    .line 433
    :goto_a
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    if-nez p1, :cond_10

    return-void

    .line 437
    :cond_10
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 438
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 439
    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_18

    :cond_2e
    return-void
.end method

.method public static moveRestriction(Ljava/lang/String;Landroid/util/SparseArray;Lcom/android/server/pm/RestrictionsSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/RestrictionsSet;",
            ">;",
            "Lcom/android/server/pm/RestrictionsSet;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 858
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 859
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/RestrictionsSet;

    .line 860
    invoke-virtual {v1, p2, p0}, Lcom/android/server/pm/RestrictionsSet;->moveRestriction(Lcom/android/server/pm/RestrictionsSet;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method public static newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-static {p0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    array-length p0, p0

    if-ne v1, p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    return-object v0
.end method

.method public static nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 1

    if-eqz p0, :cond_3

    goto :goto_8

    .line 420
    :cond_3
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :goto_8
    return-object p0
.end method

.method public static readRestrictions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;
    .registers 2

    .line 411
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 412
    invoke-static {p0, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;
    .registers 1

    .line 407
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/TypedXmlPullParser;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static readRestrictions(Landroid/util/TypedXmlPullParser;Landroid/os/Bundle;)V
    .registers 6

    .line 397
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 398
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 399
    invoke-interface {p0, v2, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    .line 401
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_9

    :cond_22
    return-void
.end method

.method public static readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .registers 2

    .line 393
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/TypedXmlPullParser;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;Landroid/os/Bundle;)V

    return-void
.end method

.method public static varargs restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z
    .registers 8

    .line 872
    array-length v0, p2

    if-nez v0, :cond_8

    .line 873
    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 875
    :cond_8
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_1e

    aget-object v3, p2, v2

    .line 876
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 877
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v4, v3, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1e
    return v1
.end method

.method public static setInstallMarketAppsRestriction(Landroid/content/ContentResolver;II)V
    .registers 4

    const-string/jumbo v0, "install_non_market_apps"

    .line 886
    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static writeRestrictions(Landroid/util/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 376
    invoke-interface {p0, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 377
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 378
    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_f

    .line 381
    :cond_24
    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 382
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    .line 383
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f

    .line 387
    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown user restriction detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserRestrictionsUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 389
    :cond_4e
    invoke-interface {p0, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Landroid/util/TypedXmlSerializer;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Landroid/util/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method
