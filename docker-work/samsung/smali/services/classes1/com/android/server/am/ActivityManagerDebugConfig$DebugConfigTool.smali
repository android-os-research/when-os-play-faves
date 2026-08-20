.class public Lcom/android/server/am/ActivityManagerDebugConfig$DebugConfigTool;
.super Ljava/lang/Object;
.source "ActivityManagerDebugConfig.java"

# interfaces
.implements Lcom/android/server/am/AppcoreLoggingTool$DebugConfigTool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerDebugConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugConfigTool"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDebugConfigSize()I
    .registers 1

    const/16 p0, 0x17

    return p0
.end method

.method public reconfigureDebug([Z)V
    .registers 2

    const/4 p0, 0x0

    .line 96
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    const/4 p0, 0x1

    .line 97
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    const/4 p0, 0x2

    .line 98
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    const/4 p0, 0x3

    .line 99
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    .line 100
    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_BACKGROUND:Z

    .line 101
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    .line 102
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    const/4 p0, 0x4

    .line 103
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    const/4 p0, 0x5

    .line 104
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    const/4 p0, 0x6

    .line 105
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    const/4 p0, 0x7

    .line 106
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    const/16 p0, 0x8

    .line 107
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    const/16 p0, 0x9

    .line 108
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    const/16 p0, 0xa

    .line 109
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    const/16 p0, 0xb

    .line 110
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    .line 111
    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER_QUICK:Z

    const/16 p0, 0xc

    .line 112
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    const/16 p0, 0xd

    .line 113
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    const/16 p0, 0xe

    .line 114
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    const/16 p0, 0xf

    .line 115
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    const/16 p0, 0x10

    .line 116
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const/16 p0, 0x11

    .line 117
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    const/16 p0, 0x12

    .line 118
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    const/16 p0, 0x13

    .line 119
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    const/16 p0, 0x14

    .line 120
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    const/16 p0, 0x15

    .line 121
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    const/16 p0, 0x16

    .line 122
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALLOWLISTS:Z

    return-void
.end method
