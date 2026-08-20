.class Lcom/samsung/android/game/FgCheckThread$2;
.super Landroid/app/TaskStackListener;
.source "FgCheckThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/FgCheckThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/FgCheckThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/FgCheckThread;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/game/FgCheckThread;

    .line 86
    iput-object p1, p0, Lcom/samsung/android/game/FgCheckThread$2;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method private sendRunningComponentFocus(I)V
    .registers 10
    .param p1, "taskId"    # I

    .line 98
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$2;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # getter for: Lcom/samsung/android/game/FgCheckThread;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v0}, Lcom/samsung/android/game/FgCheckThread;->access$000(Lcom/samsung/android/game/FgCheckThread;)Landroid/app/ActivityManager;

    move-result-object v0

    const-string v1, "FgCheckThread"

    if-nez v0, :cond_10

    .line 99
    const-string v0, "sendRunningComponentFocus(), ActivityManager is null."

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    .line 103
    :cond_10
    const/4 v0, 0x0

    .line 104
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v2, -0x1

    .line 105
    .local v2, "userId":I
    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread$2;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # getter for: Lcom/samsung/android/game/FgCheckThread;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v3}, Lcom/samsung/android/game/FgCheckThread;->access$000(Lcom/samsung/android/game/FgCheckThread;)Landroid/app/ActivityManager;

    move-result-object v3

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 106
    .local v3, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_70

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_70

    .line 107
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_28
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6f

    .line 108
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 109
    .local v5, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v5, :cond_6c

    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_6c

    iget v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, v6, :cond_6c

    .line 110
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget v2, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 112
    iget-object v6, p0, Lcom/samsung/android/game/FgCheckThread$2;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # setter for: Lcom/samsung/android/game/FgCheckThread;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-static {v6, v5}, Lcom/samsung/android/game/FgCheckThread;->access$102(Lcom/samsung/android/game/FgCheckThread;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  sendRunningComponentFocus(), pkgName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", userId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    goto :goto_6f

    .line 107
    .end local v5    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .end local v4    # "i":I
    :cond_6f
    :goto_6f
    goto :goto_75

    .line 118
    :cond_70
    const-string v4, "  sendRunningComponentFocus(), ActivityManager.getRunningTasks is null."

    invoke-static {v1, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_75
    if-eqz v0, :cond_82

    .line 122
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread$2;->this$0:Lcom/samsung/android/game/FgCheckThread;

    new-instance v4, Lcom/samsung/android/game/PkgWithUserId;

    invoke-direct {v4, v0, v2}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/game/FgCheckThread;->sendFocusedMessage(Lcom/samsung/android/game/PkgWithUserId;)V

    goto :goto_87

    .line 124
    :cond_82
    const-string v4, "  sendRunningComponentFocus(), componentName is null."

    invoke-static {v1, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_87
    return-void
.end method


# virtual methods
.method public onTaskFocusChanged(IZ)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "focused"    # Z

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskStackListener.onTaskFocusChanged(), taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FgCheckThread"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    if-nez p2, :cond_25

    .line 92
    return-void

    .line 94
    :cond_25
    invoke-direct {p0, p1}, Lcom/samsung/android/game/FgCheckThread$2;->sendRunningComponentFocus(I)V

    .line 95
    return-void
.end method
