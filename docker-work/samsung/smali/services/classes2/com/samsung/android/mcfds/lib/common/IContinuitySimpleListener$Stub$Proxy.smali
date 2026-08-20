.class public Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IContinuitySimpleListener.java"

# interfaces
.implements Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$Stub;
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

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "com.samsung.android.mcfds.lib.common.IContinuitySimpleListener"

    return-object p0
.end method

.method public onNotify(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcfds.lib.common.IContinuitySimpleListener"

    .line 94
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 95
    # invokes: Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {v0, p1, v1}, Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 96
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 99
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_18
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 100
    throw p0
.end method
