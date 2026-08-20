.class public abstract Landroid/media/IMediaRouterService$Stub;
.super Landroid/os/Binder;
.source "IMediaRouterService.java"

# interfaces
.implements Landroid/media/IMediaRouterService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRouterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRouterService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.IMediaRouterService"

.field static final blacklist TRANSACTION_deselectRouteWithManager:I = 0x21

.field static final blacklist TRANSACTION_deselectRouteWithRouter2:I = 0x14

.field static final blacklist TRANSACTION_enforceMediaContentControlPermission:I = 0xb

.field static final blacklist TRANSACTION_getRemoteSessions:I = 0x18

.field static final greylist-max-o TRANSACTION_getState:I = 0x4

.field static final blacklist TRANSACTION_getSystemRoutes:I = 0xc

.field static final blacklist TRANSACTION_getSystemSessionInfo:I = 0xd

.field static final blacklist TRANSACTION_getSystemSessionInfoForPackage:I = 0x19

.field static final greylist-max-o TRANSACTION_isPlaybackActive:I = 0x5

.field static final greylist-max-o TRANSACTION_registerClientAsUser:I = 0x1

.field static final blacklist TRANSACTION_registerClientGroupId:I = 0x3

.field static final blacklist TRANSACTION_registerManager:I = 0x1a

.field static final blacklist TRANSACTION_registerRouter2:I = 0xe

.field static final blacklist TRANSACTION_releaseSessionWithManager:I = 0x24

.field static final blacklist TRANSACTION_releaseSessionWithRouter2:I = 0x17

.field static final blacklist TRANSACTION_requestCreateSessionWithManager:I = 0x1f

.field static final blacklist TRANSACTION_requestCreateSessionWithRouter2:I = 0x12

.field static final greylist-max-o TRANSACTION_requestSetVolume:I = 0x9

.field static final greylist-max-o TRANSACTION_requestUpdateVolume:I = 0xa

.field static final blacklist TRANSACTION_selectRouteWithManager:I = 0x20

.field static final blacklist TRANSACTION_selectRouteWithRouter2:I = 0x13

.field static final blacklist TRANSACTION_setBluetoothA2dpOn:I = 0x6

.field static final greylist-max-o TRANSACTION_setDiscoveryRequest:I = 0x7

.field static final blacklist TRANSACTION_setDiscoveryRequestWithRouter2:I = 0x10

.field static final blacklist TRANSACTION_setRouteVolumeWithManager:I = 0x1c

.field static final blacklist TRANSACTION_setRouteVolumeWithRouter2:I = 0x11

.field static final greylist-max-o TRANSACTION_setSelectedRoute:I = 0x8

.field static final blacklist TRANSACTION_setSessionVolumeWithManager:I = 0x23

.field static final blacklist TRANSACTION_setSessionVolumeWithRouter2:I = 0x16

.field static final blacklist TRANSACTION_startScan:I = 0x1d

.field static final blacklist TRANSACTION_stopScan:I = 0x1e

.field static final blacklist TRANSACTION_transferToRouteWithManager:I = 0x22

.field static final blacklist TRANSACTION_transferToRouteWithRouter2:I = 0x15

.field static final greylist-max-o TRANSACTION_unregisterClient:I = 0x2

.field static final blacklist TRANSACTION_unregisterManager:I = 0x1b

