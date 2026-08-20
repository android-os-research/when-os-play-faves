.class Lcom/silead/internal/IFingerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFingerService.java"

# interfaces
.implements Lcom/silead/internal/IFingerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/silead/internal/IFingerService$Stub;
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

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/silead/internal/IFingerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 91
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/silead/internal/IFingerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 98
    const-string v0, "com.silead.internal.IFingerService"

    return-object v0
.end method

.method public testCmd(Landroid/os/IBinder;I[BLcom/silead/internal/IFingerServiceReceiver;)I
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cmdId"    # I
    .param p3, "param"    # [B
    .param p4, "receiver"    # Lcom/silead/internal/IFingerServiceReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 103
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 106
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.silead.internal.IFingerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 108
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 110
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 111
    iget-object v2, p0, Lcom/silead/internal/IFingerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 112
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 113
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_31

    move v2, v3

    .line 116
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 118
    nop

    .line 119
    return v2

    .line 116
    .end local v2    # "_result":I
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 118
    throw v2
.end method
