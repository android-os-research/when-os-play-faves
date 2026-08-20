.class Landroid/service/resolver/IResolverRankerResult$Stub$Proxy;
.super Ljava/lang/Object;
.source "IResolverRankerResult.java"

# interfaces
.implements Landroid/service/resolver/IResolverRankerResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/resolver/IResolverRankerResult$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroid/service/resolver/IResolverRankerResult$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 103
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/service/resolver/IResolverRankerResult$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 110
    const-string v0, "android.service.resolver.IResolverRankerResult"

    return-object v0
.end method

.method public greylist-max-o sendResult(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/service/resolver/ResolverTarget;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 116
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.service.resolver.IResolverRankerResult"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 118
    iget-object v1, p0, Landroid/service/resolver/IResolverRankerResult$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 122
    nop

    .line 123
    return-void

    .line 121
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 122
    throw v1
.end method
