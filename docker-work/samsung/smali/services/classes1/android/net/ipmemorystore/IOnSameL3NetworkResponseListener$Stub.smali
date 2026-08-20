.class public abstract Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;
.super Landroid/os/Binder;
.source "IOnSameL3NetworkResponseListener.java"

# interfaces
.implements Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_onSameL3NetworkResponse:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    sget-object v0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_4
    sget-object v0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 53
    instance-of v1, v0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;

    if-eqz v1, :cond_13

    .line 54
    check-cast v0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;

    return-object v0

    .line 56
    :cond_13
    new-instance v0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 64
    sget-object v0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 66
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_46

    if-eq p1, v1, :cond_31

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 72
    :sswitch_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 77
    :sswitch_1b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-interface {p0}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 83
    :sswitch_26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-interface {p0}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 93
    :cond_31
    sget-object p1, Landroid/net/ipmemorystore/StatusParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ipmemorystore/StatusParcelable;

    .line 95
    sget-object p3, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;

    .line 96
    invoke-interface {p0, p1, p2}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;->onSameL3NetworkResponse(Landroid/net/ipmemorystore/StatusParcelable;Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;)V

    return v1

    nop

    :sswitch_data_46
    .sparse-switch
        0xfffffe -> :sswitch_26
        0xffffff -> :sswitch_1b
        0x5f4e5446 -> :sswitch_17
    .end sparse-switch
.end method
