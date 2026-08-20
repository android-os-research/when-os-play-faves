.class public abstract Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;
.super Landroid/os/Binder;
.source "ISemWifiP2pManager.java"

# interfaces
.implements Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_controlOpenWifiScanTimer:I = 0x5

.field static final blacklist TRANSACTION_discoverPeers:I = 0xb

.field static final blacklist TRANSACTION_getChannelsMhzForBand:I = 0xd

.field static final blacklist TRANSACTION_getInUsePackageList:I = 0x6

.field static final blacklist TRANSACTION_getP2pFactoryMacAddress:I = 0xc

.field static final blacklist TRANSACTION_getWifiP2pState:I = 0x1

.field static final blacklist TRANSACTION_removeClient:I = 0xa

.field static final blacklist TRANSACTION_setInUsePackage:I = 0x7

.field static final blacklist TRANSACTION_setListenOffloading:I = 0x4

.field static final blacklist TRANSACTION_setMsMiceInfo:I = 0x2

.field static final blacklist TRANSACTION_setScreenSharing:I = 0x3

.field static final blacklist TRANSACTION_unsetAllInUsePackage:I = 0x9

.field static final blacklist TRANSACTION_unsetInUsePackage:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "com.samsung.android.wifi.p2p.ISemWifiP2pManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 77
    if-nez p0, :cond_4

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_4
    const-string v0, "com.samsung.android.wifi.p2p.ISemWifiP2pManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 81
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    if-eqz v1, :cond_14

    .line 82
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    return-object v1

    .line 84
    :cond_14
    new-instance v1, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 93
    packed-switch p0, :pswitch_data_34

    .line 149
    const/4 v0, 0x0

    return-object v0

    .line 145
    :pswitch_5
    const-string v0, "getChannelsMhzForBand"

    return-object v0

    .line 141
    :pswitch_8
    const-string v0, "getP2pFactoryMacAddress"

    return-object v0

    .line 137
    :pswitch_b
    const-string v0, "discoverPeers"

    return-object v0

    .line 133
    :pswitch_e
    const-string/jumbo v0, "removeClient"

    return-object v0

    .line 129
    :pswitch_12
    const-string/jumbo v0, "unsetAllInUsePackage"

    return-object v0

    .line 125
    :pswitch_16
    const-string/jumbo v0, "unsetInUsePackage"

    return-object v0

    .line 121
    :pswitch_1a
    const-string/jumbo v0, "setInUsePackage"

    return-object v0

    .line 117
    :pswitch_1e
    const-string v0, "getInUsePackageList"

    return-object v0

    .line 113
    :pswitch_21
    const-string v0, "controlOpenWifiScanTimer"

    return-object v0

    .line 109
    :pswitch_24
    const-string/jumbo v0, "setListenOffloading"

    return-object v0

    .line 105
    :pswitch_28
    const-string/jumbo v0, "setScreenSharing"

    return-object v0

    .line 101
    :pswitch_2c
    const-string/jumbo v0, "setMsMiceInfo"

    return-object v0

    .line 97
    :pswitch_30
    const-string v0, "getWifiP2pState"

    return-object v0

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
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

    .line 88
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 572
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 156
    invoke-static {p1}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 160
    const-string v0, "com.samsung.android.wifi.p2p.ISemWifiP2pManager"

    .line 161
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 162
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    :cond_d
    packed-switch p1, :pswitch_data_118

    .line 172
    packed-switch p1, :pswitch_data_11e

    .line 317
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 168
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    return v1

    .line 308
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 309
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->getChannelsMhzForBand(I)[I

    move-result-object v3

    .line 311
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 313
    goto/16 :goto_116

    .line 300
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[I
    :pswitch_2f
    invoke-virtual {p0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->getP2pFactoryMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    .line 301
    .local v2, "_result":Landroid/net/MacAddress;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 303
    goto/16 :goto_116

    .line 290
    .end local v2    # "_result":Landroid/net/MacAddress;
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 292
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;

    move-result-object v3

    .line 293
    .local v3, "_arg1":Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->discoverPeers(ILcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto/16 :goto_116

    .line 279
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;

    move-result-object v3

    .line 282
    .restart local v3    # "_arg1":Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->removeClient(Ljava/lang/String;Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    goto/16 :goto_116

    .line 270
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 271
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->unsetAllInUsePackage(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    goto/16 :goto_116

    .line 255
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 257
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 262
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->unsetInUsePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    goto/16 :goto_116

    .line 240
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Z
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 242
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 244
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 246
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 247
    .restart local v5    # "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->setInUsePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto :goto_116

    .line 230
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Z
    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->getInUsePackageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 233
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 235
    goto :goto_116

    .line 221
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 222
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->controlOpenWifiScanTimer(I)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto :goto_116

    .line 206
    .end local v2    # "_arg0":I
    :pswitch_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 210
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 212
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 213
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->setListenOffloading(IIII)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    goto :goto_116

    .line 197
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 198
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->setScreenSharing(Z)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto :goto_116

    .line 184
    .end local v2    # "_arg0":Z
    :pswitch_f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 186
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->setMsMiceInfo(ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_116

    .line 176
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_10b
    invoke-virtual {p0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->getWifiP2pState()I

    move-result v2

    .line 177
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    nop

    .line 320
    .end local v2    # "_result":I
    :goto_116
    return v1

    nop

    :pswitch_data_118
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_10b
        :pswitch_f5
        :pswitch_e7
        :pswitch_cd
        :pswitch_bf
        :pswitch_ad
        :pswitch_93
        :pswitch_78
        :pswitch_69
        :pswitch_52
        :pswitch_3b
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
