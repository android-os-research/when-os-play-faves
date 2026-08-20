.class public abstract Lcom/samsung/android/mcfds/lib/common/ISimpleCallback$Stub;
.super Landroid/os/Binder;
.source "ISimpleCallback.java"

# interfaces
.implements Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcfds/lib/common/ISimpleCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_onCallback:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.mcfds.lib.common.ISimpleCallback"

    .line 24
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.samsung.android.mcfds.lib.common.ISimpleCallback"

    .line 35
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 36
    instance-of v1, v0, Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;

    if-eqz v1, :cond_13

    .line 37
    check-cast v0, Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;

    return-object v0

    .line 39
    :cond_13
    new-instance v0, Lcom/samsung/android/mcfds/lib/common/ISimpleCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcfds/lib/common/ISimpleCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.samsung.android.mcfds.lib.common.ISimpleCallback"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 49
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_25

    if-eq p1, v0, :cond_19

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 64
    :cond_19
    sget-object p1, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    # invokes: Lcom/samsung/android/mcfds/lib/common/ISimpleCallback$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    invoke-static {p2, p1}, Lcom/samsung/android/mcfds/lib/common/ISimpleCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Message;

    .line 65
    invoke-interface {p0, p1}, Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;->onCallback(Landroid/os/Message;)V

    return v0

    .line 55
    :cond_25
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
