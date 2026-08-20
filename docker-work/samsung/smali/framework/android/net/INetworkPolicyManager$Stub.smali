.class public abstract Landroid/net/INetworkPolicyManager$Stub;
.super Landroid/os/Binder;
.source "INetworkPolicyManager.java"

# interfaces
.implements Landroid/net/INetworkPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkPolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkPolicyManager"

.field static final greylist-max-o TRANSACTION_addUidPolicy:I = 0x2

.field static final greylist-max-o TRANSACTION_factoryReset:I = 0x18

.field static final blacklist TRANSACTION_getAllFirewallRuleMobileData:I = 0x1b

.field static final blacklist TRANSACTION_getFirewallRuleMobileData:I = 0x20

.field static final blacklist TRANSACTION_getFirewallRuleWifi:I = 0x21

.field static final blacklist TRANSACTION_getMultipathPreference:I = 0x11

.field static final greylist-max-o TRANSACTION_getNetworkPolicies:I = 0x9

.field static final greylist-max-o TRANSACTION_getRestrictBackground:I = 0xc

.field static final greylist-max-o TRANSACTION_getRestrictBackgroundByCaller:I = 0xd

.field static final blacklist TRANSACTION_getRestrictBackgroundStatus:I = 0xe

.field static final blacklist TRANSACTION_getSubscriptionPlan:I = 0x12

.field static final greylist-max-o TRANSACTION_getSubscriptionPlans:I = 0x14

.field static final greylist-max-o TRANSACTION_getSubscriptionPlansOwner:I = 0x16

.field static final greylist-max-o TRANSACTION_getUidPolicy:I = 0x4

.field static final greylist-max-o TRANSACTION_getUidsWithPolicy:I = 0x5

.field static final greylist-max-o TRANSACTION_isUidNetworkingBlocked:I = 0x19

.field static final blacklist TRANSACTION_isUidRestrictedOnMeteredNetworks:I = 0x1a

.field static final blacklist TRANSACTION_notifyStatsProviderWarningOrLimitReached:I = 0x13

.field static final blacklist TRANSACTION_onApplicationKill:I = 0x22

.field static final greylist-max-o TRANSACTION_registerListener:I = 0x6

.field static final greylist-max-o TRANSACTION_removeUidPolicy:I = 0x3

.field static final greylist-max-o TRANSACTION_setDeviceIdleMode:I = 0xf

.field static final blacklist TRANSACTION_setFirewallRuleMobileData:I = 0x1c

.field static final blacklist TRANSACTION_setFirewallRuleMobileDataMap:I = 0x1e

.field static final blacklist TRANSACTION_setFirewallRuleWifi:I = 0x1d

.field static final blacklist TRANSACTION_setFirewallRuleWifiMap:I = 0x1f

.field static final greylist-max-o TRANSACTION_setNetworkPolicies:I = 0x8

.field static final greylist-max-o TRANSACTION_setRestrictBackground:I = 0xb

.field static final greylist-max-o TRANSACTION_setSubscriptionOverride:I = 0x17

.field static final greylist-max-o TRANSACTION_setSubscriptionPlans:I = 0x15

.field static final greylist-max-o TRANSACTION_setUidPolicy:I = 0x1

.field static final greylist-max-o TRANSACTION_setWifiMeteredOverride:I = 0x10

.field static final greylist-max-o TRANSACTION_snoozeLimit:I = 0xa

