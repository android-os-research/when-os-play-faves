.class public Lcom/android/server/wm/WindowManagerDebugConfig;
.super Ljava/lang/Object;
.source "WindowManagerDebugConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowManagerDebugConfig$DebugConfigTool;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static DEBUG_CONFIGURATION:Z = false

.field public static DEBUG_DISPLAY:Z = false

.field public static DEBUG_DRAG:Z = true

.field public static DEBUG_INPUT:Z = false

.field public static DEBUG_INPUT_METHOD:Z = false

.field public static DEBUG_LAYERS:Z = false

.field public static DEBUG_LAYOUT:Z = false

.field public static DEBUG_LAYOUT_REPEATS:Z = false

.field public static DEBUG_POWER:Z = false

.field public static DEBUG_ROOT_TASK:Z = false

.field public static DEBUG_SCREENSHOT:Z = false

.field public static DEBUG_STARTING_WINDOW_VERBOSE:Z = false

.field public static DEBUG_TASK_MOVEMENT:Z = false

.field public static DEBUG_TASK_POSITIONING:Z = false

.field public static DEBUG_UNKNOWN_APP_VISIBILITY:Z = false

.field public static DEBUG_VISIBILITY:Z = false

.field public static DEBUG_WALLPAPER:Z = false

.field public static DEBUG_WINDOW_CROP:Z = false

.field public static DEBUG_WINDOW_TRACE:Z = false

.field public static SHOW_LIGHT_TRANSACTIONS:Z = false

.field public static SHOW_STACK_CRAWLS:Z = false

.field public static SHOW_VERBOSE_TRANSACTIONS:Z = false

.field public static final TAG_WITH_CLASS_NAME:Z = false

.field public static final TAG_WM:Ljava/lang/String; = "WindowManager"


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
