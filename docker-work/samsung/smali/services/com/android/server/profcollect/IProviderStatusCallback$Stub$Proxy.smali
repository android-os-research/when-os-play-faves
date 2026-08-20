.class public Lcom/android/server/profcollect/IProviderStatusCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IProviderStatusCallback.java"

# interfaces
.implements Lcom/android/server/profcollect/IProviderStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/profcollect/IProviderStatusCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/server/profcollect/IProviderStatusCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/server/profcollect/IProviderStatusCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "com.android.server.profcollect.IProviderStatusCallback"

    return-object p0
.end method

.method public onProviderReady()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.server.profcollect.IProviderStatusCallback"

    .line 93
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 94
    iget-object p0, p0, Lcom/android/server/profcollect/IProviderStatusCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 97
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_14
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 98
    throw p0
.end method
