.class Lcom/android/internal/carlife/IStatusBarCarLife$Stub$Proxy;
.super Ljava/lang/Object;
.source "IStatusBarCarLife.java"

# interfaces
.implements Lcom/android/internal/carlife/IStatusBarCarLife;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/carlife/IStatusBarCarLife$Stub;
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

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/android/internal/carlife/IStatusBarCarLife$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 184
    return-void
.end method


# virtual methods
.method public blacklist abortTransient(I[I)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "types"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 261
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.internal.carlife.IStatusBarCarLife"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 264
    iget-object v1, p0, Lcom/android/internal/carlife/IStatusBarCarLife$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1c

    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 268
    nop

    .line 269
    return-void

    .line 267
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 268
    throw v1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/android/internal/carlife/IStatusBarCarLife$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 191
    const-string v0, "com.android.internal.carlife.IStatusBarCarLife"

    return-object v0
.end method

.method public blacklist onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V
    .registers 12
    .param p1, "displayId"    # I
    .param p2, "appearance"    # I
    .param p3, "appearanceRegions"    # [Lcom/android/internal/view/AppearanceRegion;
    .param p4, "navbarColorManagedByIme"    # Z
    .param p5, "behavior"    # I
    .param p6, "requestedVisibilities"    # Landroid/view/InsetsVisibilities;
    .param p7, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 212
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.internal.carlife.IStatusBarCarLife"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 216
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 217
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 219
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/android/internal/carlife/IStatusBarCarLife$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2b

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 224
    nop

    .line 225
    return-void

    .line 223
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 224
    throw v1
.end method

.method public blacklist showTransient(I[IZ)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "types"    # [I
    .param p3, "isGestureOnSystemBar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 239
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.internal.carlife.IStatusBarCarLife"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 242
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 243
    iget-object v1, p0, Lcom/android/internal/carlife/IStatusBarCarLife$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1f

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    nop

    .line 248
    return-void

    .line 246
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    throw v1
.end method
