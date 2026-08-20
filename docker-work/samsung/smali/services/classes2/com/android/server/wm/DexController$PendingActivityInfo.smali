.class public final Lcom/android/server/wm/DexController$PendingActivityInfo;
.super Ljava/lang/Object;
.source "DexController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DexController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PendingActivityInfo"
.end annotation


# instance fields
.field public mDisplayId:I

.field public final mFindTaskResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DexController$FindTaskResult;",
            ">;"
        }
    .end annotation
.end field

.field public mInfo:Lcom/android/server/wm/DexRestartAppInfo;

.field public final mInvisibleTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field public mIsValid:Z

.field public final mOrganizedTaskFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;"
        }
    .end annotation
.end field

.field public final mWaitingStoppedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field public final mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/wm/DexController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsValid(Lcom/android/server/wm/DexController$PendingActivityInfo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mIsValid:Z

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DexController;)V
    .registers 2

    .line 847
    iput-object p1, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->this$0:Lcom/android/server/wm/DexController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mFindTaskResultList:Ljava/util/ArrayList;

    .line 850
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingStoppedTasks:Ljava/util/ArrayList;

    .line 851
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mInvisibleTasks:Ljava/util/ArrayList;

    .line 852
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    .line 855
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public embeddedDisposed(Lcom/android/server/wm/TaskFragment;)V
    .registers 2

    .line 922
    iget-object p0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public hasEmbeddedChild()Z
    .registers 1

    .line 918
    iget-object p0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isTransitionFinished()Z
    .registers 1

    .line 907
    iget-object p0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isWaitingStoppedTasksEmpty()Z
    .registers 1

    .line 903
    iget-object p0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingStoppedTasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public removeWaitingStoppedTask(Lcom/android/server/wm/Task;Ljava/lang/String;)Z
    .registers 5

    .line 894
    iget-object v0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingStoppedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeWaitingStoppedTask: removed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", numWaitingTasks="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingStoppedTasks:Ljava/util/ArrayList;

    .line 896
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DexController"

    .line 895
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_37
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x0

    .line 926
    iput-boolean v0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mIsValid:Z

    .line 927
    iput v0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mDisplayId:I

    .line 928
    iget-object v0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mFindTaskResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 929
    iput-object v0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mInfo:Lcom/android/server/wm/DexRestartAppInfo;

    .line 930
    iget-object v0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingStoppedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 931
    iget-object v0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 932
    iget-object v0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mInvisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 933
    iget-object v0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->this$0:Lcom/android/server/wm/DexController;

    iget-object v1, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DexController;->setWaitingTransitionFinished(Ljava/util/ArrayList;)V

    .line 934
    iget-object p0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public set(Lcom/android/server/wm/DexRestartAppInfo;Ljava/util/ArrayList;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DexRestartAppInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DexController$FindTaskResult;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 859
    iput-boolean v0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mIsValid:Z

    .line 860
    iput-object p1, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mInfo:Lcom/android/server/wm/DexRestartAppInfo;

    .line 861
    iput p3, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mDisplayId:I

    if-eqz p2, :cond_93

    .line 864
    iget-object p1, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mFindTaskResultList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 866
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/DexController$FindTaskResult;

    .line 867
    iget-object p2, p2, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    .line 868
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result p3

    if-eqz p3, :cond_2f

    .line 869
    iget-object p3, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskFragments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2f
    const/4 p3, 0x0

    .line 871
    invoke-virtual {p2, p3, v0}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    .line 872
    invoke-static {}, Lcom/android/server/wm/DexController;->-$$Nest$sfgetSAFE_DEBUG()Z

    move-result v1

    const-string v2, "DexController"

    if-eqz v1, :cond_51

    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set PendingActivityInfo for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    if-eqz p3, :cond_12

    .line 876
    iget-boolean v1, p3, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v1, :cond_86

    .line 877
    invoke-static {}, Lcom/android/server/wm/DexController;->-$$Nest$sfgetSAFE_DEBUG()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add waiting task #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_73
    iget-object v1, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingStoppedTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result p2

    if-nez p2, :cond_12

    .line 882
    iget-object p2, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    iget-object p3, p3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 885
    :cond_86
    iget-object p3, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mInvisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 889
    :cond_8c
    iget-object p1, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->this$0:Lcom/android/server/wm/DexController;

    iget-object p0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DexController;->setWaitingTransitionFinished(Ljava/util/ArrayList;)V

    :cond_93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "DexRestartAppInfo "

    .line 940
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    iget-object v1, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mInfo:Lcom/android/server/wm/DexRestartAppInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "mDisplayId = "

    .line 942
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    iget v1, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mFindTaskResultList size = "

    .line 944
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    iget-object p0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mFindTaskResultList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 946
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transitionFinished()V
    .registers 3

    .line 911
    invoke-static {}, Lcom/android/server/wm/DexController;->-$$Nest$sfgetSAFE_DEBUG()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transitionFinished. caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_21
    iget-object p0, p0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
