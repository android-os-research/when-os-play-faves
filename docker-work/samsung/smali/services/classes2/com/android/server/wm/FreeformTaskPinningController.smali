.class public Lcom/android/server/wm/FreeformTaskPinningController;
.super Ljava/lang/Object;
.source "FreeformTaskPinningController.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "FreeformTaskPinningController"


# instance fields
.field public mPinnedTask:Lcom/android/server/wm/Task;

.field public final mTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 33
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/FreeformTaskPinningController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 p0, 0x1

    .line 40
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ConfigurationContainer;->setFreeformTaskPinning(I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mPinnedTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_5

    return-void

    .line 97
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "FreeformTaskPinningController :"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mPinnedTask :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mPinnedTask:Lcom/android/server/wm/Task;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final hasTaskPinned()Z
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mPinnedTask:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public startPinning(Lcom/android/server/wm/Task;)V
    .registers 6

    .line 44
    invoke-virtual {p0}, Lcom/android/server/wm/FreeformTaskPinningController;->hasTaskPinned()Z

    move-result v0

    const-string v1, "FreeformTaskPinningController"

    if-eqz v0, :cond_e

    const-string p0, "Failed to start freeform task pinning, already pinned"

    .line 45
    invoke-static {v1, p0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_1a

    const-string p0, "Failed to start freeform task pinning, task isn\'t in freeform."

    .line 49
    invoke-static {v1, p0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 52
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_28

    const-string p0, "Failed to start freeform task pinning, it\'s not in dex mode."

    .line 53
    invoke-static {v1, p0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 57
    :cond_28
    sget-boolean v0, Lcom/android/server/wm/FreeformTaskPinningController;->DEBUG:Z

    if-eqz v0, :cond_43

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startFreeformTaskPinning : taskId #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    const/4 v0, 0x2

    .line 60
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ConfigurationContainer;->setFreeformTaskPinning(I)V

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConfigurationContainer;->setFreeformTaskPinning(I)V

    .line 63
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5c

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 66
    :cond_5c
    iget-object v0, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v1, v3}, Lcom/android/server/wm/TaskDisplayArea;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 68
    iput-object p1, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mPinnedTask:Lcom/android/server/wm/Task;

    return-void
.end method

.method public stopPinning(Lcom/android/server/wm/Task;ZLjava/lang/String;)V
    .registers 7

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mPinnedTask:Lcom/android/server/wm/Task;

    const-string v1, "FreeformTaskPinningController"

    if-eq v0, p1, :cond_c

    const-string p0, "Failed to stop freeform task pinning, task requested isn\'t in pinning mode."

    .line 73
    invoke-static {v1, p0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 77
    :cond_c
    sget-boolean v0, Lcom/android/server/wm/FreeformTaskPinningController;->DEBUG:Z

    if-eqz v0, :cond_2f

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopFreeformTaskPinning : taskId #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_2f
    iget-object p3, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/android/server/wm/ConfigurationContainer;->setFreeformTaskPinning(I)V

    const/4 p3, 0x0

    .line 81
    invoke-virtual {p1, p3}, Lcom/android/server/wm/ConfigurationContainer;->setFreeformTaskPinning(I)V

    const/4 p1, 0x0

    if-eqz p2, :cond_41

    .line 84
    iget-object p2, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {p2, p1, p3, p3, v0}, Lcom/android/server/wm/TaskDisplayArea;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 86
    :cond_41
    iput-object p1, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mPinnedTask:Lcom/android/server/wm/Task;

    return-void
.end method
