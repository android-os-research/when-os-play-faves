.class Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnListResultListener.java"

# interfaces
.implements Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;
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

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 88
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 95
    const-string v0, "com.samsung.telephony.phone.service.internalservice.IOnListResultListener"

    return-object v0
.end method

.method public onResult(ZLjava/util/List;Ljava/lang/String;)V
    .registers 8
    .param p1, "success"    # Z
    .param p2, "result"    # Ljava/util/List;
    .param p3, "err"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 101
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.samsung.telephony.phone.service.internalservice.IOnListResultListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 103
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 104
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1e

    .line 108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 109
    nop

    .line 110
    return-void

    .line 108
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 109
    throw v1
.end method
