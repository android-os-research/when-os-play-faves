.class public Lcom/android/server/wm/EnsureActivitiesVisibleInActivityGroupHelper;
.super Lcom/android/server/wm/EnsureActivitiesVisibleHelper;
.source "EnsureActivitiesVisibleInActivityGroupHelper.java"


# instance fields
.field public mGroup:Lcom/android/server/wm/ActivityRecordGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;-><init>(Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecordGroup;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/wm/EnsureActivitiesVisibleInActivityGroupHelper;-><init>(Lcom/android/server/wm/Task;)V

    .line 31
    iput-object p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleInActivityGroupHelper;->mGroup:Lcom/android/server/wm/ActivityRecordGroup;

    return-void
.end method


# virtual methods
.method public topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleInActivityGroupHelper;->mGroup:Lcom/android/server/wm/ActivityRecordGroup;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecordGroup;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method
