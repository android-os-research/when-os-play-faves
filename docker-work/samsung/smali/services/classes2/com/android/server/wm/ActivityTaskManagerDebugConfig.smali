.class public Lcom/android/server/wm/ActivityTaskManagerDebugConfig;
.super Ljava/lang/Object;
.source "ActivityTaskManagerDebugConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityTaskManagerDebugConfig$DebugConfigTool;
    }
.end annotation


# static fields
.field public static final APPEND_CATEGORY_NAME:Z = false

.field public static DEBUG_ACTIVITY_STARTS:Z = false

.field public static final DEBUG_ALL:Z = false

.field public static DEBUG_ALL_ACTIVITIES:Z = false

.field public static DEBUG_APP:Z = false

.field public static DEBUG_CLEANUP:Z = false

.field public static DEBUG_IDLE:Z = false

.field public static DEBUG_METRICS:Z = false

.field public static DEBUG_PERMISSIONS_REVIEW:Z = false

.field public static DEBUG_RECENTS:Z = false

.field public static DEBUG_RECENTS_TRIM_TASKS:Z = false

.field public static DEBUG_RELEASE:Z = false

.field public static DEBUG_RESULTS:Z = false

.field public static DEBUG_ROOT_TASK:Z = false

.field public static final DEBUG_SCREENSHOTS:Z

.field public static DEBUG_SWITCH:Z = false

.field public static DEBUG_TRANSITION:Z = false

.field public static DEBUG_USER_LEAVING:Z = false

.field public static DEBUG_VISIBILITY:Z = false

.field public static final POSTFIX_ADD_REMOVE:Ljava/lang/String; = ""

.field public static final POSTFIX_APP:Ljava/lang/String; = ""

.field public static final POSTFIX_CLEANUP:Ljava/lang/String; = ""

.field public static final POSTFIX_CONFIGURATION:Ljava/lang/String; = ""

.field public static final POSTFIX_CONTAINERS:Ljava/lang/String; = ""

.field public static final POSTFIX_FOCUS:Ljava/lang/String; = ""

.field public static final POSTFIX_IDLE:Ljava/lang/String; = ""

.field public static final POSTFIX_IMMERSIVE:Ljava/lang/String; = ""

.field public static final POSTFIX_LOCKTASK:Ljava/lang/String; = ""

.field public static final POSTFIX_PAUSE:Ljava/lang/String; = ""

.field public static final POSTFIX_RECENTS:Ljava/lang/String; = ""

.field public static final POSTFIX_RELEASE:Ljava/lang/String; = ""

.field public static final POSTFIX_RESULTS:Ljava/lang/String; = ""

.field public static final POSTFIX_ROOT_TASK:Ljava/lang/String; = ""

.field public static final POSTFIX_SAVED_STATE:Ljava/lang/String; = ""

.field public static final POSTFIX_SCREENSHOTS:Ljava/lang/String; = ""

.field public static final POSTFIX_STATES:Ljava/lang/String; = ""

.field public static final POSTFIX_SWITCH:Ljava/lang/String; = ""

.field public static final POSTFIX_TASKS:Ljava/lang/String; = ""

.field public static final POSTFIX_TRANSITION:Ljava/lang/String; = ""

.field public static final POSTFIX_USER_LEAVING:Ljava/lang/String; = ""

.field public static final POSTFIX_VISIBILITY:Ljava/lang/String; = ""

.field public static final TAG_ATM:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_WITH_CLASS_NAME:Z = false


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEBUG_ALL_ACTIVITIES()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfputDEBUG_ALL_ACTIVITIES(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 57
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    .line 58
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    .line 59
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    .line 60
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    .line 61
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    .line 62
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    .line 63
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    .line 64
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    .line 65
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    .line 66
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    .line 67
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    .line 68
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    .line 69
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    .line 70
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    .line 103
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SCREENSHOTS:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
