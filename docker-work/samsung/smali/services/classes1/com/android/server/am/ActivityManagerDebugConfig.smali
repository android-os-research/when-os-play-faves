.class public Lcom/android/server/am/ActivityManagerDebugConfig;
.super Ljava/lang/Object;
.source "ActivityManagerDebugConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerDebugConfig$DebugConfigTool;
    }
.end annotation


# static fields
.field public static final APPEND_CATEGORY_NAME:Z = false

.field public static final DEBUG_ALL:Z = false

.field public static DEBUG_ALLOWLISTS:Z = false

.field public static DEBUG_ANR:Z = false

.field public static DEBUG_BACKGROUND_CHECK:Z = false

.field public static DEBUG_BACKUP:Z = false

.field public static DEBUG_BROADCAST:Z = false

.field public static DEBUG_BROADCAST_BACKGROUND:Z = false

.field public static DEBUG_BROADCAST_DEFERRAL:Z = false

.field public static DEBUG_BROADCAST_LIGHT:Z = false

.field public static DEBUG_COMPACTION:Z = false

.field public static DEBUG_FOREGROUND_SERVICE:Z = false

.field public static DEBUG_FREEZER:Z = false

.field public static final DEBUG_KPM:Z = false

.field public static DEBUG_LRU:Z = false

.field public static DEBUG_MU:Z = false

.field public static DEBUG_NETWORK:Z = false

.field public static DEBUG_OOM_ADJ:Z = false

.field public static DEBUG_OOM_ADJ_REASON:Z = false

.field public static DEBUG_PERMISSIONS_REVIEW:Z = false

.field public static DEBUG_POWER:Z = false

.field public static DEBUG_POWER_QUICK:Z = false

.field public static DEBUG_PROCESSES:Z = false

.field public static DEBUG_PROCESS_OBSERVERS:Z = false

.field public static DEBUG_PROVIDER:Z = false

.field public static DEBUG_PSS:Z = false

.field public static DEBUG_SERVICE:Z = false

.field public static DEBUG_SERVICE_EXECUTING:Z = false

.field public static DEBUG_UID_OBSERVERS:Z = false

.field public static DEBUG_USAGE_STATS:Z = false

.field public static final POSTFIX_BACKUP:Ljava/lang/String; = ""

.field public static final POSTFIX_BROADCAST:Ljava/lang/String; = ""

.field public static final POSTFIX_CLEANUP:Ljava/lang/String; = ""

.field public static final POSTFIX_KPM:Ljava/lang/String; = "_KPM"

.field public static final POSTFIX_LRU:Ljava/lang/String; = ""

.field public static final POSTFIX_MU:Ljava/lang/String; = "_MU"

.field public static final POSTFIX_NETWORK:Ljava/lang/String; = "_Network"

.field public static final POSTFIX_OOM_ADJ:Ljava/lang/String; = ""

.field public static final POSTFIX_POWER:Ljava/lang/String; = ""

.field public static final POSTFIX_PROCESSES:Ljava/lang/String; = ""

.field public static final POSTFIX_PROCESS_OBSERVERS:Ljava/lang/String; = ""

.field public static final POSTFIX_PSS:Ljava/lang/String; = ""

.field public static final POSTFIX_SERVICE:Ljava/lang/String; = ""

.field public static final POSTFIX_SERVICE_EXECUTING:Ljava/lang/String; = ""

.field public static final POSTFIX_UID_OBSERVERS:Ljava/lang/String; = ""

.field public static final TAG_AM:Ljava/lang/String; = "ActivityManager"

.field public static final TAG_WITH_CLASS_NAME:Z = false


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 62
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_BACKGROUND:Z

    .line 63
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    .line 64
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    .line 65
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    .line 66
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    .line 67
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    .line 68
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    .line 69
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    .line 70
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    .line 71
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    .line 72
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    .line 73
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER_QUICK:Z

    .line 74
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    .line 75
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    .line 76
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    .line 77
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    .line 78
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    .line 79
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    .line 80
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    .line 81
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    .line 82
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    .line 83
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    .line 84
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALLOWLISTS:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
