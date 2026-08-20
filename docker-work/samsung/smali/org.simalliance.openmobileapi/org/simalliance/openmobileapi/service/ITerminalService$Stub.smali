.class public abstract Lorg/simalliance/openmobileapi/service/ITerminalService$Stub;
.super Landroid/os/Binder;
.source "ITerminalService.java"

# interfaces
.implements Lorg/simalliance/openmobileapi/service/ITerminalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simalliance/openmobileapi/service/ITerminalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/service/ITerminalService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getAtr:I = 0x5

.field static final TRANSACTION_getSeEventOccurredAction:I = 0x9

.field static final TRANSACTION_getSeStateChangedAction:I = 0x8

.field static final TRANSACTION_internalCloseBasicChannel:I = 0x3

.field static final TRANSACTION_internalCloseLogicalChannel:I = 0x2

.field static final TRANSACTION_internalOpenLogicalChannel:I = 0x1

.field static final TRANSACTION_internalTransmit:I = 0x4

.field static final TRANSACTION_isCardPresent:I = 0x6

.field static final TRANSACTION_simIOExchange:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 118
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 119
    const-string v0, "org.simalliance.openmobileapi.service.ITerminalService"

    invoke-virtual {p0, p0, v0}, Lorg/simalliance/openmobileapi/service/ITerminalService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ITerminalService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 127
    if-nez p0, :cond_4

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_4
    const-string v0, "org.simalliance.openmobileapi.service.ITerminalService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 131
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lorg/simalliance/openmobileapi/service/ITerminalService;

    if-eqz v1, :cond_14

    .line 132
    move-object v1, v0

    check-cast v1, Lorg/simalliance/openmobileapi/service/ITerminalService;

    return-object v1

    .line 134
    :cond_14
    new-instance v1, Lorg/simalliance/openmobileapi/service/ITerminalService$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/simalliance/openmobileapi/service/ITerminalService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 138
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

    .line 142
    const-string v0, "org.simalliance.openmobileapi.service.ITerminalService"

    .line 143
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 144
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    :cond_d
    packed-switch p1, :pswitch_data_c6

    .line 154
    packed-switch p1, :pswitch_data_cc

    .line 253
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 150
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return v1

    .line 246
    :pswitch_1c
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/ITerminalService$Stub;->getSeEventOccurredAction()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    goto/16 :goto_c5

    .line 239
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_28
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/ITerminalService$Stub;->getSeStateChangedAction()Ljava/lang/String;

    move-result-object v2

    .line 240
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    goto/16 :goto_c5

    .line 224
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 226
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 230
    .local v4, "_arg2":[B
    new-instance v5, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v5}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 231
    .local v5, "_arg3":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/simalliance/openmobileapi/service/ITerminalService$Stub;->simIOExchange(ILjava/lang/String;[BLorg/simalliance/openmobileapi/service/SmartcardError;)[B

    move-result-object v6

    .line 232
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 234
    # invokes: Lorg/simalliance/openmobileapi/service/ITerminalService$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {p3, v5, v1}, Lorg/simalliance/openmobileapi/service/ITerminalService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 235
    goto :goto_c5

    .line 216
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v6    # "_result":[B
    :pswitch_53
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/ITerminalService$Stub;->isCardPresent()Z

    move-result v2

    .line 217
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    goto :goto_c5

    .line 209
    .end local v2    # "_result":Z
    :pswitch_5e
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/ITerminalService$Stub;->getAtr()[B

    move-result-object v2

    .line 210
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 212
    goto :goto_c5

    .line 196
    .end local v2    # "_result":[B
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 198
    .local v2, "_arg0":[B
    new-instance v3, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 200
    .local v3, "_arg1":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lorg/simalliance/openmobileapi/service/ITerminalService$Stub;->internalTransmit([BLorg/simalliance/openmobileapi/service/SmartcardError;Ljava/lang/String;)[B

    move-result-object v5

    .line 202
    .local v5, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 204
    # invokes: Lorg/simalliance/openmobileapi/service/ITerminalService$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {p3, v3, v1}, Lorg/simalliance/openmobileapi/service/ITerminalService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 205
    goto :goto_c5

    .line 188
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":[B
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/simalliance/openmobileapi/service/ITerminalService$Stub;->internalCloseBasicChannel(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    goto :goto_c5

    .line 175
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 177
    .local v2, "_arg0":I
    new-instance v3, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 179
    .restart local v3    # "_arg1":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 180
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lorg/simalliance/openmobileapi/service/ITerminalService$Stub;->internalCloseLogicalChannel(ILorg/simalliance/openmobileapi/service/SmartcardError;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    # invokes: Lorg/simalliance/openmobileapi/service/ITerminalService$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {p3, v3, v1}, Lorg/simalliance/openmobileapi/service/ITerminalService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 183
    goto :goto_c5

    .line 159
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 161
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 163
    .local v3, "_arg1":B
    new-instance v4, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v4}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 165
    .local v4, "_arg2":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/simalliance/openmobileapi/service/ITerminalService$Stub;->internalOpenLogicalChannel([BBLorg/simalliance/openmobileapi/service/SmartcardError;Ljava/lang/String;)Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;

    move-result-object v6

    .line 167
    .local v6, "_result":Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    # invokes: Lorg/simalliance/openmobileapi/service/ITerminalService$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {p3, v6, v1}, Lorg/simalliance/openmobileapi/service/ITerminalService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 169
    # invokes: Lorg/simalliance/openmobileapi/service/ITerminalService$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {p3, v4, v1}, Lorg/simalliance/openmobileapi/service/ITerminalService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 170
    nop

    .line 256
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;
    :goto_c5
    return v1

    :pswitch_data_c6
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_a6
        :pswitch_8f
        :pswitch_84
        :pswitch_69
        :pswitch_5e
        :pswitch_53
        :pswitch_34
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
