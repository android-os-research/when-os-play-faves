.class public abstract Landroid/net/lowpan/ILowpanInterface$Stub;
.super Landroid/os/Binder;
.source "ILowpanInterface.java"

# interfaces
.implements Landroid/net/lowpan/ILowpanInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/ILowpanInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addExternalRoute:I = 0x27

.field static final blacklist TRANSACTION_addListener:I = 0x1f

.field static final blacklist TRANSACTION_addOnMeshPrefix:I = 0x25

.field static final blacklist TRANSACTION_attach:I = 0x16

.field static final blacklist TRANSACTION_beginLowPower:I = 0x1c

.field static final blacklist TRANSACTION_closeCommissioningSession:I = 0x1a

.field static final blacklist TRANSACTION_form:I = 0x15

.field static final blacklist TRANSACTION_getDriverVersion:I = 0x3

.field static final blacklist TRANSACTION_getExtendedAddress:I = 0xf

.field static final blacklist TRANSACTION_getLinkAddresses:I = 0x12

.field static final blacklist TRANSACTION_getLinkNetworks:I = 0x13

.field static final blacklist TRANSACTION_getLowpanCredential:I = 0x11

.field static final blacklist TRANSACTION_getLowpanIdentity:I = 0x10

.field static final blacklist TRANSACTION_getMacAddress:I = 0x6

.field static final blacklist TRANSACTION_getName:I = 0x1

.field static final blacklist TRANSACTION_getNcpVersion:I = 0x2

.field static final blacklist TRANSACTION_getPartitionId:I = 0xe

.field static final blacklist TRANSACTION_getRole:I = 0xd

.field static final blacklist TRANSACTION_getState:I = 0xc

.field static final blacklist TRANSACTION_getSupportedChannels:I = 0x4

.field static final blacklist TRANSACTION_getSupportedNetworkTypes:I = 0x5

.field static final blacklist TRANSACTION_isCommissioned:I = 0xa

.field static final blacklist TRANSACTION_isConnected:I = 0xb

.field static final blacklist TRANSACTION_isEnabled:I = 0x7

.field static final blacklist TRANSACTION_isUp:I = 0x9

.field static final blacklist TRANSACTION_join:I = 0x14

.field static final blacklist TRANSACTION_leave:I = 0x17

.field static final blacklist TRANSACTION_onHostWake:I = 0x1e

.field static final blacklist TRANSACTION_pollForData:I = 0x1d

.field static final blacklist TRANSACTION_removeExternalRoute:I = 0x28

.field static final blacklist TRANSACTION_removeListener:I = 0x20

.field static final blacklist TRANSACTION_removeOnMeshPrefix:I = 0x26

.field static final blacklist TRANSACTION_reset:I = 0x18

.field static final blacklist TRANSACTION_sendToCommissioner:I = 0x1b

.field static final blacklist TRANSACTION_setEnabled:I = 0x8

.field static final blacklist TRANSACTION_startCommissioningSession:I = 0x19

.field static final blacklist TRANSACTION_startEnergyScan:I = 0x23

.field static final blacklist TRANSACTION_startNetScan:I = 0x21

.field static final blacklist TRANSACTION_stopEnergyScan:I = 0x24