.field static final blacklist TRANSACTION_unregisterRouter2:I = 0xf


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 140
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 141
    const-string v0, "android.media.IMediaRouterService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaRouterService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 149
    if-nez p0, :cond_4

    .line 150
    const/4 v0, 0x0

    return-object v0

    .line 152
    :cond_4
    const-string v0, "android.media.IMediaRouterService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 153
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IMediaRouterService;

    if-eqz v1, :cond_14

    .line 154
    move-object v1, v0

    check-cast v1, Landroid/media/IMediaRouterService;

    return-object v1

    .line 156
    :cond_14
    new-instance v1, Landroid/media/IMediaRouterService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMediaRouterService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 165
    packed-switch p0, :pswitch_data_7e

    .line 313
    const/4 v0, 0x0

    return-object v0

    .line 309
    :pswitch_5
    const-string v0, "releaseSessionWithManager"

    return-object v0

    .line 305
    :pswitch_8
    const-string/jumbo v0, "setSessionVolumeWithManager"

    return-object v0

    .line 301
    :pswitch_c
    const-string/jumbo v0, "transferToRouteWithManager"

    return-object v0

    .line 297
    :pswitch_10
    const-string v0, "deselectRouteWithManager"

    return-object v0

    .line 293
    :pswitch_13
    const-string v0, "selectRouteWithManager"

    return-object v0

    .line 289
    :pswitch_16
    const-string v0, "requestCreateSessionWithManager"

    return-object v0

    .line 285
    :pswitch_19
    const-string/jumbo v0, "stopScan"

    return-object v0

    .line 281
    :pswitch_1d
    const-string/jumbo v0, "startScan"

    return-object v0

    .line 277
    :pswitch_21
    const-string/jumbo v0, "setRouteVolumeWithManager"

    return-object v0

    .line 273
    :pswitch_25
    const-string/jumbo v0, "unregisterManager"

    return-object v0

    .line 269
    :pswitch_29
    const-string v0, "registerManager"

    return-object v0

    .line 265
    :pswitch_2c
    const-string v0, "getSystemSessionInfoForPackage"

    return-object v0

    .line 261
    :pswitch_2f
    const-string v0, "getRemoteSessions"

    return-object v0

    .line 257
    :pswitch_32
    const-string v0, "releaseSessionWithRouter2"

    return-object v0

    .line 253
    :pswitch_35
    const-string/jumbo v0, "setSessionVolumeWithRouter2"

    return-object v0

    .line 249
    :pswitch_39
    const-string/jumbo v0, "transferToRouteWithRouter2"

    return-object v0

    .line 245
    :pswitch_3d
    const-string v0, "deselectRouteWithRouter2"

    return-object v0

    .line 241
    :pswitch_40
    const-string v0, "selectRouteWithRouter2"

    return-object v0

    .line 237
    :pswitch_43
    const-string v0, "requestCreateSessionWithRouter2"

    return-object v0

    .line 233
    :pswitch_46
    const-string/jumbo v0, "setRouteVolumeWithRouter2"

    return-object v0

    .line 229
    :pswitch_4a
    const-string v0, "setDiscoveryRequestWithRouter2"

    return-object v0

    .line 225
    :pswitch_4d
    const-string/jumbo v0, "unregisterRouter2"

    return-object v0

    .line 221
    :pswitch_51
    const-string v0, "registerRouter2"

    return-object v0

    .line 217
    :pswitch_54
    const-string v0, "getSystemSessionInfo"

    return-object v0

    .line 213
    :pswitch_57
    const-string v0, "getSystemRoutes"

    return-object v0

    .line 209
    :pswitch_5a
    const-string v0, "enforceMediaContentControlPermission"

    return-object v0

    .line 205
    :pswitch_5d
    const-string v0, "requestUpdateVolume"

    return-object v0

    .line 201
    :pswitch_60
    const-string v0, "requestSetVolume"

    return-object v0

    .line 197
    :pswitch_63
    const-string/jumbo v0, "setSelectedRoute"

    return-object v0

    .line 193
    :pswitch_67
    const-string v0, "setDiscoveryRequest"

    return-object v0

    .line 189
    :pswitch_6a
    const-string v0, "setBluetoothA2dpOn"

    return-object v0

    .line 185
    :pswitch_6d
    const-string v0, "isPlaybackActive"

    return-object v0

    .line 181
    :pswitch_70
    const-string v0, "getState"

    return-object v0

    .line 177
    :pswitch_73
    const-string v0, "registerClientGroupId"

    return-object v0

    .line 173
    :pswitch_76
    const-string/jumbo v0, "unregisterClient"

    return-object v0

    .line 169
    :pswitch_7a
    const-string v0, "registerClientAsUser"

    return-object v0

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4d
        :pswitch_4a
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 160
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1438
    const/16 v0, 0x23

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 320
    invoke-static {p1}, Landroid/media/IMediaRouterService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 324
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.media.IMediaRouterService"

    .line 325
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_15

    const v0, 0xffffff

    if-gt v9, v0, :cond_15

    .line 326
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    :cond_15
    packed-switch v9, :pswitch_data_3dc

    .line 336
    packed-switch v9, :pswitch_data_3e2

    .line 765
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 332
    :pswitch_20
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    return v13

    .line 753
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v0

    .line 755
    .local v0, "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 757
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 758
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {v8, v0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->releaseSessionWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;)V

    .line 760
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    goto/16 :goto_3db

    .line 738
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v0

    .line 740
    .restart local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 742
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 744
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 745
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/media/IMediaRouterService$Stub;->setSessionVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;I)V

    .line 747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    goto/16 :goto_3db

    .line 723
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v0

    .line 725
    .restart local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 727
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 729
    .restart local v2    # "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 730
    .local v3, "_arg3":Landroid/media/MediaRoute2Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 731
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/media/IMediaRouterService$Stub;->transferToRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    goto/16 :goto_3db

    .line 708
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/media/MediaRoute2Info;
    :pswitch_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v0

    .line 710
    .restart local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 712
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 714
    .restart local v2    # "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 715
    .restart local v3    # "_arg3":Landroid/media/MediaRoute2Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/media/IMediaRouterService$Stub;->deselectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 717
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    goto/16 :goto_3db

    .line 693
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/media/MediaRoute2Info;
    :pswitch_a4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v0

    .line 695
    .restart local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 697
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 699
    .restart local v2    # "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 700
    .restart local v3    # "_arg3":Landroid/media/MediaRoute2Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/media/IMediaRouterService$Stub;->selectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    goto/16 :goto_3db

    .line 678
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/media/MediaRoute2Info;
    :pswitch_c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v0

    .line 680
    .restart local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 682
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 684
    .local v2, "_arg2":Landroid/media/RoutingSessionInfo;
    sget-object v3, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 685
    .restart local v3    # "_arg3":Landroid/media/MediaRoute2Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/media/IMediaRouterService$Stub;->requestCreateSessionWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 687
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    goto/16 :goto_3db

    .line 669
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/media/RoutingSessionInfo;
    .end local v3    # "_arg3":Landroid/media/MediaRoute2Info;
    :pswitch_ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v0

    .line 670
    .restart local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 671
    invoke-virtual {v8, v0}, Landroid/media/IMediaRouterService$Stub;->stopScan(Landroid/media/IMediaRouter2Manager;)V

    .line 672
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    goto/16 :goto_3db

    .line 660
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    :pswitch_101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v0

    .line 661
    .restart local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-virtual {v8, v0}, Landroid/media/IMediaRouterService$Stub;->startScan(Landroid/media/IMediaRouter2Manager;)V

    .line 663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    goto/16 :goto_3db

    .line 645
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    :pswitch_114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v0

    .line 647
    .restart local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 649
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 651
    .local v2, "_arg2":Landroid/media/MediaRoute2Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 652
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 653
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/media/IMediaRouterService$Stub;->setRouteVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/MediaRoute2Info;I)V

    .line 654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    goto/16 :goto_3db

    .line 636
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/media/MediaRoute2Info;
    .end local v3    # "_arg3":I
    :pswitch_137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v0

    .line 637
    .restart local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    invoke-virtual {v8, v0}, Landroid/media/IMediaRouterService$Stub;->unregisterManager(Landroid/media/IMediaRouter2Manager;)V

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    goto/16 :goto_3db

    .line 625
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    :pswitch_14a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v0

    .line 627
    .restart local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {v8, v0, v1}, Landroid/media/IMediaRouterService$Stub;->registerManager(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;)V

    .line 630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    goto/16 :goto_3db

    .line 613
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v0

    .line 615
    .restart local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 616
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {v8, v0, v1}, Landroid/media/IMediaRouterService$Stub;->getSystemSessionInfoForPackage(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v2

    .line 618
    .local v2, "_result":Landroid/media/RoutingSessionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 620
    goto/16 :goto_3db

    .line 603
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/media/RoutingSessionInfo;
    :pswitch_17c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2Manager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;

    move-result-object v0

    .line 604
    .restart local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {v8, v0}, Landroid/media/IMediaRouterService$Stub;->getRemoteSessions(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;

    move-result-object v1

    .line 606
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 608
    goto/16 :goto_3db

    .line 592
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2Manager;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    :pswitch_193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v0

    .line 594
    .local v0, "_arg0":Landroid/media/IMediaRouter2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 596
    invoke-virtual {v8, v0, v1}, Landroid/media/IMediaRouterService$Stub;->releaseSessionWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    goto/16 :goto_3db

    .line 579
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v0

    .line 581
    .restart local v0    # "_arg0":Landroid/media/IMediaRouter2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 583
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 584
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    invoke-virtual {v8, v0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->setSessionVolumeWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V

    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    goto/16 :goto_3db

    .line 566
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_1c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v0

    .line 568
    .restart local v0    # "_arg0":Landroid/media/IMediaRouter2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 570
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 571
    .local v2, "_arg2":Landroid/media/MediaRoute2Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {v8, v0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->transferToRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    goto/16 :goto_3db

    .line 553
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/media/MediaRoute2Info;
    :pswitch_1e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v0

    .line 555
    .restart local v0    # "_arg0":Landroid/media/IMediaRouter2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 557
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 558
    .restart local v2    # "_arg2":Landroid/media/MediaRoute2Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    invoke-virtual {v8, v0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->deselectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    goto/16 :goto_3db

    .line 540
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/media/MediaRoute2Info;
    :pswitch_203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v0

    .line 542
    .restart local v0    # "_arg0":Landroid/media/IMediaRouter2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 544
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 545
    .restart local v2    # "_arg2":Landroid/media/MediaRoute2Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 546
    invoke-virtual {v8, v0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->selectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    goto/16 :goto_3db

    .line 521
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/media/MediaRoute2Info;
    :pswitch_222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v14

    .line 523
    .local v14, "_arg0":Landroid/media/IMediaRouter2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 525
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 527
    .local v16, "_arg2":J
    sget-object v0, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/media/RoutingSessionInfo;

    .line 529
    .local v18, "_arg3":Landroid/media/RoutingSessionInfo;
    sget-object v0, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/media/MediaRoute2Info;

    .line 531
    .local v19, "_arg4":Landroid/media/MediaRoute2Info;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Bundle;

    .line 532
    .local v20, "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v15

    move-wide/from16 v3, v16

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/media/IMediaRouterService$Stub;->requestCreateSessionWithRouter2(Landroid/media/IMediaRouter2;IJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    goto/16 :goto_3db

    .line 508
    .end local v14    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":J
    .end local v18    # "_arg3":Landroid/media/RoutingSessionInfo;
    .end local v19    # "_arg4":Landroid/media/MediaRoute2Info;
    .end local v20    # "_arg5":Landroid/os/Bundle;
    :pswitch_267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v0

    .line 510
    .restart local v0    # "_arg0":Landroid/media/IMediaRouter2;
    sget-object v1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 512
    .local v1, "_arg1":Landroid/media/MediaRoute2Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 513
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {v8, v0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->setRouteVolumeWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/MediaRoute2Info;I)V

    .line 515
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    goto/16 :goto_3db

    .line 497
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v1    # "_arg1":Landroid/media/MediaRoute2Info;
    .end local v2    # "_arg2":I
    :pswitch_286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v0

    .line 499
    .restart local v0    # "_arg0":Landroid/media/IMediaRouter2;
    sget-object v1, Landroid/media/RouteDiscoveryPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RouteDiscoveryPreference;

    .line 500
    .local v1, "_arg1":Landroid/media/RouteDiscoveryPreference;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {v8, v0, v1}, Landroid/media/IMediaRouterService$Stub;->setDiscoveryRequestWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/RouteDiscoveryPreference;)V

    .line 502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    goto/16 :goto_3db

    .line 488
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v1    # "_arg1":Landroid/media/RouteDiscoveryPreference;
    :pswitch_2a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v0

    .line 489
    .restart local v0    # "_arg0":Landroid/media/IMediaRouter2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {v8, v0}, Landroid/media/IMediaRouterService$Stub;->unregisterRouter2(Landroid/media/IMediaRouter2;)V

    .line 491
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    goto/16 :goto_3db

    .line 477
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2;
    :pswitch_2b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouter2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;

    move-result-object v0

    .line 479
    .restart local v0    # "_arg0":Landroid/media/IMediaRouter2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {v8, v0, v1}, Landroid/media/IMediaRouterService$Stub;->registerRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    goto/16 :goto_3db

    .line 469
    .end local v0    # "_arg0":Landroid/media/IMediaRouter2;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_2cb
    invoke-virtual/range {p0 .. p0}, Landroid/media/IMediaRouterService$Stub;->getSystemSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    .line 470
    .local v0, "_result":Landroid/media/RoutingSessionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 472
    goto/16 :goto_3db

    .line 462
    .end local v0    # "_result":Landroid/media/RoutingSessionInfo;
    :pswitch_2d7
    invoke-virtual/range {p0 .. p0}, Landroid/media/IMediaRouterService$Stub;->getSystemRoutes()Ljava/util/List;

    move-result-object v0

    .line 463
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 465
    goto/16 :goto_3db

    .line 456
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    :pswitch_2e3
    invoke-virtual/range {p0 .. p0}, Landroid/media/IMediaRouterService$Stub;->enforceMediaContentControlPermission()V

    .line 457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    goto/16 :goto_3db

    .line 444
    :pswitch_2eb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    move-result-object v0

    .line 446
    .local v0, "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 448
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 449
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {v8, v0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->requestUpdateVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    goto/16 :goto_3db

    .line 431
    .end local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    move-result-object v0

    .line 433
    .restart local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 435
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 436
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {v8, v0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->requestSetVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    .line 438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    goto/16 :goto_3db

    .line 418
    .end local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    move-result-object v0

    .line 420
    .restart local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 422
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 423
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {v8, v0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->setSelectedRoute(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V

    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    goto/16 :goto_3db

    .line 405
    .end local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_33c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    move-result-object v0

    .line 407
    .restart local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 409
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 410
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {v8, v0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->setDiscoveryRequest(Landroid/media/IMediaRouterClient;IZ)V

    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    goto/16 :goto_3db

    .line 394
    .end local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    move-result-object v0

    .line 396
    .restart local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 397
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {v8, v0, v1}, Landroid/media/IMediaRouterService$Stub;->setBluetoothA2dpOn(Landroid/media/IMediaRouterClient;Z)V

    .line 399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    goto :goto_3db

    .line 384
    .end local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v1    # "_arg1":Z
    :pswitch_36d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    move-result-object v0

    .line 385
    .restart local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {v8, v0}, Landroid/media/IMediaRouterService$Stub;->isPlaybackActive(Landroid/media/IMediaRouterClient;)Z

    move-result v1

    .line 387
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 389
    goto :goto_3db

    .line 374
    .end local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v1    # "_result":Z
    :pswitch_383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    move-result-object v0

    .line 375
    .restart local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {v8, v0}, Landroid/media/IMediaRouterService$Stub;->getState(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;

    move-result-object v1

    .line 377
    .local v1, "_result":Landroid/media/MediaRouterClientState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 379
    goto :goto_3db

    .line 363
    .end local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v1    # "_result":Landroid/media/MediaRouterClientState;
    :pswitch_399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    move-result-object v0

    .line 365
    .restart local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {v8, v0, v1}, Landroid/media/IMediaRouterService$Stub;->registerClientGroupId(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    goto :goto_3db

    .line 354
    .end local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_3af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    move-result-object v0

    .line 355
    .restart local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {v8, v0}, Landroid/media/IMediaRouterService$Stub;->unregisterClient(Landroid/media/IMediaRouterClient;)V

    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    goto :goto_3db

    .line 341
    .end local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    :pswitch_3c1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    move-result-object v0

    .line 343
    .restart local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 345
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 346
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {v8, v0, v1, v2}, Landroid/media/IMediaRouterService$Stub;->registerClientAsUser(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    .line 348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    nop

    .line 768
    .end local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :goto_3db
    return v13

    :pswitch_data_3dc
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_3e2
    .packed-switch 0x1
        :pswitch_3c1
        :pswitch_3af
        :pswitch_399
        :pswitch_383
        :pswitch_36d
        :pswitch_357
        :pswitch_33c
        :pswitch_321
        :pswitch_306
        :pswitch_2eb
        :pswitch_2e3
        :pswitch_2d7
        :pswitch_2cb
        :pswitch_2b4
        :pswitch_2a1
        :pswitch_286
        :pswitch_267
        :pswitch_222
        :pswitch_203
        :pswitch_1e4
        :pswitch_1c5
        :pswitch_1aa
        :pswitch_193
        :pswitch_17c
        :pswitch_161
        :pswitch_14a
        :pswitch_137
        :pswitch_114
        :pswitch_101
        :pswitch_ee
        :pswitch_c7
        :pswitch_a4
        :pswitch_81
        :pswitch_5e
        :pswitch_3f
        :pswitch_24
    .end packed-switch
.end method
