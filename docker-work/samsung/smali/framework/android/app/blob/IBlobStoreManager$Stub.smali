.class public abstract Landroid/app/blob/IBlobStoreManager$Stub;
.super Landroid/os/Binder;
.source "IBlobStoreManager.java"

# interfaces
.implements Landroid/app/blob/IBlobStoreManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/blob/IBlobStoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/blob/IBlobStoreManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abandonSession:I = 0x4

.field static final blacklist TRANSACTION_acquireLease:I = 0x5

.field static final blacklist TRANSACTION_createSession:I = 0x1

.field static final blacklist TRANSACTION_deleteBlob:I = 0xb

.field static final blacklist TRANSACTION_getLeaseInfo:I = 0xd

.field static final blacklist TRANSACTION_getLeasedBlobs:I = 0xc

.field static final blacklist TRANSACTION_getRemainingLeaseQuotaBytes:I = 0x8

.field static final blacklist TRANSACTION_openBlob:I = 0x3

.field static final blacklist TRANSACTION_openSession:I = 0x2

.field static final blacklist TRANSACTION_queryBlobsForUser:I = 0xa

.field static final blacklist TRANSACTION_releaseAllLeases:I = 0x7

.field static final blacklist TRANSACTION_releaseLease:I = 0x6

.field static final blacklist TRANSACTION_waitForIdle:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 68
    const-string v0, "android.app.blob.IBlobStoreManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/blob/IBlobStoreManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/blob/IBlobStoreManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 76
    if-nez p0, :cond_4

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_4
    const-string v0, "android.app.blob.IBlobStoreManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 80
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/blob/IBlobStoreManager;

    if-eqz v1, :cond_14

    .line 81
    move-object v1, v0

    check-cast v1, Landroid/app/blob/IBlobStoreManager;

    return-object v1

    .line 83
    :cond_14
    new-instance v1, Landroid/app/blob/IBlobStoreManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/blob/IBlobStoreManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 92
    packed-switch p0, :pswitch_data_32

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 144
    :pswitch_5
    const-string v0, "getLeaseInfo"

    return-object v0

    .line 140
    :pswitch_8
    const-string v0, "getLeasedBlobs"

    return-object v0

    .line 136
    :pswitch_b
    const-string v0, "deleteBlob"

    return-object v0

    .line 132
    :pswitch_e
    const-string/jumbo v0, "queryBlobsForUser"

    return-object v0

    .line 128
    :pswitch_12
    const-string/jumbo v0, "waitForIdle"

    return-object v0

    .line 124
    :pswitch_16
    const-string v0, "getRemainingLeaseQuotaBytes"

    return-object v0

    .line 120
    :pswitch_19
    const-string/jumbo v0, "releaseAllLeases"

    return-object v0

    .line 116
    :pswitch_1d
    const-string/jumbo v0, "releaseLease"

    return-object v0

    .line 112
    :pswitch_21
    const-string v0, "acquireLease"

    return-object v0

    .line 108
    :pswitch_24
    const-string v0, "abandonSession"

    return-object v0

    .line 104
    :pswitch_27
    const-string/jumbo v0, "openBlob"

    return-object v0

    .line 100
    :pswitch_2b
    const-string/jumbo v0, "openSession"

    return-object v0

    .line 96
    :pswitch_2f
    const-string v0, "createSession"

    return-object v0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 87
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 588
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 155
    invoke-static {p1}, Landroid/app/blob/IBlobStoreManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 159
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.app.blob.IBlobStoreManager"

    .line 160
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v0, 0xffffff

    if-gt v8, v0, :cond_15

    .line 161
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    :cond_15
    packed-switch v8, :pswitch_data_14e

    .line 171
    packed-switch v8, :pswitch_data_154

    .line 319
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 167
    :pswitch_20
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    return v12

    .line 308
    :pswitch_24
    sget-object v0, Landroid/app/blob/BlobHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/blob/BlobHandle;

    .line 310
    .local v0, "_arg0":Landroid/app/blob/BlobHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {v7, v0, v1}, Landroid/app/blob/IBlobStoreManager$Stub;->getLeaseInfo(Landroid/app/blob/BlobHandle;Ljava/lang/String;)Landroid/app/blob/LeaseInfo;

    move-result-object v2

    .line 313
    .local v2, "_result":Landroid/app/blob/LeaseInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 315
    goto/16 :goto_14d

    .line 298
    .end local v0    # "_arg0":Landroid/app/blob/BlobHandle;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/app/blob/LeaseInfo;
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {v7, v0}, Landroid/app/blob/IBlobStoreManager$Stub;->getLeasedBlobs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 301
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/blob/BlobHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 303
    goto/16 :goto_14d

    .line 289
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/blob/BlobHandle;>;"
    :pswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 290
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {v7, v0, v1}, Landroid/app/blob/IBlobStoreManager$Stub;->deleteBlob(J)V

    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    goto/16 :goto_14d

    .line 279
    .end local v0    # "_arg0":J
    :pswitch_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 280
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {v7, v0}, Landroid/app/blob/IBlobStoreManager$Stub;->queryBlobsForUser(I)Ljava/util/List;

    move-result-object v1

    .line 282
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/blob/BlobInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 284
    goto/16 :goto_14d

    .line 270
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/blob/BlobInfo;>;"
    :pswitch_74
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallback;

    .line 271
    .local v0, "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {v7, v0}, Landroid/app/blob/IBlobStoreManager$Stub;->waitForIdle(Landroid/os/RemoteCallback;)V

    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    goto/16 :goto_14d

    .line 260
    .end local v0    # "_arg0":Landroid/os/RemoteCallback;
    :pswitch_87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {v7, v0}, Landroid/app/blob/IBlobStoreManager$Stub;->getRemainingLeaseQuotaBytes(Ljava/lang/String;)J

    move-result-wide v1

    .line 263
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {v10, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 265
    goto/16 :goto_14d

    .line 251
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":J
    :pswitch_9a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {v7, v0}, Landroid/app/blob/IBlobStoreManager$Stub;->releaseAllLeases(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    goto/16 :goto_14d

    .line 240
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_a9
    sget-object v0, Landroid/app/blob/BlobHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/blob/BlobHandle;

    .line 242
    .local v0, "_arg0":Landroid/app/blob/BlobHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {v7, v0, v1}, Landroid/app/blob/IBlobStoreManager$Stub;->releaseLease(Landroid/app/blob/BlobHandle;Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    goto/16 :goto_14d

    .line 223
    .end local v0    # "_arg0":Landroid/app/blob/BlobHandle;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_c0
    sget-object v0, Landroid/app/blob/BlobHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/app/blob/BlobHandle;

    .line 225
    .local v13, "_arg0":Landroid/app/blob/BlobHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 227
    .local v14, "_arg1":I
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/CharSequence;

    .line 229
    .local v15, "_arg2":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 231
    .local v16, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 232
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move-object v3, v15

    move-wide/from16 v4, v16

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/blob/IBlobStoreManager$Stub;->acquireLease(Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JLjava/lang/String;)V

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    goto :goto_14d

    .line 212
    .end local v13    # "_arg0":Landroid/app/blob/BlobHandle;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/CharSequence;
    .end local v16    # "_arg3":J
    .end local v18    # "_arg4":Ljava/lang/String;
    :pswitch_f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 214
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {v7, v0, v1, v2}, Landroid/app/blob/IBlobStoreManager$Stub;->abandonSession(JLjava/lang/String;)V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    goto :goto_14d

    .line 200
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_103
    sget-object v0, Landroid/app/blob/BlobHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/blob/BlobHandle;

    .line 202
    .local v0, "_arg0":Landroid/app/blob/BlobHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {v7, v0, v1}, Landroid/app/blob/IBlobStoreManager$Stub;->openBlob(Landroid/app/blob/BlobHandle;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 205
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 207
    goto :goto_14d

    .line 188
    .end local v0    # "_arg0":Landroid/app/blob/BlobHandle;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_11d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 190
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {v7, v0, v1, v2}, Landroid/app/blob/IBlobStoreManager$Stub;->openSession(JLjava/lang/String;)Landroid/app/blob/IBlobStoreSession;

    move-result-object v3

    .line 193
    .local v3, "_result":Landroid/app/blob/IBlobStoreSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 195
    goto :goto_14d

    .line 176
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/app/blob/IBlobStoreSession;
    :pswitch_133
    sget-object v0, Landroid/app/blob/BlobHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/blob/BlobHandle;

    .line 178
    .local v0, "_arg0":Landroid/app/blob/BlobHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {v7, v0, v1}, Landroid/app/blob/IBlobStoreManager$Stub;->createSession(Landroid/app/blob/BlobHandle;Ljava/lang/String;)J

    move-result-wide v2

    .line 181
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {v10, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 183
    nop

    .line 322
    .end local v0    # "_arg0":Landroid/app/blob/BlobHandle;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":J
    :goto_14d
    return v12

    :pswitch_data_14e
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_154
    .packed-switch 0x1
        :pswitch_133
        :pswitch_11d
        :pswitch_103
        :pswitch_f1
        :pswitch_c0
        :pswitch_a9
        :pswitch_9a
        :pswitch_87
        :pswitch_74
        :pswitch_61
        :pswitch_52
        :pswitch_3f
        :pswitch_24
    .end packed-switch
.end method
