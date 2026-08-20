.class Landroid/app/contentsuggestions/IClassificationsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IClassificationsCallback.java"

# interfaces
.implements Landroid/app/contentsuggestions/IClassificationsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/contentsuggestions/IClassificationsCallback$Stub;
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

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Landroid/app/contentsuggestions/IClassificationsCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 105
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/app/contentsuggestions/IClassificationsCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 112
    const-string v0, "android.app.contentsuggestions.IClassificationsCallback"

    return-object v0
.end method

.method public blacklist onContentClassificationsAvailable(ILjava/util/List;)V
    .registers 7
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/contentsuggestions/ContentClassification;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    .local p2, "classifications":Ljava/util/List;, "Ljava/util/List<Landroid/app/contentsuggestions/ContentClassification;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 118
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.app.contentsuggestions.IClassificationsCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 121
    iget-object v1, p0, Landroid/app/contentsuggestions/IClassificationsCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1b

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 125
    nop

    .line 126
    return-void

    .line 124
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 125
    throw v1
.end method
