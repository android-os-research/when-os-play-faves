.class final Landroid/app/LoadedApk$ReceiverDispatcher;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReceiverDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoadedApk$ReceiverDispatcher$Args;,
        Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;
    }
.end annotation


# instance fields
.field final greylist-max-o mActivityThread:Landroid/os/Handler;

.field final greylist-max-p mContext:Landroid/content/Context;

.field greylist-max-o mForgotten:Z

.field final greylist-max-o mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

.field final greylist-max-o mInstrumentation:Landroid/app/Instrumentation;

.field final greylist-max-o mLocation:Landroid/app/IntentReceiverLeaked;

.field final greylist mReceiver:Landroid/content/BroadcastReceiver;

.field final greylist-max-o mRegistered:Z

.field greylist-max-o mUnregisterLocation:Ljava/lang/RuntimeException;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V
    .registers 8
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "activityThread"    # Landroid/os/Handler;
    .param p4, "instrumentation"    # Landroid/app/Instrumentation;
    .param p5, "registered"    # Z

    .line 1977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1978
    if-eqz p3, :cond_24

    .line 1982
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;

    xor-int/lit8 v1, p5, 0x1

    invoke-direct {v0, p0, v1}, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;-><init>(Landroid/app/LoadedApk$ReceiverDispatcher;Z)V

    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    .line 1983
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1984
    iput-object p2, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    .line 1985
    iput-object p3, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    .line 1986
    iput-object p4, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    .line 1987
    iput-boolean p5, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    .line 1988
    new-instance v0, Landroid/app/IntentReceiverLeaked;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/IntentReceiverLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mLocation:Landroid/app/IntentReceiverLeaked;

    .line 1989
    invoke-virtual {v0}, Landroid/app/IntentReceiverLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1990
    return-void

    .line 1979
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Handler must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method greylist getIIntentReceiver()Landroid/content/IIntentReceiver;
    .registers 2

    .line 2018
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    return-object v0
.end method

.method greylist getIntentReceiver()Landroid/content/BroadcastReceiver;
    .registers 2

    .line 2013
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method greylist-max-o getLocation()Landroid/app/IntentReceiverLeaked;
    .registers 2

    .line 2008
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mLocation:Landroid/app/IntentReceiverLeaked;

    return-object v0
.end method

.method greylist-max-o getUnregisterLocation()Ljava/lang/RuntimeException;
    .registers 2

    .line 2026
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mUnregisterLocation:Ljava/lang/RuntimeException;

    return-object v0
.end method

.method public greylist-max-o performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .line 2031
    move-object v9, p0

    new-instance v10, Landroid/app/LoadedApk$ReceiverDispatcher$Args;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;-><init>(Landroid/app/LoadedApk$ReceiverDispatcher;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 2033
    .local v0, "args":Landroid/app/LoadedApk$ReceiverDispatcher$Args;
    if-nez p1, :cond_1b

    .line 2034
    const-string v1, "LoadedApk"

    const-string v2, "Null intent received"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    :cond_1b
    if-eqz p1, :cond_29

    iget-object v1, v9, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->getRunnable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 2043
    :cond_29
    iget-boolean v1, v9, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v1, :cond_36

    if-eqz p5, :cond_36

    .line 2044
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 2047
    .local v1, "mgr":Landroid/app/IActivityManager;
    invoke-virtual {v0, v1}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    .line 2050
    .end local v1    # "mgr":Landroid/app/IActivityManager;
    :cond_36
    return-void
.end method

.method greylist-max-o setUnregisterLocation(Ljava/lang/RuntimeException;)V
    .registers 2
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .line 2022
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mUnregisterLocation:Ljava/lang/RuntimeException;

    .line 2023
    return-void
.end method

.method greylist-max-o validate(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityThread"    # Landroid/os/Handler;

    .line 1993
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    const-string v1, ")"

    const-string v2, " now "

    const-string v3, "Receiver "

    if-ne v0, p1, :cond_40

    .line 1999
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    if-ne v0, p2, :cond_f

    .line 2005
    return-void

    .line 2000
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " registered with differing handler (was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1994
    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " registered with differing Context (was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
