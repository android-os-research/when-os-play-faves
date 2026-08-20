.class public final Lcom/android/server/wm/TaskSystemBarsListenerController;
.super Ljava/lang/Object;
.source "TaskSystemBarsListenerController.java"


# instance fields
.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0eiHwD9gWMW1p1JvymRanBSUxTg(Ljava/util/HashSet;IZZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/TaskSystemBarsListenerController;->lambda$dispatchTransientSystemBarVisibilityChanged$0(Ljava/util/HashSet;IZZ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSystemBarsListenerController;->mListeners:Ljava/util/HashSet;

    .line 36
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskSystemBarsListenerController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic lambda$dispatchTransientSystemBarVisibilityChanged$0(Ljava/util/HashSet;IZZ)V
    .registers 5

    .line 55
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;

    .line 56
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;->onTransientSystemBarsVisibilityChanged(IZZ)V

    goto :goto_4

    :cond_14
    return-void
.end method


# virtual methods
.method public dispatchTransientSystemBarVisibilityChanged(IZZ)V
    .registers 6

    .line 52
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/wm/TaskSystemBarsListenerController;->mListeners:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 54
    iget-object p0, p0, Lcom/android/server/wm/TaskSystemBarsListenerController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashSet;IZZ)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerListener(Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;)V
    .registers 2

    .line 40
    iget-object p0, p0, Lcom/android/server/wm/TaskSystemBarsListenerController;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterListener(Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;)V
    .registers 2

    .line 44
    iget-object p0, p0, Lcom/android/server/wm/TaskSystemBarsListenerController;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
