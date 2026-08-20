.class public abstract Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;
.super Landroid/os/Binder;
.source "ICarrierExpressService.java"

# interfaces
.implements Lcom/mediatek/common/carrierexpress/ICarrierExpressService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/carrierexpress/ICarrierExpressService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getActiveOpPack:I = 0x1

.field static final blacklist TRANSACTION_getAllOpPackList:I = 0x4

.field static final blacklist TRANSACTION_getOpPackFromSimInfo:I = 0x2

.field static final blacklist TRANSACTION_getOperatorSubIdList:I = 0x5

.field static final blacklist TRANSACTION_setOpPackActive:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "com.mediatek.common.carrierexpress.ICarrierExpressService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/carrierexpress/ICarrierExpressService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_4
    const-string v0, "com.mediatek.common.carrierexpress.ICarrierExpressService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/common/carrierexpress/ICarrierExpressService;

    if-eqz v1, :cond_14

    .line 54
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/carrierexpress/ICarrierExpressService;

    return-object v1

    .line 56
    :cond_14
    new-instance v1, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const-string v0, "com.mediatek.common.carrierexpress.ICarrierExpressService"

    .line 65
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 66
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    :cond_d
    packed-switch p1, :pswitch_data_72

    .line 76
    packed-switch p1, :pswitch_data_78

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 72
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return v1

    .line 120
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getOperatorSubIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 123
    .local v3, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 125
    goto :goto_70

    .line 112
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;
    :pswitch_2e
    invoke-virtual {p0}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getAllOpPackList()Ljava/util/Map;

    move-result-object v2

    .line 113
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 115
    goto :goto_70

    .line 98
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 104
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->setOpPackActive(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    goto :goto_70

    .line 88
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 90
    invoke-virtual {p0, v2}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getOpPackFromSimInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    goto :goto_70

    .line 80
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_65
    invoke-virtual {p0}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getActiveOpPack()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    nop

    .line 132
    .end local v2    # "_result":Ljava/lang/String;
    :goto_70
    return v1

    nop

    :pswitch_data_72
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_65
        :pswitch_53
        :pswitch_39
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
