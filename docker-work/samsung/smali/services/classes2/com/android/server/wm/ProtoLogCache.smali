.class public Lcom/android/server/wm/ProtoLogCache;
.super Ljava/lang/Object;
.source "ProtoLogCache.java"


# static fields
.field public static TEST_GROUP_enabled:Z = false

.field public static WM_DEBUG_ADD_REMOVE_enabled:Z = false

.field public static WM_DEBUG_ANIM_enabled:Z = false

.field public static WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z = false

.field public static WM_DEBUG_APP_TRANSITIONS_enabled:Z = false

.field public static WM_DEBUG_BACK_PREVIEW_enabled:Z = false

.field public static WM_DEBUG_BOOT_enabled:Z = false

.field public static WM_DEBUG_CONFIGURATION_enabled:Z = false

.field public static WM_DEBUG_CONTAINERS_enabled:Z = false

.field public static WM_DEBUG_CONTENT_RECORDING_enabled:Z = false

.field public static WM_DEBUG_DRAW_enabled:Z = false

.field public static WM_DEBUG_FOCUS_LIGHT_enabled:Z = false

.field public static WM_DEBUG_FOCUS_enabled:Z = false

.field public static WM_DEBUG_IME_enabled:Z = false

.field public static WM_DEBUG_IMMERSIVE_enabled:Z = false

.field public static WM_DEBUG_KEEP_SCREEN_ON_enabled:Z = false

.field public static WM_DEBUG_LOCKTASK_enabled:Z = false

.field public static WM_DEBUG_ORIENTATION_enabled:Z = false

.field public static WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z = false

.field public static WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z = false

.field public static WM_DEBUG_RESIZE_enabled:Z = false

.field public static WM_DEBUG_SCREEN_ON_enabled:Z = false

.field public static WM_DEBUG_STARTING_WINDOW_enabled:Z = false

.field public static WM_DEBUG_STATES_enabled:Z = false

.field public static WM_DEBUG_SWITCH_enabled:Z = false

.field public static WM_DEBUG_SYNC_ENGINE_enabled:Z = false

.field public static WM_DEBUG_TASKS_enabled:Z = false

.field public static WM_DEBUG_WALLPAPER_enabled:Z = false

.field public static WM_DEBUG_WINDOW_INSETS_enabled:Z = false

.field public static WM_DEBUG_WINDOW_MOVEMENT_enabled:Z = false

.field public static WM_DEBUG_WINDOW_ORGANIZER_enabled:Z = false

.field public static WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z = false

.field public static WM_ERROR_enabled:Z = false

.field public static WM_FORCE_DEBUG_ADD_REMOVE_enabled:Z = false

.field public static WM_FORCE_DEBUG_ANIM_enabled:Z = false

.field public static WM_FORCE_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z = false

.field public static WM_FORCE_DEBUG_APP_TRANSITIONS_enabled:Z = false

.field public static WM_FORCE_DEBUG_BOOT_enabled:Z = false

.field public static WM_FORCE_DEBUG_CONFIGURATION_enabled:Z = false

.field public static WM_FORCE_DEBUG_DRAW_enabled:Z = false

.field public static WM_FORCE_DEBUG_FOCUS_LIGHT_enabled:Z = false

.field public static WM_FORCE_DEBUG_FOCUS_enabled:Z = false

.field public static WM_FORCE_DEBUG_IME_enabled:Z = false

.field public static WM_FORCE_DEBUG_KEEP_SCREEN_ON_enabled:Z = false

.field public static WM_FORCE_DEBUG_ORIENTATION_enabled:Z = false

.field public static WM_FORCE_DEBUG_RECENTS_ANIMATIONS_enabled:Z = false

.field public static WM_FORCE_DEBUG_REMOTE_ANIMATIONS_enabled:Z = false

.field public static WM_FORCE_DEBUG_RESIZE_enabled:Z = false

.field public static WM_FORCE_DEBUG_SCREEN_ON_enabled:Z = false

.field public static WM_FORCE_DEBUG_STARTING_WINDOW_enabled:Z = false

.field public static WM_FORCE_DEBUG_WINDOW_MOVEMENT_enabled:Z = false

.field public static WM_FORCE_SHOW_SURFACE_ALLOC_enabled:Z = false

.field public static WM_FORCE_SHOW_TRANSACTIONS_enabled:Z = false

.field public static WM_SHOW_SURFACE_ALLOC_enabled:Z = false

.field public static WM_SHOW_TRANSACTIONS_enabled:Z = false


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lcom/android/server/wm/ProtoLogCache$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/ProtoLogCache$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/protolog/ProtoLogImpl;->sCacheUpdater:Ljava/lang/Runnable;

    .line 62
    invoke-static {}, Lcom/android/server/wm/ProtoLogCache;->update()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static update()V
    .registers 1

    .line 66
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_ERROR_enabled:Z

    .line 67
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    .line 68
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    .line 69
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BOOT:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BOOT_enabled:Z

    .line 70
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RESIZE_enabled:Z

    .line 71
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    .line 72
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    .line 73
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SWITCH:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SWITCH_enabled:Z

    .line 74
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTAINERS_enabled:Z

    .line 75
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_enabled:Z

    .line 76
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IMMERSIVE_enabled:Z

    .line 77
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    .line 78
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    .line 79
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    .line 80
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    .line 81
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    .line 82
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    .line 83
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    .line 84
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    .line 85
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    .line 86
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    .line 87
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_DRAW:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_DRAW_enabled:Z

    .line 88
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    .line 89
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SCREEN_ON_enabled:Z

    .line 90
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:Z

    .line 91
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_MOVEMENT_enabled:Z

    .line 92
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    .line 93
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    .line 94
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    .line 95
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    .line 96
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_INSETS_enabled:Z

    .line 97
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTENT_RECORDING_enabled:Z

    .line 98
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    .line 99
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    .line 100
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_ORIENTATION_enabled:Z

    .line 101
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_FOCUS_LIGHT_enabled:Z

    .line 102
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_BOOT:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_BOOT_enabled:Z

    .line 103
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_RESIZE_enabled:Z

    .line 104
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_ADD_REMOVE_enabled:Z

    .line 105
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_CONFIGURATION_enabled:Z

    .line 106
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_FOCUS_enabled:Z

    .line 107
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_STARTING_WINDOW_enabled:Z

    .line 108
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_SHOW_TRANSACTIONS_enabled:Z

    .line 109
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_SHOW_SURFACE_ALLOC_enabled:Z

    .line 110
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_APP_TRANSITIONS_enabled:Z

    .line 111
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    .line 112
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    .line 113
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_DRAW:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_DRAW_enabled:Z

    .line 114
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    .line 115
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_SCREEN_ON_enabled:Z

    .line 116
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_KEEP_SCREEN_ON_enabled:Z

    .line 117
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_WINDOW_MOVEMENT_enabled:Z

    .line 118
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_IME_enabled:Z

    .line 119
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_ANIM_enabled:Z

    .line 120
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->TEST_GROUP:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->TEST_GROUP_enabled:Z

    return-void
.end method
