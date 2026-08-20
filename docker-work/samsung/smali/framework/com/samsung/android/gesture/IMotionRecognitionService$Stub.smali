.class public abstract Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;
.super Landroid/os/Binder;
.source "IMotionRecognitionService.java"

# interfaces
.implements Lcom/samsung/android/gesture/IMotionRecognitionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/IMotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/IMotionRecognitionService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getEvLuxTableInfo:I = 0xb

.field static final blacklist TRANSACTION_getEvToLux:I = 0xa

.field static final blacklist TRANSACTION_getPickUpMotionStatus:I = 0x3

.field static final blacklist TRANSACTION_getSSPstatus:I = 0x2

.field static final blacklist TRANSACTION_isAvailable:I = 0x9

.field static final blacklist TRANSACTION_registerCallback:I = 0x1

.field static final blacklist TRANSACTION_resetMotionEngine:I = 0x8

.field static final blacklist TRANSACTION_setMotionAngle:I = 0x6

.field static final blacklist TRANSACTION_setMotionTiltLevel:I = 0x7

.field static final blacklist TRANSACTION_setTestSensor:I = 0xc

.field static final blacklist TRANSACTION_startAdaptiveBrightness:I = 0xd

.field static final blacklist TRANSACTION_stopAdaptiveBrightness:I = 0xe

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x4

.field static final blacklist TRANSACTION_useMotionAlways:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "com.samsung.android.gesture.IMotionRecognitionService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gesture/IMotionRecognitionService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 79
    if-nez p0, :cond_4

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_4
    const-string v0, "com.samsung.android.gesture.IMotionRecognitionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-eqz v1, :cond_14

    .line 84
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/gesture/IMotionRecognitionService;

    return-object v1

    .line 86
    :cond_14
    new-instance v1, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 95
    packed-switch p0, :pswitch_data_38

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 151
    :pswitch_5
    const-string/jumbo v0, "stopAdaptiveBrightness"

    return-object v0

    .line 147
    :pswitch_9
    const-string/jumbo v0, "startAdaptiveBrightness"

    return-object v0

    .line 143
    :pswitch_d
    const-string/jumbo v0, "setTestSensor"

    return-object v0

    .line 139
    :pswitch_11
    const-string v0, "getEvLuxTableInfo"

    return-object v0

    .line 135
    :pswitch_14
    const-string v0, "getEvToLux"

    return-object v0

    .line 131
    :pswitch_17
    const-string v0, "isAvailable"

    return-object v0

    .line 127
    :pswitch_1a
    const-string/jumbo v0, "resetMotionEngine"

    return-object v0

    .line 123
    :pswitch_1e
    const-string/jumbo v0, "setMotionTiltLevel"

    return-object v0

    .line 119
    :pswitch_22
    const-string/jumbo v0, "setMotionAngle"

    return-object v0

    .line 115
    :pswitch_26
    const-string/jumbo v0, "useMotionAlways"

    return-object v0

    .line 111
    :pswitch_2a
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 107
    :pswitch_2e
    const-string v0, "getPickUpMotionStatus"

    return-object v0

    .line 103
    :pswitch_31
    const-string v0, "getSSPstatus"

    return-object v0

    .line 99
    :pswitch_34
    const-string/jumbo v0, "registerCallback"

    return-object v0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 90
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 587
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 162
    invoke-static {p1}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    const-string v10, "com.samsung.android.gesture.IMotionRecognitionService"

    .line 167
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_16

    const v0, 0xffffff

    if-gt v8, v0, :cond_16

    .line 168
    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 167
    :cond_16
    move-object/from16 v12, p2

    .line 170
    :goto_18
    packed-switch v8, :pswitch_data_114

    .line 178
    packed-switch v8, :pswitch_data_11a

    .line 315
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 174
    :pswitch_23
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    return v11

    .line 309
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->stopAdaptiveBrightness()V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    goto/16 :goto_113

    .line 303
    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->startAdaptiveBrightness()V

    .line 304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    goto/16 :goto_113

    .line 296
    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->setTestSensor()Z

    move-result v0

    .line 297
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 299
    goto/16 :goto_113

    .line 287
    .end local v0    # "_result":Z
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {v7, v0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->getEvLuxTableInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    goto/16 :goto_113

    .line 277
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    .line 278
    .local v0, "_arg0":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {v7, v0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->getEvToLux([F)[F

    move-result-object v1

    .line 280
    .local v1, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 282
    goto/16 :goto_113

    .line 267
    .end local v0    # "_arg0":[F
    .end local v1    # "_result":[F
    :pswitch_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 268
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {v7, v0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->isAvailable(I)Z

    move-result v1

    .line 270
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 272
    goto/16 :goto_113

    .line 259
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_7c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->resetMotionEngine()I

    move-result v0

    .line 260
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    goto/16 :goto_113

    .line 241
    .end local v0    # "_result":I
    :pswitch_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 243
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 245
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 247
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 249
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 251
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 252
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->setMotionTiltLevel(IIIIII)V

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    goto :goto_113

    .line 230
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 232
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 233
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->setMotionAngle(Landroid/os/IBinder;I)V

    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    goto :goto_113

    .line 219
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 221
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 222
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->useMotionAlways(Landroid/os/IBinder;Z)V

    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto :goto_113

    .line 210
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 211
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {v7, v0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->unregisterCallback(Landroid/os/IBinder;)V

    .line 213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    goto :goto_113

    .line 202
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_e7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->getPickUpMotionStatus()Z

    move-result v0

    .line 203
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 205
    goto :goto_113

    .line 195
    .end local v0    # "_result":Z
    :pswitch_f2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->getSSPstatus()Z

    move-result v0

    .line 196
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 198
    goto :goto_113

    .line 183
    .end local v0    # "_result":Z
    :pswitch_fd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 185
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 187
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 188
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->registerCallback(Landroid/os/IBinder;II)V

    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    nop

    .line 318
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :goto_113
    return v11

    :pswitch_data_114
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_fd
        :pswitch_f2
        :pswitch_e7
        :pswitch_d9
        :pswitch_c7
        :pswitch_b5
        :pswitch_88
        :pswitch_7c
        :pswitch_69
        :pswitch_56
        :pswitch_43
        :pswitch_37
        :pswitch_2f
        :pswitch_27
    .end packed-switch
.end method
