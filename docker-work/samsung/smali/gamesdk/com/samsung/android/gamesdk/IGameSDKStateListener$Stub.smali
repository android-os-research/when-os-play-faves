.class public abstract Lcom/samsung/android/gamesdk/IGameSDKStateListener$Stub;
.super Landroid/os/Binder;
.source "IGameSDKStateListener.java"

# interfaces
.implements Lcom/samsung/android/gamesdk/IGameSDKStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/IGameSDKStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gamesdk/IGameSDKStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onGameSDKFinalized:I = 0x2

.field static final TRANSACTION_onGameSDKInitialized:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.samsung.android.gamesdk.IGameSDKStateListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/gamesdk/IGameSDKStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gamesdk/IGameSDKStateListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 37
    if-nez p0, :cond_4

    .line 38
    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_4
    const-string v0, "com.samsung.android.gamesdk.IGameSDKStateListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/gamesdk/IGameSDKStateListener;

    if-eqz v1, :cond_14

    .line 42
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/gamesdk/IGameSDKStateListener;

    return-object v1

    .line 44
    :cond_14
    new-instance v1, Lcom/samsung/android/gamesdk/IGameSDKStateListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/gamesdk/IGameSDKStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const-string v0, "com.samsung.android.gamesdk.IGameSDKStateListener"

    .line 53
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 54
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    :cond_d
    packed-switch p1, :pswitch_data_26

    .line 64
    packed-switch p1, :pswitch_data_2c

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 60
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return v1

    .line 73
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKStateListener$Stub;->onGameSDKFinalized()V

    .line 74
    goto :goto_24

    .line 68
    :pswitch_20
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKStateListener$Stub;->onGameSDKInitialized()V

    .line 69
    nop

    .line 81
    :goto_24
    return v1

    nop

    :pswitch_data_26
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
