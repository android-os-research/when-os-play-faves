.class public Lcom/android/server/enterprise/lso/LSOService;
.super Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;
.source "LSOService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final CUSTOM_LAYER:I = 0x2

.field public static final DEBUG:Z

.field public static final DEFAULT_LAYER:I = 0x1

.field public static final EMERGENCY_PHONE_LAYER:I = 0x3

.field public static final MAX_SUPPORTED_LAYER:I = 0x3

.field public static final NO_ADMIN_SET:I = -0x1

.field public static final RESET_ALL_LAYER:I = 0x0

.field public static final TAG:Ljava/lang/String; = "LSOService"

.field public static final singleAdmin:Z = true


# instance fields
.field public lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

.field public mOverlayAdminUid:I

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mWallpaperAdminUid:I

.field public screenDimesions:Landroid/graphics/Point;

.field public final storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;


# direct methods
.method public static bridge synthetic -$$Nest$mupdateSystemUIMonitor(Lcom/android/server/enterprise/lso/LSOService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->updateSystemUIMonitor(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.build.type"

    .line 86
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/lso/LSOService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 108
    new-instance v0, Lcom/android/server/enterprise/lso/LSOService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/lso/LSOService$1;-><init>(Lcom/android/server/enterprise/lso/LSOService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    iput-object p1, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    .line 124
    new-instance v0, Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    .line 125
    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 126
    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getWallpaperAdminUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 127
    iget v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2d

    .line 128
    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminPref()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 131
    :cond_2d
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    const-string/jumbo v0, "window"

    .line 132
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 133
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 135
    iget-object p1, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_51

    .line 136
    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_53

    .line 138
    :cond_51
    iput v1, p1, Landroid/graphics/Point;->x:I

    :goto_53
    const/4 p1, 0x4

    new-array p1, p1, [Lcom/samsung/android/knox/lockscreen/LSOItemData;

    .line 140
    iput-object p1, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    const/4 p1, 0x1

    :goto_59
    const/4 v0, 0x3

    if-gt p1, v0, :cond_69

    .line 142
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlay(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v1

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_59

    .line 144
    :cond_69
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/enterprise/lso/LSOService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .registers 1

    const-string/jumbo v0, "lockscreen_overlay"

    return-object v0
.end method


# virtual methods
.method public canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 10

    const-string v0, "LSOService"

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 342
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 343
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v4, p2, :cond_12

    if-eqz p2, :cond_12

    if-ne v3, p2, :cond_19

    .line 345
    :cond_12
    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_2d

    if-eq v5, v4, :cond_1b

    if-ne v5, p1, :cond_19

    goto :goto_1b

    :cond_19
    move v5, v2

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v5, v3

    :goto_1c
    if-eq v4, p2, :cond_22

    if-eqz p2, :cond_22

    if-ne v1, p2, :cond_43

    .line 350
    :cond_22
    :try_start_22
    iget p0, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_24} :catch_2b

    if-eq p0, v4, :cond_28

    if-ne p0, p1, :cond_43

    :cond_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    :catch_2b
    move-exception p0

    goto :goto_2f

    :catch_2d
    move-exception p0

    move v5, v2

    .line 354
    :goto_2f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canConfigure() Unhandled exception."

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    :goto_43
    if-ne v4, p2, :cond_49

    if-lt v5, v1, :cond_4c

    :goto_47
    move v2, v3

    goto :goto_4c

    :cond_49
    if-lez v5, :cond_4c

    goto :goto_47

    .line 361
    :cond_4c
    :goto_4c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "canConfigure("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLSOFeatureName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public declared-synchronized copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "%s_%s%s_%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    .line 744
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x2

    .line 745
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x3

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, p2

    .line 744
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 746
    invoke-static {p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-object p1

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string p0, "failed to close outputstream"

    const-string v0, "failed to close inputstream"

    const-string v1, "LSOService"

    const-string v2, "/data/system/enterprise"

    .line 751
    invoke-static {v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_10

    return-object v3

    :cond_10
    const-string v2, "/data/system/enterprise/temp"

    .line 754
    invoke-static {v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    return-object v3

    .line 757
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/enterprise/temp/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 758
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 766
    :try_start_37
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_40} :catch_6d
    .catchall {:try_start_37 .. :try_end_40} :catchall_6a

    .line 767
    :try_start_40
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_45} :catch_67
    .catchall {:try_start_40 .. :try_end_45} :catchall_64

    .line 768
    :goto_45
    :try_start_45
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_50

    const/4 v6, 0x0

    .line 769
    invoke-virtual {p1, v2, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_45

    .line 772
    :cond_50
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_53} :catch_62
    .catchall {:try_start_45 .. :try_end_53} :catchall_88

    .line 779
    :try_start_53
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_5a

    .line 781
    :catch_57
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :goto_5a
    :try_start_5a
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_61

    .line 788
    :catch_5e
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_61
    return-object p2

    :catch_62
    move-exception p2

    goto :goto_70

    :catchall_64
    move-exception p2

    move-object p1, v3

    goto :goto_89

    :catch_67
    move-exception p2

    move-object p1, v3

    goto :goto_70

    :catchall_6a
    move-exception p2

    move-object p1, v3

    goto :goto_8a

    :catch_6d
    move-exception p2

    move-object p1, v3

    move-object v4, p1

    :goto_70
    :try_start_70
    const-string v2, "copyFileFromParcel() : failed to copy image from parcel "

    .line 774
    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_70 .. :try_end_75} :catchall_88

    if-eqz v4, :cond_7e

    .line 779
    :try_start_77
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_7e

    .line 781
    :catch_7b
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    :goto_7e
    if-eqz p1, :cond_87

    .line 786
    :try_start_80
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_87

    .line 788
    :catch_84
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    :goto_87
    return-object v3

    :catchall_88
    move-exception p2

    :goto_89
    move-object v3, v4

    :goto_8a
    if-eqz v3, :cond_93

    .line 779
    :try_start_8c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_93

    .line 781
    :catch_90
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    :goto_93
    if-eqz p1, :cond_9c

    .line 786
    :try_start_95
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_99

    goto :goto_9c

    .line 788
    :catch_99
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_9c
    :goto_9c
    throw p2
.end method

.method public declared-synchronized copyFiles(ILcom/samsung/android/knox/lockscreen/LSOItemData;I)Z
    .registers 9

    monitor-enter p0

    .line 621
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/enterprise/lso/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 622
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_94

    const/4 v3, 0x0

    .line 625
    :try_start_17
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    const-string v4, "/data/system/enterprise"

    .line 627
    invoke-static {v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v4
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_5d
    .catchall {:try_start_17 .. :try_end_20} :catchall_5b

    if-nez v4, :cond_27

    .line 644
    :try_start_22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_94

    .line 628
    monitor-exit p0

    return v3

    :cond_27
    :try_start_27
    const-string v4, "/data/system/enterprise/lso"

    .line 631
    invoke-static {v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v4
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2d} :catch_5d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_5b

    if-nez v4, :cond_34

    .line 644
    :try_start_2f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_94

    .line 632
    monitor-exit p0

    return v3

    .line 635
    :cond_34
    :try_start_34
    invoke-static {v0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v4
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_38} :catch_5d
    .catchall {:try_start_34 .. :try_end_38} :catchall_5b

    if-nez v4, :cond_3f

    .line 644
    :try_start_3a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_94

    .line 636
    monitor-exit p0

    return v3

    .line 639
    :cond_3f
    :try_start_3f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, v3}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(Lcom/samsung/android/knox/lockscreen/LSOItemData;Ljava/lang/String;I)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_56} :catch_5d
    .catchall {:try_start_3f .. :try_end_56} :catchall_5b

    const/4 v3, 0x1

    .line 644
    :goto_57
    :try_start_57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_94

    goto :goto_66

    :catchall_5b
    move-exception p1

    goto :goto_90

    :catch_5d
    move-exception p1

    :try_start_5e
    const-string p2, "LSOService"

    const-string v0, "copyFiles1() error occurs. "

    .line 642
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_5b

    goto :goto_57

    :goto_66
    if-nez v3, :cond_6b

    .line 649
    :try_start_68
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    :cond_6b
    const-string p1, "LSOService"

    .line 651
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "copyFiles1() "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "result = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_68 .. :try_end_8e} :catchall_94

    .line 652
    monitor-exit p0

    return v3

    .line 644
    :goto_90
    :try_start_90
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 645
    throw p1
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_94

    :catchall_94
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized copyFiles(Lcom/samsung/android/knox/lockscreen/LSOItemData;Ljava/lang/String;I)Z
    .registers 10

    monitor-enter p0

    const/4 v0, 0x1

    if-nez p1, :cond_6

    .line 658
    monitor-exit p0

    return v0

    :cond_6
    const/4 v1, 0x0

    .line 661
    :try_start_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f6

    .line 665
    :try_start_b
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5e

    const/4 v4, 0x4

    if-eq v3, v4, :cond_17

    goto/16 :goto_90

    .line 668
    :cond_17
    move-object v3, p1

    check-cast v3, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    .line 669
    invoke-virtual {v3}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_48

    .line 670
    invoke-virtual {v3}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 671
    invoke-virtual {v3}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v5

    .line 670
    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/lso/LSOService;->copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_37

    const-string p1, "LSOService"

    const-string p3, "copyFiles2 - LSO_ITEM_TYPE_CONTAINER : file no created"

    .line 673
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_35} :catch_ce
    .catchall {:try_start_b .. :try_end_35} :catchall_f6

    .line 674
    monitor-exit p0

    return v1

    .line 677
    :cond_37
    :try_start_37
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v4, p2, p3, v5}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 679
    invoke-static {v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    if-nez v5, :cond_45

    goto :goto_8b

    .line 684
    :cond_45
    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setBGImage(Ljava/lang/String;)V

    :cond_48
    move v4, v1

    .line 687
    :goto_49
    invoke-virtual {v3}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    move-result v5

    if-ge v4, v5, :cond_90

    if-eqz v0, :cond_90

    .line 688
    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v0

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p0, v0, p2, v5}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(Lcom/samsung/android/knox/lockscreen/LSOItemData;Ljava/lang/String;I)Z

    move-result v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 694
    :cond_5e
    move-object v3, p1

    check-cast v3, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    .line 695
    invoke-virtual {v3}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_90

    .line 696
    invoke-virtual {v3}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 697
    invoke-virtual {v3}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v5

    .line 696
    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/lso/LSOService;->copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7e

    const-string p1, "LSOService"

    const-string p3, "copyFiles2 - LSO_ITEM_TYPE_IMAGE : file no created"

    .line 699
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_7c} :catch_ce
    .catchall {:try_start_37 .. :try_end_7c} :catchall_f6

    .line 700
    monitor-exit p0

    return v1

    .line 703
    :cond_7e
    :try_start_7e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v4, p2, p3, v5}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 705
    invoke-static {v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    if-nez v5, :cond_8d

    :goto_8b
    move v0, v1

    goto :goto_90

    .line 710
    :cond_8d
    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setImagePath(Ljava/lang/String;)V

    :cond_90
    :goto_90
    if-eqz v0, :cond_cc

    .line 716
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v3

    if-eqz v3, :cond_cc

    const-string v4, "android:src"

    .line 717
    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 718
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    const-string v5, "android:src"

    .line 719
    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 718
    invoke-virtual {p0, v4, v3}, Lcom/android/server/enterprise/lso/LSOService;->copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b9

    const-string p1, "LSOService"

    const-string p3, "copyFiles2 - attrSet ATTR_IMAGE_SRC : file no created"

    .line 721
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_b7} :catch_ce
    .catchall {:try_start_7e .. :try_end_b7} :catchall_f6

    .line 722
    monitor-exit p0

    return v1

    .line 725
    :cond_b9
    :try_start_b9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v3, p2, p3, v2}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p3

    .line 727
    invoke-static {v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    if-nez p3, :cond_c7

    goto :goto_d6

    :cond_c7
    const-string v2, "android:src"

    .line 731
    invoke-virtual {p1, v2, p3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_cc} :catch_ce
    .catchall {:try_start_b9 .. :try_end_cc} :catchall_f6

    :cond_cc
    move v1, v0

    goto :goto_d6

    :catch_ce
    move-exception p1

    :try_start_cf
    const-string p3, "LSOService"

    const-string v0, "copyFiles2() - failed. "

    .line 736
    invoke-static {p3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d6
    const-string p1, "LSOService"

    .line 739
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "copyFiles2() - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", ret ="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f4
    .catchall {:try_start_cf .. :try_end_f4} :catchall_f6

    .line 740
    monitor-exit p0

    return v1

    :catchall_f6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized deleteFiles(I)V
    .registers 8

    monitor-enter p0

    .line 603
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_68

    if-nez p1, :cond_27

    const/4 v2, 0x1

    :goto_8
    const/4 v3, 0x3

    if-gt v2, v3, :cond_40

    .line 607
    :try_start_b
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/enterprise/lso/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteRecursive(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 610
    :cond_27
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/enterprise/lso/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_40} :catch_46
    .catchall {:try_start_b .. :try_end_40} :catchall_44

    .line 615
    :cond_40
    :goto_40
    :try_start_40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_68

    goto :goto_62

    :catchall_44
    move-exception p1

    goto :goto_64

    :catch_46
    move-exception v2

    :try_start_47
    const-string v3, "LSOService"

    .line 613
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteFiles() : failed layer - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catchall {:try_start_47 .. :try_end_61} :catchall_44

    goto :goto_40

    .line 617
    :goto_62
    monitor-exit p0

    return-void

    .line 615
    :goto_64
    :try_start_64
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 616
    throw p1
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final deleteWallpaperFiles()V
    .registers 5

    .line 588
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string p0, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    .line 590
    invoke-static {p0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    const-string p0, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    .line 591
    invoke-static {p0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_14
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 598
    :cond_e
    :goto_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_24

    :catchall_12
    move-exception p0

    goto :goto_25

    :catch_14
    move-exception p0

    :try_start_15
    const-string v2, "LSOService"

    const-string v3, "deleteWallpaperFiles() : failed but ignore this error"

    .line 593
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    sget-boolean v2, Lcom/android/server/enterprise/lso/LSOService;->DEBUG:Z

    if-eqz v2, :cond_e

    .line 595
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_12

    goto :goto_e

    :goto_24
    return-void

    .line 598
    :goto_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 827
    iget-object p1, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    const-string p0, "Permission Denial: can\'t dump LSOService"

    .line 829
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 832
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p3, 0x2

    const/4 v0, 0x0

    .line 834
    invoke-virtual {p0, v0, p3}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p3

    .line 835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOCKSCREEN_WALLPAPER : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  AdminUid: "

    if-eqz p3, :cond_55

    .line 838
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_55
    const/4 p3, 0x1

    .line 841
    invoke-virtual {p0, v0, p3}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2

    .line 842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOCKSCREEN_OVERLAY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_c9

    .line 845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8b
    const/4 v1, 0x3

    if-gt p3, v1, :cond_c2

    .line 847
    invoke-virtual {p0, v0, p3}, Lcom/android/server/enterprise/lso/LSOService;->getData(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v1

    if-eqz v1, :cond_bf

    .line 849
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Layer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_bf
    add-int/lit8 p3, p3, 0x1

    goto :goto_8b

    .line 853
    :cond_c2
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    :cond_c9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 525
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 525
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 516
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 517
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 516
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getData(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string p1, "LSOService"

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getData() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-lt p2, p1, :cond_45

    const/4 p1, 0x3

    if-gt p2, p1, :cond_45

    .line 218
    sget-boolean p1, Lcom/android/server/enterprise/lso/LSOService;->DEBUG:Z

    if-eqz p1, :cond_3f

    const-string p1, "LSOService"

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getData() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_3f
    iget-object p1, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aget-object p1, p1, p2
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_4d

    monitor-exit p0

    return-object p1

    .line 214
    :cond_45
    :try_start_45
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "Invalid layer. Layer must be 1...3"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 504
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 505
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 508
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getPreferences(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .registers 3

    .line 496
    sget-boolean p1, Lcom/android/server/enterprise/lso/LSOService;->DEBUG:Z

    if-eqz p1, :cond_1d

    .line 497
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "getPreferences() - lsoPref = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LSOService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_1d
    iget-object p0, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    return-object p0
.end method

.method public isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 7

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq v1, p2, :cond_9

    if-eqz p2, :cond_9

    if-ne v0, p2, :cond_f

    .line 320
    :cond_9
    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-eq v2, v1, :cond_f

    move v2, v0

    goto :goto_10

    :cond_f
    move v2, p1

    :goto_10
    const/4 v3, 0x2

    if-eq v1, p2, :cond_17

    if-eqz p2, :cond_17

    if-ne v3, p2, :cond_1d

    .line 325
    :cond_17
    iget p0, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-eq p0, v1, :cond_1d

    add-int/lit8 v2, v2, 0x1

    :cond_1d
    if-ne v1, p2, :cond_23

    if-lt v2, v3, :cond_26

    :goto_21
    move p1, v0

    goto :goto_26

    :cond_23
    if-lez v2, :cond_26

    goto :goto_21

    .line 334
    :cond_26
    :goto_26
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isConfigured("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLSOFeatureName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") - "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "LSOService"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4

    .line 558
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 560
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_13

    .line 561
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->updateSystemUIMonitor(I)V

    :cond_13
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 6

    .line 539
    iget v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1e

    const/4 v0, 0x0

    .line 540
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    .line 541
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    .line 542
    iput v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v0, 0x0

    .line 543
    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    const/4 v2, 0x1

    :goto_14
    const/4 v3, 0x3

    if-gt v2, v3, :cond_1e

    .line 545
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 549
    :cond_1e
    iget v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-ne p1, v0, :cond_2c

    .line 550
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    .line 551
    iget-object p1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {p1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 552
    iput v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    :cond_2c
    return-void
.end method

.method public resetData(Lcom/samsung/android/knox/ContextInfo;I)V
    .registers 15

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetData() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSOService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 228
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    if-ltz p2, :cond_c6

    const/4 v2, 0x3

    if-gt p2, v2, :cond_c6

    const/4 v9, 0x1

    .line 235
    invoke-virtual {p0, p1, v9}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v3

    if-nez v3, :cond_36

    const-string/jumbo p0, "resetData() : Not allowed to reset Overlay"

    .line 236
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 240
    :cond_36
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v3, v4, :cond_9e

    .line 241
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    .line 242
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    .line 243
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_52

    .line 246
    iput-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    :cond_52
    if-nez p2, :cond_5e

    move p2, v9

    :goto_55
    if-gt p2, v2, :cond_62

    .line 251
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aput-object v4, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_55

    .line 254
    :cond_5e
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aput-object v4, v1, p2

    .line 259
    :cond_62
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 262
    :try_start_69
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "LSOService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Admin "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has reset banner settings."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move v8, v0

    .line 261
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_8b} :catch_8e
    .catchall {:try_start_69 .. :try_end_8b} :catchall_8c

    goto :goto_96

    :catchall_8c
    move-exception p0

    goto :goto_9a

    :catch_8e
    move-exception p1

    .line 265
    :try_start_8f
    sget-boolean p2, Lcom/android/server/enterprise/lso/LSOService;->DEBUG:Z

    if-eqz p2, :cond_96

    .line 266
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_8c

    .line 269
    :cond_96
    :goto_96
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c0

    :goto_9a
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    throw p0

    .line 273
    :cond_9e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetData() : requested uid is diffren with present admin = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :goto_c0
    if-eqz v9, :cond_c5

    .line 277
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotification(I)V

    :cond_c5
    return-void

    .line 231
    :cond_c6
    new-instance p0, Ljava/security/InvalidParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid layer. Layer must be 0...3 but requseted "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resetWallpaper(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 13

    const-string v0, "LSOService"

    const-string/jumbo v1, "resetWallpaper()"

    .line 282
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 285
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    const/4 v1, 0x2

    .line 287
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string p0, "Not allowed to reset Wallpaper"

    .line 288
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 292
    :cond_1d
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-ne v0, v1, :cond_61

    .line 293
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 294
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    const/4 v0, -0x1

    .line 295
    iput v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    const/4 v0, 0x1

    .line 298
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 301
    :try_start_36
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "LSOService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has reset banner wallpaper."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v7, v8

    .line 300
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_58
    .catchall {:try_start_36 .. :try_end_58} :catchall_5c

    .line 304
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_62

    :catchall_5c
    move-exception p0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    throw p0

    :cond_61
    const/4 v0, 0x0

    :goto_62
    if-eqz v0, :cond_67

    .line 310
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotification(I)V

    :cond_67
    return-void
.end method

.method public final sendConfigChangeNotification(I)V
    .registers 11

    const-string v0, "LSOService"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 566
    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2

    const/4 v3, 0x1

    .line 567
    invoke-virtual {p0, v1, v3}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v4

    .line 568
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 570
    :try_start_11
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.action.LSO_CONFIG_CHANGED_INTERNAL"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "com.samsung.android.knox.intent.extra.KNOX_WALLPAPER_ENABLED_INTERNAL"

    if-eqz v4, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    .line 571
    :goto_1e
    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 572
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v7, v8, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string/jumbo v1, "sendConfigChangeNotification() - done"

    .line 573
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2e} :catch_31
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2f

    goto :goto_38

    :catchall_2f
    move-exception p0

    goto :goto_4a

    :catch_31
    move-exception v1

    :try_start_32
    const-string/jumbo v3, "sendConfigChangeNotification() : failed to send intent."

    .line 575
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_2f

    .line 577
    :goto_38
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 580
    :try_start_3b
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/lso/LSOService;->setLockscreenInvisibleOverlaySystemUI(IZ)V

    .line 581
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/lso/LSOService;->setLockscreenWallpaperSystemUI(IZ)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_41} :catch_42

    goto :goto_49

    :catch_42
    move-exception p0

    const-string/jumbo p1, "sendConfigChangeNotification() : failed to update system ui."

    .line 583
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_49
    return-void

    .line 577
    :goto_4a
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 578
    throw p0
.end method

.method public declared-synchronized setData(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I
    .registers 18

    move-object v1, p0

    move-object/from16 v8, p2

    move/from16 v0, p3

    monitor-enter p0

    :try_start_6
    const-string v2, "LSOService"

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setData() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v9

    .line 152
    invoke-static {v9}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v10

    .line 153
    iget v11, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_e8

    const/4 v2, 0x1

    if-lt v0, v2, :cond_db

    const/4 v3, 0x3

    if-gt v0, v3, :cond_db

    .line 161
    :try_start_31
    invoke-virtual {p0, v9, v2}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2

    const/4 v12, -0x1

    if-nez v2, :cond_44

    const-string v0, "LSOService"

    const-string v2, "Lockscreen is configured by another admin. Overwrite not allowed."

    .line 162
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_e3

    .line 193
    :try_start_3f
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_e8

    .line 163
    monitor-exit p0

    return v12

    .line 166
    :cond_44
    :try_start_44
    iget-object v2, v1, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    .line 167
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-ne v0, v3, :cond_67

    if-eqz v2, :cond_59

    .line 169
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_67

    :cond_59
    const-string v0, "LSOService"

    const-string/jumbo v2, "setData() failed because telephony is not supported."

    .line 170
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_44 .. :try_end_61} :catchall_e3

    const/4 v0, -0x3

    .line 193
    :try_start_62
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_e8

    .line 171
    monitor-exit p0

    return v0

    .line 174
    :cond_67
    :try_start_67
    invoke-virtual {p0, v11, v8, v0}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(ILcom/samsung/android/knox/lockscreen/LSOItemData;I)Z

    move-result v2
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_e3

    const/4 v13, -0x4

    if-nez v2, :cond_73

    .line 193
    :try_start_6e
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_e8

    .line 175
    monitor-exit p0

    return v13

    .line 178
    :cond_73
    :try_start_73
    iget-object v2, v1, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    int-to-long v3, v11

    iget-object v7, v1, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(JLcom/samsung/android/knox/lockscreen/LSOItemData;ILcom/samsung/android/knox/lockscreen/LSOAttributeSet;)Z

    move-result v2

    if-nez v2, :cond_9b

    .line 180
    iget-object v2, v1, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v2

    iput v2, v1, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 181
    iget-object v3, v1, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    if-ne v2, v12, :cond_93

    .line 183
    iput-object v4, v1, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 185
    :cond_93
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V
    :try_end_96
    .catchall {:try_start_73 .. :try_end_96} :catchall_e3

    .line 193
    :try_start_96
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_e8

    .line 186
    monitor-exit p0

    return v13

    .line 189
    :cond_9b
    :try_start_9b
    iput v11, v1, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 190
    iget-object v2, v1, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aput-object v8, v2, v0
    :try_end_a1
    .catchall {:try_start_9b .. :try_end_a1} :catchall_e3

    .line 193
    :try_start_a1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V

    .line 195
    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotification(I)V

    .line 198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11
    :try_end_ab
    .catchall {:try_start_a1 .. :try_end_ab} :catchall_e8

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 201
    :try_start_ae
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "LSOService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has changed banner settings."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move v8, v10

    .line 200
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_d0
    .catchall {:try_start_ae .. :try_end_d0} :catchall_d6

    .line 204
    :try_start_d0
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_e8

    const/4 v0, 0x0

    .line 208
    monitor-exit p0

    return v0

    :catchall_d6
    move-exception v0

    .line 204
    :try_start_d7
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    throw v0
    :try_end_db
    .catchall {:try_start_d7 .. :try_end_db} :catchall_e8

    .line 157
    :cond_db
    :try_start_db
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v2, "Invalid layer. Layer must be 1...3"

    invoke-direct {v0, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e3
    .catchall {:try_start_db .. :try_end_e3} :catchall_e3

    :catchall_e3
    move-exception v0

    .line 193
    :try_start_e4
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V

    .line 194
    throw v0
    :try_end_e8
    .catchall {:try_start_e4 .. :try_end_e8} :catchall_e8

    :catchall_e8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setLockscreenInvisibleOverlaySystemUI(IZ)V
    .registers 5

    .line 803
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 805
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 806
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setLockscreenInvisibleOverlayAsUser(IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 810
    :goto_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    :catchall_11
    move-exception p0

    goto :goto_1e

    :catch_13
    move-exception p0

    :try_start_14
    const-string p1, "LSOService"

    const-string/jumbo p2, "setLockscreenInvisibleOverlaySystemUI() failed. "

    .line 808
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_11

    goto :goto_d

    :goto_1d
    return-void

    .line 810
    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 811
    throw p0
.end method

.method public final setLockscreenWallpaperSystemUI(IZ)V
    .registers 5

    .line 815
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 817
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 818
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setLockscreenWallpaperAsUser(IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 822
    :goto_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    :catchall_11
    move-exception p0

    goto :goto_1e

    :catch_13
    move-exception p0

    :try_start_14
    const-string p1, "LSOService"

    const-string/jumbo p2, "setLockscreenWallpaperSystemUI() failed. "

    .line 820
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_11

    goto :goto_d

    :goto_1d
    return-void

    .line 822
    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 823
    throw p0
.end method

.method public setPreferences(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)I
    .registers 13

    .line 458
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 460
    iget v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v1, -0x6

    const/4 v2, -0x1

    const-string v3, "LSOService"

    if-ne v0, v2, :cond_13

    const-string/jumbo p0, "setPreferences() : There is no configured data from admin. "

    .line 461
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 465
    :cond_13
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v0, v4, :cond_1e

    const-string/jumbo p0, "setPreferences() : Lockscreen is configured by another admin. Overwrite not allowed."

    .line 466
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 470
    :cond_1e
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    if-nez v2, :cond_31

    const/4 v2, 0x2

    aget-object v0, v0, v2

    if-nez v0, :cond_31

    const-string/jumbo p0, "setPreferences() : layer doesn\'t configure so cannot set pref."

    .line 471
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 476
    :cond_31
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->updateAdminPref(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)Z

    move-result v0

    .line 478
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotification(I)V

    if-eqz v0, :cond_79

    .line 480
    iput-object p2, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 481
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 484
    :try_start_49
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "LSOService"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Admin "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " has changed banner settings."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 486
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 483
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_70
    .catchall {:try_start_49 .. :try_end_70} :catchall_74

    .line 488
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_79

    :catchall_74
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 489
    throw p0

    :cond_79
    :goto_79
    if-eqz v0, :cond_7d

    const/4 p0, 0x0

    goto :goto_7e

    :cond_7d
    const/4 p0, -0x4

    :goto_7e
    return p0
.end method

.method public setWallpaper(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .registers 15

    const-string v0, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWallpaper("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LSOService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 368
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 369
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v3, 0x2

    .line 370
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_37

    const-string/jumbo p0, "setWallpaper() : Lockscreen is configured by another admin. Overwrite not allowed."

    .line 371
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_37
    const/4 v3, -0x4

    if-eqz p2, :cond_111

    if-nez p3, :cond_3e

    goto/16 :goto_111

    .line 378
    :cond_3e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 379
    invoke-virtual {p0, p3, p2}, Lcom/android/server/enterprise/lso/LSOService;->copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_4e

    const-string p0, "file not created"

    .line 381
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4e
    const/4 v10, 0x0

    .line 386
    :try_start_4f
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/data/com.sec.android.gallery3d"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_66

    const-string v0, "/data/data/com.sec.android.gallery3d does not exists"

    .line 387
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_61} :catch_a1
    .catchall {:try_start_4f .. :try_end_61} :catchall_9f

    const/4 p0, -0x3

    .line 416
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_66
    :try_start_66
    const-string v7, "/data/system/enterprise"

    .line 391
    invoke-static {v7}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v7
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6c} :catch_a1
    .catchall {:try_start_66 .. :try_end_6c} :catchall_9f

    if-nez v7, :cond_72

    .line 416
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_72
    :try_start_72
    const-string v7, "/data/system/enterprise/lso"

    .line 395
    invoke-static {v7}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v7
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_78} :catch_a1
    .catchall {:try_start_72 .. :try_end_78} :catchall_9f

    if-nez v7, :cond_7e

    .line 416
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 399
    :cond_7e
    :try_start_7e
    iget-object v7, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v7}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 403
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v8, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    invoke-static {p3, v7, v0, v8}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v7

    if-eqz v7, :cond_9b

    const-string/jumbo v7, "setWallpaper() : Create Ripple image"

    .line 406
    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v8, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-static {v0, v7, v8}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->createRippleImage(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z

    move-result v7
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_9b} :catch_a1
    .catchall {:try_start_7e .. :try_end_9b} :catchall_9f

    .line 416
    :cond_9b
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_ac

    :catchall_9f
    move-exception p0

    goto :goto_10d

    :catch_a1
    move-exception v0

    :try_start_a2
    const-string/jumbo v7, "setWallpaper() : error occurs"

    .line 413
    invoke-static {v2, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a8
    .catchall {:try_start_a2 .. :try_end_a8} :catchall_9f

    .line 416
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v10

    :goto_ac
    if-nez v7, :cond_b8

    const-string/jumbo p0, "setWallpaper() : Error in copying file"

    .line 420
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-static {p3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    return v3

    .line 425
    :cond_b8
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    int-to-long v5, v1

    invoke-virtual {v0, v5, v6, p3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setWallpaperData(JLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d0

    const-string/jumbo p1, "setWallpaper() : Failed to set wallpaper data. "

    .line 427
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iput v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 429
    invoke-static {p3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    return v3

    .line 434
    :cond_d0
    iput v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 436
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotification(I)V

    .line 439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 442
    :try_start_dc
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "LSOService"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Admin "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has changed banner wallpaper to file "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 441
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_100} :catch_106
    .catchall {:try_start_dc .. :try_end_100} :catchall_101

    goto :goto_106

    :catchall_101
    move-exception p0

    .line 447
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 448
    throw p0

    .line 447
    :catch_106
    :goto_106
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 451
    invoke-static {p3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    return v10

    .line 416
    :goto_10d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 417
    throw p0

    :cond_111
    :goto_111
    const-string/jumbo p0, "setWallpaper() : imageFilePath or image is null, please check path"

    .line 375
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public final updateSystemUIMonitor(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 798
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/lso/LSOService;->setLockscreenInvisibleOverlaySystemUI(IZ)V

    const/4 v1, 0x2

    .line 799
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/lso/LSOService;->setLockscreenWallpaperSystemUI(IZ)V

    return-void
.end method
