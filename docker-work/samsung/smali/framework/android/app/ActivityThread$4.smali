.class Landroid/app/ActivityThread$4;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread;->attach(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityThread;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .line 8431
    iput-object p1, p0, Landroid/app/ActivityThread$4;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 10

    .line 8433
    iget-object v0, p0, Landroid/app/ActivityThread$4;->this$0:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    if-nez v0, :cond_7

    .line 8434
    return-void

    .line 8436
    :cond_7
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 8437
    .local v0, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    .line 8438
    .local v1, "dalvikMax":J
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 8439
    .local v3, "dalvikUsed":J
    const-wide/16 v5, 0x3

    mul-long/2addr v5, v1

    const-wide/16 v7, 0x4

    div-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-lez v5, :cond_39

    .line 8443
    iget-object v5, p0, Landroid/app/ActivityThread$4;->this$0:Landroid/app/ActivityThread;

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 8445
    :try_start_27
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityThread$4;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v5, v6}, Landroid/app/IActivityTaskManager;->releaseSomeActivities(Landroid/app/IApplicationThread;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_32} :catch_33

    .line 8448
    goto :goto_39

    .line 8446
    :catch_33
    move-exception v5

    .line 8447
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 8450
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_39
    :goto_39
    return-void
.end method
