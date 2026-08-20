.class public final Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;
.super Ljava/lang/Object;
.source "ActivityTaskManagerService.java"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SleepTokenAcquirerImpl"
.end annotation


# instance fields
.field public final mSleepTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/RootWindowContainer$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field public final mTag:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V
    .registers 3

    .line 5910
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5907
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mSleepTokens:Landroid/util/SparseArray;

    .line 5911
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public acquire(I)V
    .registers 6

    .line 5916
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5917
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 5918
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mSleepTokens:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mTag:Ljava/lang/String;

    .line 5919
    invoke-virtual {v2, v3, p1}, Lcom/android/server/wm/RootWindowContainer;->createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/RootWindowContainer$SleepToken;

    move-result-object v2

    .line 5918
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 5920
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 5922
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public release(I)V
    .registers 5

    .line 5927
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5928
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    if-eqz v1, :cond_1e

    .line 5930
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->removeSleepToken(Lcom/android/server/wm/RootWindowContainer$SleepToken;)V

    .line 5931
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5933
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_23
    move-exception p0

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
