.class public Lcom/android/server/spay/PaymentManagerService$FrameworkClient;
.super Ljava/lang/Object;
.source "PaymentManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/spay/PaymentManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrameworkClient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;
    }
.end annotation


# instance fields
.field public mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

.field public mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/spay/PaymentManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/spay/PaymentManagerService;Landroid/spay/PaymentTZServiceConfig;Landroid/spay/PaymentTZServiceCommnInfo;IILjava/lang/String;)V
    .registers 7

    .line 125
    iput-object p1, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->this$0:Lcom/android/server/spay/PaymentManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    .line 127
    iput-object p3, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;

    .line 128
    iput p4, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mUid:I

    .line 129
    iput p5, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mPid:I

    .line 130
    iput-object p6, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mPackageName:Ljava/lang/String;

    .line 131
    new-instance p1, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    invoke-direct {p1, p0}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;-><init>(Lcom/android/server/spay/PaymentManagerService$FrameworkClient;)V

    iput-object p1, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    .line 132
    iget-object p3, p2, Landroid/spay/PaymentTZServiceConfig;->mClient:Landroid/os/IBinder;

    invoke-virtual {p1, p3}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->setReceiver(Landroid/os/IBinder;)V

    .line 134
    :try_start_1c
    iget-object p1, p2, Landroid/spay/PaymentTZServiceConfig;->mClient:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception p0

    .line 136
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_29
    return-void
.end method
