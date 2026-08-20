.class public Lcom/android/server/wm/ActivityTaskManagerDebugConfig$DebugConfigTool;
.super Ljava/lang/Object;
.source "ActivityTaskManagerDebugConfig.java"

# interfaces
.implements Lcom/android/server/am/AppcoreLoggingTool$DebugConfigTool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerDebugConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugConfigTool"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDebugConfigSize()I
    .registers 1

    const/16 p0, 0xc

    return p0
.end method

.method public reconfigureDebug([Z)V
    .registers 2

    const/4 p0, 0x0

    .line 82
    aget-boolean p0, p1, p0

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->-$$Nest$sfputDEBUG_ALL_ACTIVITIES(Z)V

    const/4 p0, 0x1

    .line 83
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    .line 84
    sput-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    const/4 p0, 0x2

    .line 85
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    const/4 p0, 0x3

    .line 86
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const/4 p0, 0x4

    .line 87
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    const/4 p0, 0x5

    .line 88
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    .line 89
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->-$$Nest$sfgetDEBUG_ALL_ACTIVITIES()Z

    move-result p0

    sput-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    .line 90
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->-$$Nest$sfgetDEBUG_ALL_ACTIVITIES()Z

    move-result p0

    sput-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    .line 91
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->-$$Nest$sfgetDEBUG_ALL_ACTIVITIES()Z

    move-result p0

    sput-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    const/4 p0, 0x6

    .line 92
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    const/4 p0, 0x7

    .line 93
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    const/16 p0, 0x8

    .line 94
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    const/16 p0, 0x9

    .line 95
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    const/16 p0, 0xa

    .line 96
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    const/16 p0, 0xb

    .line 97
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    return-void
.end method
