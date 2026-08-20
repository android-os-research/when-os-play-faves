.class public Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDomainFilterEventListener.java"

# interfaces
.implements Lcom/android/internal/net/IDomainFilterEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/IDomainFilterEventListener$Stub;
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

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 95
    sget-object p0, Lcom/android/internal/net/IDomainFilterEventListener;->DESCRIPTOR:Ljava/lang/String;

    return-object p0
.end method

.method public onDomainFilterReportEvent(IIJLjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 101
    :try_start_4
    sget-object v1, Lcom/android/internal/net/IDomainFilterEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object p0, p0, Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_20

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_20
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 110
    throw p0
.end method
