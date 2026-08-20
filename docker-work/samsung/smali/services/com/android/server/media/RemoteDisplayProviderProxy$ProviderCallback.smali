.class public final Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;
.super Landroid/media/IRemoteDisplayCallback$Stub;
.source "RemoteDisplayProviderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/RemoteDisplayProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderCallback"
.end annotation


# instance fields
.field public final mConnectionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V
    .registers 3

    .line 427
    invoke-direct {p0}, Landroid/media/IRemoteDisplayCallback$Stub;-><init>()V

    .line 428
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;->mConnectionRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .line 432
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public onStateChanged(Landroid/media/RemoteDisplayState;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    if-eqz p0, :cond_d

    .line 439
    invoke-virtual {p0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->postStateChanged(Landroid/media/RemoteDisplayState;)V

    :cond_d
    return-void
.end method
