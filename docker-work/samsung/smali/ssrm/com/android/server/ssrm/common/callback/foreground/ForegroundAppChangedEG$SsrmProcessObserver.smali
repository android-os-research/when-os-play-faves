.class Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "ForegroundAppChangedEG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SsrmProcessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;

    .line 32
    iput-object p1, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;->this$0:Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 40
    iget-object v0, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;->this$0:Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;

    invoke-static {v0}, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->-$$Nest$fgetmLock(Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 41
    if-eqz p3, :cond_13

    .line 42
    :try_start_9
    iget-object v1, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;->this$0:Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;

    invoke-static {v1}, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->-$$Nest$fgetmForegroundPids(Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1c

    .line 44
    :cond_13
    iget-object v1, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;->this$0:Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;

    invoke-static {v1}, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->-$$Nest$fgetmForegroundPids(Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 46
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_2d

    .line 48
    iget-object v0, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;->this$0:Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;

    new-instance v1, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedE;

    invoke-direct {v1, p2, p1, p3}, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedE;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->setLastEvent(Lcom/android/server/ssrm/common/IEvent;)V

    .line 49
    iget-object v0, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;->this$0:Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;

    invoke-virtual {v0}, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->notifyReceivers()V

    .line 50
    return-void

    .line 46
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public onProcessDied(II)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 54
    iget-object v0, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;->this$0:Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;

    invoke-static {v0, p1}, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;->-$$Nest$mIsInForegound(Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG$SsrmProcessObserver;->onForegroundActivitiesChanged(IIZ)V

    .line 57
    :cond_c
    return-void
.end method
