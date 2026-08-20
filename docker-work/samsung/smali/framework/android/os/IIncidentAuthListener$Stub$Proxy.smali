.class Landroid/os/IIncidentAuthListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIncidentAuthListener.java"

# interfaces
.implements Landroid/os/IIncidentAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIncidentAuthListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Landroid/os/IIncidentAuthListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 118
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/os/IIncidentAuthListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 125
    const-string v0, "android.os.IIncidentAuthListener"

    return-object v0
.end method

.method public blacklist onReportApproved()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 132
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.os.IIncidentAuthListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Landroid/os/IIncidentAuthListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 137
    nop

    .line 138
    return-void

    .line 136
    :catchall_15
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 137
    throw v1
.end method

.method public blacklist onReportDenied()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 144
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.os.IIncidentAuthListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Landroid/os/IIncidentAuthListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_16

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    nop

    .line 150
    return-void

    .line 148
    :catchall_16
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    throw v1
.end method
