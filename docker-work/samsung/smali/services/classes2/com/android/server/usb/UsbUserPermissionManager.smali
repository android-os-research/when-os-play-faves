.class public Lcom/android/server/usb/UsbUserPermissionManager;
.super Ljava/lang/Object;
.source "UsbUserPermissionManager.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final SNET_EVENT_LOG_ID:I = 0x534e4554

.field public static final TAG:Ljava/lang/String; = "UsbUserPermissionManager"


# instance fields
.field public final mAccessoryPermissionMap:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field public final mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/AccessoryFilter;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mDevicePermissionMap:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field public final mDevicePersistentPermissionMap:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/DeviceFilter;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisablePermissionDialogs:Z

.field public mIsCopyPermissionsScheduled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mPermissionsFile:Landroid/util/AtomicFile;

.field public final mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

.field public final mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public static synthetic $r8$lambda$Ndlx1JHigbuEGTg2mkqIYkCDRl4(Lcom/android/server/usb/UsbUserPermissionManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->lambda$scheduleWritePermissionsLocked$0()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbUserSettingsManager;)V
    .registers 6

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    .line 103
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 107
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    .line 131
    iput-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    .line 133
    iput-object p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    .line 134
    const-class p2, Landroid/hardware/SensorPrivacyManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorPrivacyManagerInternal;

    iput-object p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110113

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    .line 138
    new-instance p1, Landroid/util/AtomicFile;

    new-instance p2, Ljava/io/File;

    .line 139
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "usb_permissions.xml"

    invoke-direct {p2, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v1, "usb-permissions"

    invoke-direct {p1, p2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    .line 141
    monitor-enter v0

    .line 142
    :try_start_62
    invoke-virtual {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->readPermissionsLocked()V

    .line 143
    monitor-exit v0

    return-void

    :catchall_67
    move-exception p0

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_67

    throw p0
.end method

.method private synthetic lambda$scheduleWritePermissionsLocked$0()V
    .registers 20

    move-object/from16 v1, p0

    .line 471
    iget-object v2, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 473
    :try_start_5
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 474
    new-array v3, v0, [Landroid/hardware/usb/DeviceFilter;

    .line 475
    new-array v4, v0, [[I

    .line 476
    new-array v5, v0, [[Z

    const/4 v6, 0x0

    move v7, v6

    :goto_13
    if-ge v7, v0, :cond_51

    .line 478
    new-instance v8, Landroid/hardware/usb/DeviceFilter;

    iget-object v9, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 479
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v8, v9}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/DeviceFilter;)V

    aput-object v8, v3, v7

    .line 480
    iget-object v8, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 481
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseBooleanArray;

    .line 482
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    .line 483
    new-array v10, v9, [I

    aput-object v10, v4, v7

    .line 484
    new-array v10, v9, [Z

    aput-object v10, v5, v7

    move v10, v6

    :goto_39
    if-ge v10, v9, :cond_4e

    .line 486
    aget-object v11, v4, v7

    invoke-virtual {v8, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v12

    aput v12, v11, v10

    .line 487
    aget-object v11, v5, v7

    .line 488
    invoke-virtual {v8, v10}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v12

    aput-boolean v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_39

    :cond_4e
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 492
    :cond_51
    iget-object v7, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 493
    new-array v8, v7, [Landroid/hardware/usb/AccessoryFilter;

    .line 494
    new-array v9, v7, [[I

    .line 495
    new-array v10, v7, [[Z

    move v11, v6

    :goto_5e
    if-ge v11, v7, :cond_9c

    .line 497
    new-instance v12, Landroid/hardware/usb/AccessoryFilter;

    iget-object v13, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 498
    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v12, v13}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/AccessoryFilter;)V

    aput-object v12, v8, v11

    .line 499
    iget-object v12, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 500
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseBooleanArray;

    .line 501
    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->size()I

    move-result v13

    .line 502
    new-array v14, v13, [I

    aput-object v14, v9, v11

    .line 503
    new-array v14, v13, [Z

    aput-object v14, v10, v11

    move v14, v6

    :goto_84
    if-ge v14, v13, :cond_99

    .line 505
    aget-object v15, v9, v11

    .line 506
    invoke-virtual {v12, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v16

    aput v16, v15, v14

    .line 507
    aget-object v15, v10, v11

    .line 508
    invoke-virtual {v12, v14}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v16

    aput-boolean v16, v15, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_84

    :cond_99
    add-int/lit8 v11, v11, 0x1

    goto :goto_5e

    .line 511
    :cond_9c
    iput-boolean v6, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    .line 512
    monitor-exit v2
    :try_end_9f
    .catchall {:try_start_5 .. :try_end_9f} :catchall_15d

    .line 514
    iget-object v10, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    monitor-enter v10

    const/4 v2, 0x0

    .line 517
    :try_start_a3
    iget-object v11, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v11
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a9} :catch_14a
    .catchall {:try_start_a3 .. :try_end_a9} :catchall_148

    .line 518
    :try_start_a9
    invoke-static {v11}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v12

    .line 519
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v12, v2, v13}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v13, "permissions"

    .line 520
    invoke-interface {v12, v2, v13}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v13, v6

    :goto_b9
    if-ge v13, v0, :cond_fb

    .line 523
    aget-object v14, v4, v13

    array-length v14, v14

    move v15, v6

    :goto_bf
    if-ge v15, v14, :cond_f5

    const-string/jumbo v6, "permission"

    .line 525
    invoke-interface {v12, v2, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "uid"

    .line 526
    aget-object v17, v4, v13

    aget v17, v17, v15

    move/from16 v18, v0

    .line 527
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-interface {v12, v2, v6, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "granted"

    .line 528
    aget-object v6, v5, v13

    aget-boolean v6, v6, v15

    .line 529
    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    .line 528
    invoke-interface {v12, v2, v0, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 530
    aget-object v0, v3, v13

    invoke-virtual {v0, v12}, Landroid/hardware/usb/DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v0, "permission"

    .line 531
    invoke-interface {v12, v2, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v18

    const/4 v6, 0x0

    goto :goto_bf

    :cond_f5
    move/from16 v18, v0

    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    goto :goto_b9

    :cond_fb
    const/4 v0, 0x0

    :goto_fc
    if-ge v0, v7, :cond_136

    .line 536
    aget-object v3, v9, v0

    array-length v3, v3

    const/4 v4, 0x0

    :goto_102
    if-ge v4, v3, :cond_133

    const-string/jumbo v6, "permission"

    .line 538
    invoke-interface {v12, v2, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "uid"

    .line 539
    aget-object v13, v9, v0

    aget v13, v13, v4

    .line 540
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 539
    invoke-interface {v12, v2, v6, v13}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "granted"

    .line 541
    aget-object v13, v5, v0

    aget-boolean v13, v13, v4

    .line 542
    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    .line 541
    invoke-interface {v12, v2, v6, v13}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 543
    aget-object v6, v8, v0

    invoke-virtual {v6, v12}, Landroid/hardware/usb/AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v6, "permission"

    .line 544
    invoke-interface {v12, v2, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_102

    :cond_133
    add-int/lit8 v0, v0, 0x1

    goto :goto_fc

    :cond_136
    const-string/jumbo v0, "permissions"

    .line 548
    invoke-interface {v12, v2, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 549
    invoke-interface {v12}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 551
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v11}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_144} :catch_145
    .catchall {:try_start_a9 .. :try_end_144} :catchall_148

    goto :goto_159

    :catch_145
    move-exception v0

    move-object v2, v11

    goto :goto_14b

    :catchall_148
    move-exception v0

    goto :goto_15b

    :catch_14a
    move-exception v0

    .line 553
    :goto_14b
    :try_start_14b
    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to write permissions"

    invoke-static {v3, v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_159

    .line 555
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 558
    :cond_159
    :goto_159
    monitor-exit v10

    return-void

    :goto_15b
    monitor-exit v10
    :try_end_15c
    .catchall {:try_start_14b .. :try_end_15c} :catchall_148

    throw v0

    :catchall_15d
    move-exception v0

    .line 512
    :try_start_15e
    monitor-exit v2
    :try_end_15f
    .catchall {:try_start_15e .. :try_end_15f} :catchall_15d

    throw v0
.end method


# virtual methods
.method public checkPermission(Landroid/hardware/usb/UsbAccessory;II)V
    .registers 5

    .line 746
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 747
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User has not given "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " permission to accessory "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)V
    .registers 8

    .line 727
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result p3

    if-nez p3, :cond_88

    .line 729
    iget-object p3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 730
    :try_start_9
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    if-nez p0, :cond_1f

    .line 732
    sget-object p0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v0, "checkPermission: uidList is null"

    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 735
    :cond_1f
    sget-object v0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPermission: device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uidList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", For uid("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :goto_59
    monitor-exit p3
    :try_end_5a
    .catchall {:try_start_9 .. :try_end_5a} :catchall_85

    .line 740
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User has not given "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " permission to access device "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_85
    move-exception p0

    .line 737
    :try_start_86
    monitor-exit p3
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw p0

    :cond_88
    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 608
    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v2

    .line 609
    iget-object v4, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_b
    const-string/jumbo v5, "user_id"

    .line 610
    iget-object v6, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const-wide v7, 0x10500000001L

    invoke-virtual {v1, v5, v7, v8, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 611
    iget-object v5, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v9, 0x0

    :goto_23
    const-wide v10, 0x20500000002L

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    if-ge v9, v5, :cond_6e

    .line 613
    iget-object v6, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "device_permissions"

    .line 614
    invoke-virtual {v1, v7, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v14, "device_name"

    .line 617
    invoke-virtual {v1, v14, v12, v13, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 619
    iget-object v6, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseBooleanArray;

    .line 620
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_54
    if-ge v13, v12, :cond_63

    const-string/jumbo v14, "uids"

    .line 622
    invoke-virtual {v6, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v1, v14, v10, v11, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_54

    .line 625
    :cond_63
    invoke-virtual {v1, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v9, v9, 0x1

    const-wide v7, 0x10500000001L

    goto :goto_23

    .line 628
    :cond_6e
    iget-object v5, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_75
    if-ge v6, v5, :cond_c4

    .line 630
    iget-object v7, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/UsbAccessory;

    const-string v8, "accessory_permissions"

    const-wide v14, 0x20b00000003L

    .line 631
    invoke-virtual {v1, v8, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v14, "accessory_description"

    .line 636
    invoke-virtual {v7}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v7

    .line 634
    invoke-virtual {v1, v14, v12, v13, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 638
    iget-object v7, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseBooleanArray;

    .line 639
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_a0
    if-ge v15, v14, :cond_b4

    const-string/jumbo v12, "uids"

    .line 641
    invoke-virtual {v7, v15}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v1, v12, v10, v11, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    add-int/lit8 v15, v15, 0x1

    const-wide v12, 0x10900000001L

    goto :goto_a0

    .line 644
    :cond_b4
    invoke-virtual {v1, v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v6, v6, 0x1

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    goto :goto_75

    .line 647
    :cond_c4
    iget-object v5, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_cb
    const-wide v9, 0x10b00000001L

    if-ge v6, v5, :cond_136

    .line 649
    iget-object v11, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/usb/DeviceFilter;

    const-string v12, "device_persistent_permissions"

    const-wide v13, 0x20b00000004L

    .line 650
    invoke-virtual {v1, v12, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v14, "device"

    .line 652
    invoke-virtual {v11, v1, v14, v9, v10}, Landroid/hardware/usb/DeviceFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 654
    iget-object v9, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 655
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseBooleanArray;

    .line 656
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_f7
    if-ge v11, v10, :cond_12c

    const-string/jumbo v14, "uid_permission"

    const-wide v7, 0x20b00000002L

    .line 658
    invoke-virtual {v1, v14, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v14

    const-string/jumbo v7, "uid"

    .line 660
    invoke-virtual {v9, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    move-wide/from16 v16, v2

    const-wide v2, 0x10500000001L

    invoke-virtual {v1, v7, v2, v3, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v2, "is_granted"

    .line 662
    invoke-virtual {v9, v11}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    const-wide v7, 0x10800000002L

    .line 661
    invoke-virtual {v1, v2, v7, v8, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 663
    invoke-virtual {v1, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v2, v16

    goto :goto_f7

    :cond_12c
    move-wide/from16 v16, v2

    .line 665
    invoke-virtual {v1, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v2, v16

    goto :goto_cb

    :cond_136
    move-wide/from16 v16, v2

    .line 668
    iget-object v2, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_13f
    if-ge v3, v2, :cond_1ac

    .line 670
    iget-object v5, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/AccessoryFilter;

    const-string v6, "accessory_persistent_permissions"

    const-wide v7, 0x20b00000005L

    .line 671
    invoke-virtual {v1, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v8, "accessory"

    .line 673
    invoke-virtual {v5, v1, v8, v9, v10}, Landroid/hardware/usb/AccessoryFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 675
    iget-object v5, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 676
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseBooleanArray;

    .line 677
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_166
    if-ge v11, v8, :cond_19c

    const-string/jumbo v12, "uid_permission"

    const-wide v13, 0x20b00000002L

    .line 679
    invoke-virtual {v1, v12, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v9

    const-string/jumbo v12, "uid"

    .line 681
    invoke-virtual {v5, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    const-wide v14, 0x10500000001L

    invoke-virtual {v1, v12, v14, v15, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string v12, "is_granted"

    .line 683
    invoke-virtual {v5, v11}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v13

    const-wide v14, 0x10800000002L

    .line 682
    invoke-virtual {v1, v12, v14, v15, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 684
    invoke-virtual {v1, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v11, v11, 0x1

    const-wide v9, 0x10b00000001L

    goto :goto_166

    :cond_19c
    const-wide v14, 0x10800000002L

    .line 686
    invoke-virtual {v1, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    const-wide v9, 0x10b00000001L

    goto :goto_13f

    .line 688
    :cond_1ac
    monitor-exit v4
    :try_end_1ad
    .catchall {:try_start_b .. :try_end_1ad} :catchall_1b3

    move-wide/from16 v2, v16

    .line 689
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void

    :catchall_1b3
    move-exception v0

    .line 688
    :try_start_1b4
    monitor-exit v4
    :try_end_1b5
    .catchall {:try_start_1b4 .. :try_end_1b5} :catchall_1b3

    throw v0
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 6

    .line 218
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    if-nez v1, :cond_18

    .line 221
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 222
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_18
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 225
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 9

    .line 175
    sget-object v0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grantDevicePermission: device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " For uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_25
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 185
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    if-nez v3, :cond_3e

    .line 187
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3, v4}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 188
    iget-object v5, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_3e
    invoke-virtual {v3, p2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 193
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    if-nez p0, :cond_55

    const-string p0, "grantDevicePermission: uidList is null"

    .line 195
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 197
    :cond_55
    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_60

    const-string p0, "grantDevicePermission: uidList put error"

    .line 198
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_60
    :goto_60
    monitor-exit v1

    return-void

    :catchall_62
    move-exception p0

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_25 .. :try_end_64} :catchall_62

    throw p0
.end method

.method public hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z
    .registers 7

    .line 301
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x3e8

    if-eq p3, v1, :cond_44

    .line 302
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USB"

    .line 304
    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    if-nez p2, :cond_16

    goto :goto_44

    .line 309
    :cond_16
    new-instance p2, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {p2, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 310
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 311
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseBooleanArray;

    if-eqz p2, :cond_31

    .line 313
    invoke-virtual {p2, p3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_31

    .line 315
    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 318
    :cond_31
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    if-nez p0, :cond_3e

    const/4 p0, 0x0

    .line 320
    monitor-exit v0

    return p0

    .line 322
    :cond_3e
    invoke-virtual {p0, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_44
    :goto_44
    const/4 p0, 0x1

    .line 307
    monitor-exit v0

    return p0

    :catchall_47
    move-exception p0

    .line 323
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z
    .registers 9

    .line 245
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getHasVideoCapture()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 246
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 247
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x2

    .line 246
    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 251
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->isCameraPermissionGranted(Ljava/lang/String;II)Z

    move-result p2

    if-nez p2, :cond_1b

    :cond_1a
    return v1

    .line 257
    :cond_1b
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getHasAudioCapture()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2f

    iget-object p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 258
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 257
    invoke-virtual {p2, v0, p3}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result p2

    if-eqz p2, :cond_2f

    return v1

    .line 266
    :cond_2f
    iget-object p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/16 v0, 0x3e8

    if-eq p4, v0, :cond_6c

    .line 267
    :try_start_36
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    if-eqz v0, :cond_3b

    goto :goto_6c

    .line 270
    :cond_3b
    new-instance p3, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {p3, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 271
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseBooleanArray;

    if-eqz p3, :cond_56

    .line 273
    invoke-virtual {p3, p4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_56

    .line 275
    invoke-virtual {p3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    monitor-exit p2

    return p0

    .line 278
    :cond_56
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    if-nez p0, :cond_66

    .line 280
    monitor-exit p2

    return v1

    .line 282
    :cond_66
    invoke-virtual {p0, p4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit p2

    return p0

    .line 268
    :cond_6c
    :goto_6c
    monitor-exit p2

    return p3

    :catchall_6e
    move-exception p0

    .line 283
    monitor-exit p2
    :try_end_70
    .catchall {:try_start_36 .. :try_end_70} :catchall_6e

    throw p0
.end method

.method public final isCameraPermissionGranted(Ljava/lang/String;II)Z
    .registers 7

    const/4 v0, 0x0

    .line 703
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 705
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, p3, :cond_2e

    .line 706
    sget-object p0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match caller\'s uid "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 709
    :cond_2e
    iget p1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_30} :catch_49

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_47

    .line 716
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.CAMERA"

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    const/4 p1, -0x1

    if-ne p1, p0, :cond_47

    .line 718
    sget-object p0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string p1, "Camera permission required for USB video class devices"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_47
    const/4 p0, 0x1

    return p0

    .line 711
    :catch_49
    sget-object p0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string p1, "Package not found, likely due to invalid package name!"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final isUsbDevicePermittedForPackageByMdm(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .registers 4

    const-string p0, "application_policy"

    .line 858
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 857
    invoke-static {p0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 860
    :try_start_c
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 861
    sget-object p0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string p1, "Allowed by MDM policy"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19} :catch_1b

    const/4 p0, 0x1

    return p0

    :catch_1b
    move-exception p0

    .line 865
    sget-object p1, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isUsbDevicePermittedForPackageByMdm "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public final readPermission(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string/jumbo v0, "uid"

    .line 384
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_a5

    const/4 v1, 0x0

    const-string v2, "granted"

    .line 392
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9a

    .line 393
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 394
    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_9a

    .line 399
    :cond_29
    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 400
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 401
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "usb-device"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 402
    invoke-static {p1}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object p1

    .line 403
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_59

    .line 405
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 406
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    .line 407
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_99

    .line 409
    :cond_59
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 410
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_99

    .line 413
    :cond_67
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "usb-accessory"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 414
    invoke-static {p1}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object p1

    .line 415
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_8c

    .line 417
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 418
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    .line 419
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_99

    .line 421
    :cond_8c
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 422
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_99
    :goto_99
    return-void

    .line 395
    :cond_9a
    :goto_9a
    sget-object p0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v0, "error reading usb permission granted state"

    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void

    :catch_a5
    move-exception p0

    .line 386
    sget-object v0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v1, "error reading usb permission uid"

    invoke-static {v0, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public final readPermissionsLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 431
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 433
    :try_start_a
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_10} :catch_52
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_45

    .line 434
    :try_start_10
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 436
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 437
    :goto_17
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_33

    .line 438
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "permission"

    .line 439
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 440
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbUserPermissionManager;->readPermission(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_17

    .line 442
    :cond_2f
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_39

    goto :goto_17

    :cond_33
    if-eqz v0, :cond_52

    .line 445
    :try_start_35
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_38} :catch_52
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_45

    goto :goto_52

    :catchall_39
    move-exception v1

    if-eqz v0, :cond_44

    .line 433
    :try_start_3c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v0

    :try_start_41
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_44
    :goto_44
    throw v1
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_45} :catch_52
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_45} :catch_45

    :catch_45
    move-exception v0

    .line 448
    sget-object v1, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v2, "error reading usb permissions file, deleting to start fresh"

    invoke-static {v1, v2, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    :catch_52
    :cond_52
    :goto_52
    return-void
.end method

.method public removeAccessoryPermissions(Landroid/hardware/usb/UsbAccessory;)V
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public removeDevicePermissions(Landroid/hardware/usb/UsbDevice;)V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    .registers 13

    .line 833
    sget-object v0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestPermission: accessory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z

    move-result p4

    if-eqz p4, :cond_4d

    .line 837
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p4, "accessory"

    .line 838
    invoke-virtual {p2, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string/jumbo p4, "permission"

    .line 839
    invoke-virtual {p2, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 841
    :try_start_46
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-virtual {p3, p0, p1, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_4c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_46 .. :try_end_4c} :catch_4c

    :catch_4c
    return-void

    :cond_4d
    const/4 v1, 0x0

    .line 848
    iget-object p4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    .line 849
    invoke-virtual {p4, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->canBeDefault(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)Z

    move-result v3

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    .line 848
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    .registers 17

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v2, p4

    move/from16 v6, p5

    .line 782
    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestPermission: device="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " pi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-virtual {p0, v6, p1, p2}, Lcom/android/server/usb/UsbUserPermissionManager;->isUsbDevicePermittedForPackageByMdm(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_72

    invoke-virtual {p0, p1, p2, p4, v6}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_72

    .line 786
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Policy forcely granted usb device permission for package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {p0, p1, v6}, Lcom/android/server/usb/UsbUserPermissionManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 798
    :cond_72
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 801
    invoke-virtual {p0, p1, p2, p4, v6}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v7

    const-string/jumbo v8, "permission"

    const-string v9, "device"

    const/4 v10, 0x0

    if-eqz v7, :cond_90

    .line 802
    invoke-virtual {v3, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 803
    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 805
    :try_start_8a
    iget-object v0, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0, v10, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_8f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_8a .. :try_end_8f} :catch_8f

    :catch_8f
    return-void

    .line 814
    :cond_90
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getHasVideoCapture()Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 815
    invoke-virtual {p0, p2, p4, v6}, Lcom/android/server/usb/UsbUserPermissionManager;->isCameraPermissionGranted(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_a8

    .line 816
    invoke-virtual {v3, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 817
    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 819
    :try_start_a2
    iget-object v0, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0, v10, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_a7
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_a2 .. :try_end_a7} :catch_a7

    :catch_a7
    return-void

    :cond_a8
    const/4 v2, 0x0

    .line 827
    iget-object v3, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    .line 828
    invoke-virtual {v3, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->canBeDefault(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p5

    .line 827
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;ILandroid/content/Context;Landroid/app/PendingIntent;)V
    .registers 11

    .line 582
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 584
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_11

    const-string p2, "device"

    .line 586
    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_16

    :cond_11
    const-string p1, "accessory"

    .line 588
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_16
    const-string p1, "android.intent.extra.INTENT"

    .line 590
    invoke-virtual {v2, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.UID"

    .line 591
    invoke-virtual {v2, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.hardware.usb.extra.CAN_BE_DEFAULT"

    .line 592
    invoke-virtual {v2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "android.hardware.usb.extra.PACKAGE"

    .line 593
    invoke-virtual {v2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10403aa

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 594
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 597
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 599
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p6, v2, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_46
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_46} :catch_49
    .catchall {:try_start_4 .. :try_end_46} :catchall_47

    goto :goto_51

    :catchall_47
    move-exception p0

    goto :goto_55

    .line 601
    :catch_49
    :try_start_49
    sget-object p0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unable to start UsbPermissionActivity"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_47

    .line 603
    :goto_51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 604
    throw p0
.end method

.method public final requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V
    .registers 17

    move-object v0, p0

    move-object v5, p4

    move/from16 v6, p6

    const-string v1, " not found"

    const-string/jumbo v2, "package "

    .line 762
    :try_start_9
    iget-object v3, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p4, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 763
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, 0x1

    if-eq v3, v6, :cond_4f

    .line 764
    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " does not match caller\'s uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x534e4554

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "180104273"

    aput-object v9, v8, v4

    const/4 v4, -0x1

    .line 766
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v7

    const/4 v4, 0x2

    const-string v9, ""

    aput-object v9, v8, v4

    invoke-static {v3, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_4e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_4e} :catch_79
    .catchall {:try_start_9 .. :try_end_4e} :catchall_77

    move v4, v7

    :cond_4f
    if-nez v4, :cond_5f

    .line 776
    iget-object v7, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p6

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;ILandroid/content/Context;Landroid/app/PendingIntent;)V

    return-void

    .line 773
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_77
    move-exception v0

    .line 774
    throw v0

    .line 773
    :catch_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scheduleWritePermissionsLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 455
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 458
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    .line 460
    new-instance v0, Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/UsbUserPermissionManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAccessoryPersistentPermission(Landroid/hardware/usb/UsbAccessory;IZ)V
    .registers 7

    .line 355
    new-instance v0, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 356
    iget-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 357
    :try_start_8
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 358
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_1c

    .line 360
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 361
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_1c
    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    const/4 v2, 0x1

    if-ltz v0, :cond_30

    .line 365
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p2

    if-eq p2, p3, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p2, 0x0

    move v2, p2

    .line 366
    :goto_2c
    invoke-virtual {v1, v0, p3}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    goto :goto_33

    .line 369
    :cond_30
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_33
    if-eqz v2, :cond_38

    .line 373
    invoke-virtual {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->scheduleWritePermissionsLocked()V

    .line 375
    :cond_38
    monitor-exit p1

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public setDevicePersistentPermission(Landroid/hardware/usb/UsbDevice;IZ)V
    .registers 7

    .line 329
    new-instance v0, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 330
    iget-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 331
    :try_start_8
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_1c

    .line 333
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 334
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_1c
    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    const/4 v2, 0x1

    if-ltz v0, :cond_30

    .line 338
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p2

    if-eq p2, p3, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p2, 0x0

    move v2, p2

    .line 339
    :goto_2c
    invoke-virtual {v1, v0, p3}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    goto :goto_33

    .line 342
    :cond_30
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_33
    if-eqz v2, :cond_38

    .line 346
    invoke-virtual {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->scheduleWritePermissionsLocked()V

    .line 348
    :cond_38
    monitor-exit p1

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_3a

    throw p0
.end method
