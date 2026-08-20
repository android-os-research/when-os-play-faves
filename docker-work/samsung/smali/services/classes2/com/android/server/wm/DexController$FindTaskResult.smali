.class public final Lcom/android/server/wm/DexController$FindTaskResult;
.super Ljava/lang/Object;
.source "DexController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DexController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FindTaskResult"
.end annotation


# instance fields
.field public final mIsRootTask:Z

.field public final mProcessName:Ljava/lang/String;

.field public final mTargetDisplayId:I

.field public final mTask:Lcom/android/server/wm/Task;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/wm/DexController;


# direct methods
.method public static synthetic $r8$lambda$AAC8ybZca6y57xiZU5TjF2ZFZTY(Lcom/android/server/wm/DexController$FindTaskResult;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DexController$FindTaskResult;->lambda$execute$0(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DexController;Lcom/android/server/wm/ActivityRecord;I)V
    .registers 4

    .line 1646
    iput-object p1, p0, Lcom/android/server/wm/DexController$FindTaskResult;->this$0:Lcom/android/server/wm/DexController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1647
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    .line 1648
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mIsRootTask:Z

    .line 1649
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mUid:I

    .line 1650
    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mProcessName:Ljava/lang/String;

    .line 1651
    iput p3, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mTargetDisplayId:I

    return-void
.end method

.method private synthetic lambda$execute$0(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 1666
    iget-object v0, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mProcessName:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p2

    iget v0, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mUid:I

    if-ne p2, v0, :cond_1b

    .line 1667
    iget-object p0, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .registers 5

    .line 1659
    iget-boolean v0, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mIsRootTask:Z

    if-eqz v0, :cond_24

    .line 1660
    iget-object v0, p0, Lcom/android/server/wm/DexController$FindTaskResult;->this$0:Lcom/android/server/wm/DexController;

    invoke-static {v0}, Lcom/android/server/wm/DexController;->-$$Nest$fgetmPendingActivityInfo(Lcom/android/server/wm/DexController;)Lcom/android/server/wm/DexController$PendingActivityInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mInfo:Lcom/android/server/wm/DexRestartAppInfo;

    if-eqz v0, :cond_19

    .line 1661
    iget-object v0, p0, Lcom/android/server/wm/DexController$FindTaskResult;->this$0:Lcom/android/server/wm/DexController;

    invoke-static {v0}, Lcom/android/server/wm/DexController;->-$$Nest$fgetmPendingActivityInfo(Lcom/android/server/wm/DexController;)Lcom/android/server/wm/DexController$PendingActivityInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mInfo:Lcom/android/server/wm/DexRestartAppInfo;

    iget-object v0, v0, Lcom/android/server/wm/DexRestartAppInfo;->mOptions:Landroid/app/ActivityOptions;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 1662
    :goto_1a
    iget-object v1, p0, Lcom/android/server/wm/DexController$FindTaskResult;->this$0:Lcom/android/server/wm/DexController;

    iget-object v2, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    iget p0, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mTargetDisplayId:I

    invoke-virtual {v1, v2, p0, p1, v0}, Lcom/android/server/wm/DexController;->moveTaskToDisplayBackLocked(Lcom/android/server/wm/Task;ILjava/lang/String;Landroid/app/ActivityOptions;)V

    goto :goto_68

    .line 1664
    :cond_24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 1665
    iget-object v1, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    new-instance v2, Lcom/android/server/wm/DexController$FindTaskResult$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/DexController$FindTaskResult$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DexController$FindTaskResult;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1671
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_68

    .line 1672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FindTaskResult_execute: performClear(Ndx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "), "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", reason="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    iget-object p0, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->removeActivities(Ljava/lang/String;Z)V

    :cond_68
    :goto_68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " targetDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mTargetDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isRoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mIsRootTask:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
