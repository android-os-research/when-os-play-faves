.class public abstract Landroid/os/IInstalld$Stub;
.super Landroid/os/Binder;
.source "IInstalld.java"

# interfaces
.implements Landroid/os/IInstalld;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IInstalld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IInstalld$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IInstalld"

.field public static final TRANSACTION_cleanupInvalidPackageDirs:I = 0x34

.field public static final TRANSACTION_clearAppData:I = 0x9

.field public static final TRANSACTION_clearAppProfiles:I = 0x1c

.field public static final TRANSACTION_compileLayouts:I = 0x17

.field public static final TRANSACTION_compressFile:I = 0x48

.field public static final TRANSACTION_controlDexOptBlocking:I = 0x16

.field public static final TRANSACTION_copyKnoxAppData:I = 0x37

.field public static final TRANSACTION_copyKnoxCancel:I = 0x39

.field public static final TRANSACTION_copyKnoxChunks:I = 0x38

.field public static final TRANSACTION_copySystemProfile:I = 0x1b

.field public static final TRANSACTION_createAppData:I = 0x4

.field public static final TRANSACTION_createAppDataBatched:I = 0x5

.field public static final TRANSACTION_createEncAppData:I = 0x3d

.field public static final TRANSACTION_createOatDir:I = 0x24

.field public static final TRANSACTION_createProfileSnapshot:I = 0x1f

.field public static final TRANSACTION_createUserData:I = 0x1

.field public static final TRANSACTION_deleteDirectoryContents:I = 0x47

.field public static final TRANSACTION_deleteKnoxFile:I = 0x3c

.field public static final TRANSACTION_deleteOdex:I = 0x27

.field public static final TRANSACTION_deleteReferenceProfile:I = 0x1e

.field public static final TRANSACTION_destroyAppData:I = 0xa

.field public static final TRANSACTION_destroyAppDataSnapshot:I = 0x2f

.field public static final TRANSACTION_destroyAppProfiles:I = 0x1d

.field public static final TRANSACTION_destroyCeSnapshotsNotSpecified:I = 0x30

.field public static final TRANSACTION_destroyProfileSnapshot:I = 0x20

.field public static final TRANSACTION_destroyUserData:I = 0x2

.field public static final TRANSACTION_dexopt:I = 0x13

.field public static final TRANSACTION_dexoptAsync:I = 0x14

.field public static final TRANSACTION_dumpProfiles:I = 0x1a

.field public static final TRANSACTION_fixupAppData:I = 0xb

.field public static final TRANSACTION_freeCache:I = 0x22

.field public static final TRANSACTION_getAppCrates:I = 0xf

.field public static final TRANSACTION_getAppSize:I = 0xc

.field public static final TRANSACTION_getAsyncResult:I = 0x15

.field public static final TRANSACTION_getCompressedStats:I = 0x49

.field public static final TRANSACTION_getDualDARLockstate:I = 0x46

.field public static final TRANSACTION_getExternalSize:I = 0xe

.field public static final TRANSACTION_getKnoxFileInfo:I = 0x3a

.field public static final TRANSACTION_getKnoxScanDir:I = 0x3b

.field public static final TRANSACTION_getOdexVisibility:I = 0x35

.field public static final TRANSACTION_getUserCrates:I = 0x10

.field public static final TRANSACTION_getUserSize:I = 0xd

.field public static final TRANSACTION_hasDualDARPolicy:I = 0x44

.field public static final TRANSACTION_hasDualDARPolicyRecursively:I = 0x45

.field public static final TRANSACTION_hashSecondaryDexFile:I = 0x29

.field public static final TRANSACTION_invalidateMounts:I = 0x2a

.field public static final TRANSACTION_isQuotaSupported:I = 0x2b

.field public static final TRANSACTION_linkFile:I = 0x25

.field public static final TRANSACTION_linkNativeLibraryDirectory:I = 0x23

.field public static final TRANSACTION_mergeProfiles:I = 0x19

.field public static final TRANSACTION_migrateAppData:I = 0x8

.field public static final TRANSACTION_migrateLegacyObbData:I = 0x33

.field public static final TRANSACTION_migrateSdpDb:I = 0x40

.field public static final TRANSACTION_moveAb:I = 0x26

.field public static final TRANSACTION_moveCompleteApp:I = 0x12

.field public static final TRANSACTION_onPrivateVolumeRemoved:I = 0x32

.field public static final TRANSACTION_prepareAppProfile:I = 0x2c

.field public static final TRANSACTION_reconcileSdkData:I = 0x6

.field public static final TRANSACTION_reconcileSecondaryDexFile:I = 0x28

.field public static final TRANSACTION_removeEncPkgDir:I = 0x3e

