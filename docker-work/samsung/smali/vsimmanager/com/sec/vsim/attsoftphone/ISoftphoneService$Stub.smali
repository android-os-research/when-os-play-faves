.class public abstract Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;
.super Landroid/os/Binder;
.source "ISoftphoneService.java"

# interfaces
.implements Lcom/sec/vsim/attsoftphone/ISoftphoneService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/attsoftphone/ISoftphoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_deregisterProgressListener:I = 0x3

.field static final TRANSACTION_deregisterSupplementaryServiceListener:I = 0xb

.field static final TRANSACTION_exchangeForAccessToken:I = 0x4

.field static final TRANSACTION_getCallForwardingInfo:I = 0xd

.field static final TRANSACTION_getCallWaitingInfo:I = 0xc

.field static final TRANSACTION_getClientId:I = 0x1

.field static final TRANSACTION_getDeviceList:I = 0x11

.field static final TRANSACTION_getTermsConditions:I = 0x10

.field static final TRANSACTION_logOut:I = 0x9

.field static final TRANSACTION_provisionAccount:I = 0x5

.field static final TRANSACTION_registerProgressListener:I = 0x2

.field static final TRANSACTION_registerSupplementaryServiceListener:I = 0xa

.field static final TRANSACTION_setCallForwardingInfo:I = 0xf

.field static final TRANSACTION_setCallWaitingInfo:I = 0xe

.field static final TRANSACTION_tryDeregister:I = 0x8

.field static final TRANSACTION_tryRegister:I = 0x7

.field static final TRANSACTION_validateE911Address:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 98
    const-string v0, "com.sec.vsim.attsoftphone.ISoftphoneService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/attsoftphone/ISoftphoneService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 106
    if-nez p0, :cond_4

    .line 107
    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_4
    const-string v0, "com.sec.vsim.attsoftphone.ISoftphoneService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 110
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    if-eqz v1, :cond_14

    .line 111
    move-object v1, v0

    check-cast v1, Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    return-object v1

    .line 113
    :cond_14
    new-instance v1, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 117
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.sec.vsim.attsoftphone.ISoftphoneService"

    .line 122
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 123
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    :cond_15
    packed-switch v7, :pswitch_data_152

    .line 133
    packed-switch v7, :pswitch_data_158

    .line 303
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 129
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return v11

    .line 294
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 295
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {v6, v0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->getDeviceList(I)Ljava/util/List;

    move-result-object v1

    .line 297
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/vsim/attsoftphone/data/DeviceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 299
    goto/16 :goto_150

    .line 286
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/vsim/attsoftphone/data/DeviceInfo;>;"
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 287
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {v6, v0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->getTermsConditions(I)V

    .line 289
    goto/16 :goto_150

    .line 276
    .end local v0    # "_arg0":I
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 278
    .restart local v0    # "_arg0":I
    sget-object v1, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    .line 279
    .local v1, "_arg1":Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {v6, v0, v1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->setCallForwardingInfo(ILcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V

    .line 281
    goto/16 :goto_150

    .line 266
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;
    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 268
    .restart local v0    # "_arg0":I
    sget-object v1, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    .line 269
    .local v1, "_arg1":Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {v6, v0, v1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->setCallWaitingInfo(ILcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V

    .line 271
    goto/16 :goto_150

    .line 258
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;
    :pswitch_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 259
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {v6, v0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->getCallForwardingInfo(I)V

    .line 261
    goto/16 :goto_150

    .line 250
    .end local v0    # "_arg0":I
    :pswitch_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 251
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {v6, v0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->getCallWaitingInfo(I)V

    .line 253
    goto/16 :goto_150

    .line 240
    .end local v0    # "_arg0":I
    :pswitch_83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 242
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    move-result-object v1

    .line 243
    .local v1, "_arg1":Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {v6, v0, v1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->deregisterSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V

    .line 245
    goto/16 :goto_150

    .line 230
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;
    :pswitch_97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    move-result-object v1

    .line 233
    .restart local v1    # "_arg1":Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {v6, v0, v1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->registerSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V

    .line 235
    goto/16 :goto_150

    .line 222
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;
    :pswitch_ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 223
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {v6, v0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->logOut(I)V

    .line 225
    goto/16 :goto_150

    .line 214
    .end local v0    # "_arg0":I
    :pswitch_b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 215
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {v6, v0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->tryDeregister(I)V

    .line 217
    goto/16 :goto_150

    .line 206
    .end local v0    # "_arg0":I
    :pswitch_c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {v6, v0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->tryRegister(I)V

    .line 209
    goto/16 :goto_150

    .line 192
    .end local v0    # "_arg0":I
    :pswitch_cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 194
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 196
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 198
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;

    move-result-object v3

    .line 199
    .local v3, "_arg3":Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->validateE911Address(IIZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;)V

    .line 201
    goto :goto_150

    .line 184
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;
    :pswitch_ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 185
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {v6, v0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->provisionAccount(I)V

    .line 187
    goto :goto_150

    .line 168
    .end local v0    # "_arg0":I
    :pswitch_f5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 170
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 172
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 174
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 176
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 177
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->exchangeForAccessToken(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    goto :goto_150

    .line 158
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/vsim/attsoftphone/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/attsoftphone/IProgressListener;

    move-result-object v1

    .line 161
    .local v1, "_arg1":Lcom/sec/vsim/attsoftphone/IProgressListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {v6, v0, v1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->deregisterProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V

    .line 163
    goto :goto_150

    .line 148
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/sec/vsim/attsoftphone/IProgressListener;
    :pswitch_12b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 150
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/vsim/attsoftphone/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/attsoftphone/IProgressListener;

    move-result-object v1

    .line 151
    .restart local v1    # "_arg1":Lcom/sec/vsim/attsoftphone/IProgressListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {v6, v0, v1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->registerProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V

    .line 153
    goto :goto_150

    .line 138
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/sec/vsim/attsoftphone/IProgressListener;
    :pswitch_13e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {v6, v0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->getClientId(Ljava/lang/String;)I

    move-result v1

    .line 141
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    nop

    .line 306
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :goto_150
    return v11

    nop

    :pswitch_data_152
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_13e
        :pswitch_12b
        :pswitch_118
        :pswitch_f5
        :pswitch_ea
        :pswitch_cf
        :pswitch_c3
        :pswitch_b7
        :pswitch_ab
        :pswitch_97
        :pswitch_83
        :pswitch_77
        :pswitch_6b
        :pswitch_57
        :pswitch_43
        :pswitch_37
        :pswitch_24
    .end packed-switch
.end method
