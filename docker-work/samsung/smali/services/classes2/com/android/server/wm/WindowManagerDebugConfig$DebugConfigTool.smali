.class public Lcom/android/server/wm/WindowManagerDebugConfig$DebugConfigTool;
.super Ljava/lang/Object;
.source "WindowManagerDebugConfig.java"

# interfaces
.implements Lcom/android/server/am/AppcoreLoggingTool$DebugConfigTool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerDebugConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugConfigTool"
.end annotation


# static fields
.field public static final SIZE_FOR_S:I = 0x18


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompatibleValues([ZLcom/android/server/am/AppcoreLoggingTool$Version;)[Z
    .registers 7

    .line 108
    sget-object v0, Lcom/android/server/am/AppcoreLoggingTool$Version;->S:Lcom/android/server/am/AppcoreLoggingTool$Version;

    if-ne p2, v0, :cond_22

    array-length p2, p1

    const/16 v0, 0x18

    if-ne p2, v0, :cond_22

    .line 109
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerDebugConfig$DebugConfigTool;->getDebugConfigSize()I

    move-result p0

    new-array p0, p0, [Z

    const/4 p2, 0x0

    move v1, p2

    :goto_11
    if-ge p2, v0, :cond_21

    const/4 v2, 0x2

    if-ne p2, v2, :cond_17

    goto :goto_1e

    :cond_17
    add-int/lit8 v2, v1, 0x1

    .line 116
    aget-boolean v3, p1, p2

    aput-boolean v3, p0, v1

    move v1, v2

    :goto_1e
    add-int/lit8 p2, p2, 0x1

    goto :goto_11

    :cond_21
    return-object p0

    :cond_22
    return-object p1
.end method

.method public getDebugConfigSize()I
    .registers 1

    const/16 p0, 0x17

    return p0
.end method

.method public reconfigureDebug([Z)V
    .registers 2

    const/4 p0, 0x0

    .line 81
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    const/4 p0, 0x1

    .line 82
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    const/4 p0, 0x2

    .line 83
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    const/4 p0, 0x3

    .line 84
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    const/4 p0, 0x4

    .line 85
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    const/4 p0, 0x5

    .line 86
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const/4 p0, 0x6

    .line 87
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    const/4 p0, 0x7

    .line 88
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    const/16 p0, 0x8

    .line 89
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    const/16 p0, 0x9

    .line 90
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    const/16 p0, 0xa

    .line 91
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    const/16 p0, 0xb

    .line 92
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    const/16 p0, 0xc

    .line 93
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    const/16 p0, 0xd

    .line 94
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    const/16 p0, 0xe

    .line 95
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    const/16 p0, 0xf

    .line 96
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    const/16 p0, 0x10

    .line 97
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    const/16 p0, 0x11

    .line 98
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_POWER:Z

    const/16 p0, 0x12

    .line 99
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_VERBOSE_TRANSACTIONS:Z

    const/16 p0, 0x13

    .line 100
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    const/16 p0, 0x14

    .line 101
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    const/16 p0, 0x15

    .line 102
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    const/16 p0, 0x16

    .line 103
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_UNKNOWN_APP_VISIBILITY:Z

    return-void
.end method
