.class public abstract Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;
.super Landroid/os/Binder;
.source "IDeviceInfoManager.java"

# interfaces
.implements Lcom/samsung/android/sepunion/IDeviceInfoManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sepunion/IDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearPendingIntentAsUser:I = 0xa

.field static final blacklist TRANSACTION_getNumPendingIntentAsUser:I = 0xb

.field static final blacklist TRANSACTION_registerPendingIntent:I = 0x4

.field static final blacklist TRANSACTION_registerPendingIntentForCustomEventAsUser:I = 0x6

.field static final blacklist TRANSACTION_registerPendingIntentForIntentAsUser:I = 0x2

.field static final blacklist TRANSACTION_registerPendingIntentForIntentForAllUsers:I = 0x3

.field static final blacklist TRANSACTION_registerPendingIntentForUriAsUser:I = 0x1

.field static final blacklist TRANSACTION_unregisterPendingIntent:I = 0x5

.field static final blacklist TRANSACTION_unregisterPendingIntentForCustomEventAsUser:I = 0x9

.field static final blacklist TRANSACTION_unregisterPendingIntentForIntentAsUser:I = 0x8

.field static final blacklist TRANSACTION_unregisterPendingIntentForUriAsUser:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "com.samsung.android.sepunion.IDeviceInfoManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IDeviceInfoManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_4
    const-string v0, "com.samsung.android.sepunion.IDeviceInfoManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/sepunion/IDeviceInfoManager;

    if-eqz v1, :cond_14

    .line 69
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sepunion/IDeviceInfoManager;

    return-object v1

    .line 71
    :cond_14
    new-instance v1, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 80
    packed-switch p0, :pswitch_data_30

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 124
    :pswitch_5
    const-string v0, "getNumPendingIntentAsUser"

    return-object v0

    .line 120
    :pswitch_8
    const-string v0, "clearPendingIntentAsUser"

    return-object v0

    .line 116
    :pswitch_b
    const-string/jumbo v0, "unregisterPendingIntentForCustomEventAsUser"

    return-object v0

    .line 112
    :pswitch_f
    const-string/jumbo v0, "unregisterPendingIntentForIntentAsUser"

    return-object v0

    .line 108
    :pswitch_13
    const-string/jumbo v0, "unregisterPendingIntentForUriAsUser"

    return-object v0

    .line 104
    :pswitch_17
    const-string/jumbo v0, "registerPendingIntentForCustomEventAsUser"

    return-object v0

    .line 100
    :pswitch_1b
    const-string/jumbo v0, "unregisterPendingIntent"

    return-object v0

    .line 96
    :pswitch_1f
    const-string/jumbo v0, "registerPendingIntent"

    return-object v0

    .line 92
    :pswitch_23
    const-string/jumbo v0, "registerPendingIntentForIntentForAllUsers"

    return-object v0

    .line 88
    :pswitch_27
    const-string/jumbo v0, "registerPendingIntentForIntentAsUser"

    return-object v0

    .line 84
    :pswitch_2b
    const-string/jumbo v0, "registerPendingIntentForUriAsUser"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 75
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 520
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 135
    invoke-static {p1}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 139
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "com.samsung.android.sepunion.IDeviceInfoManager"

    .line 140
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v0, 0xffffff

    if-gt v8, v0, :cond_15

    .line 141
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    :cond_15
    packed-switch v8, :pswitch_data_19e

    .line 151
    packed-switch v8, :pswitch_data_1a4

    .line 313
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 147
    :pswitch_20
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return v12

    .line 300
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 302
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 305
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;->getNumPendingIntentAsUser(ILjava/lang/String;I)I

    move-result v3

    .line 307
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    goto/16 :goto_19c

    .line 290
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 293
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;->clearPendingIntentAsUser(Ljava/lang/String;I)V

    .line 295
    goto/16 :goto_19c

    .line 274
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 276
    .local v6, "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/app/PendingIntent;

    .line 278
    .local v13, "_arg1":Landroid/app/PendingIntent;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/Bundle;

    .line 280
    .local v14, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 282
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 283
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;->unregisterPendingIntentForCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 285
    goto/16 :goto_19c

    .line 260
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/app/PendingIntent;
    .end local v14    # "_arg2":Landroid/os/Bundle;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_7d
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 262
    .local v0, "_arg0":Landroid/content/IntentFilter;
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 264
    .local v1, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 267
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;->unregisterPendingIntentForIntentAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    .line 269
    goto/16 :goto_19c

    .line 246
    .end local v0    # "_arg0":Landroid/content/IntentFilter;
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_9d
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 248
    .local v0, "_arg0":Landroid/net/Uri;
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 250
    .restart local v1    # "_arg1":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 252
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 253
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;->unregisterPendingIntentForUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    .line 255
    goto/16 :goto_19c

    .line 230
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 232
    .restart local v6    # "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/app/PendingIntent;

    .line 234
    .restart local v13    # "_arg1":Landroid/app/PendingIntent;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/Bundle;

    .line 236
    .restart local v14    # "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 238
    .restart local v15    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 239
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;->registerPendingIntentForCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 241
    goto/16 :goto_19c

    .line 216
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/app/PendingIntent;
    .end local v14    # "_arg2":Landroid/os/Bundle;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_eb
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 218
    .local v0, "_arg0":Landroid/content/IntentFilter;
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 220
    .restart local v1    # "_arg1":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 223
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;->unregisterPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    .line 225
    goto/16 :goto_19c

    .line 198
    .end local v0    # "_arg0":Landroid/content/IntentFilter;
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_10b
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/IntentFilter;

    .line 200
    .local v13, "_arg0":Landroid/content/IntentFilter;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/app/PendingIntent;

    .line 202
    .local v14, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 204
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 206
    .local v16, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 208
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 209
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;->registerPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;I)V

    .line 211
    goto :goto_19c

    .line 184
    .end local v13    # "_arg0":Landroid/content/IntentFilter;
    .end local v14    # "_arg1":Landroid/app/PendingIntent;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    :pswitch_13f
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 186
    .restart local v0    # "_arg0":Landroid/content/IntentFilter;
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 188
    .restart local v1    # "_arg1":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 190
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 191
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;->registerPendingIntentForIntentForAllUsers(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    .line 193
    goto :goto_19c

    .line 170
    .end local v0    # "_arg0":Landroid/content/IntentFilter;
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_15e
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 172
    .restart local v0    # "_arg0":Landroid/content/IntentFilter;
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 174
    .restart local v1    # "_arg1":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 176
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 177
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;->registerPendingIntentForIntentAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    .line 179
    goto :goto_19c

    .line 156
    .end local v0    # "_arg0":Landroid/content/IntentFilter;
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_17d
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 158
    .local v0, "_arg0":Landroid/net/Uri;
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 160
    .restart local v1    # "_arg1":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 162
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 163
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;->registerPendingIntentForUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    .line 165
    nop

    .line 316
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :goto_19c
    return v12

    nop

    :pswitch_data_19e
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_1a4
    .packed-switch 0x1
        :pswitch_17d
        :pswitch_15e
        :pswitch_13f
        :pswitch_10b
        :pswitch_eb
        :pswitch_bd
        :pswitch_9d
        :pswitch_7d
        :pswitch_4f
        :pswitch_3f
        :pswitch_24
    .end packed-switch
.end method
