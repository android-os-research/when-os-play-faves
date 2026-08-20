.class public abstract Landroid/os/IVold$Stub;
.super Landroid/os/Binder;
.source "IVold.java"

# interfaces
.implements Landroid/os/IVold;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVold$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVold"

.field public static final TRANSACTION_abortChanges:I = 0x40

.field public static final TRANSACTION_abortFuse:I = 0x2

.field public static final TRANSACTION_abortIdleMaint:I = 0x1e

.field public static final TRANSACTION_addAppIds:I = 0xa

.field public static final TRANSACTION_addSandboxIds:I = 0xb

.field public static final TRANSACTION_addUserKeyAuth:I = 0x31

.field public static final TRANSACTION_asecCreate:I = 0x5f

.field public static final TRANSACTION_asecDestroy:I = 0x63

.field public static final TRANSACTION_asecFinalize:I = 0x61

.field public static final TRANSACTION_asecFixperms:I = 0x62

.field public static final TRANSACTION_asecFsPath:I = 0x68

.field public static final TRANSACTION_asecList:I = 0x69

.field public static final TRANSACTION_asecMount:I = 0x64

.field public static final TRANSACTION_asecPath:I = 0x67

.field public static final TRANSACTION_asecRename:I = 0x66

.field public static final TRANSACTION_asecResize:I = 0x60

.field public static final TRANSACTION_asecUnmount:I = 0x65

.field public static final TRANSACTION_benchmark:I = 0x12

.field public static final TRANSACTION_bindMount:I = 0x58

.field public static final TRANSACTION_clearUserKeyAuth:I = 0x32

.field public static final TRANSACTION_commitChanges:I = 0x41

.field public static final TRANSACTION_cpFileAtData:I = 0x5d

.field public static final TRANSACTION_createObb:I = 0x1a

.field public static final TRANSACTION_createStubVolume:I = 0x4b

.field public static final TRANSACTION_createUserKey:I = 0x2f

.field public static final TRANSACTION_destroyDsuMetadataKey:I = 0x59

.field public static final TRANSACTION_destroyObb:I = 0x1b

.field public static final TRANSACTION_destroySandboxForApp:I = 0x3b

.field public static final TRANSACTION_destroyStubVolume:I = 0x4c

.field public static final TRANSACTION_destroyUserKey:I = 0x30

.field public static final TRANSACTION_destroyUserStorage:I = 0x39

.field public static final TRANSACTION_earlyBootEnded:I = 0x4a

.field public static final TRANSACTION_encryptFstab:I = 0x2d

.field public static final TRANSACTION_ensureAppDirsCreated:I = 0x19

.field public static final TRANSACTION_fbeEnable:I = 0x29

.field public static final TRANSACTION_fixateNewestUserKeyAuth:I = 0x33

.field public static final TRANSACTION_fixupAppDir:I = 0x18

.field public static final TRANSACTION_forgetPartition:I = 0xe

.field public static final TRANSACTION_format:I = 0x11

.field public static final TRANSACTION_fstrim:I = 0x1c

.field public static final TRANSACTION_getStorageLifeTime:I = 0x1f

.field public static final TRANSACTION_getUnlockedUsers:I = 0x34

.field public static final TRANSACTION_getUsedF2fsFileNode:I = 0x5b

.field public static final TRANSACTION_getWriteAmount:I = 0x22

.field public static final TRANSACTION_incFsEnabled:I = 0x54

.field public static final TRANSACTION_initUser0:I = 0x2b

.field public static final TRANSACTION_isCheckpointing:I = 0x3f

.field public static final TRANSACTION_isFbeSecure:I = 0x2a

.field public static final TRANSACTION_isSensitive:I = 0x4f

.field public static final TRANSACTION_lockUserKey:I = 0x36

.field public static final TRANSACTION_markBootAttempt:I = 0x45

.field public static final TRANSACTION_monitor:I = 0x3

.field public static final TRANSACTION_mount:I = 0xf

.field public static final TRANSACTION_mountAppFuse:I = 0x23

.field public static final TRANSACTION_mountFstab:I = 0x2c

.field public static final TRANSACTION_mountIncFs:I = 0x55

.field public static final TRANSACTION_mountSdpMediaStorageCmd:I = 0x50

.field public static final TRANSACTION_moveStorage:I = 0x13

.field public static final TRANSACTION_mvFileAtData:I = 0x5c

.field public static final TRANSACTION_needsCheckpoint:I = 0x3d

