.class public Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;
.super Ljava/lang/Object;
.source "RestrictionPolicyCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;
    }
.end annotation


# static fields
.field public static final ACTIVATION_LOCK_MASK:J = 0x8000000L

.field public static final AIRPLANE_MODE_MASK:J = 0x80L

.field public static final ALLOW_NON_MARKET_MASK:J = 0x1000000000000L

.field public static final ANDROID_BEAM_MASK:J = 0x40000L

.field public static final AUDIO_RECORD_MASK:J = 0x1L

.field public static final BACKGROUND_DATA_MASK:J = 0x4000000000000L

.field public static final BACKGROUND_LIMIT_MASK:J = 0x4000L

.field public static final BACKUP_MASK:J = 0x100000000000L

.field public static final BLUETOOTH_TETHERING_MASK:J = 0x8000000000L

.field public static final CAMERA_MASK:J = 0x1000000000L

.field public static final CCMODE_MASK:J = 0x40000000L

.field public static final CELLULAR_DATA_MASK:J = 0x400000000000L

.field public static final CLIPBOARD_MASK:J = 0x200L

.field public static final CLIPBOARD_SHARE_MASK:J = 0x20000L

.field public static final DATA_SAVER_MASK:J = 0x800000000000000L

.field public static final DEFAULT_RESTRICTION_MASK:J = 0x5fffdffc3b9fffefL

.field public static final DEVELOPER_MODE_MASK:J = 0x40L

.field public static final FACE_UNLOCK_MASK:J = 0x2000000000000000L

.field public static final FACTORY_RESET_MASK:J = 0x8000000000000L

.field public static final FAST_ENCRYPTION_MASK:J = 0x10L

.field public static final FIRMWARE_RECOVER_MASK:J = 0x1000000L

.field public static final FIRMWARE_UPDATE_MASK:J = 0x4000000L

.field public static final GOOGLE_AUTOSYNC_MASK:J = 0x2000000L

.field public static final GOOGLE_CRASH_REPORT_MASK:J = 0x80000000000000L

.field public static final HEADPHONE_MASK:J = 0x10000000L

.field public static final HOME_KEY_MASK:J = 0x10000000000000L

.field public static final IRIS_CAMERA_MASK:J = 0x400000000000000L

.field public static final KILL_ACTIVITY_MASK:J = 0x8000L

.field public static final KNOX_DELEGATION_MASK:J = -0x8000000000000000L

.field public static final LOCAL_CONTACT_STORAGE_MASK:J = 0x4000000000000000L

.field public static final LOCKSCREEN_STATE_MASK:J = 0x800000L

.field public static final MASK_AND_COLUMN_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MASS_STORAGE_MASK:J = 0x40000000000L

.field public static final MICROPHONE_MASK:J = 0x4L

.field public static final MOBILE_LIMIT_MASK:J = 0x10000L

.field public static final MOCK_LOCATION_MASK:J = 0x80000000000L

.field public static final MULTI_ADMIN:J = -0x1L

.field public static final NON_TRUSTED_APP_MASK:J = 0x400000L

.field public static final NO_ADMIN:J = 0x0L

.field public static final ODE_VERIFICATION_MASK:J = 0x80000000L

.field public static final OTA_UPGRADE_MASK:J = 0x40000000000000L

.field public static final POWER_OFF_MASK:J = 0x800L

.field public static final POWER_SAVING_MASK:J = 0x1000000000000000L

.field public static final PREVENT_ADMIN_ACTIVATION_MASK:J = 0x200000000L

.field public static final PREVENT_ADMIN_INSTALL_MASK:J = 0x100000000L

.field public static final SBEAM_MASK:J = 0x400L

.field public static final SCREEN_CAPTURE_MASK:J = 0x10000000000L

.field public static final SCREEN_PINNING_MASK:J = 0x200000000000000L

.field public static final SDCARD_MASK:J = 0x800000000000L

.field public static final SDCARD_MOVE_MASK:J = 0x20000000L

