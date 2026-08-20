.class public abstract Lcom/sec/ims/ss/IUtService$Stub;
.super Landroid/os/Binder;
.source "IUtService.java"

# interfaces
.implements Lcom/sec/ims/ss/IUtService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/ss/IUtService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ss/IUtService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_deRegisterForUtEvent:I = 0x2

.field static final TRANSACTION_isUtEnabled:I = 0x11

.field static final TRANSACTION_queryCLIP:I = 0x7

.field static final TRANSACTION_queryCLIR:I = 0x6

.field static final TRANSACTION_queryCOLP:I = 0x9

.field static final TRANSACTION_queryCOLR:I = 0x8

.field static final TRANSACTION_queryCallBarring:I = 0x3

.field static final TRANSACTION_queryCallForward:I = 0x4

.field static final TRANSACTION_queryCallWaiting:I = 0x5

.field static final TRANSACTION_registerForUtEvent:I = 0x1

.field static final TRANSACTION_updateCLIP:I = 0xe

.field static final TRANSACTION_updateCLIR:I = 0xd

.field static final TRANSACTION_updateCOLP:I = 0x10

.field static final TRANSACTION_updateCOLR:I = 0xf

.field static final TRANSACTION_updateCallBarring:I = 0xa

.field static final TRANSACTION_updateCallForward:I = 0xb

.field static final TRANSACTION_updateCallWaiting:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 87
    const-string v0, "com.sec.ims.ss.IUtService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/ss/IUtService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ss/IUtService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 95
    if-nez p0, :cond_4

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_4
    const-string v0, "com.sec.ims.ss.IUtService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 99
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/ss/IUtService;

    if-eqz v1, :cond_14

    .line 100
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/ss/IUtService;

    return-object v1

    .line 102
    :cond_14
    new-instance v1, Lcom/sec/ims/ss/IUtService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/ss/IUtService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 106
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 110
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    const-string v10, "com.sec.ims.ss.IUtService"

    .line 111
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_16

    const v0, 0xffffff

    if-gt v8, v0, :cond_16

    .line 112
    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 111
    :cond_16
    move-object/from16 v12, p2

    .line 114
    :goto_18
    packed-switch v8, :pswitch_data_1d4

    .line 122
    packed-switch v8, :pswitch_data_1da

    .line 338
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 118
    :pswitch_23
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v11

    .line 329
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 330
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {v7, v0}, Lcom/sec/ims/ss/IUtService$Stub;->isUtEnabled(I)Z

    move-result v1

    .line 332
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 334
    goto/16 :goto_1d2

    .line 317
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 319
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 320
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ss/IUtService$Stub;->updateCOLP(IZ)I

    move-result v2

    .line 322
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    goto/16 :goto_1d2

    .line 305
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 307
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 308
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ss/IUtService$Stub;->updateCOLR(II)I

    move-result v2

    .line 310
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    goto/16 :goto_1d2

    .line 293
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 295
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 296
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ss/IUtService$Stub;->updateCLIP(IZ)I

    move-result v2

    .line 298
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    goto/16 :goto_1d2

    .line 281
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :pswitch_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 283
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 284
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ss/IUtService$Stub;->updateCLIR(II)I

    move-result v2

    .line 286
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    goto/16 :goto_1d2

    .line 267
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 269
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 271
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 272
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {v7, v0, v1, v2}, Lcom/sec/ims/ss/IUtService$Stub;->updateCallWaiting(IZI)I

    move-result v3

    .line 274
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    goto/16 :goto_1d2

    .line 247
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 249
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 251
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 253
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 255
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 257
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 258
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/sec/ims/ss/IUtService$Stub;->updateCallForward(IIILjava/lang/String;II)I

    move-result v0

    .line 260
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    goto/16 :goto_1d2

    .line 227
    .end local v0    # "_result":I
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 229
    .restart local v13    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 231
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 233
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 235
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 237
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v18

    .line 238
    .local v18, "_arg5":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/sec/ims/ss/IUtService$Stub;->updateCallBarring(IIIILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 240
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    goto/16 :goto_1d2

    .line 217
    .end local v0    # "_result":I
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":[Ljava/lang/String;
    :pswitch_115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 218
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {v7, v0}, Lcom/sec/ims/ss/IUtService$Stub;->queryCOLP(I)I

    move-result v1

    .line 220
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    goto/16 :goto_1d2

    .line 207
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 208
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {v7, v0}, Lcom/sec/ims/ss/IUtService$Stub;->queryCOLR(I)I

    move-result v1

    .line 210
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    goto/16 :goto_1d2

    .line 197
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_13b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 198
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {v7, v0}, Lcom/sec/ims/ss/IUtService$Stub;->queryCLIP(I)I

    move-result v1

    .line 200
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    goto/16 :goto_1d2

    .line 187
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_14e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 188
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {v7, v0}, Lcom/sec/ims/ss/IUtService$Stub;->queryCLIR(I)I

    move-result v1

    .line 190
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    goto :goto_1d2

    .line 177
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 178
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {v7, v0}, Lcom/sec/ims/ss/IUtService$Stub;->queryCallWaiting(I)I

    move-result v1

    .line 180
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    goto :goto_1d2

    .line 163
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {v7, v0, v1, v2}, Lcom/sec/ims/ss/IUtService$Stub;->queryCallForward(IILjava/lang/String;)I

    move-result v3

    .line 170
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    goto :goto_1d2

    .line 149
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_18c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 153
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {v7, v0, v1, v2}, Lcom/sec/ims/ss/IUtService$Stub;->queryCallBarring(III)I

    move-result v3

    .line 156
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    goto :goto_1d2

    .line 138
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_1a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/ss/IImsUtEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ss/IImsUtEventListener;

    move-result-object v1

    .line 141
    .local v1, "_arg1":Lcom/sec/ims/ss/IImsUtEventListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ss/IUtService$Stub;->deRegisterForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    goto :goto_1d2

    .line 127
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/sec/ims/ss/IImsUtEventListener;
    :pswitch_1bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 129
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/ss/IImsUtEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ss/IImsUtEventListener;

    move-result-object v1

    .line 130
    .restart local v1    # "_arg1":Lcom/sec/ims/ss/IImsUtEventListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ss/IUtService$Stub;->registerForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V

    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    nop

    .line 341
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/sec/ims/ss/IImsUtEventListener;
    :goto_1d2
    return v11

    nop

    :pswitch_data_1d4
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_1da
    .packed-switch 0x1
        :pswitch_1bc
        :pswitch_1a6
        :pswitch_18c
        :pswitch_172
        :pswitch_160
        :pswitch_14e
        :pswitch_13b
        :pswitch_128
        :pswitch_115
        :pswitch_e3
        :pswitch_b1
        :pswitch_96
        :pswitch_7f
        :pswitch_68
        :pswitch_51
        :pswitch_3a
        :pswitch_27
    .end packed-switch
.end method
