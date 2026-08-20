.class final Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerReceiver"
.end annotation


# instance fields
.field final greylist-max-o mDispatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mStrongRef:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method constructor greylist-max-o <init>(Landroid/app/LoadedApk$ReceiverDispatcher;Z)V
    .registers 4
    .param p1, "rd"    # Landroid/app/LoadedApk$ReceiverDispatcher;
    .param p2, "strong"    # Z

    .line 1782
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 1783
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    .line 1784
    if-eqz p2, :cond_e

    move-object v0, p1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mStrongRef:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 1785
    return-void
.end method


# virtual methods
.method public greylist-max-o performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .line 1791
    move-object/from16 v9, p4

    if-nez p1, :cond_f

    .line 1792
    const-string v0, "LoadedApk"

    const-string v1, "Null intent received"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    const/4 v0, 0x0

    move-object v10, p0

    move-object v11, v0

    .local v0, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_19

    .line 1795
    .end local v0    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_f
    move-object v10, p0

    iget-object v0, v10, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v11, v0

    .line 1802
    .local v11, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :goto_19
    if-eqz v11, :cond_2b

    .line 1803
    move-object v1, v11

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/app/LoadedApk$ReceiverDispatcher;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    goto :goto_44

    .line 1812
    :cond_2b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v8

    .line 1814
    .local v8, "mgr":Landroid/app/IActivityManager;
    if-eqz v9, :cond_35

    .line 1815
    const/4 v0, 0x0

    :try_start_32
    invoke-virtual {v9, v0}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 1817
    :cond_35
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v7

    move-object v1, v8

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_43} :catch_45

    .line 1820
    nop

    .line 1822
    .end local v8    # "mgr":Landroid/app/IActivityManager;
    :goto_44
    return-void

    .line 1818
    .restart local v8    # "mgr":Landroid/app/IActivityManager;
    :catch_45
    move-exception v0

    .line 1819
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1829
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 1830
    .local v0, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v0, :cond_13

    .line 1831
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIntentReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1834
    .end local v0    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_13
    const-string v0, ""

    return-object v0
.end method