.field public static final SDCARD_WRITE_MASK:J = 0x800000000L

.field public static final SECURE_KEY_PAD_MASK:J = 0x200000L

.field public static final SETTINGS_MASK:J = 0x8L

.field public static final SHARE_LIST_MASK:J = 0x100000L

.field public static final SMART_CLIP_MASK:J = 0x100000000000000L

.field public static final STATUS_BAR_MASK:J = 0x100L

.field public static final STOP_SYSTEM_APP_MASK:J = 0x1000L

.field public static final SVOICE_MASK:J = 0x20L

.field public static final TAG:Ljava/lang/String; = "RestrictionPolicy"

.field public static final USB_DEBUGGING_MASK:J = 0x20000000000L

.field public static final USB_MEDIAPLAYER_MASK:J = 0x2000000000000L

.field public static final USB_STORAGE_MASK:J = 0x80000L

.field public static final USB_TETHERING_MASK:J = 0x2000000000L

.field public static final VIDEO_RECORD_MASK:J = 0x2L

.field public static final VPN_MASK:J = 0x20000000000000L

.field public static final WALLPAPER_CHANGE_MASK:J = 0x400000000L

.field public static final WIFI_DIRECT_MASK:J = 0x2000L

.field public static final WIFI_TETHERING_MASK:J = 0x4000000000L


# instance fields
.field public mApplyingAdmins:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;

