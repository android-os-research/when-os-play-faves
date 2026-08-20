.class public final Lcom/android/server/am/CoreSettingsObserver;
.super Landroid/database/ContentObserver;
.source "CoreSettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field public static volatile sDeviceConfigContextEntriesLoaded:Z

.field public static final sDeviceConfigEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final sGlobalSettingToTypeMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final sSecureSettingToTypeMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final sSystemSettingToTypeMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public final mCoreSettings:Landroid/os/Bundle;


# direct methods
.method public static synthetic $r8$lambda$nOyYF4YRz1JdhfbSjXgVbUaimBE(Lcom/android/server/am/CoreSettingsObserver;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/CoreSettingsObserver;->lambda$beginObserveCoreSettings$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 18

    .line 51
    const-class v0, Ljava/lang/String;

    const-class v1, Lcom/android/server/am/CoreSettingsObserver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/CoreSettingsObserver;->LOG_TAG:Ljava/lang/String;

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    .line 75
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    .line 78
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    .line 80
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    .line 82
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v5, "long_press_timeout"

    invoke-interface {v1, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "multi_press_timeout"

    .line 83
    invoke-interface {v1, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "time_12_24"

    .line 86
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "debug_view_attributes"

    .line 89
    invoke-interface {v3, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "debug_view_attributes_application_package"

    .line 90
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "angle_debug_package"

    .line 92
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "angle_gl_driver_all_angle"

    .line 94
    invoke-interface {v3, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "angle_gl_driver_selection_pkgs"

    .line 96
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "angle_gl_driver_selection_values"

    .line 98
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "angle_egl_features"

    .line 100
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "show_angle_in_use_dialog_box"

    .line 102
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "enable_gpu_debug_layers"

    .line 104
    invoke-interface {v3, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "gpu_debug_app"

    .line 105
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "gpu_debug_layers"

    .line 106
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "gpu_debug_layers_gles"

    .line 107
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "gpu_debug_layer_app"

    .line 108
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "updatable_driver_all_apps"

    .line 109
    invoke-interface {v3, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "updatable_driver_production_opt_in_apps"

    .line 110
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "updatable_driver_prerelease_opt_in_apps"

    .line 112
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "updatable_driver_production_opt_out_apps"

    .line 114
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "updatable_driver_production_denylist"

    .line 116
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "updatable_driver_production_allowlist"

    .line 118
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "updatable_driver_production_denylists"

    .line 120
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "updatable_driver_sphal_libraries"

    .line 122
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "navigationbar_current_color"

    .line 127
    invoke-interface {v3, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 134
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v6, "widget"

    const-string v7, "CursorControlFeature__enable_cursor_drag_from_anywhere"

    const-string/jumbo v8, "widget__enable_cursor_drag_from_anywhere"

    move-object v5, v0

    move-object v9, v1

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 131
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    const/16 v2, 0x2d

    .line 138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string/jumbo v6, "widget"

    const-string v7, "CursorControlFeature__min_angle_from_vertical_to_start_cursor_drag"

    const-string/jumbo v8, "widget__min_angle_from_vertical_to_start_cursor_drag"

    move-object v5, v0

    move-object v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 135
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    const/4 v2, -0x1

    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string/jumbo v6, "widget"

    const-string v7, "CursorControlFeature__finger_to_cursor_distance"

    const-string/jumbo v8, "widget__finger_to_cursor_distance"

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 139
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 146
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v6, "widget"

    const-string v7, "CursorControlFeature__enable_insertion_handle_gestures"

    const-string/jumbo v8, "widget__enable_insertion_handle_gestures"

    move-object v5, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 143
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    const/16 v3, 0x19

    .line 150
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string/jumbo v6, "widget"

    const-string v7, "CursorControlFeature__insertion_handle_delta_height"

    const-string/jumbo v8, "widget__insertion_handle_delta_height"

    move-object v5, v0

    move-object v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 147
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    const/16 v3, 0x32

    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string/jumbo v6, "widget"

    const-string v7, "CursorControlFeature__insertion_handle_opacity"

    const-string/jumbo v8, "widget__insertion_handle_opacity"

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 151
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/high16 v5, 0x3f000000    # 0.5f

    .line 158
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    const-string/jumbo v13, "widget"

    const-string v14, "CursorControlFeature__line_slop_ratio"

    const-string/jumbo v15, "widget__line_slop_ratio"

    move-object v12, v0

    move-object/from16 v16, v3

    invoke-direct/range {v12 .. v17}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 155
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    const-string/jumbo v6, "widget"

    const-string v7, "CursorControlFeature__enable_new_magnifier"

    const-string/jumbo v8, "widget__enable_new_magnifier"

    move-object v5, v0

    move-object v9, v1

    move-object v10, v2

    .line 162
    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 159
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 166
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string/jumbo v6, "widget"

    const-string v7, "CursorControlFeature__magnifier_zoom_factor"

    const-string/jumbo v8, "widget__magnifier_zoom_factor"

    move-object v5, v0

    move-object v9, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 163
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    const/high16 v1, 0x40b00000    # 5.5f

    .line 170
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string/jumbo v6, "widget"

    const-string v7, "CursorControlFeature__magnifier_aspect_ratio"

    const-string/jumbo v8, "widget__magnifier_aspect_ratio"

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 167
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 173
    sput-boolean v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigContextEntriesLoaded:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 4

    .line 180
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    .line 182
    sget-boolean v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigContextEntriesLoaded:Z

    if-nez v0, :cond_24

    .line 183
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    monitor-enter v0

    .line 184
    :try_start_13
    sget-boolean v1, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigContextEntriesLoaded:Z

    if-nez v1, :cond_1f

    .line 185
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/am/CoreSettingsObserver;->loadDeviceConfigContextEntries(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 186
    sput-boolean v1, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigContextEntriesLoaded:Z

    .line 188
    :cond_1f
    monitor-exit v0

    goto :goto_24

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_21

    throw p0

    .line 191
    :cond_24
    :goto_24
    iput-object p1, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 192
    invoke-virtual {p0}, Lcom/android/server/am/CoreSettingsObserver;->beginObserveCoreSettings()V

    .line 193
    invoke-virtual {p0}, Lcom/android/server/am/CoreSettingsObserver;->sendCoreSettings()V

    return-void
.end method

.method private synthetic lambda$beginObserveCoreSettings$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    const/4 p1, 0x0

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/server/am/CoreSettingsObserver;->onChange(Z)V

    return-void
.end method

.method public static loadDeviceConfigContextEntries(Landroid/content/Context;)V
    .registers 9

    .line 197
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    new-instance v7, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x10e005b

    .line 201
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 200
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v2, "widget"

    const-string v3, "AnalogClockFeature__analog_clock_seconds_hand_fps"

    const-string/jumbo v4, "widget__analog_clock_seconds_hand_fps"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 197
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final beginObserveCoreSettings()V
    .registers 7

    .line 224
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 225
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 226
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_a

    .line 230
    :cond_27
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 231
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 232
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_31

    .line 236
    :cond_4d
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 237
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 238
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_57

    .line 242
    :cond_73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 243
    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7e
    :goto_7e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_aa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 244
    iget-object v3, v2, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7e

    .line 245
    iget-object v3, v2, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    .line 246
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/android/server/am/CoreSettingsObserver$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/am/CoreSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/CoreSettingsObserver;)V

    .line 245
    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 248
    iget-object v2, v2, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :cond_aa
    return-void
.end method

.method public getCoreSettingsLocked()Landroid/os/Bundle;
    .registers 1

    .line 205
    iget-object p0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public onChange(Z)V
    .registers 2

    .line 210
    iget-object p1, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 211
    invoke-virtual {p0}, Lcom/android/server/am/CoreSettingsObserver;->sendCoreSettings()V

    .line 212
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_e
    move-exception p0

    :try_start_f
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 255
    iget-object p0, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 257
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 258
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 260
    sget-object v3, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v3, :cond_2f

    .line 261
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_40

    .line 262
    :cond_2f
    sget-object v3, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v3, :cond_3c

    .line 263
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_40

    .line 265
    :cond_3c
    invoke-static {p0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_40
    if-nez v3, :cond_46

    .line 268
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_10

    .line 271
    :cond_46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 272
    const-class v4, Ljava/lang/String;

    if-ne v1, v4, :cond_54

    .line 273
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 274
    :cond_54
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v4, :cond_60

    .line 275
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_10

    .line 276
    :cond_60
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v4, :cond_6c

    .line 277
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_10

    .line 278
    :cond_6c
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v4, :cond_10

    .line 279
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_10

    :cond_78
    return-void
.end method

.method public final populateSettingsFromDeviceConfig()V
    .registers 8

    .line 286
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 287
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->type:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_2c

    .line 288
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->defaultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 289
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    iget-object v4, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->coreSettingKey:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->flag:Ljava/lang/String;

    .line 290
    invoke-static {v5, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 291
    :cond_2c
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_48

    .line 292
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->defaultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 293
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    iget-object v4, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->coreSettingKey:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->flag:Ljava/lang/String;

    .line 294
    invoke-static {v5, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 293
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    .line 295
    :cond_48
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_64

    .line 296
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->defaultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 297
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    iget-object v4, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->coreSettingKey:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->flag:Ljava/lang/String;

    .line 298
    invoke-static {v5, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    .line 297
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_6

    .line 299
    :cond_64
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_80

    .line 300
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->defaultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 301
    iget-object v4, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    iget-object v5, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->coreSettingKey:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->flag:Ljava/lang/String;

    .line 302
    invoke-static {v6, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    .line 301
    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_6

    .line 303
    :cond_80
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_6

    .line 304
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->defaultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 305
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    iget-object v4, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->coreSettingKey:Ljava/lang/String;

    .line 306
    iget-object v5, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->flag:Ljava/lang/String;

    invoke-static {v5, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 305
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_6

    :cond_9d
    return-void
.end method

.method public final sendCoreSettings()V
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 217
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 218
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/server/am/CoreSettingsObserver;->populateSettingsFromDeviceConfig()V

    .line 220
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->onCoreSettingsChange(Landroid/os/Bundle;)V

    return-void
.end method
