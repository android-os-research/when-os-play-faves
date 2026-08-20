.class public abstract Landroid/permission/IPermissionManager$Stub;
.super Landroid/os/Binder;
.source "IPermissionManager.java"

# interfaces
.implements Landroid/permission/IPermissionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/IPermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/IPermissionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addAllowlistedRestrictedPermission:I = 0xd

.field static final blacklist TRANSACTION_addOnPermissionsChangeListener:I = 0xa

.field static final blacklist TRANSACTION_addPermission:I = 0x5

.field static final blacklist TRANSACTION_getAllPermissionGroups:I = 0x1

.field static final blacklist TRANSACTION_getAllowlistedRestrictedPermissions:I = 0xc

.field static final blacklist TRANSACTION_getAutoRevokeExemptionGrantedPackages:I = 0x18

.field static final blacklist TRANSACTION_getAutoRevokeExemptionRequestedPackages:I = 0x17

.field static final blacklist TRANSACTION_getPermissionFlags:I = 0x7

.field static final blacklist TRANSACTION_getPermissionGroupInfo:I = 0x2

.field static final blacklist TRANSACTION_getPermissionInfo:I = 0x3

.field static final blacklist TRANSACTION_getSplitPermissions:I = 0x14

.field static final blacklist TRANSACTION_grantRuntimePermission:I = 0xf

.field static final blacklist TRANSACTION_isAutoRevokeExempted:I = 0x1a

.field static final blacklist TRANSACTION_isPermissionRevokedByPolicy:I = 0x13

.field static final blacklist TRANSACTION_isRegisteredAttributionSource:I = 0x1c

.field static final blacklist TRANSACTION_queryPermissionsByGroup:I = 0x4

.field static final blacklist TRANSACTION_registerAttributionSource:I = 0x1b

.field static final blacklist TRANSACTION_removeAllowlistedRestrictedPermission:I = 0xe

.field static final blacklist TRANSACTION_removeOnPermissionsChangeListener:I = 0xb

.field static final blacklist TRANSACTION_removePermission:I = 0x6

.field static final blacklist TRANSACTION_revokePostNotificationPermissionWithoutKillForTest:I = 0x11

.field static final blacklist TRANSACTION_revokeRuntimePermission:I = 0x10

.field static final blacklist TRANSACTION_setAutoRevokeExempted:I = 0x19

.field static final blacklist TRANSACTION_shouldShowRequestPermissionRationale:I = 0x12

.field static final blacklist TRANSACTION_startOneTimePermissionSession:I = 0x15

.field static final blacklist TRANSACTION_stopOneTimePermissionSession:I = 0x16

.field static final blacklist TRANSACTION_updatePermissionFlags:I = 0x8