.field public final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mCameraDisabledAdmin:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static bridge synthetic -$$Nest$misDefaultValueOne(Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;Ljava/lang/Long;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->isDefaultValueOne(Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDefaultValueZero(Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;Ljava/lang/Long;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->isDefaultValueZero(Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$1;

    invoke-direct {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$1;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->MASK_AND_COLUMN_NAME:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmStorageProvider;)V
    .registers 5

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    .line 201
    new-instance v0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins-IA;)V

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mApplyingAdmins:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCache:Ljava/util/HashMap;

    .line 207
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mContext:Landroid/content/Context;

    .line 208
    iput-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method


# virtual methods
.method public clearCache(I)V
    .registers 4

    .line 224
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 226
    :try_start_9
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mApplyingAdmins:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->remove(I)V

    .line 229
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_2a

    .line 231
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_2a
    move-exception p1

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 232
    throw p1
.end method

.method public dump()Ljava/lang/String;
    .registers 14

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 393
    :try_start_e
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "[Restrictions applied for user : "

    .line 394
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    .line 396
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->getCachedPolicies(I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 399
    sget-object v5, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->MASK_AND_COLUMN_NAME:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 400
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string v9, "   "

    .line 401
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    .line 403
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-long v9, v3, v7

    cmp-long v6, v9, v7

    if-nez v6, :cond_7f

    const/4 v6, 0x1

    goto :goto_80

    :cond_7f
    const/4 v6, 0x0

    .line 404
    :goto_80
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 405
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->getDefaultMaskedValue(Ljava/lang/Long;)J

    move-result-wide v11

    cmp-long v6, v9, v11

    if-eqz v6, :cond_94

    const-string v6, "(Enforced) "

    .line 406
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_94
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mApplyingAdmins:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;

    invoke-virtual {v6, v2, v7, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->dump(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a4
    .catchall {:try_start_e .. :try_end_a4} :catchall_b3

    goto :goto_4e

    .line 414
    :cond_a5
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_b3
    move-exception v0

    .line 414
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 415
    throw v0
.end method

.method public extract(JZI)Z
    .registers 5

    .line 467
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->getCachedPolicies(I)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 470
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    and-long/2addr p3, p1

    cmp-long p0, p3, p1

    if-nez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0

    :cond_13
    return p3
.end method

.method public final getCachedPolicies(I)Ljava/lang/Long;
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 383
    :try_start_9
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_1f

    .line 385
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p1

    :catchall_1f
    move-exception p1

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 386
    throw p1
.end method

.method public getCameraDisabledAdmin(I)Ljava/lang/Long;
    .registers 2

    .line 463
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public final getDefaultMaskedValue(Ljava/lang/Long;)J
    .registers 4

    .line 328
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide v0, 0x5fffdffc3b9fffefL    # 2.6710819191852336E154

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .registers 3

    .line 332
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_11

    .line 333
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mUserManager:Landroid/os/UserManager;

    .line 335
    :cond_11
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public final init(I)V
    .registers 6

    .line 212
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 214
    :try_start_9
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide v2, 0x5fffdffc3b9fffefL    # 2.6710819191852336E154

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mApplyingAdmins:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->init(I)V

    .line 217
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_39

    .line 219
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_39
    move-exception p1

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 220
    throw p1
.end method

.method public final isDefaultValueOne(Ljava/lang/Long;)Z
    .registers 4

    .line 320
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->getDefaultMaskedValue(Ljava/lang/Long;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isDefaultValueZero(Ljava/lang/Long;)Z
    .registers 4

    .line 324
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->getDefaultMaskedValue(Ljava/lang/Long;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public load(I)V
    .registers 19

    move-object/from16 v7, p0

    move/from16 v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    .line 238
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 239
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 240
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->init(I)V

    goto :goto_13

    .line 243
    :cond_2b
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->init(I)V

    :cond_2e
    const/4 v2, 0x0

    if-ne v0, v1, :cond_33

    move-object v1, v2

    goto :goto_42

    .line 250
    :cond_33
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    .line 252
    invoke-static {v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "#SelectClause#"

    .line 251
    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :goto_42
    sget-object v0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->MASK_AND_COLUMN_NAME:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 259
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v8, 0x1

    add-int/2addr v3, v8

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 261
    array-length v3, v0

    sub-int/2addr v3, v8

    const-string v9, "adminUid"

    aput-object v9, v0, v3

    .line 263
    iget-object v3, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "RESTRICTION"

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_16d

    .line 267
    iget-object v0, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 269
    :try_start_6f
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 270
    :goto_72
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_135

    .line 271
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    long-to-int v0, v11

    int-to-long v1, v0

    cmp-long v1, v11, v1

    if-nez v1, :cond_12c

    .line 277
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 282
    iget-object v1, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCache:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a3

    .line 283
    iget-object v1, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCache:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_ac

    :cond_a3
    const-wide v1, 0x5fffdffc3b9fffefL    # 2.6710819191852336E154

    .line 285
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 288
    :goto_ac
    sget-object v2, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->MASK_AND_COLUMN_NAME:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v15, v1

    :goto_b7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_120

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 289
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 290
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Long;

    move-object/from16 v1, p0

    move v2, v5

    move v3, v13

    move-object v4, v6

    move-object/from16 v16, v6

    move-object/from16 p1, v9

    move v9, v5

    move-wide v5, v11

    .line 292
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->updateCameraDisabledAdmin(IILjava/lang/Long;J)V

    if-ne v9, v8, :cond_ff

    move-object/from16 v1, v16

    .line 297
    invoke-virtual {v7, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->isDefaultValueZero(Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_101

    .line 298
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    or-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_fd
    move-object v15, v2

    goto :goto_118

    :cond_ff
    move-object/from16 v1, v16

    :cond_101
    if-nez v9, :cond_118

    .line 299
    invoke-virtual {v7, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->isDefaultValueOne(Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_118

    .line 300
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    not-long v4, v4

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_fd

    .line 302
    :cond_118
    :goto_118
    iget-object v2, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mApplyingAdmins:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;

    invoke-virtual {v2, v0, v13, v1, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->load(IILjava/lang/Long;I)V

    move-object/from16 v9, p1

    goto :goto_b7

    :cond_120
    move-object/from16 p1, v9

    .line 306
    iget-object v0, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCache:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12e

    :cond_12c
    move-object/from16 p1, v9

    .line 308
    :goto_12e
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_131
    .catch Landroid/database/SQLException; {:try_start_6f .. :try_end_131} :catch_144
    .catchall {:try_start_6f .. :try_end_131} :catchall_142

    move-object/from16 v9, p1

    goto/16 :goto_72

    .line 313
    :cond_135
    :goto_135
    iget-object v0, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 314
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_16d

    :catchall_142
    move-exception v0

    goto :goto_160

    :catch_144
    move-exception v0

    :try_start_145
    const-string v1, "RestrictionPolicy"

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred accessing Enterprise db "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15f
    .catchall {:try_start_145 .. :try_end_15f} :catchall_142

    goto :goto_135

    .line 313
    :goto_160
    iget-object v1, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 314
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 315
    throw v0

    :cond_16d
    :goto_16d
    return-void
.end method

.method public update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V
    .registers 19

    move-object v1, p0

    move-wide v5, p2

    move v0, p4

    move/from16 v4, p5

    .line 341
    iget-object v2, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v3, 0x0

    const-string v7, "RESTRICTION"

    move-object v8, p1

    invoke-virtual {v2, v3, v7, p1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 343
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eq v7, v0, :cond_13

    goto :goto_27

    :cond_26
    move v7, v0

    .line 350
    :goto_27
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->getCachedPolicies(I)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_3e

    .line 356
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->getUserManager()Landroid/os/UserManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    if-eqz v8, :cond_3e

    .line 357
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->init(I)V

    .line 358
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->getCachedPolicies(I)Ljava/lang/Long;

    move-result-object v2

    .line 362
    :cond_3e
    iget-object v8, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    if-eqz v2, :cond_8c

    if-eqz v7, :cond_55

    .line 366
    :try_start_4b
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    or-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_5f

    .line 368
    :cond_55
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    not-long v9, v5

    and-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 370
    :goto_5f
    iget-object v7, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCache:Ljava/util/HashMap;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p7, :cond_8c

    if-eqz p6, :cond_8c

    .line 372
    iget-object v2, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mApplyingAdmins:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eq v7, v0, :cond_76

    const/4 v0, 0x1

    move v3, v0

    :cond_76
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move/from16 v4, p5

    move-wide v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->update(ZIJI)V
    :try_end_80
    .catchall {:try_start_4b .. :try_end_80} :catchall_81

    goto :goto_8c

    :catchall_81
    move-exception v0

    .line 376
    iget-object v1, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 377
    throw v0

    .line 376
    :cond_8c
    :goto_8c
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void
.end method

.method public final updateCameraDisabledAdmin(IILjava/lang/Long;J)V
    .registers 11

    const/4 v0, 0x1

    if-lez p1, :cond_5

    move p1, v0

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    .line 423
    :goto_6
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide v3, 0x1000000000L

    cmp-long p3, v1, v3

    if-nez p3, :cond_5c

    if-eq p1, v0, :cond_5c

    .line 425
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_39

    .line 426
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5c

    .line 427
    :cond_39
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    cmp-long p1, p3, v2

    if-lez p1, :cond_5c

    .line 429
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-wide/16 p2, -0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    :goto_5c
    return-void
.end method

.method public updateCameraDisabledAdmin(Ljava/lang/String;JZI)V
    .registers 12

    .line 437
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const/4 p3, 0x1

    const-string v2, "adminUid"

    aput-object v2, p2, p3

    .line 442
    iget-object p3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    invoke-virtual {p3, v3, p2, p5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_9a

    .line 444
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9a

    .line 445
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2e
    :goto_2e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ContentValues;

    if-eqz p3, :cond_2e

    .line 446
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_2e

    .line 447
    invoke-virtual {p3, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_4a

    move v3, p4

    goto :goto_52

    .line 448
    :cond_4a
    invoke-virtual {p3, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_52
    if-eq v3, p4, :cond_2e

    .line 450
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_76

    .line 451
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 452
    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    .line 451
    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 453
    :cond_76
    iget-object p3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p3, v3, v0

    if-lez p3, :cond_2e

    .line 454
    iget-object p3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :cond_9a
    return-void
.end method