.field public static final TRANSACTION_removeEncUserDir:I = 0x3f

.field public static final TRANSACTION_removeNotTargetedPreloadApksIfNeeded:I = 0x36

.field public static final TRANSACTION_restoreAppDataSnapshot:I = 0x2e

.field public static final TRANSACTION_restoreconAppData:I = 0x7

.field public static final TRANSACTION_rmPackageDir:I = 0x21

.field public static final TRANSACTION_rmdex:I = 0x18

.field public static final TRANSACTION_scanApkStats:I = 0x4a

.field public static final TRANSACTION_setAppQuota:I = 0x11

.field public static final TRANSACTION_setDualDARPolicyDir:I = 0x42

.field public static final TRANSACTION_setDualDARPolicyDirRecursively:I = 0x43

.field public static final TRANSACTION_setEviction:I = 0x41

.field public static final TRANSACTION_setFirstBoot:I = 0x3

.field public static final TRANSACTION_snapshotAppData:I = 0x2d

.field public static final TRANSACTION_tryMountDataMirror:I = 0x31


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 300
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IInstalld"

    .line 301
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.os.IInstalld"

    .line 312
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 313
    instance-of v1, v0, Landroid/os/IInstalld;

    if-eqz v1, :cond_13

    .line 314
    check-cast v0, Landroid/os/IInstalld;

    return-object v0

    .line 316
    :cond_13
    new-instance v0, Landroid/os/IInstalld$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IInstalld$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    const/4 v13, 0x1

    const-string v2, "android.os.IInstalld"

    if-lt v1, v13, :cond_15

    const v3, 0xffffff

    if-gt v1, v3, :cond_15

    .line 326
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    const v3, 0x5f4e5446

    if-eq v1, v3, :cond_822

    packed-switch v1, :pswitch_data_828

    move-object v8, v14

    move-object v2, v15

    .line 1391
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1381
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1385
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->scanApkStats(Ljava/lang/String;I)V

    .line 1386
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_557

    .line 1363
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_43

    const/4 v2, 0x0

    goto :goto_45

    .line 1369
    :cond_43
    new-array v2, v2, [J

    .line 1371
    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1372
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->getCompressedStats(Ljava/lang/String;[J)Z

    move-result v0

    .line 1373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1374
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1375
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_557

    .line 1352
    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1356
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->compressFile(Ljava/lang/String;Z)V

    .line 1357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_557

    .line 1342
    :pswitch_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1344
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->deleteDirectoryContents(Ljava/lang/String;)Z

    move-result v0

    .line 1345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1346
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_557

    .line 1334
    :pswitch_7d
    invoke-interface/range {p0 .. p0}, Landroid/os/IInstalld;->getDualDARLockstate()Z

    move-result v0

    .line 1335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1336
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_557

    .line 1322
    :pswitch_89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1324
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1326
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->hasDualDARPolicyRecursively(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    .line 1327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1329
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_557

    .line 1312
    :pswitch_a4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1314
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->hasDualDARPolicy(Ljava/lang/String;)Z

    move-result v0

    .line 1315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1316
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_557

    .line 1298
    :pswitch_b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1304
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->setDualDARPolicyDirRecursively(IILjava/lang/String;)Z

    move-result v0

    .line 1305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1306
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_557

    .line 1284
    :pswitch_d2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1290
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->setDualDARPolicyDir(IILjava/lang/String;)Z

    move-result v0

    .line 1291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1292
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_557

    .line 1272
    :pswitch_ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1276
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->setEviction(IZ)Z

    move-result v0

    .line 1277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_557

    .line 1260
    :pswitch_104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1264
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->migrateSdpDb(Ljava/lang/String;I)Z

    move-result v0

    .line 1265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1266
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_557

    .line 1250
    :pswitch_11b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1252
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->removeEncUserDir(I)Z

    move-result v0

    .line 1253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1254
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_557

    .line 1238
    :pswitch_12e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1242
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->removeEncPkgDir(ILjava/lang/String;)Z

    move-result v0

    .line 1243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_557

    .line 1222
    :pswitch_145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1230
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->createEncAppData(Ljava/lang/String;III)Z

    move-result v0

    .line 1231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_557

    .line 1212
    :pswitch_164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1214
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->deleteKnoxFile(Ljava/lang/String;)Z

    move-result v0

    .line 1215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1216
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_557

    .line 1197
    :pswitch_177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1201
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1203
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getKnoxScanDir(Ljava/lang/String;JLjava/util/List;)Z

    move-result v0

    .line 1204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1206
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_557

    .line 1187
    :pswitch_196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1189
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->getKnoxFileInfo(Ljava/lang/String;)[J

    move-result-object v0

    .line 1190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1191
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_557

    .line 1175
    :pswitch_1a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1179
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->copyKnoxCancel(Ljava/lang/String;J)Z

    move-result v0

    .line 1180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_557

    .line 1151
    :pswitch_1c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 1165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 1166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 1167
    invoke-interface/range {v0 .. v11}, Landroid/os/IInstalld;->copyKnoxChunks(Ljava/lang/String;ILjava/lang/String;IIJJJ)I

    move-result v0

    .line 1168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1169
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_557

    .line 1133
    :pswitch_1f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 1143
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result v0

    .line 1144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_557

    .line 1125
    :pswitch_216
    invoke-interface/range {p0 .. p0}, Landroid/os/IInstalld;->removeNotTargetedPreloadApksIfNeeded()Z

    move-result v0

    .line 1126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1127
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_557

    .line 1110
    :pswitch_222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1118
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_557

    .line 1097
    :pswitch_241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1099
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1103
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V

    .line 1104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_557

    .line 1090
    :pswitch_258
    invoke-interface/range {p0 .. p0}, Landroid/os/IInstalld;->migrateLegacyObbData()V

    .line 1091
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_557

    .line 1082
    :pswitch_260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1083
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1084
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->onPrivateVolumeRemoved(Ljava/lang/String;)V

    .line 1085
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_557

    .line 1073
    :pswitch_26f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1074
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1075
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->tryMountDataMirror(Ljava/lang/String;)V

    .line 1076
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_557

    .line 1060
    :pswitch_27e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1062
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1064
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1065
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1066
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V

    .line 1067
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_557

    .line 1041
    :pswitch_295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1043
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1045
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1047
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1051
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 1053
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V

    .line 1054
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_557

    .line 1020
    :pswitch_2ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1024
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1028
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1030
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 1034
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 1035
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_557

    .line 1002
    :pswitch_2e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1004
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1008
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1010
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 1012
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide v0

    .line 1013
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_557

    .line 982
    :pswitch_308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 984
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 986
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 990
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 992
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 994
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 995
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_557

    .line 972
    :pswitch_331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 973
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 974
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v0

    .line 975
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_557

    .line 965
    :pswitch_344
    invoke-interface/range {p0 .. p0}, Landroid/os/IInstalld;->invalidateMounts()V

    .line 966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_557

    .line 948
    :pswitch_34c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 950
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 952
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 956
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 958
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0

    .line 959
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_557

    .line 928
    :pswitch_371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 936
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 938
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 940
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_557

    .line 912
    :pswitch_39a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 916
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 920
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 921
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_557

    .line 897
    :pswitch_3b9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 899
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 903
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 904
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 905
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_557

    .line 882
    :pswitch_3d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 884
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_557

    .line 869
    :pswitch_3ef
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_557

    .line 854
    :pswitch_406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 856
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 858
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 860
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 861
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 862
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 863
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_557

    .line 841
    :pswitch_421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 843
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->freeCache(Ljava/lang/String;JI)V

    .line 848
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_557

    .line 830
    :pswitch_438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 832
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_557

    .line 819
    :pswitch_44b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 821
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_557

    .line 803
    :pswitch_45e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 810
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 811
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 812
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_557

    .line 792
    :pswitch_47d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 796
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_557

    .line 783
    :pswitch_490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 785
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->destroyAppProfiles(Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_557

    .line 772
    :pswitch_49f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 776
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_557

    .line 756
    :pswitch_4b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_557

    .line 738
    :pswitch_4d1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 744
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 748
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 749
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_557

    .line 724
    :pswitch_4f5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 731
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_557

    .line 713
    :pswitch_50f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 717
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->rmdex(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_557

    .line 697
    :pswitch_521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 705
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 706
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_557

    .line 688
    :pswitch_53f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->controlDexOptBlocking(Z)V

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_557

    .line 680
    :pswitch_54d
    invoke-interface/range {p0 .. p0}, Landroid/os/IInstalld;->getAsyncResult()[I

    move-result-object v0

    .line 681
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    :goto_557
    move v9, v13

    goto/16 :goto_821

    .line 639
    :pswitch_55a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move/from16 v13, v16

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v14, v16

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v15, v16

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 673
    invoke-interface/range {v0 .. v17}, Landroid/os/IInstalld;->dexoptAsync(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v15, p3

    .line 675
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_651

    :pswitch_5b7
    move-object v15, v14

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v15, v16

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 631
    invoke-interface/range {v0 .. v16}, Landroid/os/IInstalld;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v8, p3

    .line 633
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_651

    :pswitch_60c
    move-object v8, v14

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 592
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 593
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_651

    :pswitch_635
    move-object v8, v14

    .line 563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 571
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->setAppQuota(Ljava/lang/String;IIJ)V

    .line 572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_651
    const/4 v9, 0x1

    goto/16 :goto_821

    :pswitch_654
    move-object v8, v14

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v0

    .line 556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    .line 557
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_821

    :pswitch_66d
    move v9, v13

    move-object v8, v14

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v0

    .line 544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_821

    :pswitch_68a
    move v9, v13

    move-object v8, v14

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v0

    .line 530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_821

    :pswitch_6ab
    move v9, v13

    move-object v8, v14

    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 513
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object v0

    .line 514
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_821

    :pswitch_6cc
    move v9, v13

    move-object v8, v14

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v6

    .line 495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 497
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v0

    .line 498
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_821

    :pswitch_6fb
    move v9, v13

    move-object v8, v14

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->fixupAppData(Ljava/lang/String;I)V

    .line 477
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_821

    :pswitch_710
    move v9, v13

    move-object v8, v14

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 465
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 466
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_821

    :pswitch_733
    move v9, v13

    move-object v8, v14

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 448
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_821

    :pswitch_756
    move v9, v13

    move-object v8, v14

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_821

    :pswitch_773
    move v9, v13

    move-object v8, v14

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 416
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_821

    :pswitch_79a
    move v9, v13

    move-object v8, v14

    .line 395
    sget-object v1, Landroid/os/ReconcileSdkDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ReconcileSdkDataArgs;

    .line 396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V

    .line 398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_821

    :pswitch_7b1
    move v9, v13

    move-object v8, v14

    move-object v2, v15

    .line 385
    sget-object v1, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/CreateAppDataArgs;

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object v0

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_821

    :pswitch_7ca
    move v9, v13

    move-object v8, v14

    move-object v2, v15

    .line 375
    sget-object v1, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CreateAppDataArgs;

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object v0

    .line 378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_821

    :pswitch_7e3
    move v9, v13

    move-object v8, v14

    .line 368
    invoke-interface/range {p0 .. p0}, Landroid/os/IInstalld;->setFirstBoot()V

    .line 369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_821

    :pswitch_7ec
    move v9, v13

    move-object v8, v14

    move-object v2, v15

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-interface {v0, v1, v3, v4}, Landroid/os/IInstalld;->destroyUserData(Ljava/lang/String;II)V

    .line 363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_821

    :pswitch_805
    move v9, v13

    move-object v8, v14

    move-object v2, v15

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-interface {v0, v1, v3, v4, v5}, Landroid/os/IInstalld;->createUserData(Ljava/lang/String;III)V

    .line 350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_821
    return v9

    :cond_822
    move v9, v13

    move-object v8, v14

    .line 332
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :pswitch_data_828
    .packed-switch 0x1
        :pswitch_805
        :pswitch_7ec
        :pswitch_7e3
        :pswitch_7ca
        :pswitch_7b1
        :pswitch_79a
        :pswitch_773
        :pswitch_756
        :pswitch_733
        :pswitch_710
        :pswitch_6fb
        :pswitch_6cc
        :pswitch_6ab
        :pswitch_68a
        :pswitch_66d
        :pswitch_654
        :pswitch_635
        :pswitch_60c
        :pswitch_5b7
        :pswitch_55a
        :pswitch_54d
        :pswitch_53f
        :pswitch_521
        :pswitch_50f
        :pswitch_4f5
        :pswitch_4d1
        :pswitch_4b2
        :pswitch_49f
        :pswitch_490
        :pswitch_47d
        :pswitch_45e
        :pswitch_44b
        :pswitch_438
        :pswitch_421
        :pswitch_406
        :pswitch_3ef
        :pswitch_3d4
        :pswitch_3b9
        :pswitch_39a
        :pswitch_371
        :pswitch_34c
        :pswitch_344
        :pswitch_331
        :pswitch_308
        :pswitch_2e3
        :pswitch_2ba
        :pswitch_295
        :pswitch_27e
        :pswitch_26f
        :pswitch_260
        :pswitch_258
        :pswitch_241
        :pswitch_222
        :pswitch_216
        :pswitch_1f1
        :pswitch_1c0
        :pswitch_1a9
        :pswitch_196
        :pswitch_177
        :pswitch_164
        :pswitch_145
        :pswitch_12e
        :pswitch_11b
        :pswitch_104
        :pswitch_ed
        :pswitch_d2
        :pswitch_b7
        :pswitch_a4
        :pswitch_89
        :pswitch_7d
        :pswitch_6a
        :pswitch_57
        :pswitch_37
        :pswitch_24
    .end packed-switch
.end method
