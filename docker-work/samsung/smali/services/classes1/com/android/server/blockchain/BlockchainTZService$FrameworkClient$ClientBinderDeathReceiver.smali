.class public Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;
.super Ljava/lang/Object;
.source "BlockchainTZService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientBinderDeathReceiver"
.end annotation


# instance fields
.field public mReceiver:Landroid/os/IBinder;

.field public final synthetic this$1:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;


# direct methods
.method public static bridge synthetic -$$Nest$mdeleteClient(Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->deleteClient()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    const-string v0, "BlockchainTZService"

    const-string v1, "Error: Framework App dead, unloading loaded TAs"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->deleteClient()V

    return-void
.end method

.method public final declared-synchronized deleteClient()V
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "BlockchainTZService"

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Client stopped. Clearing Databstructures for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    iget-object v2, v2, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    iget-object v0, v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mCommnInfo:Landroid/blockchain/BlockchainTZServiceCommnInfo;

    iget-object v0, v0, Landroid/blockchain/BlockchainTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 106
    iget-object v2, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    iget-object v2, v2, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mCommnInfo:Landroid/blockchain/BlockchainTZServiceCommnInfo;

    iget-object v2, v2, Landroid/blockchain/BlockchainTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blockchain/TAController;
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_a8

    .line 109
    :try_start_41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x101

    if-ne v1, v3, :cond_8e

    iget-boolean v1, v2, Lcom/android/server/blockchain/TAController;->SET_QSEE_SECURE_UI:Z

    if-eqz v1, :cond_8e

    .line 110
    invoke-static {}, Lcom/android/server/blockchain/BlockchainTZService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/blockchain/Utils;->sendSecureUIAbortIntent(Landroid/content/Context;)Z

    move-result v1

    const-string v3, "BlockchainTZService"

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendSecureUIAbortIntent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_6d
    const/16 v3, 0xa

    if-ge v1, v3, :cond_8e

    .line 114
    iget-boolean v3, v2, Lcom/android/server/blockchain/TAController;->SET_QSEE_SECURE_UI:Z

    if-nez v3, :cond_7e

    const-string v1, "BlockchainTZService"

    const-string/jumbo v3, "secureUI unsetted"

    .line 115
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_7d} :catch_92
    .catchall {:try_start_41 .. :try_end_7d} :catchall_a8

    goto :goto_8e

    :cond_7e
    const-wide/16 v3, 0x64

    .line 120
    :try_start_80
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_84
    .catchall {:try_start_80 .. :try_end_83} :catchall_a8

    goto :goto_8b

    :catch_84
    :try_start_84
    const-string v3, "BlockchainTZService"

    const-string v4, "Failed to put thread to sleep!"

    .line 122
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    .line 126
    :cond_8e
    :goto_8e
    invoke-virtual {v2}, Lcom/android/server/blockchain/TAController;->unloadTA()V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_91} :catch_92
    .catchall {:try_start_84 .. :try_end_91} :catchall_a8

    goto :goto_29

    :catch_92
    move-exception v1

    .line 128
    :try_start_93
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_29

    .line 131
    :cond_97
    iget-object v0, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    iget-object v0, v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->this$0:Lcom/android/server/blockchain/BlockchainTZService;

    invoke-static {v0}, Lcom/android/server/blockchain/BlockchainTZService;->-$$Nest$fgetmRegisteredFWKClientMap(Lcom/android/server/blockchain/BlockchainTZService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    iget-object v1, v1, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a6
    .catchall {:try_start_93 .. :try_end_a6} :catchall_a8

    .line 132
    monitor-exit p0

    return-void

    :catchall_a8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setReceiver(Landroid/os/IBinder;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->mReceiver:Landroid/os/IBinder;

    return-void
.end method
