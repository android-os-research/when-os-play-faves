.class public abstract Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub;
.super Landroid/os/Binder;
.source "ISmartcardServiceSession.java"

# interfaces
.implements Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_closeChannels:I = 0x3

.field static final TRANSACTION_getAtr:I = 0x1

.field static final TRANSACTION_isClosed:I = 0x4

.field static final TRANSACTION_openBasicChannel:I = 0x5

.field static final TRANSACTION_openLogicalChannel:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    invoke-virtual {p0, p0, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_4

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_4
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-eqz v1, :cond_14

    .line 78
    move-object v1, v0

    check-cast v1, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    return-object v1

    .line 80
    :cond_14
    new-instance v1, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 84
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    .line 89
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_d
    packed-switch p1, :pswitch_data_98

    .line 100
    packed-switch p1, :pswitch_data_9e

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 96
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 153
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 155
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 157
    .local v3, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v4

    .line 159
    .local v4, "_arg2":Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    new-instance v5, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v5}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 160
    .local v5, "_arg3":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub;->openLogicalChannel([BBLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    move-result-object v6

    .line 161
    .local v6, "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 163
    # invokes: Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {p3, v5, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 164
    goto :goto_96

    .line 137
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .end local v5    # "_arg3":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v6    # "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 139
    .restart local v2    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 141
    .restart local v3    # "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v4

    .line 143
    .restart local v4    # "_arg2":Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    new-instance v5, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v5}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 144
    .restart local v5    # "_arg3":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub;->openBasicChannel([BBLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    move-result-object v6

    .line 145
    .restart local v6    # "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 147
    # invokes: Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {p3, v5, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 148
    goto :goto_96

    .line 129
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .end local v5    # "_arg3":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v6    # "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    :pswitch_62
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub;->isClosed()Z

    move-result v2

    .line 130
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    goto :goto_96

    .line 121
    .end local v2    # "_result":Z
    :pswitch_6d
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 122
    .local v2, "_arg0":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub;->closeChannels(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    # invokes: Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {p3, v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 125
    goto :goto_96

    .line 112
    .end local v2    # "_arg0":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :pswitch_7c
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 113
    .restart local v2    # "_arg0":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub;->close(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    # invokes: Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {p3, v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 116
    goto :goto_96

    .line 104
    .end local v2    # "_arg0":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :pswitch_8b
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub;->getAtr()[B

    move-result-object v2

    .line 105
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 107
    nop

    .line 171
    .end local v2    # "_result":[B
    :goto_96
    return v1

    nop

    :pswitch_data_98
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_7c
        :pswitch_6d
        :pswitch_62
        :pswitch_3f
        :pswitch_1c
    .end packed-switch
.end method
