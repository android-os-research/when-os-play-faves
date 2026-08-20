.class public abstract Landroid/net/IIpMemoryStore$Stub;
.super Landroid/os/Binder;
.source "IIpMemoryStore.java"

# interfaces
.implements Landroid/net/IIpMemoryStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IIpMemoryStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IIpMemoryStore$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_delete:I = 0x8

.field public static final TRANSACTION_deleteCluster:I = 0x9

.field public static final TRANSACTION_factoryReset:I = 0x7

.field public static final TRANSACTION_findL2Key:I = 0x3

.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_isSameNetwork:I = 0x4

.field public static final TRANSACTION_retrieveBlob:I = 0x6

.field public static final TRANSACTION_retrieveNetworkAttributes:I = 0x5

.field public static final TRANSACTION_storeBlob:I = 0x2

.field public static final TRANSACTION_storeNetworkAttributes:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    sget-object v0, Landroid/net/IIpMemoryStore;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IIpMemoryStore;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_4
    sget-object v0, Landroid/net/IIpMemoryStore;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 77
    instance-of v1, v0, Landroid/net/IIpMemoryStore;

    if-eqz v1, :cond_13

    .line 78
    check-cast v0, Landroid/net/IIpMemoryStore;

    return-object v0

    .line 80
    :cond_13
    new-instance v0, Landroid/net/IIpMemoryStore$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/IIpMemoryStore$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    sget-object v0, Landroid/net/IIpMemoryStore;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_ec

    packed-switch p1, :pswitch_data_fa

    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 96
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 101
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-interface {p0}, Landroid/net/IIpMemoryStore;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 107
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-interface {p0}, Landroid/net/IIpMemoryStore;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 201
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnStatusAndCountListener;

    move-result-object p2

    .line 206
    invoke-interface {p0, p1, p3, p2}, Landroid/net/IIpMemoryStore;->deleteCluster(Ljava/lang/String;ZLandroid/net/ipmemorystore/IOnStatusAndCountListener;)V

    goto/16 :goto_ea

    .line 190
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnStatusAndCountListener;

    move-result-object p2

    .line 195
    invoke-interface {p0, p1, p3, p2}, Landroid/net/IIpMemoryStore;->delete(Ljava/lang/String;ZLandroid/net/ipmemorystore/IOnStatusAndCountListener;)V

    goto/16 :goto_ea

    .line 184
    :pswitch_5c
    invoke-interface {p0}, Landroid/net/IIpMemoryStore;->factoryReset()V

    goto/16 :goto_ea

    .line 172
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    move-result-object p2

    .line 179
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/net/IIpMemoryStore;->retrieveBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnBlobRetrievedListener;)V

    goto :goto_ea

    .line 163
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    move-result-object p2

    .line 166
    invoke-interface {p0, p1, p2}, Landroid/net/IIpMemoryStore;->retrieveNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;)V

    goto :goto_ea

    .line 152
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;

    move-result-object p2

    .line 157
    invoke-interface {p0, p1, p3, p2}, Landroid/net/IIpMemoryStore;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;)V

    goto :goto_ea

    .line 143
    :pswitch_9d
    sget-object p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnL2KeyResponseListener;

    move-result-object p2

    .line 146
    invoke-interface {p0, p1, p2}, Landroid/net/IIpMemoryStore;->findL2Key(Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnL2KeyResponseListener;)V

    goto :goto_ea

    .line 128
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 134
    sget-object p1, Landroid/net/ipmemorystore/Blob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/net/ipmemorystore/Blob;

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object v7

    move-object v2, p0

    .line 137
    invoke-interface/range {v2 .. v7}, Landroid/net/IIpMemoryStore;->storeBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/IOnStatusListener;)V

    goto :goto_ea

    .line 117
    :pswitch_d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 119
    sget-object p3, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object p2

    .line 122
    invoke-interface {p0, p1, p3, p2}, Landroid/net/IIpMemoryStore;->storeNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnStatusListener;)V

    :goto_ea
    return v1

    nop

    :sswitch_data_ec
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_d3
        :pswitch_b1
        :pswitch_9d
        :pswitch_89
        :pswitch_79
        :pswitch_61
        :pswitch_5c
        :pswitch_47
        :pswitch_32
    .end packed-switch
.end method
