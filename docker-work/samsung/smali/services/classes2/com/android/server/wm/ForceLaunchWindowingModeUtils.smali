.class public Lcom/android/server/wm/ForceLaunchWindowingModeUtils;
.super Ljava/lang/Object;
.source "ForceLaunchWindowingModeUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-eqz p2, :cond_d

    .line 46
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    :cond_d
    if-eqz p1, :cond_21

    .line 51
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindowInDefaultDisplayArea()Z

    move-result p2

    if-eqz p2, :cond_20

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 52
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result p0

    return p0

    :cond_20
    return v0

    :cond_21
    if-eqz p2, :cond_34

    .line 57
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDefaultDisplayArea()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 58
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result p0

    return p0

    :cond_34
    return v0
.end method

.method public static shouldApplyForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z
    .registers 3

    .line 29
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/ForceLaunchWindowingModeUtils;->resolveForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result p0

    if-eqz p0, :cond_10

    if-eqz p2, :cond_e

    .line 31
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    if-eq p1, p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static shouldDismissSplitBeforeLaunch(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, p1, v0}, Lcom/android/server/wm/ForceLaunchWindowingModeUtils;->resolveForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method
