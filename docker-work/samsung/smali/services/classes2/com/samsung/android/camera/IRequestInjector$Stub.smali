.class public abstract Lcom/samsung/android/camera/IRequestInjector$Stub;
.super Landroid/os/Binder;
.source "IRequestInjector.java"

# interfaces
.implements Lcom/samsung/android/camera/IRequestInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/IRequestInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_applyRequests:I = 0x1

.field public static final TRANSACTION_clearRequests:I = 0x2

.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    sget-object v0, Lcom/samsung/android/camera/IRequestInjector;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/IRequestInjector;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_4
    sget-object v0, Lcom/samsung/android/camera/IRequestInjector;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 56
    instance-of v1, v0, Lcom/samsung/android/camera/IRequestInjector;

    if-eqz v1, :cond_13

    .line 57
    check-cast v0, Lcom/samsung/android/camera/IRequestInjector;

    return-object v0

    .line 59
    :cond_13
    new-instance v0, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 67
    sget-object v0, Lcom/samsung/android/camera/IRequestInjector;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 69
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_4e

    goto :goto_2b

    .line 75
    :sswitch_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 80
    :sswitch_15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-interface {p0}, Lcom/samsung/android/camera/IRequestInjector;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 86
    :sswitch_20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-interface {p0}, Lcom/samsung/android/camera/IRequestInjector;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :goto_2b
    if-eq p1, v1, :cond_3c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_35

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 104
    :cond_35
    invoke-interface {p0}, Lcom/samsung/android/camera/IRequestInjector;->clearRequests()V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_4d

    .line 96
    :cond_3c
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/PersistableBundle;

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 98
    invoke-interface {p0, p1}, Lcom/samsung/android/camera/IRequestInjector;->applyRequests([Landroid/os/PersistableBundle;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_4d
    return v1

    :sswitch_data_4e
    .sparse-switch
        0xfffffe -> :sswitch_20
        0xffffff -> :sswitch_15
        0x5f4e5446 -> :sswitch_11
    .end sparse-switch
.end method
