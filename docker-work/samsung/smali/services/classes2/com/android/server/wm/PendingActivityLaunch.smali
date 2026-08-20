.class public Lcom/android/server/wm/PendingActivityLaunch;
.super Ljava/lang/Object;
.source "DexRestartAppInfo.java"


# instance fields
.field public final callerApp:Lcom/android/server/wm/WindowProcessController;

.field public final intentGrants:Lcom/android/server/uri/NeededUriGrants;

.field public final r:Lcom/android/server/wm/ActivityRecord;

.field public final rootTask:Lcom/android/server/wm/Task;

.field public final sourceRecord:Lcom/android/server/wm/ActivityRecord;

.field public final startFlags:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/uri/NeededUriGrants;)V
    .registers 7

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/android/server/wm/PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    .line 150
    iput-object p2, p0, Lcom/android/server/wm/PendingActivityLaunch;->sourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 151
    iput p3, p0, Lcom/android/server/wm/PendingActivityLaunch;->startFlags:I

    .line 152
    iput-object p4, p0, Lcom/android/server/wm/PendingActivityLaunch;->rootTask:Lcom/android/server/wm/Task;

    .line 153
    iput-object p5, p0, Lcom/android/server/wm/PendingActivityLaunch;->callerApp:Lcom/android/server/wm/WindowProcessController;

    .line 154
    iput-object p6, p0, Lcom/android/server/wm/PendingActivityLaunch;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    return-void
.end method