.field static final greylist-max-o TRANSACTION_unregisterListener:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 153
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 154
    const-string v0, "android.net.INetworkPolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 162
    if-nez p0, :cond_4

    .line 163
    const/4 v0, 0x0

    return-object v0

    .line 165
    :cond_4
    const-string v0, "android.net.INetworkPolicyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 166
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetworkPolicyManager;

    if-eqz v1, :cond_14

    .line 167
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkPolicyManager;

    return-object v1

    .line 169
    :cond_14
    new-instance v1, Landroid/net/INetworkPolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 178
    packed-switch p0, :pswitch_data_72

    .line 318
    const/4 v0, 0x0

    return-object v0

    .line 314
    :pswitch_5
    const-string v0, "onApplicationKill"

    return-object v0

    .line 310
    :pswitch_8
    const-string v0, "getFirewallRuleWifi"

    return-object v0

    .line 306
    :pswitch_b
    const-string v0, "getFirewallRuleMobileData"

    return-object v0

    .line 302
    :pswitch_e
    const-string v0, "setFirewallRuleWifiMap"

    return-object v0

    .line 298
    :pswitch_11
    const-string v0, "setFirewallRuleMobileDataMap"

    return-object v0

    .line 294
    :pswitch_14
    const-string v0, "setFirewallRuleWifi"

    return-object v0

    .line 290
    :pswitch_17
    const-string v0, "setFirewallRuleMobileData"

    return-object v0

    .line 286
    :pswitch_1a
    const-string v0, "getAllFirewallRuleMobileData"

    return-object v0

    .line 282
    :pswitch_1d
    const-string v0, "isUidRestrictedOnMeteredNetworks"

    return-object v0

    .line 278
    :pswitch_20
    const-string v0, "isUidNetworkingBlocked"

    return-object v0

    .line 274
    :pswitch_23
    const-string v0, "factoryReset"

    return-object v0

    .line 270
    :pswitch_26
    const-string/jumbo v0, "setSubscriptionOverride"

    return-object v0

    .line 266
    :pswitch_2a
    const-string v0, "getSubscriptionPlansOwner"

    return-object v0

    .line 262
    :pswitch_2d
    const-string/jumbo v0, "setSubscriptionPlans"

    return-object v0

    .line 258
    :pswitch_31
    const-string v0, "getSubscriptionPlans"

    return-object v0

    .line 254
    :pswitch_34
    const-string v0, "notifyStatsProviderWarningOrLimitReached"

    return-object v0

    .line 250
    :pswitch_37
    const-string v0, "getSubscriptionPlan"

    return-object v0

    .line 246
    :pswitch_3a
    const-string v0, "getMultipathPreference"

    return-object v0

    .line 242
    :pswitch_3d
    const-string/jumbo v0, "setWifiMeteredOverride"

    return-object v0

    .line 238
    :pswitch_41
    const-string v0, "setDeviceIdleMode"

    return-object v0

    .line 234
    :pswitch_44
    const-string v0, "getRestrictBackgroundStatus"

    return-object v0

    .line 230
    :pswitch_47
    const-string v0, "getRestrictBackgroundByCaller"

    return-object v0

    .line 226
    :pswitch_4a
    const-string v0, "getRestrictBackground"

    return-object v0

    .line 222
    :pswitch_4d
    const-string/jumbo v0, "setRestrictBackground"

    return-object v0

    .line 218
    :pswitch_51
    const-string/jumbo v0, "snoozeLimit"

    return-object v0

    .line 214
    :pswitch_55
    const-string v0, "getNetworkPolicies"

    return-object v0

    .line 210
    :pswitch_58
    const-string v0, "setNetworkPolicies"

    return-object v0

    .line 206
    :pswitch_5b
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    .line 202
    :pswitch_5f
    const-string v0, "registerListener"

    return-object v0

    .line 198
    :pswitch_62
    const-string v0, "getUidsWithPolicy"

    return-object v0

    .line 194
    :pswitch_65
    const-string v0, "getUidPolicy"

    return-object v0

    .line 190
    :pswitch_68
    const-string v0, "removeUidPolicy"

    return-object v0

    .line 186
    :pswitch_6b
    const-string v0, "addUidPolicy"

    return-object v0

    .line 182
    :pswitch_6e
    const-string/jumbo v0, "setUidPolicy"

    return-object v0

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2d
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
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

    .line 173
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1328
    const/16 v0, 0x21

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 325
    invoke-static {p1}, Landroid/net/INetworkPolicyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 26
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.net.INetworkPolicyManager"

    .line 330
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_15

    const v0, 0xffffff

    if-gt v9, v0, :cond_15

    .line 331
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    :cond_15
    packed-switch v9, :pswitch_data_2c0

    .line 341
    packed-switch v9, :pswitch_data_2c6

    .line 690
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 337
    :pswitch_20
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    return v13

    .line 680
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 683
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->onApplicationKill(Ljava/lang/String;I)V

    .line 685
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    goto/16 :goto_2bf

    .line 670
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 671
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 672
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getFirewallRuleWifi(I)Z

    move-result v1

    .line 673
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 675
    goto/16 :goto_2bf

    .line 660
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 661
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getFirewallRuleMobileData(I)Z

    move-result v1

    .line 663
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 665
    goto/16 :goto_2bf

    .line 650
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_5d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 651
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 652
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 653
    invoke-virtual {v8, v1}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleWifiMap(Ljava/util/Map;)V

    .line 654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    goto/16 :goto_2bf

    .line 640
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "_arg0":Ljava/util/Map;
    :pswitch_74
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 641
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 642
    .restart local v1    # "_arg0":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {v8, v1}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleMobileDataMap(Ljava/util/Map;)V

    .line 644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    goto/16 :goto_2bf

    .line 629
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "_arg0":Ljava/util/Map;
    :pswitch_8b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 631
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 632
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleWifi(IZ)V

    .line 634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    goto/16 :goto_2bf

    .line 618
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_9e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 620
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 621
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setFirewallRuleMobileData(IZ)V

    .line 623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    goto/16 :goto_2bf

    .line 610
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_b1
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getAllFirewallRuleMobileData()[I

    move-result-object v0

    .line 611
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 613
    goto/16 :goto_2bf

    .line 601
    .end local v0    # "_result":[I
    :pswitch_bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 602
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->isUidRestrictedOnMeteredNetworks(I)Z

    move-result v1

    .line 604
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 606
    goto/16 :goto_2bf

    .line 589
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_d0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 591
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 592
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 593
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->isUidNetworkingBlocked(IZ)Z

    move-result v2

    .line 594
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 596
    goto/16 :goto_2bf

    .line 580
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_e7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->factoryReset(Ljava/lang/String;)V

    .line 583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    goto/16 :goto_2bf

    .line 561
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 563
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 565
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 567
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v17

    .line 569
    .local v17, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 571
    .local v18, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 572
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-wide/from16 v5, v18

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/net/INetworkPolicyManager$Stub;->setSubscriptionOverride(III[IJLjava/lang/String;)V

    .line 574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    goto/16 :goto_2bf

    .line 551
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":[I
    .end local v18    # "_arg4":J
    .end local v20    # "_arg5":Ljava/lang/String;
    :pswitch_125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 552
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getSubscriptionPlansOwner(I)Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 556
    goto/16 :goto_2bf

    .line 536
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 538
    .local v6, "_arg0":I
    sget-object v0, Landroid/telephony/SubscriptionPlan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Landroid/telephony/SubscriptionPlan;

    .line 540
    .local v7, "_arg1":[Landroid/telephony/SubscriptionPlan;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 542
    .local v14, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 543
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-wide v3, v14

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetworkPolicyManager$Stub;->setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V

    .line 545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    goto/16 :goto_2bf

    .line 524
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":[Landroid/telephony/SubscriptionPlan;
    .end local v14    # "_arg2":J
    .end local v16    # "_arg3":Ljava/lang/String;
    :pswitch_15f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 526
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;

    move-result-object v2

    .line 529
    .local v2, "_result":[Landroid/telephony/SubscriptionPlan;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 531
    goto/16 :goto_2bf

    .line 517
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":[Landroid/telephony/SubscriptionPlan;
    :pswitch_176
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->notifyStatsProviderWarningOrLimitReached()V

    .line 518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    goto/16 :goto_2bf

    .line 508
    :pswitch_17e
    sget-object v0, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 509
    .local v0, "_arg0":Landroid/net/NetworkTemplate;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 511
    .local v1, "_result":Landroid/telephony/SubscriptionPlan;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 513
    goto/16 :goto_2bf

    .line 498
    .end local v0    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v1    # "_result":Landroid/telephony/SubscriptionPlan;
    :pswitch_195
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .line 499
    .local v0, "_arg0":Landroid/net/Network;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getMultipathPreference(Landroid/net/Network;)I

    move-result v1

    .line 501
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    goto/16 :goto_2bf

    .line 487
    .end local v0    # "_arg0":Landroid/net/Network;
    .end local v1    # "_result":I
    :pswitch_1ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 490
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setWifiMeteredOverride(Ljava/lang/String;I)V

    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    goto/16 :goto_2bf

    .line 478
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_1bf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 479
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->setDeviceIdleMode(Z)V

    .line 481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    goto/16 :goto_2bf

    .line 468
    .end local v0    # "_arg0":Z
    :pswitch_1ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 469
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackgroundStatus(I)I

    move-result v1

    .line 471
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    goto/16 :goto_2bf

    .line 460
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1e1
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackgroundByCaller()I

    move-result v0

    .line 461
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    goto/16 :goto_2bf

    .line 453
    .end local v0    # "_result":I
    :pswitch_1ed
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackground()Z

    move-result v0

    .line 454
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 456
    goto/16 :goto_2bf

    .line 445
    .end local v0    # "_result":Z
    :pswitch_1f9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 446
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->setRestrictBackground(Z)V

    .line 448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    goto/16 :goto_2bf

    .line 436
    .end local v0    # "_arg0":Z
    :pswitch_208
    sget-object v0, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 437
    .local v0, "_arg0":Landroid/net/NetworkTemplate;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->snoozeLimit(Landroid/net/NetworkTemplate;)V

    .line 439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    goto/16 :goto_2bf

    .line 426
    .end local v0    # "_arg0":Landroid/net/NetworkTemplate;
    :pswitch_21b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 429
    .local v1, "_result":[Landroid/net/NetworkPolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 431
    goto/16 :goto_2bf

    .line 417
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[Landroid/net/NetworkPolicy;
    :pswitch_22e
    sget-object v0, Landroid/net/NetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 418
    .local v0, "_arg0":[Landroid/net/NetworkPolicy;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    goto/16 :goto_2bf

    .line 408
    .end local v0    # "_arg0":[Landroid/net/NetworkPolicy;
    :pswitch_241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v0

    .line 409
    .local v0, "_arg0":Landroid/net/INetworkPolicyListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    goto :goto_2bf

    .line 399
    .end local v0    # "_arg0":Landroid/net/INetworkPolicyListener;
    :pswitch_253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v0

    .line 400
    .restart local v0    # "_arg0":Landroid/net/INetworkPolicyListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    goto :goto_2bf

    .line 389
    .end local v0    # "_arg0":Landroid/net/INetworkPolicyListener;
    :pswitch_265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 390
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getUidsWithPolicy(I)[I

    move-result-object v1

    .line 392
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 394
    goto :goto_2bf

    .line 379
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 380
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getUidPolicy(I)I

    move-result v1

    .line 382
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    goto :goto_2bf

    .line 368
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 370
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 371
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->removeUidPolicy(II)V

    .line 373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    goto :goto_2bf

    .line 357
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_29b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 359
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 360
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->addUidPolicy(II)V

    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    goto :goto_2bf

    .line 346
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_2ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 348
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 349
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setUidPolicy(II)V

    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    nop

    .line 693
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :goto_2bf
    return v13

    :pswitch_data_2c0
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_2c6
    .packed-switch 0x1
        :pswitch_2ad
        :pswitch_29b
        :pswitch_289
        :pswitch_277
        :pswitch_265
        :pswitch_253
        :pswitch_241
        :pswitch_22e
        :pswitch_21b
        :pswitch_208
        :pswitch_1f9
        :pswitch_1ed
        :pswitch_1e1
        :pswitch_1ce
        :pswitch_1bf
        :pswitch_1ac
        :pswitch_195
        :pswitch_17e
        :pswitch_176
        :pswitch_15f
        :pswitch_138
        :pswitch_125
        :pswitch_f6
        :pswitch_e7
        :pswitch_d0
        :pswitch_bd
        :pswitch_b1
        :pswitch_9e
        :pswitch_8b
        :pswitch_74
        :pswitch_5d
        :pswitch_4a
        :pswitch_37
        :pswitch_24
    .end packed-switch
.end method
