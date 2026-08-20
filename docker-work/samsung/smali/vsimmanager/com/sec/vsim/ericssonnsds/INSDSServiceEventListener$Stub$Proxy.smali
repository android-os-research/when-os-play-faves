.class Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "INSDSServiceEventListener.java"

# interfaces
.implements Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub;
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

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 89
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 96
    const-string v0, "com.sec.vsim.ericssonnsds.INSDSServiceEventListener"

    return-object v0
.end method

.method public onNsdsServiceResponse(IZLjava/util/List;)V
    .registers 8
    .param p1, "eventType"    # I
    .param p2, "success"    # Z
    .param p3, "errorCodes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 103
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.ericssonnsds.INSDSServiceEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 106
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 107
    iget-object v1, p0, Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1e

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 111
    nop

    .line 112
    return-void

    .line 110
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 111
    throw v1
.end method
