.class public Lcom/samsung/android/bbccommon/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field private static BBCCOMMON_LIB_CURRENT_VERSION:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get_ACTION_APP_NOTIFICATION_SETTINGS()Ljava/lang/String;
    .registers 1

    const-string v0, "android.settings.APP_NOTIFICATION_SETTINGS"

    return-object v0
.end method

.method public static get_ACTION_CALL_EMERGENCY()Ljava/lang/String;
    .registers 1

    const-string v0, "android.intent.action.CALL_EMERGENCY"

    return-object v0
.end method

.method public static get_ACTION_CALL_PRIVILEGED()Ljava/lang/String;
    .registers 1

    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    return-object v0
.end method

.method public static get_ACTION_NOTIFICATION_SETTINGS()Ljava/lang/String;
    .registers 1

    const-string v0, "android.settings.NOTIFICATION_SETTINGS"

    return-object v0
.end method

.method public static get_CURRENT_VERSION()I
    .registers 1

    .line 58
    sget v0, Lcom/samsung/android/bbccommon/Constants;->BBCCOMMON_LIB_CURRENT_VERSION:I

    return v0
.end method

.method public static get_ERROR_CREATE_PERSONA_MAX_PERSONA_LIMIT_REACHED()I
    .registers 1

    const/16 v0, -0x3f4

    return v0
.end method

.method public static get_EXTRA_USER_HANDLE()Ljava/lang/String;
    .registers 1

    const-string v0, "android.intent.extra.user_handle"

    return-object v0
.end method

.method public static get_USER_OWNER()I
    .registers 1

    const/4 v0, 0x0

    return v0
.end method
