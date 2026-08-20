.class Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISupplementaryServiceListener.java"

# interfaces
.implements Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 82
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 89
    const-string v0, "com.sec.vsim.attsoftphone.ISupplementaryServiceListener"

    return-object v0
.end method

.method public onNotify(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V
    .registers 6
    .param p1, "noti"    # Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 95
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.attsoftphone.ISupplementaryServiceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 97
    iget-object v1, p0, Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_19

    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 101
    nop

    .line 102
    return-void

    .line 100
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 101
    throw v1
.end method