.field public static final TRANSACTION_needsRollback:I = 0x3e

.field public static final TRANSACTION_onSecureKeyguardStateChanged:I = 0xc

.field public static final TRANSACTION_onUserAdded:I = 0x6

.field public static final TRANSACTION_onUserRemoved:I = 0x7

.field public static final TRANSACTION_onUserStarted:I = 0x8

.field public static final TRANSACTION_onUserStopped:I = 0x9

.field public static final TRANSACTION_openAppFuseFile:I = 0x4d

.field public static final TRANSACTION_partition:I = 0xd

.field public static final TRANSACTION_prepareCheckpoint:I = 0x42

.field public static final TRANSACTION_prepareSandboxForApp:I = 0x3a

.field public static final TRANSACTION_prepareUserStorage:I = 0x38

.field public static final TRANSACTION_refreshLatestWrite:I = 0x21

.field public static final TRANSACTION_remountAppStorageDirs:I = 0x15

.field public static final TRANSACTION_remountUid:I = 0x14

.field public static final TRANSACTION_reset:I = 0x4

.field public static final TRANSACTION_resetCheckpoint:I = 0x49

.field public static final TRANSACTION_restoreCheckpoint:I = 0x43

.field public static final TRANSACTION_restoreCheckpointPart:I = 0x44

.field public static final TRANSACTION_runIdleDefrag:I = 0x5a

.field public static final TRANSACTION_runIdleMaint:I = 0x1d

.field public static final TRANSACTION_sdeEnable:I = 0x27

.field public static final TRANSACTION_sdeMoveMountHidden:I = 0x28

.field public static final TRANSACTION_setDebugForExternal:I = 0x37

.field public static final TRANSACTION_setDualDARPolicyCmd:I = 0x53

.field public static final TRANSACTION_setGCUrgentPace:I = 0x20

.field public static final TRANSACTION_setIncFsMountOptions:I = 0x57

.field public static final TRANSACTION_setListener:I = 0x1

.field public static final TRANSACTION_setMpUidForFileSystem:I = 0x5e

.field public static final TRANSACTION_setSdpPolicyCmd:I = 0x51

.field public static final TRANSACTION_setSdpPolicyToPathCmd:I = 0x52

.field public static final TRANSACTION_setSensitive:I = 0x4e

.field public static final TRANSACTION_setStorageBindingSeed:I = 0x2e

.field public static final TRANSACTION_setupAppDir:I = 0x17

.field public static final TRANSACTION_shutdown:I = 0x5

.field public static final TRANSACTION_startCheckpoint:I = 0x3c

.field public static final TRANSACTION_startServiceSnsDataRedirect:I = 0x25

.field public static final TRANSACTION_stopServiceSnsDataRedirect:I = 0x26

.field public static final TRANSACTION_supportsBlockCheckpoint:I = 0x47

.field public static final TRANSACTION_supportsCheckpoint:I = 0x46

.field public static final TRANSACTION_supportsFileCheckpoint:I = 0x48

.field public static final TRANSACTION_unlockUserKey:I = 0x35

.field public static final TRANSACTION_unmount:I = 0x10

.field public static final TRANSACTION_unmountAppFuse:I = 0x24

.field public static final TRANSACTION_unmountAppStorageDirs:I = 0x16

