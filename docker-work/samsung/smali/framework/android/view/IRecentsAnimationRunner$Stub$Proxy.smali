.class Landroid/view/IRecentsAnimationRunner$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRecentsAnimationRunner.java"

# interfaces
.implements Landroid/view/IRecentsAnimationRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IRecentsAnimationRunner$Stub;
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

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Landroid/view/IRecentsAnimationRunner$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 173
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 176
    iget-object v0, p0, Landroid/view/IRecentsAnimationRunner$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 180
    const-string v0, "android.view.IRecentsAnimationRunner"

    return-object v0
.end method

.method public blacklist onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V
    .registers 8
    .param p1, "taskIds"    # [I
    .param p2, "taskSnapshots"    # [Landroid/window/TaskSnapshot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 200
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.view.IRecentsAnimationRunner"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 202
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 203
    iget-object v1, p0, Landroid/view/IRecentsAnimationRunner$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 207
    nop

    .line 208
    return-void

    .line 206
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 207
    throw v1
.end method

.method public blacklist onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "controller"    # Landroid/view/IRecentsAnimationController;
    .param p2, "apps"    # [Landroid/view/RemoteAnimationTarget;
    .param p3, "wallpapers"    # [Landroid/view/RemoteAnimationTarget;
    .param p4, "homeContentInsets"    # Landroid/graphics/Rect;
    .param p5, "minimizedHomeBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 220
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.view.IRecentsAnimationRunner"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 222
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 223
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 224
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 225
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 226
    iget-object v1, p0, Landroid/view/IRecentsAnimationRunner$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_26

    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 230
    nop

    .line 231
    return-void

    .line 229
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 230
    throw v1
.end method

.method public blacklist onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V
    .registers 7
    .param p1, "app"    # [Landroid/view/RemoteAnimationTarget;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 240
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.view.IRecentsAnimationRunner"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 241
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 242
    iget-object v1, p0, Landroid/view/IRecentsAnimationRunner$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 246
    nop

    .line 247
    return-void

    .line 245
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 246
    throw v1
.end method