.field static final blacklist TRANSACTION_updatePermissionFlagsForAllApps:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 126
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 127
    const-string v0, "android.permission.IPermissionManager"

    invoke-virtual {p0, p0, v0}, Landroid/permission/IPermissionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 135
    if-nez p0, :cond_4

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_4
    const-string v0, "android.permission.IPermissionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 139
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/permission/IPermissionManager;

    if-eqz v1, :cond_14

    .line 140
    move-object v1, v0

    check-cast v1, Landroid/permission/IPermissionManager;

    return-object v1

    .line 142
    :cond_14
    new-instance v1, Landroid/permission/IPermissionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/permission/IPermissionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 151
    packed-switch p0, :pswitch_data_6e

    .line 267
    const/4 v0, 0x0

    return-object v0

    .line 263
    :pswitch_5
    const-string/jumbo v0, "isRegisteredAttributionSource"

    return-object v0

    .line 259
    :pswitch_9
    const-string/jumbo v0, "registerAttributionSource"

    return-object v0

    .line 255
    :pswitch_d
    const-string/jumbo v0, "isAutoRevokeExempted"

    return-object v0

    .line 251
    :pswitch_11
    const-string/jumbo v0, "setAutoRevokeExempted"

    return-object v0

    .line 247
    :pswitch_15
    const-string v0, "getAutoRevokeExemptionGrantedPackages"

    return-object v0

    .line 243
    :pswitch_18
    const-string v0, "getAutoRevokeExemptionRequestedPackages"

    return-object v0

    .line 239
    :pswitch_1b
    const-string/jumbo v0, "stopOneTimePermissionSession"

    return-object v0

    .line 235
    :pswitch_1f
    const-string/jumbo v0, "startOneTimePermissionSession"

    return-object v0

    .line 231
    :pswitch_23
    const-string/jumbo v0, "getSplitPermissions"

    return-object v0

    .line 227
    :pswitch_27
    const-string/jumbo v0, "isPermissionRevokedByPolicy"

    return-object v0

    .line 223
    :pswitch_2b
    const-string/jumbo v0, "shouldShowRequestPermissionRationale"

    return-object v0

    .line 219
    :pswitch_2f
    const-string/jumbo v0, "revokePostNotificationPermissionWithoutKillForTest"

    return-object v0

    .line 215
    :pswitch_33
    const-string/jumbo v0, "revokeRuntimePermission"

    return-object v0

    .line 211
    :pswitch_37
    const-string/jumbo v0, "grantRuntimePermission"

    return-object v0

    .line 207
    :pswitch_3b
    const-string/jumbo v0, "removeAllowlistedRestrictedPermission"

    return-object v0

    .line 203
    :pswitch_3f
    const-string v0, "addAllowlistedRestrictedPermission"

    return-object v0

    .line 199
    :pswitch_42
    const-string v0, "getAllowlistedRestrictedPermissions"

    return-object v0

    .line 195
    :pswitch_45
    const-string/jumbo v0, "removeOnPermissionsChangeListener"

    return-object v0

    .line 191
    :pswitch_49
    const-string v0, "addOnPermissionsChangeListener"

    return-object v0

    .line 187
    :pswitch_4c
    const-string/jumbo v0, "updatePermissionFlagsForAllApps"

    return-object v0

    .line 183
    :pswitch_50
    const-string/jumbo v0, "updatePermissionFlags"

    return-object v0

    .line 179
    :pswitch_54
    const-string/jumbo v0, "getPermissionFlags"

    return-object v0

    .line 175
    :pswitch_58
    const-string/jumbo v0, "removePermission"

    return-object v0

    .line 171
    :pswitch_5c
    const-string v0, "addPermission"

    return-object v0

    .line 167
    :pswitch_5f
    const-string/jumbo v0, "queryPermissionsByGroup"

    return-object v0

    .line 163
    :pswitch_63
    const-string/jumbo v0, "getPermissionInfo"

    return-object v0

    .line 159
    :pswitch_67
    const-string/jumbo v0, "getPermissionGroupInfo"

    return-object v0

    .line 155
    :pswitch_6b
    const-string v0, "getAllPermissionGroups"

    return-object v0

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_49
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 146
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1199
    const/16 v0, 0x1b

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 274
    invoke-static {p1}, Landroid/permission/IPermissionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 278
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.permission.IPermissionManager"

    .line 279
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v0, 0xffffff

    if-gt v8, v0, :cond_15

    .line 280
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    :cond_15
    packed-switch v8, :pswitch_data_2c2

    .line 290
    packed-switch v8, :pswitch_data_2c8

    .line 638
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 286
    :pswitch_20
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    return v12

    .line 629
    :pswitch_24
    sget-object v0, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSourceState;

    .line 630
    .local v0, "_arg0":Landroid/content/AttributionSourceState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    invoke-virtual {v7, v0}, Landroid/permission/IPermissionManager$Stub;->isRegisteredAttributionSource(Landroid/content/AttributionSourceState;)Z

    move-result v1

    .line 632
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 634
    goto/16 :goto_2c1

    .line 620
    .end local v0    # "_arg0":Landroid/content/AttributionSourceState;
    .end local v1    # "_result":Z
    :pswitch_3b
    sget-object v0, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSourceState;

    .line 621
    .restart local v0    # "_arg0":Landroid/content/AttributionSourceState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-virtual {v7, v0}, Landroid/permission/IPermissionManager$Stub;->registerAttributionSource(Landroid/content/AttributionSourceState;)V

    .line 623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    goto/16 :goto_2c1

    .line 608
    .end local v0    # "_arg0":Landroid/content/AttributionSourceState;
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 611
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    invoke-virtual {v7, v0, v1}, Landroid/permission/IPermissionManager$Stub;->isAutoRevokeExempted(Ljava/lang/String;I)Z

    move-result v2

    .line 613
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 615
    goto/16 :goto_2c1

    .line 594
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 596
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 598
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 599
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {v7, v0, v1, v2}, Landroid/permission/IPermissionManager$Stub;->setAutoRevokeExempted(Ljava/lang/String;ZI)Z

    move-result v3

    .line 601
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 603
    goto/16 :goto_2c1

    .line 584
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 585
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {v7, v0}, Landroid/permission/IPermissionManager$Stub;->getAutoRevokeExemptionGrantedPackages(I)Ljava/util/List;

    move-result-object v1

    .line 587
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 589
    goto/16 :goto_2c1

    .line 574
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 575
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-virtual {v7, v0}, Landroid/permission/IPermissionManager$Stub;->getAutoRevokeExemptionRequestedPackages(I)Ljava/util/List;

    move-result-object v1

    .line 577
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 579
    goto/16 :goto_2c1

    .line 563
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 566
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {v7, v0, v1}, Landroid/permission/IPermissionManager$Stub;->stopOneTimePermissionSession(Ljava/lang/String;I)V

    .line 568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    goto/16 :goto_2c1

    .line 548
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_b9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 550
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 552
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 554
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 555
    .local v17, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move-wide v3, v15

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Landroid/permission/IPermissionManager$Stub;->startOneTimePermissionSession(Ljava/lang/String;IJJ)V

    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    goto/16 :goto_2c1

    .line 540
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":J
    .end local v17    # "_arg3":J
    :pswitch_db
    invoke-virtual/range {p0 .. p0}, Landroid/permission/IPermissionManager$Stub;->getSplitPermissions()Ljava/util/List;

    move-result-object v0

    .line 541
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 543
    goto/16 :goto_2c1

    .line 527
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    :pswitch_e7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 532
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {v7, v0, v1, v2}, Landroid/permission/IPermissionManager$Stub;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 534
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 536
    goto/16 :goto_2c1

    .line 513
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 515
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 517
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 518
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {v7, v0, v1, v2}, Landroid/permission/IPermissionManager$Stub;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 520
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 522
    goto/16 :goto_2c1

    .line 502
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_11d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 504
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 505
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {v7, v0, v1}, Landroid/permission/IPermissionManager$Stub;->revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V

    .line 507
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    goto/16 :goto_2c1

    .line 487
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 489
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 493
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/permission/IPermissionManager$Stub;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    goto/16 :goto_2c1

    .line 474
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_14b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 476
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 478
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 479
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {v7, v0, v1, v2}, Landroid/permission/IPermissionManager$Stub;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    goto/16 :goto_2c1

    .line 458
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 460
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 462
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 464
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 465
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/permission/IPermissionManager$Stub;->removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v4

    .line 467
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 469
    goto/16 :goto_2c1

    .line 442
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 444
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 446
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 448
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 449
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/permission/IPermissionManager$Stub;->addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v4

    .line 451
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 453
    goto/16 :goto_2c1

    .line 428
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_1a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 430
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 432
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 433
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {v7, v0, v1, v2}, Landroid/permission/IPermissionManager$Stub;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 435
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 437
    goto/16 :goto_2c1

    .line 419
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/permission/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IOnPermissionsChangeListener;

    move-result-object v0

    .line 420
    .local v0, "_arg0":Landroid/permission/IOnPermissionsChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {v7, v0}, Landroid/permission/IPermissionManager$Stub;->removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    goto/16 :goto_2c1

    .line 410
    .end local v0    # "_arg0":Landroid/permission/IOnPermissionsChangeListener;
    :pswitch_1ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/permission/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IOnPermissionsChangeListener;

    move-result-object v0

    .line 411
    .restart local v0    # "_arg0":Landroid/permission/IOnPermissionsChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {v7, v0}, Landroid/permission/IPermissionManager$Stub;->addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    goto/16 :goto_2c1

    .line 397
    .end local v0    # "_arg0":Landroid/permission/IOnPermissionsChangeListener;
    :pswitch_1e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 399
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 401
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 402
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {v7, v0, v1, v2}, Landroid/permission/IPermissionManager$Stub;->updatePermissionFlagsForAllApps(III)V

    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    goto/16 :goto_2c1

    .line 378
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_1f8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 380
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 382
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 384
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 386
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 388
    .local v17, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 389
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/permission/IPermissionManager$Stub;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V

    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    goto/16 :goto_2c1

    .line 364
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":I
    :pswitch_226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 369
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {v7, v0, v1, v2}, Landroid/permission/IPermissionManager$Stub;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 371
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    goto/16 :goto_2c1

    .line 355
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 356
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {v7, v0}, Landroid/permission/IPermissionManager$Stub;->removePermission(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    goto :goto_2c1

    .line 343
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_24f
    sget-object v0, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionInfo;

    .line 345
    .local v0, "_arg0":Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 346
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {v7, v0, v1}, Landroid/permission/IPermissionManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;Z)Z

    move-result v2

    .line 348
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 350
    goto :goto_2c1

    .line 331
    .end local v0    # "_arg0":Landroid/content/pm/PermissionInfo;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 334
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {v7, v0, v1}, Landroid/permission/IPermissionManager$Stub;->queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 336
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 338
    goto :goto_2c1

    .line 317
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_27f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 319
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 322
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {v7, v0, v1, v2}, Landroid/permission/IPermissionManager$Stub;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    .line 324
    .local v3, "_result":Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {v10, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 326
    goto :goto_2c1

    .line 305
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/content/pm/PermissionInfo;
    :pswitch_299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 307
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 308
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {v7, v0, v1}, Landroid/permission/IPermissionManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v2

    .line 310
    .local v2, "_result":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 312
    goto :goto_2c1

    .line 295
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/pm/PermissionGroupInfo;
    :pswitch_2af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 296
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {v7, v0}, Landroid/permission/IPermissionManager$Stub;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 298
    .local v1, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 300
    nop

    .line 641
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/content/pm/ParceledListSlice;
    :goto_2c1
    return v12

    :pswitch_data_2c2
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_2c8
    .packed-switch 0x1
        :pswitch_2af
        :pswitch_299
        :pswitch_27f
        :pswitch_269
        :pswitch_24f
        :pswitch_241
        :pswitch_226
        :pswitch_1f8
        :pswitch_1e1
        :pswitch_1ce
        :pswitch_1bb
        :pswitch_1a0
        :pswitch_181
        :pswitch_162
        :pswitch_14b
        :pswitch_130
        :pswitch_11d
        :pswitch_102
        :pswitch_e7
        :pswitch_db
        :pswitch_b9
        :pswitch_a6
        :pswitch_93
        :pswitch_80
        :pswitch_65
        :pswitch_4e
        :pswitch_3b
        :pswitch_24
    .end packed-switch
.end method