.field static final blacklist TRANSACTION_stopNetScan:I = 0x22


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 160
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 161
    const-string v0, "android.net.lowpan.ILowpanInterface"

    invoke-virtual {p0, p0, v0}, Landroid/net/lowpan/ILowpanInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterface;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 169
    if-nez p0, :cond_4

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_4
    const-string v0, "android.net.lowpan.ILowpanInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 173
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/lowpan/ILowpanInterface;

    if-eqz v1, :cond_14

    .line 174
    move-object v1, v0

    check-cast v1, Landroid/net/lowpan/ILowpanInterface;

    return-object v1

    .line 176
    :cond_14
    new-instance v1, Landroid/net/lowpan/ILowpanInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/lowpan/ILowpanInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 185
    packed-switch p0, :pswitch_data_82

    .line 349
    const/4 v0, 0x0

    return-object v0

    .line 345
    :pswitch_5
    const-string v0, "removeExternalRoute"

    return-object v0

    .line 341
    :pswitch_8
    const-string v0, "addExternalRoute"

    return-object v0

    .line 337
    :pswitch_b
    const-string v0, "removeOnMeshPrefix"

    return-object v0

    .line 333
    :pswitch_e
    const-string v0, "addOnMeshPrefix"

    return-object v0

    .line 329
    :pswitch_11
    const-string/jumbo v0, "stopEnergyScan"

    return-object v0

    .line 325
    :pswitch_15
    const-string/jumbo v0, "startEnergyScan"

    return-object v0

    .line 321
    :pswitch_19
    const-string/jumbo v0, "stopNetScan"

    return-object v0

    .line 317
    :pswitch_1d
    const-string/jumbo v0, "startNetScan"

    return-object v0

    .line 313
    :pswitch_21
    const-string v0, "removeListener"

    return-object v0

    .line 309
    :pswitch_24
    const-string v0, "addListener"

    return-object v0

    .line 305
    :pswitch_27
    const-string v0, "onHostWake"

    return-object v0

    .line 301
    :pswitch_2a
    const-string v0, "pollForData"

    return-object v0

    .line 297
    :pswitch_2d
    const-string v0, "beginLowPower"

    return-object v0

    .line 293
    :pswitch_30
    const-string v0, "sendToCommissioner"

    return-object v0

    .line 289
    :pswitch_33
    const-string v0, "closeCommissioningSession"

    return-object v0

    .line 285
    :pswitch_36
    const-string/jumbo v0, "startCommissioningSession"

    return-object v0

    .line 281
    :pswitch_3a
    const-string v0, "reset"

    return-object v0

    .line 277
    :pswitch_3d
    const-string v0, "leave"

    return-object v0

    .line 273
    :pswitch_40
    const-string v0, "attach"

    return-object v0

    .line 269
    :pswitch_43
    const-string v0, "form"

    return-object v0

    .line 265
    :pswitch_46
    const-string v0, "join"

    return-object v0

    .line 261
    :pswitch_49
    const-string v0, "getLinkNetworks"

    return-object v0

    .line 257
    :pswitch_4c
    const-string v0, "getLinkAddresses"

    return-object v0

    .line 253
    :pswitch_4f
    const-string v0, "getLowpanCredential"

    return-object v0

    .line 249
    :pswitch_52
    const-string v0, "getLowpanIdentity"

    return-object v0

    .line 245
    :pswitch_55
    const-string v0, "getExtendedAddress"

    return-object v0

    .line 241
    :pswitch_58
    const-string v0, "getPartitionId"

    return-object v0

    .line 237
    :pswitch_5b
    const-string v0, "getRole"

    return-object v0

    .line 233
    :pswitch_5e
    const-string v0, "getState"

    return-object v0

    .line 229
    :pswitch_61
    const-string v0, "isConnected"

    return-object v0

    .line 225
    :pswitch_64
    const-string v0, "isCommissioned"

    return-object v0

    .line 221
    :pswitch_67
    const-string v0, "isUp"

    return-object v0

    .line 217
    :pswitch_6a
    const-string v0, "setEnabled"

    return-object v0

    .line 213
    :pswitch_6d
    const-string v0, "isEnabled"

    return-object v0

    .line 209
    :pswitch_70
    const-string v0, "getMacAddress"

    return-object v0

    .line 205
    :pswitch_73
    const-string v0, "getSupportedNetworkTypes"

    return-object v0

    .line 201
    :pswitch_76
    const-string v0, "getSupportedChannels"

    return-object v0

    .line 197
    :pswitch_79
    const-string v0, "getDriverVersion"

    return-object v0

    .line 193
    :pswitch_7c
    const-string v0, "getNcpVersion"

    return-object v0

    .line 189
    :pswitch_7f
    const-string v0, "getName"

    return-object v0

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 180
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1351
    const/16 v0, 0x27

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 356
    invoke-static {p1}, Landroid/net/lowpan/ILowpanInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 360
    const-string v0, "android.net.lowpan.ILowpanInterface"

    .line 361
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 362
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    :cond_d
    packed-switch p1, :pswitch_data_236

    .line 372
    packed-switch p1, :pswitch_data_23c

    .line 678
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 368
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    return v1

    .line 671
    :pswitch_1c
    sget-object v2, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 672
    .local v2, "_arg0":Landroid/net/IpPrefix;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 673
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->removeExternalRoute(Landroid/net/IpPrefix;)V

    .line 674
    goto/16 :goto_234

    .line 660
    .end local v2    # "_arg0":Landroid/net/IpPrefix;
    :pswitch_2c
    sget-object v2, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 662
    .restart local v2    # "_arg0":Landroid/net/IpPrefix;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 663
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    invoke-virtual {p0, v2, v3}, Landroid/net/lowpan/ILowpanInterface$Stub;->addExternalRoute(Landroid/net/IpPrefix;I)V

    .line 665
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    goto/16 :goto_234

    .line 652
    .end local v2    # "_arg0":Landroid/net/IpPrefix;
    .end local v3    # "_arg1":I
    :pswitch_43
    sget-object v2, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 653
    .restart local v2    # "_arg0":Landroid/net/IpPrefix;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 654
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->removeOnMeshPrefix(Landroid/net/IpPrefix;)V

    .line 655
    goto/16 :goto_234

    .line 641
    .end local v2    # "_arg0":Landroid/net/IpPrefix;
    :pswitch_53
    sget-object v2, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 643
    .restart local v2    # "_arg0":Landroid/net/IpPrefix;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 644
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {p0, v2, v3}, Landroid/net/lowpan/ILowpanInterface$Stub;->addOnMeshPrefix(Landroid/net/IpPrefix;I)V

    .line 646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    goto/16 :goto_234

    .line 635
    .end local v2    # "_arg0":Landroid/net/IpPrefix;
    .end local v3    # "_arg1":I
    :pswitch_6a
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->stopEnergyScan()V

    .line 636
    goto/16 :goto_234

    .line 624
    :pswitch_6f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 625
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 627
    .local v3, "_arg0":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanEnergyScanCallback;

    move-result-object v4

    .line 628
    .local v4, "_arg1":Landroid/net/lowpan/ILowpanEnergyScanCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {p0, v3, v4}, Landroid/net/lowpan/ILowpanInterface$Stub;->startEnergyScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanEnergyScanCallback;)V

    .line 630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    goto/16 :goto_234

    .line 618
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/Map;
    .end local v4    # "_arg1":Landroid/net/lowpan/ILowpanEnergyScanCallback;
    :pswitch_8e
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->stopNetScan()V

    .line 619
    goto/16 :goto_234

    .line 607
    :pswitch_93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 608
    .restart local v2    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 610
    .restart local v3    # "_arg0":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/lowpan/ILowpanNetScanCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanNetScanCallback;

    move-result-object v4

    .line 611
    .local v4, "_arg1":Landroid/net/lowpan/ILowpanNetScanCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    invoke-virtual {p0, v3, v4}, Landroid/net/lowpan/ILowpanInterface$Stub;->startNetScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanNetScanCallback;)V

    .line 613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    goto/16 :goto_234

    .line 599
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/Map;
    .end local v4    # "_arg1":Landroid/net/lowpan/ILowpanNetScanCallback;
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterfaceListener;

    move-result-object v2

    .line 600
    .local v2, "_arg0":Landroid/net/lowpan/ILowpanInterfaceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 601
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->removeListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V

    .line 602
    goto/16 :goto_234

    .line 590
    .end local v2    # "_arg0":Landroid/net/lowpan/ILowpanInterfaceListener;
    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterfaceListener;

    move-result-object v2

    .line 591
    .restart local v2    # "_arg0":Landroid/net/lowpan/ILowpanInterfaceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->addListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V

    .line 593
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    goto/16 :goto_234

    .line 584
    .end local v2    # "_arg0":Landroid/net/lowpan/ILowpanInterfaceListener;
    :pswitch_d5
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->onHostWake()V

    .line 585
    goto/16 :goto_234

    .line 579
    :pswitch_da
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->pollForData()V

    .line 580
    goto/16 :goto_234

    .line 573
    :pswitch_df
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->beginLowPower()V

    .line 574
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    goto/16 :goto_234

    .line 566
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 567
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->sendToCommissioner([B)V

    .line 569
    goto/16 :goto_234

    .line 559
    .end local v2    # "_arg0":[B
    :pswitch_f3
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->closeCommissioningSession()V

    .line 560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    goto/16 :goto_234

    .line 551
    :pswitch_fb
    sget-object v2, Landroid/net/lowpan/LowpanBeaconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/lowpan/LowpanBeaconInfo;

    .line 552
    .local v2, "_arg0":Landroid/net/lowpan/LowpanBeaconInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->startCommissioningSession(Landroid/net/lowpan/LowpanBeaconInfo;)V

    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    goto/16 :goto_234

    .line 544
    .end local v2    # "_arg0":Landroid/net/lowpan/LowpanBeaconInfo;
    :pswitch_10e
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->reset()V

    .line 545
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    goto/16 :goto_234

    .line 538
    :pswitch_116
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->leave()V

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    goto/16 :goto_234

    .line 530
    :pswitch_11e
    sget-object v2, Landroid/net/lowpan/LowpanProvision;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/lowpan/LowpanProvision;

    .line 531
    .local v2, "_arg0":Landroid/net/lowpan/LowpanProvision;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->attach(Landroid/net/lowpan/LowpanProvision;)V

    .line 533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    goto/16 :goto_234

    .line 521
    .end local v2    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    :pswitch_131
    sget-object v2, Landroid/net/lowpan/LowpanProvision;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/lowpan/LowpanProvision;

    .line 522
    .restart local v2    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 523
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->form(Landroid/net/lowpan/LowpanProvision;)V

    .line 524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    goto/16 :goto_234

    .line 512
    .end local v2    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    :pswitch_144
    sget-object v2, Landroid/net/lowpan/LowpanProvision;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/lowpan/LowpanProvision;

    .line 513
    .restart local v2    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->join(Landroid/net/lowpan/LowpanProvision;)V

    .line 515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    goto/16 :goto_234

    .line 504
    .end local v2    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    :pswitch_157
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getLinkNetworks()[Landroid/net/IpPrefix;

    move-result-object v2

    .line 505
    .local v2, "_result":[Landroid/net/IpPrefix;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 507
    goto/16 :goto_234

    .line 497
    .end local v2    # "_result":[Landroid/net/IpPrefix;
    :pswitch_163
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getLinkAddresses()[Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 500
    goto/16 :goto_234

    .line 490
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_16f
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getLowpanCredential()Landroid/net/lowpan/LowpanCredential;

    move-result-object v2

    .line 491
    .local v2, "_result":Landroid/net/lowpan/LowpanCredential;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 493
    goto/16 :goto_234

    .line 483
    .end local v2    # "_result":Landroid/net/lowpan/LowpanCredential;
    :pswitch_17b
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;

    move-result-object v2

    .line 484
    .local v2, "_result":Landroid/net/lowpan/LowpanIdentity;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 486
    goto/16 :goto_234

    .line 476
    .end local v2    # "_result":Landroid/net/lowpan/LowpanIdentity;
    :pswitch_187
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getExtendedAddress()[B

    move-result-object v2

    .line 477
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 479
    goto/16 :goto_234

    .line 469
    .end local v2    # "_result":[B
    :pswitch_193
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getPartitionId()Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 472
    goto/16 :goto_234

    .line 462
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_19f
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getRole()Ljava/lang/String;

    move-result-object v2

    .line 463
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 465
    goto/16 :goto_234

    .line 455
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1ab
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getState()Ljava/lang/String;

    move-result-object v2

    .line 456
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 458
    goto/16 :goto_234

    .line 448
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1b7
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->isConnected()Z

    move-result v2

    .line 449
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 451
    goto/16 :goto_234

    .line 441
    .end local v2    # "_result":Z
    :pswitch_1c3
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->isCommissioned()Z

    move-result v2

    .line 442
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 444
    goto :goto_234

    .line 434
    .end local v2    # "_result":Z
    :pswitch_1ce
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->isUp()Z

    move-result v2

    .line 435
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 437
    goto :goto_234

    .line 426
    .end local v2    # "_result":Z
    :pswitch_1d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 427
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterface$Stub;->setEnabled(Z)V

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    goto :goto_234

    .line 418
    .end local v2    # "_arg0":Z
    :pswitch_1e7
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->isEnabled()Z

    move-result v2

    .line 419
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 421
    goto :goto_234

    .line 411
    .end local v2    # "_result":Z
    :pswitch_1f2
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getMacAddress()[B

    move-result-object v2

    .line 412
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 414
    goto :goto_234

    .line 404
    .end local v2    # "_result":[B
    :pswitch_1fd
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getSupportedNetworkTypes()[Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 407
    goto :goto_234

    .line 397
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_208
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getSupportedChannels()[Landroid/net/lowpan/LowpanChannelInfo;

    move-result-object v2

    .line 398
    .local v2, "_result":[Landroid/net/lowpan/LowpanChannelInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 400
    goto :goto_234

    .line 390
    .end local v2    # "_result":[Landroid/net/lowpan/LowpanChannelInfo;
    :pswitch_213
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getDriverVersion()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    goto :goto_234

    .line 383
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_21e
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getNcpVersion()Ljava/lang/String;

    move-result-object v2

    .line 384
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    goto :goto_234

    .line 376
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_229
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getName()Ljava/lang/String;

    move-result-object v2

    .line 377
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    nop

    .line 681
    .end local v2    # "_result":Ljava/lang/String;
    :goto_234
    return v1

    nop

    :pswitch_data_236
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_23c
    .packed-switch 0x1
        :pswitch_229
        :pswitch_21e
        :pswitch_213
        :pswitch_208
        :pswitch_1fd
        :pswitch_1f2
        :pswitch_1e7
        :pswitch_1d9
        :pswitch_1ce
        :pswitch_1c3
        :pswitch_1b7
        :pswitch_1ab
        :pswitch_19f
        :pswitch_193
        :pswitch_187
        :pswitch_17b
        :pswitch_16f
        :pswitch_163
        :pswitch_157
        :pswitch_144
        :pswitch_131
        :pswitch_11e
        :pswitch_116
        :pswitch_10e
        :pswitch_fb
        :pswitch_f3
        :pswitch_e7
        :pswitch_df
        :pswitch_da
        :pswitch_d5
        :pswitch_c2
        :pswitch_b2
        :pswitch_93
        :pswitch_8e
        :pswitch_6f
        :pswitch_6a
        :pswitch_53
        :pswitch_43
        :pswitch_2c
        :pswitch_1c
    .end packed-switch
.end method
