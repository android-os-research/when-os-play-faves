.class public Landroid/app/ActivityManager$AppTask;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppTask"
.end annotation


# instance fields
.field private greylist-max-o mAppTaskImpl:Landroid/app/IAppTask;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/app/IAppTask;)V
    .registers 2
    .param p1, "task"    # Landroid/app/IAppTask;

    .line 5525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5526
    iput-object p1, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    .line 5527
    return-void
.end method


# virtual methods
.method public whitelist finishAndRemoveTask()V
    .registers 3

    .line 5534
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    invoke-interface {v0}, Landroid/app/IAppTask;->finishAndRemoveTask()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5537
    nop

    .line 5538
    return-void

    .line 5535
    :catch_7
    move-exception v0

    .line 5536
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 3

    .line 5547
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    invoke-interface {v0}, Landroid/app/IAppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 5548
    :catch_7
    move-exception v0

    .line 5549
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist moveToFront()V
    .registers 5

    .line 5561
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 5562
    .local v0, "thread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 5563
    .local v1, "appThread":Landroid/app/IApplicationThread;
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5564
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    invoke-interface {v3, v1, v2}, Landroid/app/IAppTask;->moveToFront(Landroid/app/IApplicationThread;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    .line 5567
    .end local v0    # "thread":Landroid/app/ActivityThread;
    .end local v1    # "appThread":Landroid/app/IApplicationThread;
    .end local v2    # "packageName":Ljava/lang/String;
    nop

    .line 5568
    return-void

    .line 5565
    :catch_13
    move-exception v0

    .line 5566
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setExcludeFromRecents(Z)V
    .registers 4
    .param p1, "exclude"    # Z

    .line 5606
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    invoke-interface {v0, p1}, Landroid/app/IAppTask;->setExcludeFromRecents(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5609
    nop

    .line 5610
    return-void

    .line 5607
    :catch_7
    move-exception v0

    .line 5608
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 5592
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 5593
    .local v0, "thread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 5594
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityManager$AppTask;->mAppTaskImpl:Landroid/app/IAppTask;

    .line 5593
    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/Instrumentation;->execStartActivityFromAppTask(Landroid/content/Context;Landroid/os/IBinder;Landroid/app/IAppTask;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 5595
    return-void
.end method
