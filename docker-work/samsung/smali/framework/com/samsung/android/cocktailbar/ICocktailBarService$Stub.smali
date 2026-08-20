.class public abstract Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;
.super Landroid/os/Binder;
.source "ICocktailBarService.java"

# interfaces
.implements Lcom/samsung/android/cocktailbar/ICocktailBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/ICocktailBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_activateCocktailBar:I = 0x25

.field static final blacklist TRANSACTION_bindRemoteViewsService:I = 0x15

.field static final blacklist TRANSACTION_closeCocktail:I = 0xc

.field static final blacklist TRANSACTION_deactivateCocktailBar:I = 0x26

.field static final blacklist TRANSACTION_disableCocktail:I = 0xe

.field static final blacklist TRANSACTION_getAllCocktailIds:I = 0x6

.field static final blacklist TRANSACTION_getCategoryFilterStr:I = 0x31

.field static final blacklist TRANSACTION_getCocktaiBarWakeUpState:I = 0x2c

.field static final blacklist TRANSACTION_getCocktail:I = 0x7

.field static final blacklist TRANSACTION_getCocktailBarStateInfo:I = 0x22

.field static final blacklist TRANSACTION_getCocktailBarVisibility:I = 0x21

.field static final blacklist TRANSACTION_getCocktailId:I = 0xd

.field static final blacklist TRANSACTION_getCocktailIds:I = 0xf

.field static final blacklist TRANSACTION_getConfigVersion:I = 0x2f

.field static final blacklist TRANSACTION_getEnabledCocktailIds:I = 0x5

.field static final blacklist TRANSACTION_getHideEdgeListStr:I = 0x33

.field static final blacklist TRANSACTION_getPreferWidth:I = 0x30

.field static final blacklist TRANSACTION_getSystemBarAppearance:I = 0x32

.field static final blacklist TRANSACTION_getWindowType:I = 0x24

.field static final blacklist TRANSACTION_isBoundCocktailPackage:I = 0x10

.field static final blacklist TRANSACTION_isCocktailEnabled:I = 0x12

.field static final blacklist TRANSACTION_isEnabledCocktail:I = 0x11

.field static final blacklist TRANSACTION_notifyCocktailViewDataChanged:I = 0x13

.field static final blacklist TRANSACTION_notifyCocktailVisibiltyChanged:I = 0x1c

.field static final blacklist TRANSACTION_notifyKeyguardState:I = 0x1b

.field static final blacklist TRANSACTION_partiallyUpdateCocktail:I = 0x9

.field static final blacklist TRANSACTION_partiallyUpdateHelpView:I = 0xa

.field static final blacklist TRANSACTION_registerCocktailBarStateListenerCallback:I = 0x1f

.field static final blacklist TRANSACTION_registerSystemUiVisibilityListenerCallback:I = 0x27

.field static final blacklist TRANSACTION_removeCocktailUIService:I = 0x2e

.field static final blacklist TRANSACTION_requestToDisableCocktail:I = 0x18

.field static final blacklist TRANSACTION_requestToDisableCocktailByCategory:I = 0x1a

.field static final blacklist TRANSACTION_requestToUpdateCocktail:I = 0x17

.field static final blacklist TRANSACTION_requestToUpdateCocktailByCategory:I = 0x19

.field static final blacklist TRANSACTION_sendExtraDataToCocktailBar:I = 0x2d

.field static final blacklist TRANSACTION_setCocktailBarWakeUpState:I = 0x2b

.field static final blacklist TRANSACTION_setCocktailHostCallbacks:I = 0x1

.field static final blacklist TRANSACTION_setEnabledCocktailIds:I = 0x4

.field static final blacklist TRANSACTION_setOnPullPendingIntent:I = 0x14

.field static final blacklist TRANSACTION_showCocktail:I = 0xb

.field static final blacklist TRANSACTION_startListening:I = 0x2

.field static final blacklist TRANSACTION_stopListening:I = 0x3

.field static final blacklist TRANSACTION_unbindRemoteViewsService:I = 0x16

.field static final blacklist TRANSACTION_unregisterCocktailBarStateListenerCallback:I = 0x20

.field static final blacklist TRANSACTION_unregisterSystemUiVisibilityListenerCallback:I = 0x28

.field static final blacklist TRANSACTION_updateCocktail:I = 0x8

.field static final blacklist TRANSACTION_updateCocktailBarPosition:I = 0x1e

.field static final blacklist TRANSACTION_updateCocktailBarVisibility:I = 0x1d

.field static final blacklist TRANSACTION_updateCocktailBarWindowType:I = 0x23

