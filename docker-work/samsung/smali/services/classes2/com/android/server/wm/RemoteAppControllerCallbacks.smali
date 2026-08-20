.class public interface abstract Lcom/android/server/wm/RemoteAppControllerCallbacks;
.super Ljava/lang/Object;
.source "RemoteAppControllerCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RemoteAppControllerCallbacks$InterceptReason;
    }
.end annotation


# static fields
.field public static final INTERCEPT_REASON_APP_REQUESTED:I = 0x4

.field public static final INTERCEPT_REASON_OTHER_TASK_EXISTS_IN_REMOTE_APP_DISPLAY:I = 0x1

.field public static final INTERCEPT_REASON_TASK_IS_MOVING_TO_DEFAULT_DISPLAY:I = 0x2

.field public static final INTERCEPT_REASON_TASK_IS_MOVING_TO_REMOTE_APP_DISPLAY:I = 0x3

.field public static final INTERCEPT_REASON_UNDEFINED:I


# direct methods
.method public static interceptReasonToString(I)Ljava/lang/String;
    .registers 2
    .param p0    # I
        .annotation build Lcom/android/server/wm/RemoteAppControllerCallbacks$InterceptReason;
        .end annotation
    .end param

    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_19

    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    const/4 v0, 0x4

    if-eq p0, v0, :cond_13

    .line 120
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const-string p0, "INTERCEPT_REASON_APP_REQUESTED"

    return-object p0

    :cond_16
    const-string p0, "TASK_IS_MOVING_TO_REMOTE_APP_DISPLAY"

    return-object p0

    :cond_19
    const-string p0, "TASK_IS_MOVING_TO_DEFAULT_DISPLAY"

    return-object p0

    :cond_1c
    const-string p0, "OTHER_TASK_EXISTS_IN_REMOTE_APP_DISPLAY"

    return-object p0

    :cond_1f
    const-string p0, "UNDEFINED"

    return-object p0
.end method


# virtual methods
.method public onMoveTaskToBackLocked(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onStartActivityInterceptedLocked(Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/pm/ActivityInfo;IZLandroid/app/ActivityManager$RunningTaskInfo;Lcom/android/server/wm/RemoteAppController$CallerInfo;Lcom/android/server/uri/NeededUriGrants;II)Z
    .registers 11
    .param p10    # I
        .annotation build Lcom/android/server/wm/RemoteAppControllerCallbacks$InterceptReason;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method
