.class Lcom/sec/ims/IImsRegistrationListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsRegistrationListener.java"

# interfaces
.implements Lcom/sec/ims/IImsRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IImsRegistrationListener$Stub;
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

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/sec/ims/IImsRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 95
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/sec/ims/IImsRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 102
    const-string v0, "com.sec.ims.IImsRegistrationListener"

    return-object v0
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .registers 8
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "registrationError"    # Lcom/sec/ims/ImsRegistrationError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 120
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.ims.IImsRegistrationListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 121
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 122
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 123
    iget-object v1, p0, Lcom/sec/ims/IImsRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    nop

    .line 128
    return-void

    .line 126
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    throw v1
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 6
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 108
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.ims.IImsRegistrationListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 109
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 110
    iget-object v1, p0, Lcom/sec/ims/IImsRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_19

    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 114
    nop

    .line 115
    return-void

    .line 113
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 114
    throw v1
.end method