.field static final blacklist TRANSACTION_updateWakeupArea:I = 0x2a

.field static final blacklist TRANSACTION_updateWakeupGesture:I = 0x29


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 206
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 207
    const-string v0, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 215
    if-nez p0, :cond_4

    .line 216
    const/4 v0, 0x0

    return-object v0

    .line 218
    :cond_4
    const-string v0, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 219
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-eqz v1, :cond_14

    .line 220
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/cocktailbar/ICocktailBarService;

    return-object v1

    .line 222
    :cond_14
    new-instance v1, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 231
    packed-switch p0, :pswitch_data_b6

    .line 439
    const/4 v0, 0x0

    return-object v0

    .line 435
    :pswitch_5
    const-string v0, "getHideEdgeListStr"

    return-object v0

    .line 431
    :pswitch_8
    const-string v0, "getSystemBarAppearance"

    return-object v0

    .line 427
    :pswitch_b
    const-string v0, "getCategoryFilterStr"

    return-object v0

    .line 423
    :pswitch_e
    const-string v0, "getPreferWidth"

    return-object v0

    .line 419
    :pswitch_11
    const-string v0, "getConfigVersion"

    return-object v0

    .line 415
    :pswitch_14
    const-string/jumbo v0, "removeCocktailUIService"

    return-object v0

    .line 411
    :pswitch_18
    const-string/jumbo v0, "sendExtraDataToCocktailBar"

    return-object v0

    .line 407
    :pswitch_1c
    const-string v0, "getCocktaiBarWakeUpState"

    return-object v0

    .line 403
    :pswitch_1f
    const-string/jumbo v0, "setCocktailBarWakeUpState"

    return-object v0

    .line 399
    :pswitch_23
    const-string/jumbo v0, "updateWakeupArea"

    return-object v0

    .line 395
    :pswitch_27
    const-string/jumbo v0, "updateWakeupGesture"

    return-object v0

    .line 391
    :pswitch_2b
    const-string/jumbo v0, "unregisterSystemUiVisibilityListenerCallback"

    return-object v0

    .line 387
    :pswitch_2f
    const-string/jumbo v0, "registerSystemUiVisibilityListenerCallback"

    return-object v0

    .line 383
    :pswitch_33
    const-string v0, "deactivateCocktailBar"

    return-object v0

    .line 379
    :pswitch_36
    const-string v0, "activateCocktailBar"

    return-object v0

    .line 375
    :pswitch_39
    const-string v0, "getWindowType"

    return-object v0

    .line 371
    :pswitch_3c
    const-string/jumbo v0, "updateCocktailBarWindowType"

    return-object v0

    .line 367
    :pswitch_40
    const-string v0, "getCocktailBarStateInfo"

    return-object v0

    .line 363
    :pswitch_43
    const-string v0, "getCocktailBarVisibility"

    return-object v0

    .line 359
    :pswitch_46
    const-string/jumbo v0, "unregisterCocktailBarStateListenerCallback"

    return-object v0

    .line 355
    :pswitch_4a
    const-string/jumbo v0, "registerCocktailBarStateListenerCallback"

    return-object v0

    .line 351
    :pswitch_4e
    const-string/jumbo v0, "updateCocktailBarPosition"

    return-object v0

    .line 347
    :pswitch_52
    const-string/jumbo v0, "updateCocktailBarVisibility"

    return-object v0

    .line 343
    :pswitch_56
    const-string v0, "notifyCocktailVisibiltyChanged"

    return-object v0

    .line 339
    :pswitch_59
    const-string v0, "notifyKeyguardState"

    return-object v0

    .line 335
    :pswitch_5c
    const-string/jumbo v0, "requestToDisableCocktailByCategory"

    return-object v0

    .line 331
    :pswitch_60
    const-string/jumbo v0, "requestToUpdateCocktailByCategory"

    return-object v0

    .line 327
    :pswitch_64
    const-string/jumbo v0, "requestToDisableCocktail"

    return-object v0

    .line 323
    :pswitch_68
    const-string/jumbo v0, "requestToUpdateCocktail"

    return-object v0

    .line 319
    :pswitch_6c
    const-string/jumbo v0, "unbindRemoteViewsService"

    return-object v0

    .line 315
    :pswitch_70
    const-string v0, "bindRemoteViewsService"

    return-object v0

    .line 311
    :pswitch_73
    const-string/jumbo v0, "setOnPullPendingIntent"

    return-object v0

    .line 307
    :pswitch_77
    const-string v0, "notifyCocktailViewDataChanged"

    return-object v0

    .line 303
    :pswitch_7a
    const-string v0, "isCocktailEnabled"

    return-object v0

    .line 299
    :pswitch_7d
    const-string v0, "isEnabledCocktail"

    return-object v0

    .line 295
    :pswitch_80
    const-string v0, "isBoundCocktailPackage"

    return-object v0

    .line 291
    :pswitch_83
    const-string v0, "getCocktailIds"

    return-object v0

    .line 287
    :pswitch_86
    const-string v0, "disableCocktail"

    return-object v0

    .line 283
    :pswitch_89
    const-string v0, "getCocktailId"

    return-object v0

    .line 279
    :pswitch_8c
    const-string v0, "closeCocktail"

    return-object v0

    .line 275
    :pswitch_8f
    const-string/jumbo v0, "showCocktail"

    return-object v0

    .line 271
    :pswitch_93
    const-string v0, "partiallyUpdateHelpView"

    return-object v0

    .line 267
    :pswitch_96
    const-string v0, "partiallyUpdateCocktail"

    return-object v0

    .line 263
    :pswitch_99
    const-string/jumbo v0, "updateCocktail"

    return-object v0

    .line 259
    :pswitch_9d
    const-string v0, "getCocktail"

    return-object v0

    .line 255
    :pswitch_a0
    const-string v0, "getAllCocktailIds"

    return-object v0

    .line 251
    :pswitch_a3
    const-string v0, "getEnabledCocktailIds"

    return-object v0

    .line 247
    :pswitch_a6
    const-string/jumbo v0, "setEnabledCocktailIds"

    return-object v0

    .line 243
    :pswitch_aa
    const-string/jumbo v0, "stopListening"

    return-object v0

    .line 239
    :pswitch_ae
    const-string/jumbo v0, "startListening"

    return-object v0

    .line 235
    :pswitch_b2
    const-string/jumbo v0, "setCocktailHostCallbacks"

    return-object v0

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_b2
        :pswitch_ae
        :pswitch_aa
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9d
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_73
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_60
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
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

    .line 226
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1918
    const/16 v0, 0x32

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 446
    invoke-static {p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 450
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.samsung.android.cocktailbar.ICocktailBarService"

    .line 451
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_15

    const v0, 0xffffff

    if-gt v9, v0, :cond_15

    .line 452
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    :cond_15
    packed-switch v9, :pswitch_data_3fe

    .line 462
    packed-switch v9, :pswitch_data_404

    .line 979
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 458
    :pswitch_20
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    return v13

    .line 972
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getHideEdgeListStr()Ljava/lang/String;

    move-result-object v0

    .line 973
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 975
    goto/16 :goto_3fc

    .line 965
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getSystemBarAppearance()I

    move-result v0

    .line 966
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 968
    goto/16 :goto_3fc

    .line 958
    .end local v0    # "_result":I
    :pswitch_3c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCategoryFilterStr()Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 961
    goto/16 :goto_3fc

    .line 951
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_48
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getPreferWidth()I

    move-result v0

    .line 952
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    goto/16 :goto_3fc

    .line 944
    .end local v0    # "_result":I
    :pswitch_54
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getConfigVersion()I

    move-result v0

    .line 945
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    goto/16 :goto_3fc

    .line 938
    .end local v0    # "_result":I
    :pswitch_60
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->removeCocktailUIService()V

    .line 939
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    goto/16 :goto_3fc

    .line 930
    :pswitch_68
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 931
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 932
    invoke-virtual {v8, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    .line 933
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    goto/16 :goto_3fc

    .line 922
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_7b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktaiBarWakeUpState()Z

    move-result v0

    .line 923
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 925
    goto/16 :goto_3fc

    .line 914
    .end local v0    # "_result":Z
    :pswitch_87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 915
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 916
    invoke-virtual {v8, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setCocktailBarWakeUpState(Z)V

    .line 917
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    goto/16 :goto_3fc

    .line 905
    .end local v0    # "_arg0":Z
    :pswitch_96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 906
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 907
    invoke-virtual {v8, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateWakeupArea(I)V

    .line 908
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    goto/16 :goto_3fc

    .line 894
    .end local v0    # "_arg0":I
    :pswitch_a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 896
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 897
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 898
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateWakeupGesture(IZ)V

    .line 899
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    goto/16 :goto_3fc

    .line 885
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 886
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 887
    invoke-virtual {v8, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->unregisterSystemUiVisibilityListenerCallback(Landroid/os/IBinder;)V

    .line 888
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    goto/16 :goto_3fc

    .line 874
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 876
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 877
    .local v1, "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 878
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->registerSystemUiVisibilityListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 879
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    goto/16 :goto_3fc

    .line 867
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :pswitch_de
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->deactivateCocktailBar()V

    .line 868
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    goto/16 :goto_3fc

    .line 861
    :pswitch_e6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->activateCocktailBar()V

    .line 862
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    goto/16 :goto_3fc

    .line 854
    :pswitch_ee
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getWindowType()I

    move-result v0

    .line 855
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    goto/16 :goto_3fc

    .line 844
    .end local v0    # "_result":I
    :pswitch_fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 846
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 847
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 848
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktailBarWindowType(Ljava/lang/String;I)V

    .line 849
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    goto/16 :goto_3fc

    .line 836
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_10d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .line 837
    .local v0, "_result":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 839
    goto/16 :goto_3fc

    .line 829
    .end local v0    # "_result":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :pswitch_119
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailBarVisibility()I

    move-result v0

    .line 830
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    goto/16 :goto_3fc

    .line 821
    .end local v0    # "_result":I
    :pswitch_125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 822
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {v8, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V

    .line 824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    goto/16 :goto_3fc

    .line 810
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 812
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 813
    .local v1, "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 815
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    goto/16 :goto_3fc

    .line 801
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :pswitch_14b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 802
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {v8, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktailBarPosition(I)V

    .line 804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    goto/16 :goto_3fc

    .line 792
    .end local v0    # "_arg0":I
    :pswitch_15a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 793
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {v8, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktailBarVisibility(I)V

    .line 795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    goto/16 :goto_3fc

    .line 781
    .end local v0    # "_arg0":I
    :pswitch_169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 783
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 784
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 785
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->notifyCocktailVisibiltyChanged(II)V

    .line 786
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    goto/16 :goto_3fc

    .line 772
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_17c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 773
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 774
    invoke-virtual {v8, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->notifyKeyguardState(Z)V

    .line 775
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    goto/16 :goto_3fc

    .line 762
    .end local v0    # "_arg0":Z
    :pswitch_18b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 763
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    invoke-virtual {v8, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToDisableCocktailByCategory(I)Z

    move-result v1

    .line 765
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 767
    goto/16 :goto_3fc

    .line 752
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_19e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 753
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    invoke-virtual {v8, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToUpdateCocktailByCategory(I)Z

    move-result v1

    .line 755
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 757
    goto/16 :goto_3fc

    .line 742
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 743
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 744
    invoke-virtual {v8, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToDisableCocktail(I)Z

    move-result v1

    .line 745
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 747
    goto/16 :goto_3fc

    .line 732
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 733
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {v8, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToUpdateCocktail(I)Z

    move-result v1

    .line 735
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 737
    goto/16 :goto_3fc

    .line 719
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 723
    .local v1, "_arg1":I
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 724
    .local v2, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V

    .line 726
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    goto/16 :goto_3fc

    .line 697
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/Intent;
    :pswitch_1f2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 699
    .local v14, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 701
    .local v15, "_arg1":I
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/Intent;

    .line 703
    .local v16, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v17

    .line 705
    .local v17, "_arg3":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 707
    .local v18, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v19

    .line 709
    .local v19, "_arg5":Landroid/app/IServiceConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 710
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/IServiceConnection;I)Z

    move-result v0

    .line 712
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 714
    goto/16 :goto_3fc

    .line 682
    .end local v0    # "_result":Z
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Landroid/content/Intent;
    .end local v17    # "_arg3":Landroid/app/IApplicationThread;
    .end local v18    # "_arg4":Landroid/os/IBinder;
    .end local v19    # "_arg5":Landroid/app/IServiceConnection;
    .end local v20    # "_arg6":I
    :pswitch_239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 686
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 688
    .local v2, "_arg2":I
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 689
    .local v3, "_arg3":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setOnPullPendingIntent(Ljava/lang/String;IILandroid/app/PendingIntent;)V

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    goto/16 :goto_3fc

    .line 669
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    :pswitch_258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 671
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 673
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 674
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->notifyCocktailViewDataChanged(Ljava/lang/String;II)V

    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    goto/16 :goto_3fc

    .line 657
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_26f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 659
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 660
    .local v1, "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 661
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->isCocktailEnabled(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v2

    .line 662
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 664
    goto/16 :goto_3fc

    .line 645
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_result":Z
    :pswitch_28a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 647
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 648
    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v2

    .line 650
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 652
    goto/16 :goto_3fc

    .line 633
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_result":Z
    :pswitch_2a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 635
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 636
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->isBoundCocktailPackage(Ljava/lang/String;I)Z

    move-result v2

    .line 638
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 640
    goto/16 :goto_3fc

    .line 621
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_2bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 623
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 624
    .local v1, "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 625
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailIds(Ljava/lang/String;Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 626
    .local v2, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 628
    goto/16 :goto_3fc

    .line 610
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_result":[I
    :pswitch_2d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 612
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 613
    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 614
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->disableCocktail(Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 615
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    goto/16 :goto_3fc

    .line 598
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :pswitch_2ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 600
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 601
    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailId(Ljava/lang/String;Landroid/content/ComponentName;)I

    move-result v2

    .line 603
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    goto/16 :goto_3fc

    .line 585
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_result":I
    :pswitch_309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 587
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 589
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 590
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->closeCocktail(Ljava/lang/String;II)V

    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    goto/16 :goto_3fc

    .line 574
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 576
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 577
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->showCocktail(Ljava/lang/String;I)V

    .line 579
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    goto/16 :goto_3fc

    .line 561
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 563
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 565
    .local v1, "_arg1":Landroid/widget/RemoteViews;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 566
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->partiallyUpdateHelpView(Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    .line 568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    goto/16 :goto_3fc

    .line 548
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/widget/RemoteViews;
    .end local v2    # "_arg2":I
    :pswitch_34e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 550
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 552
    .restart local v1    # "_arg1":Landroid/widget/RemoteViews;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 553
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->partiallyUpdateCocktail(Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    .line 555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    goto/16 :goto_3fc

    .line 535
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/widget/RemoteViews;
    .end local v2    # "_arg2":I
    :pswitch_369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 537
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/CocktailInfo;

    .line 539
    .local v1, "_arg1":Lcom/samsung/android/cocktailbar/CocktailInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 540
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 541
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V

    .line 542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    goto/16 :goto_3fc

    .line 525
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/samsung/android/cocktailbar/CocktailInfo;
    .end local v2    # "_arg2":I
    :pswitch_384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 526
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {v8, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v1

    .line 528
    .local v1, "_result":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 530
    goto :goto_3fc

    .line 517
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Lcom/samsung/android/cocktailbar/Cocktail;
    :pswitch_396
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getAllCocktailIds()[I

    move-result-object v0

    .line 518
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 520
    goto :goto_3fc

    .line 510
    .end local v0    # "_result":[I
    :pswitch_3a1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getEnabledCocktailIds()[I

    move-result-object v0

    .line 511
    .restart local v0    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 513
    goto :goto_3fc

    .line 502
    .end local v0    # "_result":[I
    :pswitch_3ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 503
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {v8, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setEnabledCocktailIds([I)V

    .line 505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    goto :goto_3fc

    .line 493
    .end local v0    # "_arg0":[I
    :pswitch_3ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {v8, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->stopListening(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    goto :goto_3fc

    .line 480
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailHost;

    move-result-object v0

    .line 482
    .local v0, "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 485
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V

    .line 487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    goto :goto_3fc

    .line 467
    .end local v0    # "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_3e2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailHost;

    move-result-object v0

    .line 469
    .restart local v0    # "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 471
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 472
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V

    .line 474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    nop

    .line 982
    .end local v0    # "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :goto_3fc
    return v13

    nop

    :pswitch_data_3fe
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_404
    .packed-switch 0x1
        :pswitch_3e2
        :pswitch_3c8
        :pswitch_3ba
        :pswitch_3ac
        :pswitch_3a1
        :pswitch_396
        :pswitch_384
        :pswitch_369
        :pswitch_34e
        :pswitch_333
        :pswitch_320
        :pswitch_309
        :pswitch_2ee
        :pswitch_2d7
        :pswitch_2bc
        :pswitch_2a5
        :pswitch_28a
        :pswitch_26f
        :pswitch_258
        :pswitch_239
        :pswitch_1f2
        :pswitch_1d7
        :pswitch_1c4
        :pswitch_1b1
        :pswitch_19e
        :pswitch_18b
        :pswitch_17c
        :pswitch_169
        :pswitch_15a
        :pswitch_14b
        :pswitch_134
        :pswitch_125
        :pswitch_119
        :pswitch_10d
        :pswitch_fa
        :pswitch_ee
        :pswitch_e6
        :pswitch_de
        :pswitch_c7
        :pswitch_b8
        :pswitch_a5
        :pswitch_96
        :pswitch_87
        :pswitch_7b
        :pswitch_68
        :pswitch_60
        :pswitch_54
        :pswitch_48
        :pswitch_3c
        :pswitch_30
        :pswitch_24
    .end packed-switch
.end method
