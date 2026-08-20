.class public Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;
.super Ljava/lang/Object;
.source "BlockchainTZService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blockchain/BlockchainTZService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrameworkClient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;
    }
.end annotation


# instance fields
.field public mBinderDeathReceiver:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;

.field public mCommnInfo:Landroid/blockchain/BlockchainTZServiceCommnInfo;

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/blockchain/BlockchainTZService;


# direct methods
.method public constructor <init>(Lcom/android/server/blockchain/BlockchainTZService;Landroid/blockchain/BlockchainTZServiceConfig;Landroid/blockchain/BlockchainTZServiceCommnInfo;IILjava/lang/String;)V
    .registers 7

    .line 73
    iput-object p1, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->this$0:Lcom/android/server/blockchain/BlockchainTZService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;

    .line 75
    iput-object p3, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mCommnInfo:Landroid/blockchain/BlockchainTZServiceCommnInfo;

    .line 76
    iput p4, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mUid:I

    .line 77
    iput p5, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mPid:I

    .line 78
    iput-object p6, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mPackageName:Ljava/lang/String;

    .line 79
    new-instance p1, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;

    invoke-direct {p1, p0}, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;-><init>(Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;)V

    iput-object p1, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;

    .line 80
    iget-object p3, p2, Landroid/blockchain/BlockchainTZServiceConfig;->mClient:Landroid/os/IBinder;

    invoke-virtual {p1, p3}, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->setReceiver(Landroid/os/IBinder;)V

    .line 82
    :try_start_1c
    iget-object p1, p2, Landroid/blockchain/BlockchainTZServiceConfig;->mClient:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception p0

    .line 84
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_29
    return-void
.end method
