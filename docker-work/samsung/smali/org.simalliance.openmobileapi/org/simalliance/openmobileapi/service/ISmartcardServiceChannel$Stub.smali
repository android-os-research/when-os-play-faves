.class public abstract Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub;
.super Landroid/os/Binder;
.source "ISmartcardServiceChannel.java"

# interfaces
.implements Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_getSelectResponse:I = 0x4

.field static final TRANSACTION_isBasicChannel:I = 0x3

.field static final TRANSACTION_isClosed:I = 0x2

.field static final TRANSACTION_selectNext:I = 0x6

.field static final TRANSACTION_transmit:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 81
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardServiceChannel"

    invoke-virtual {p0, p0, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 89
    if-nez p0, :cond_4

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_4
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardServiceChannel"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 93
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-eqz v1, :cond_14

    .line 94
    move-object v1, v0

    check-cast v1, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    return-object v1

    .line 96
    :cond_14
    new-instance v1, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 100
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardServiceChannel"

    .line 105
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 106
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    :cond_d
    packed-switch p1, :pswitch_data_78

    .line 116
    packed-switch p1, :pswitch_data_7e

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 112
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return v1

    .line 163
    :pswitch_1c
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 164
    .local v2, "_arg0":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub;->selectNext(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v3

    .line 165
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    # invokes: Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {p3, v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 168
    goto :goto_76

    .line 151
    .end local v2    # "_arg0":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v3    # "_result":Z
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 153
    .local v2, "_arg0":[B
    new-instance v3, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 154
    .local v3, "_arg1":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v2, v3}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub;->transmit([BLorg/simalliance/openmobileapi/service/SmartcardError;)[B

    move-result-object v4

    .line 155
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 157
    # invokes: Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {p3, v3, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 158
    goto :goto_76

    .line 143
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v4    # "_result":[B
    :pswitch_46
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub;->getSelectResponse()[B

    move-result-object v2

    .line 144
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 146
    goto :goto_76

    .line 136
    .end local v2    # "_result":[B
    :pswitch_51
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub;->isBasicChannel()Z

    move-result v2

    .line 137
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    goto :goto_76

    .line 129
    .end local v2    # "_result":Z
    :pswitch_5c
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub;->isClosed()Z

    move-result v2

    .line 130
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    goto :goto_76

    .line 121
    .end local v2    # "_result":Z
    :pswitch_67
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 122
    .local v2, "_arg0":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub;->close(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    # invokes: Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {p3, v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 125
    nop

    .line 175
    .end local v2    # "_arg0":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :goto_76
    return v1

    nop

    :pswitch_data_78
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_67
        :pswitch_5c
        :pswitch_51
        :pswitch_46
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