.field public static final TRANSACTION_unmountIncFs:I = 0x56


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 378
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IVold"

    .line 379
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVold;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.os.IVold"

    .line 390
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 391
    instance-of v1, v0, Landroid/os/IVold;

    if-eqz v1, :cond_13

    .line 392
    check-cast v0, Landroid/os/IVold;

    return-object v0

    .line 394
    :cond_13
    new-instance v0, Landroid/os/IVold$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IVold$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    const-string v3, "android.os.IVold"

    if-lt p1, v7, :cond_d

    const v4, 0xffffff

    if-gt p1, v4, :cond_d

    .line 404
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v4, 0x5f4e5446

    if-eq p1, v4, :cond_7ef

    packed-switch p1, :pswitch_data_7f4

    .line 1525
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1518
    :pswitch_1a
    invoke-interface {p0}, Landroid/os/IVold;->asecList()[Ljava/lang/String;

    move-result-object v0

    .line 1519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1520
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_7ee

    .line 1509
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1511
    invoke-interface {p0, v1}, Landroid/os/IVold;->asecFsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1513
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_7ee

    .line 1499
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1500
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1501
    invoke-interface {p0, v1}, Landroid/os/IVold;->asecPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1503
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_7ee

    .line 1488
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1490
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1491
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1492
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->asecRename(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1477
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1479
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1480
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1481
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->asecUnmount(Ljava/lang/String;Z)V

    .line 1482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1462
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1464
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1468
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1469
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1470
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->asecMount(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1451
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1453
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1454
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1455
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->asecDestroy(Ljava/lang/String;Z)V

    .line 1456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1438
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1442
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1443
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1444
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->asecFixperms(Ljava/lang/String;ILjava/lang/String;)V

    .line 1445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1429
    :pswitch_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1430
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1431
    invoke-interface {p0, v1}, Landroid/os/IVold;->asecFinalize(Ljava/lang/String;)V

    .line 1432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1416
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1420
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1421
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1422
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->asecResize(Ljava/lang/String;ILjava/lang/String;)V

    .line 1423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1397
    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1401
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1403
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1407
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 1408
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v8

    .line 1409
    invoke-interface/range {v0 .. v6}, Landroid/os/IVold;->asecCreate(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1388
    :pswitch_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1389
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1390
    invoke-interface {p0, v1}, Landroid/os/IVold;->setMpUidForFileSystem(I)V

    .line 1391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1371
    :pswitch_115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1373
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1379
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v6

    .line 1380
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 1381
    invoke-interface/range {v0 .. v5}, Landroid/os/IVold;->cpFileAtData(Ljava/lang/String;Ljava/lang/String;IILandroid/os/IVoldTaskListener;)V

    .line 1382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1354
    :pswitch_13d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1356
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1358
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1362
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v6

    .line 1363
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 1364
    invoke-interface/range {v0 .. v5}, Landroid/os/IVold;->mvFileAtData(Ljava/lang/String;Ljava/lang/String;IILandroid/os/IVoldTaskListener;)V

    .line 1365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1346
    :pswitch_165
    invoke-interface {p0}, Landroid/os/IVold;->getUsedF2fsFileNode()J

    move-result-wide v0

    .line 1347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_7ee

    .line 1338
    :pswitch_171
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 1339
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1340
    invoke-interface {p0, v1}, Landroid/os/IVold;->runIdleDefrag(Landroid/os/IVoldTaskListener;)V

    .line 1341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1329
    :pswitch_184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1330
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1331
    invoke-interface {p0, v1}, Landroid/os/IVold;->destroyDsuMetadataKey(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1318
    :pswitch_193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1320
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1321
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1322
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->bindMount(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1303
    :pswitch_1a6
    sget-object v1, Landroid/os/incremental/IncrementalFileSystemControlParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/incremental/IncrementalFileSystemControlParcel;

    .line 1305
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1307
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1309
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1310
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1311
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->setIncFsMountOptions(Landroid/os/incremental/IncrementalFileSystemControlParcel;ZZLjava/lang/String;)V

    .line 1312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1294
    :pswitch_1c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1295
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1296
    invoke-interface {p0, v1}, Landroid/os/IVold;->unmountIncFs(Ljava/lang/String;)V

    .line 1297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1278
    :pswitch_1d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1284
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1285
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1286
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->mountIncFs(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/os/incremental/IncrementalFileSystemControlParcel;

    move-result-object v0

    .line 1287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_7ee

    .line 1270
    :pswitch_1f3
    invoke-interface {p0}, Landroid/os/IVold;->incFsEnabled()Z

    move-result v0

    .line 1271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1272
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_7ee

    .line 1259
    :pswitch_1ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1262
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1263
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->setDualDARPolicyCmd(II)Z

    move-result v0

    .line 1264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_7ee

    .line 1247
    :pswitch_216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1249
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1250
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1251
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->setSdpPolicyToPathCmd(ILjava/lang/String;)Z

    move-result v0

    .line 1252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1253
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_7ee

    .line 1237
    :pswitch_22d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1238
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1239
    invoke-interface {p0, v1}, Landroid/os/IVold;->setSdpPolicyCmd(I)Z

    move-result v0

    .line 1240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_7ee

    .line 1227
    :pswitch_240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1228
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1229
    invoke-interface {p0, v1}, Landroid/os/IVold;->mountSdpMediaStorageCmd(I)Z

    move-result v0

    .line 1230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_7ee

    .line 1217
    :pswitch_253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1218
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1219
    invoke-interface {p0, v1}, Landroid/os/IVold;->isSensitive(Ljava/lang/String;)Z

    move-result v0

    .line 1220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_7ee

    .line 1205
    :pswitch_266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1208
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1209
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->setSensitive(ILjava/lang/String;)Z

    move-result v0

    .line 1210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_7ee

    .line 1189
    :pswitch_27d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1196
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1197
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->openAppFuseFile(IIII)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    goto/16 :goto_7ee

    .line 1180
    :pswitch_29c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1182
    invoke-interface {p0, v1}, Landroid/os/IVold;->destroyStubVolume(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1160
    :pswitch_2ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1171
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v8

    .line 1172
    invoke-interface/range {v0 .. v6}, Landroid/os/IVold;->createStubVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_7ee

    .line 1153
    :pswitch_2d8
    invoke-interface {p0}, Landroid/os/IVold;->earlyBootEnded()V

    .line 1154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1147
    :pswitch_2e0
    invoke-interface {p0}, Landroid/os/IVold;->resetCheckpoint()V

    .line 1148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1140
    :pswitch_2e8
    invoke-interface {p0}, Landroid/os/IVold;->supportsFileCheckpoint()Z

    move-result v0

    .line 1141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_7ee

    .line 1133
    :pswitch_2f4
    invoke-interface {p0}, Landroid/os/IVold;->supportsBlockCheckpoint()Z

    move-result v0

    .line 1134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_7ee

    .line 1126
    :pswitch_300
    invoke-interface {p0}, Landroid/os/IVold;->supportsCheckpoint()Z

    move-result v0

    .line 1127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_7ee

    .line 1120
    :pswitch_30c
    invoke-interface {p0}, Landroid/os/IVold;->markBootAttempt()V

    .line 1121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1110
    :pswitch_314
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1113
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1114
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->restoreCheckpointPart(Ljava/lang/String;I)V

    .line 1115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1101
    :pswitch_327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1102
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1103
    invoke-interface {p0, v1}, Landroid/os/IVold;->restoreCheckpoint(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1094
    :pswitch_336
    invoke-interface {p0}, Landroid/os/IVold;->prepareCheckpoint()V

    .line 1095
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1088
    :pswitch_33e
    invoke-interface {p0}, Landroid/os/IVold;->commitChanges()V

    .line 1089
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1078
    :pswitch_346
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1080
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1081
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1082
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V

    .line 1083
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1070
    :pswitch_359
    invoke-interface {p0}, Landroid/os/IVold;->isCheckpointing()Z

    move-result v0

    .line 1071
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_7ee

    .line 1063
    :pswitch_365
    invoke-interface {p0}, Landroid/os/IVold;->needsRollback()Z

    move-result v0

    .line 1064
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_7ee

    .line 1056
    :pswitch_371
    invoke-interface {p0}, Landroid/os/IVold;->needsCheckpoint()Z

    move-result v0

    .line 1057
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_7ee

    .line 1048
    :pswitch_37d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1049
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1050
    invoke-interface {p0, v1}, Landroid/os/IVold;->startCheckpoint(I)V

    .line 1051
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1035
    :pswitch_38c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1039
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1040
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1041
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->destroySandboxForApp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1042
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1020
    :pswitch_3a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1022
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1024
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1026
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1027
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1028
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->prepareSandboxForApp(Ljava/lang/String;ILjava/lang/String;I)V

    .line 1029
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 1007
    :pswitch_3be
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1009
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1011
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1012
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->destroyUserStorage(Ljava/lang/String;II)V

    .line 1014
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 992
    :pswitch_3d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 994
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 996
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 998
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 999
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1000
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->prepareUserStorage(Ljava/lang/String;III)V

    .line 1001
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 983
    :pswitch_3f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 984
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 985
    invoke-interface {p0, v1}, Landroid/os/IVold;->setDebugForExternal(Ljava/lang/String;)V

    .line 986
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 974
    :pswitch_3ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 975
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 976
    invoke-interface {p0, v1}, Landroid/os/IVold;->lockUserKey(I)V

    .line 977
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 959
    :pswitch_40e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 961
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 963
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 965
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 966
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 967
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V

    .line 968
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 951
    :pswitch_429
    invoke-interface {p0}, Landroid/os/IVold;->getUnlockedUsers()[I

    move-result-object v0

    .line 952
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_7ee

    .line 943
    :pswitch_435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 944
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 945
    invoke-interface {p0, v1}, Landroid/os/IVold;->fixateNewestUserKeyAuth(I)V

    .line 946
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 928
    :pswitch_444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 930
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 932
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 934
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 935
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 936
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->clearUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 913
    :pswitch_45f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 915
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 917
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 919
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 920
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 921
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->addUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V

    .line 922
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 904
    :pswitch_47a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 905
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 906
    invoke-interface {p0, v1}, Landroid/os/IVold;->destroyUserKey(I)V

    .line 907
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 891
    :pswitch_489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 893
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 895
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 896
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 897
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->createUserKey(IIZ)V

    .line 898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 882
    :pswitch_4a0
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 883
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-interface {p0, v1}, Landroid/os/IVold;->setStorageBindingSeed([B)V

    .line 885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 867
    :pswitch_4af
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 869
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 873
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 874
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->encryptFstab(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 876
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 856
    :pswitch_4ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 858
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 859
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->mountFstab(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 849
    :pswitch_4dd
    invoke-interface {p0}, Landroid/os/IVold;->initUser0()V

    .line 850
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 840
    :pswitch_4e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 841
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    invoke-interface {p0, v1}, Landroid/os/IVold;->isFbeSecure(I)Z

    move-result v0

    .line 843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_7ee

    .line 833
    :pswitch_4f8
    invoke-interface {p0}, Landroid/os/IVold;->fbeEnable()V

    .line 834
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 819
    :pswitch_500
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 821
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 823
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IVoldMountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldMountCallback;

    move-result-object v5

    .line 826
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 827
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->sdeMoveMountHidden(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V

    .line 828
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 800
    :pswitch_51f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 802
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 806
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v6

    .line 810
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IVoldMountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldMountCallback;

    move-result-object v8

    .line 811
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v8

    .line 812
    invoke-interface/range {v0 .. v6}, Landroid/os/IVold;->sdeEnable(Ljava/lang/String;IIZLandroid/os/IVoldTaskListener;Landroid/os/IVoldMountCallback;)V

    .line 813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 793
    :pswitch_550
    invoke-interface {p0}, Landroid/os/IVold;->stopServiceSnsDataRedirect()V

    .line 794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 787
    :pswitch_558
    invoke-interface {p0}, Landroid/os/IVold;->startServiceSnsDataRedirect()V

    .line 788
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 777
    :pswitch_560
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 779
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 780
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 781
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->unmountAppFuse(II)V

    .line 782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 765
    :pswitch_573
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 767
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 768
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->mountAppFuse(II)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 770
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    goto/16 :goto_7ee

    .line 757
    :pswitch_58a
    invoke-interface {p0}, Landroid/os/IVold;->getWriteAmount()I

    move-result v0

    .line 758
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_7ee

    .line 751
    :pswitch_596
    invoke-interface {p0}, Landroid/os/IVold;->refreshLatestWrite()V

    .line 752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 735
    :pswitch_59e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 739
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 741
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 743
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 745
    invoke-interface/range {v0 .. v5}, Landroid/os/IVold;->setGCUrgentPace(IIFFI)V

    .line 746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 727
    :pswitch_5c2
    invoke-interface {p0}, Landroid/os/IVold;->getStorageLifeTime()I

    move-result v0

    .line 728
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_7ee

    .line 719
    :pswitch_5ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 720
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    invoke-interface {p0, v1}, Landroid/os/IVold;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V

    .line 722
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 708
    :pswitch_5e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 710
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v3

    .line 711
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 712
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->runIdleMaint(ZLandroid/os/IVoldTaskListener;)V

    .line 713
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 697
    :pswitch_5f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v3

    .line 700
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 688
    :pswitch_60f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-interface {p0, v1}, Landroid/os/IVold;->destroyObb(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 676
    :pswitch_61e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 679
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->createObb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_7ee

    .line 665
    :pswitch_635
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->ensureAppDirsCreated([Ljava/lang/String;I)V

    .line 670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 654
    :pswitch_648
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 656
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 657
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 658
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->fixupAppDir(Ljava/lang/String;I)V

    .line 659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 643
    :pswitch_65b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 646
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->setupAppDir(Ljava/lang/String;I)V

    .line 648
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 630
    :pswitch_66e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 632
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 636
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->unmountAppStorageDirs(II[Ljava/lang/String;)V

    .line 637
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 617
    :pswitch_685
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 619
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 621
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->remountAppStorageDirs(II[Ljava/lang/String;)V

    .line 624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 606
    :pswitch_69c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->remountUid(II)V

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 593
    :pswitch_6af
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v4

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 582
    :pswitch_6ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v3

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 571
    :pswitch_6e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 575
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->format(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 562
    :pswitch_6f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-interface {p0, v1}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 547
    :pswitch_703
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IVoldMountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldMountCallback;

    move-result-object v5

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->mount(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 536
    :pswitch_722
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 523
    :pswitch_735
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 514
    :pswitch_74c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-interface {p0, v1}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 503
    :pswitch_75b
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 507
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->addSandboxIds([I[Ljava/lang/String;)V

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 492
    :pswitch_76e
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->addAppIds([Ljava/lang/String;[I)V

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_7ee

    .line 483
    :pswitch_781
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 485
    invoke-interface {p0, v1}, Landroid/os/IVold;->onUserStopped(I)V

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_7ee

    .line 474
    :pswitch_78f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-interface {p0, v1}, Landroid/os/IVold;->onUserStarted(I)V

    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_7ee

    .line 465
    :pswitch_79d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 467
    invoke-interface {p0, v1}, Landroid/os/IVold;->onUserRemoved(I)V

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_7ee

    .line 452
    :pswitch_7ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->onUserAdded(III)V

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_7ee

    .line 445
    :pswitch_7c1
    invoke-interface {p0}, Landroid/os/IVold;->shutdown()V

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_7ee

    .line 439
    :pswitch_7c8
    invoke-interface {p0}, Landroid/os/IVold;->reset()V

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_7ee

    .line 433
    :pswitch_7cf
    invoke-interface {p0}, Landroid/os/IVold;->monitor()V

    .line 434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_7ee

    .line 427
    :pswitch_7d6
    invoke-interface {p0}, Landroid/os/IVold;->abortFuse()V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_7ee

    .line 419
    :pswitch_7dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldListener;

    move-result-object v1

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-interface {p0, v1}, Landroid/os/IVold;->setListener(Landroid/os/IVoldListener;)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_7ee
    return v7

    .line 410
    :cond_7ef
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    nop

    :pswitch_data_7f4
    .packed-switch 0x1
        :pswitch_7dd
        :pswitch_7d6
        :pswitch_7cf
        :pswitch_7c8
        :pswitch_7c1
        :pswitch_7ab
        :pswitch_79d
        :pswitch_78f
        :pswitch_781
        :pswitch_76e
        :pswitch_75b
        :pswitch_74c
        :pswitch_735
        :pswitch_722
        :pswitch_703
        :pswitch_6f4
        :pswitch_6e1
        :pswitch_6ca
        :pswitch_6af
        :pswitch_69c
        :pswitch_685
        :pswitch_66e
        :pswitch_65b
        :pswitch_648
        :pswitch_635
        :pswitch_61e
        :pswitch_60f
        :pswitch_5f8
        :pswitch_5e1
        :pswitch_5ce
        :pswitch_5c2
        :pswitch_59e
        :pswitch_596
        :pswitch_58a
        :pswitch_573
        :pswitch_560
        :pswitch_558
        :pswitch_550
        :pswitch_51f
        :pswitch_500
        :pswitch_4f8
        :pswitch_4e5
        :pswitch_4dd
        :pswitch_4ca
        :pswitch_4af
        :pswitch_4a0
        :pswitch_489
        :pswitch_47a
        :pswitch_45f
        :pswitch_444
        :pswitch_435
        :pswitch_429
        :pswitch_40e
        :pswitch_3ff
        :pswitch_3f0
        :pswitch_3d5
        :pswitch_3be
        :pswitch_3a3
        :pswitch_38c
        :pswitch_37d
        :pswitch_371
        :pswitch_365
        :pswitch_359
        :pswitch_346
        :pswitch_33e
        :pswitch_336
        :pswitch_327
        :pswitch_314
        :pswitch_30c
        :pswitch_300
        :pswitch_2f4
        :pswitch_2e8
        :pswitch_2e0
        :pswitch_2d8
        :pswitch_2ab
        :pswitch_29c
        :pswitch_27d
        :pswitch_266
        :pswitch_253
        :pswitch_240
        :pswitch_22d
        :pswitch_216
        :pswitch_1ff
        :pswitch_1f3
        :pswitch_1d4
        :pswitch_1c5
        :pswitch_1a6
        :pswitch_193
        :pswitch_184
        :pswitch_171
        :pswitch_165
        :pswitch_13d
        :pswitch_115
        :pswitch_106
        :pswitch_dd
        :pswitch_c6
        :pswitch_b7
        :pswitch_a0
        :pswitch_8d
        :pswitch_72
        :pswitch_5f
        :pswitch_4c
        :pswitch_39
        :pswitch_26
        :pswitch_1a
    .end packed-switch
.end method
