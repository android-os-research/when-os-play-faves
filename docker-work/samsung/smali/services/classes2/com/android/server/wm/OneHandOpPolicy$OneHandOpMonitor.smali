.class public Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;
.super Ljava/lang/Object;
.source "OneHandOpPolicy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OneHandOpPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OneHandOpMonitor"
.end annotation


# instance fields
.field public mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

.field public final synthetic this$0:Lcom/android/server/wm/OneHandOpPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/OneHandOpPolicy;)V
    .registers 2

    .line 270
    iput-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/OneHandOpPolicy;Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;-><init>(Lcom/android/server/wm/OneHandOpPolicy;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 8

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    invoke-static {v0}, Lcom/android/server/wm/OneHandOpPolicy;->-$$Nest$fgetmService(Lcom/android/server/wm/OneHandOpPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_71

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 306
    iget-object v1, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_34

    .line 307
    invoke-interface {v1}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    .line 308
    iput-object v1, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    const-string v4, "OneHandOpController"

    const-string v5, "OneHandOp service has died unexpectedly"

    .line 310
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v4, Landroid/view/MagnificationSpec;

    invoke-direct {v4}, Landroid/view/MagnificationSpec;-><init>()V

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 312
    invoke-virtual {v4, v5, v6, v6}, Landroid/view/MagnificationSpec;->initialize(FFF)V

    .line 313
    iget-object v5, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    invoke-virtual {v5, v4, v2, v1}, Lcom/android/server/wm/OneHandOpPolicy;->changeDisplayScaleLocked(Landroid/view/MagnificationSpec;ZLandroid/view/IInputFilter;)V

    goto :goto_35

    :cond_34
    move v2, v3

    .line 316
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_6b

    :try_start_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v2, :cond_71

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    invoke-static {v0}, Lcom/android/server/wm/OneHandOpPolicy;->-$$Nest$fgetmContext(Lcom/android/server/wm/OneHandOpPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 323
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/OneHandOpPolicy;->isOneHandOpEnabled()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/OneHandOpPolicy;->startService(I)V

    .line 325
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    invoke-static {v0}, Lcom/android/server/wm/OneHandOpPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/OneHandOpPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    invoke-static {p0}, Lcom/android/server/wm/OneHandOpPolicy;->-$$Nest$fgetmRestartRunnable(Lcom/android/server/wm/OneHandOpPolicy;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_6a} :catch_71

    goto :goto_71

    :catchall_6b
    move-exception p0

    .line 316
    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    :try_start_6d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_71} :catch_71

    :catch_71
    :cond_71
    :goto_71
    return-void
.end method

.method public isRegistered()Z
    .registers 1

    .line 274
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public registerWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V
    .registers 4

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    if-nez v0, :cond_e

    .line 280
    invoke-interface {p1}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 281
    iput-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_e

    :catch_e
    :cond_e
    return-void
.end method

.method public unregisterWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V
    .registers 4

    .line 289
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    if-eqz v0, :cond_19

    .line 290
    invoke-interface {v0}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v0, v1, :cond_19

    .line 292
    :try_start_e
    invoke-interface {p1}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p1, 0x0

    .line 293
    iput-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_19} :catch_19

    :catch_19
    :cond_19
    return-void
.end method
