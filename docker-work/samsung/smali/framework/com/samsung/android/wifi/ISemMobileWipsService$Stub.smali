.class public abstract Lcom/samsung/android/wifi/ISemMobileWipsService$Stub;
.super Landroid/os/Binder;
.source "ISemMobileWipsService.java"

# interfaces
.implements Lcom/samsung/android/wifi/ISemMobileWipsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/ISemMobileWipsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/ISemMobileWipsService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_broadcastBcnEventAbort:I = 0x4

.field static final blacklist TRANSACTION_broadcastBcnIntervalEvent:I = 0x3

.field static final blacklist TRANSACTION_checkMWIPS:I = 0x5

.field static final blacklist TRANSACTION_onDnsResponses:I = 0xa

.field static final blacklist TRANSACTION_onScanResults:I = 0x9

.field static final blacklist TRANSACTION_registerCallback:I = 0x1

.field static final blacklist TRANSACTION_registerPacketSender:I = 0xb

.field static final blacklist TRANSACTION_sendMessage:I = 0x6

.field static final blacklist TRANSACTION_setCurrentBss:I = 0x8

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x2

.field static final blacklist TRANSACTION_unregisterPacketSender:I = 0xc

.field static final blacklist TRANSACTION_updateWifiChipInfo:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "com.samsung.android.wifi.ISemMobileWipsService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/wifi/ISemMobileWipsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemMobileWipsService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_4
    const-string v0, "com.samsung.android.wifi.ISemMobileWipsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/wifi/ISemMobileWipsService;

    if-eqz v1, :cond_14

    .line 80
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/wifi/ISemMobileWipsService;

    return-object v1

    .line 82
    :cond_14
    new-instance v1, Lcom/samsung/android/wifi/ISemMobileWipsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/wifi/ISemMobileWipsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 91
    packed-switch p0, :pswitch_data_30

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 139
    :pswitch_5
    const-string/jumbo v0, "unregisterPacketSender"

    return-object v0

    .line 135
    :pswitch_9
    const-string/jumbo v0, "registerPacketSender"

    return-object v0

    .line 131
    :pswitch_d
    const-string v0, "onDnsResponses"

    return-object v0

    .line 127
    :pswitch_10
    const-string v0, "onScanResults"

    return-object v0

    .line 123
    :pswitch_13
    const-string/jumbo v0, "setCurrentBss"

    return-object v0

    .line 119
    :pswitch_17
    const-string/jumbo v0, "updateWifiChipInfo"

    return-object v0

    .line 115
    :pswitch_1b
    const-string/jumbo v0, "sendMessage"

    return-object v0

    .line 111
    :pswitch_1f
    const-string v0, "checkMWIPS"

    return-object v0

    .line 107
    :pswitch_22
    const-string v0, "broadcastBcnEventAbort"

    return-object v0

    .line 103
    :pswitch_25
    const-string v0, "broadcastBcnIntervalEvent"

    return-object v0

    .line 99
    :pswitch_28
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 95
    :pswitch_2c
    const-string/jumbo v0, "registerCallback"

    return-object v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 86
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 564
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 150
    invoke-static {p1}, Lcom/samsung/android/wifi/ISemMobileWipsService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 30
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v14, "com.samsung.android.wifi.ISemMobileWipsService"

    .line 155
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v11, v15, :cond_15

    const v0, 0xffffff

    if-gt v11, v0, :cond_15

    .line 156
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    :cond_15
    packed-switch v11, :pswitch_data_154

    .line 166
    packed-switch v11, :pswitch_data_15a

    .line 312
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 162
    :pswitch_20
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    return v15

    .line 303
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/wifi/ISemMobileWipsPacketSender$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;

    move-result-object v0

    .line 304
    .local v0, "_arg0":Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {v10, v0}, Lcom/samsung/android/wifi/ISemMobileWipsService$Stub;->unregisterPacketSender(Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;)Z

    move-result v1

    .line 306
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 308
    goto/16 :goto_152

    .line 293
    .end local v0    # "_arg0":Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;
    .end local v1    # "_result":Z
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/wifi/ISemMobileWipsPacketSender$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;

    move-result-object v0

    .line 294
    .restart local v0    # "_arg0":Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {v10, v0}, Lcom/samsung/android/wifi/ISemMobileWipsService$Stub;->registerPacketSender(Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;)Z

    move-result v1

    .line 296
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 298
    goto/16 :goto_152

    .line 282
    .end local v0    # "_arg0":Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;
    .end local v1    # "_result":Z
    :pswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 284
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/wifi/ISemMobileWipsService$Stub;->onDnsResponses(Ljava/util/List;Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    goto/16 :goto_152

    .line 273
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_65
    sget-object v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 274
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemMobileWipsScanResult;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {v10, v0}, Lcom/samsung/android/wifi/ISemMobileWipsService$Stub;->onScanResults(Ljava/util/List;)V

    .line 276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    goto/16 :goto_152

    .line 255
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemMobileWipsScanResult;>;"
    :pswitch_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 257
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 259
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 261
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 263
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 264
    .local v16, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/wifi/ISemMobileWipsService$Stub;->setCurrentBss(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)Z

    move-result v0

    .line 266
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 268
    goto/16 :goto_152

    .line 244
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":[B
    :pswitch_a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 247
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/wifi/ISemMobileWipsService$Stub;->updateWifiChipInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto/16 :goto_152

    .line 235
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_b4
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 236
    .local v0, "_arg0":Landroid/os/Message;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {v10, v0}, Lcom/samsung/android/wifi/ISemMobileWipsService$Stub;->sendMessage(Landroid/os/Message;)V

    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    goto/16 :goto_152

    .line 223
    .end local v0    # "_arg0":Landroid/os/Message;
    :pswitch_c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 226
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/wifi/ISemMobileWipsService$Stub;->checkMWIPS(Ljava/lang/String;I)Z

    move-result v2

    .line 228
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 230
    goto/16 :goto_152

    .line 212
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_de
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 215
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/wifi/ISemMobileWipsService$Stub;->broadcastBcnEventAbort(Ljava/lang/String;I)V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    goto :goto_152

    .line 191
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 193
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 195
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 197
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 199
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 201
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 203
    .local v21, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 204
    .local v23, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move-wide/from16 v6, v21

    move-wide/from16 v8, v23

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/wifi/ISemMobileWipsService$Stub;->broadcastBcnIntervalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJ)V

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    goto :goto_152

    .line 181
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":J
    .end local v23    # "_arg6":J
    :pswitch_126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/wifi/ISemMobileWipsFramework$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemMobileWipsFramework;

    move-result-object v0

    .line 182
    .local v0, "_arg0":Lcom/samsung/android/wifi/ISemMobileWipsFramework;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {v10, v0}, Lcom/samsung/android/wifi/ISemMobileWipsService$Stub;->unregisterCallback(Lcom/samsung/android/wifi/ISemMobileWipsFramework;)Z

    move-result v1

    .line 184
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 186
    goto :goto_152

    .line 171
    .end local v0    # "_arg0":Lcom/samsung/android/wifi/ISemMobileWipsFramework;
    .end local v1    # "_result":Z
    :pswitch_13c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/wifi/ISemMobileWipsFramework$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemMobileWipsFramework;

    move-result-object v0

    .line 172
    .restart local v0    # "_arg0":Lcom/samsung/android/wifi/ISemMobileWipsFramework;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {v10, v0}, Lcom/samsung/android/wifi/ISemMobileWipsService$Stub;->registerCallback(Lcom/samsung/android/wifi/ISemMobileWipsFramework;)Z

    move-result v1

    .line 174
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 176
    nop

    .line 315
    .end local v0    # "_arg0":Lcom/samsung/android/wifi/ISemMobileWipsFramework;
    .end local v1    # "_result":Z
    :goto_152
    return v15

    nop

    :pswitch_data_154
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_13c
        :pswitch_126
        :pswitch_f0
        :pswitch_de
        :pswitch_c7
        :pswitch_b4
        :pswitch_a1
        :pswitch_76
        :pswitch_65
        :pswitch_52
        :pswitch_3b
        :pswitch_24
    .end packed-switch
.end method
