.class public Lcom/android/server/locksettings/LockSettingsStorage;
.super Lcom/android/server/utils/WatchableImpl;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsStorage$Cache;,
        Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;,
        Lcom/android/server/locksettings/LockSettingsStorage$Callback;,
        Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;,
        Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    }
.end annotation


# static fields
.field public static final APP_FINGER_PRINT_PASSWORD_FILE:Ljava/lang/String; = "applockfingerprintpassword.key"

.field public static final APP_LOCK_BACKUP_PIN_FILE:Ljava/lang/String; = "applockbackuppin.key"

.field public static final APP_LOCK_PASSWORD_FILE:Ljava/lang/String; = "applockpassword.key"

.field public static final APP_LOCK_PATTERN_FILE:Ljava/lang/String; = "applockpattern.key"

.field public static final APP_LOCK_PIN_FILE:Ljava/lang/String; = "applockpin.key"

.field public static final CACHED_KEY_TO_LOCKSCREEN:[Ljava/lang/String;

.field public static final CHILD_PROFILE_LOCK_FILE:Ljava/lang/String; = "gatekeeper.profile.key"

.field public static final COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

.field public static final COLUMNS_FOR_QUERY:[Ljava/lang/String;

.field public static final COLUMN_KEY:Ljava/lang/String; = "name"

.field public static final COLUMN_USERID:Ljava/lang/String; = "user"

.field public static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final DEBUG:Z = false

.field public static final DEFAULT:Ljava/lang/Object;

.field public static final INITIAL_STATE:I = 0x0

.field public static final LOCK_FMM_PASSWORD_FILE:Ljava/lang/String; = "fmmpassword.key"

.field public static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "gatekeeper.password.key"

.field public static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gatekeeper.pattern.key"

.field public static final LOCK_SKT_FILE:Ljava/lang/String; = "sktpassword.key"

.field public static final LOCK_STATE:I = 0x1

.field public static final PATH_PERMANENT_MEM_LOCK_INFO:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/lawlock.txt"

.field public static final PATH_PERMANENT_MEM_LOCK_INFO_ENC:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/enclawlock.txt"

.field public static final REBOOT_ESCROW_FILE:Ljava/lang/String; = "reboot.escrow.key"

.field public static final REBOOT_ESCROW_SERVER_BLOB:Ljava/lang/String; = "reboot.escrow.server.blob.key"

.field public static final SECURE_STATE:[I

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field public static final SKT_SECRET_KEY:Ljava/lang/String; = "SKT : Find lost phone plus !!!"

.field public static final SYNTHETIC_PASSWORD_DIRECTORY:Ljava/lang/String; = "spblob/"

.field public static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field public static final TABLE:Ljava/lang/String; = "locksettings"

.field public static final TAG:Ljava/lang/String; = "LockSettingsStorage"

.field public static final UNLOCK_STATE:I = 0x2

.field public static final ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;


# instance fields
.field public final mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

.field public final mContext:Landroid/content/Context;

.field public final mFileWriteLock:Ljava/lang/Object;

.field public mLSSLog:Lcom/android/server/locksettings/LockSettingsServiceLog;

.field public mLockTypeCallback:Landroid/os/IRemoteCallback;

.field public final mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

.field public mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

.field public mSKTLockState:I

.field public mSecurityDebugLevel:I


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 9

    const-string/jumbo v0, "value"

    .line 103
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    const-string/jumbo v1, "name"

    .line 106
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    const-string/jumbo v1, "lock_screen_owner_info"

    const-string/jumbo v2, "lock_pattern_visible_pattern"

    const-string/jumbo v3, "lockscreen.power_button_instantly_locks"

    .line 122
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 1071
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const-string/jumbo v1, "i_love_office_tg"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    const-string/jumbo v2, "lockscreen.samsung_biometric"

    const-string/jumbo v3, "lockscreen.lockout_biometric_attempt_deadline"

    const-string/jumbo v4, "lockscreen.lockoutattemptdeadline"

    const-string/jumbo v5, "lock_screen_owner_info_enabled"

    const-string/jumbo v6, "lock_screen_owner_info"

    const-string/jumbo v7, "lockscreen.device_owner_info"

    const-string/jumbo v8, "lockscreen.disabled"

    .line 1099
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->CACHED_KEY_TO_LOCKSCREEN:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 1109
    fill-array-data v0, :array_5e

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->SECURE_STATE:[I

    return-void

    nop

    :array_5e
    .array-data 4
        0x10
        0x40
        0x20
        0x80
        0x80
        0x100
        0x200
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 169
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 131
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;-><init>(Lcom/android/server/locksettings/LockSettingsStorage$Cache-IA;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1073
    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    .line 1272
    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSecurityDebugLevel:I

    .line 170
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    .line 171
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    return-void
.end method


# virtual methods
.method public addLog(ILjava/lang/String;)V
    .registers 3

    .line 1291
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLssLog()Lcom/android/server/locksettings/LockSettingsServiceLog;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsServiceLog;->addLog(ILjava/lang/String;)V

    return-void
.end method

.method public addPWFilelist(II)V
    .registers 11

    .line 1309
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v0

    .line 1310
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-string v1, "User "

    if-nez v0, :cond_24

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " PWFilelist\n        <No files>"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    return-void

    .line 1315
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1316
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " PWFilelist\n"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    array-length p2, v0

    const/4 v1, 0x0

    :goto_38
    if-ge v1, p2, :cond_6d

    aget-object v3, v0, v1

    .line 1318
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy/MM/dd HH:mm:ss.SSS"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v5, "        handleFileName="

    .line 1319
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  lastModified="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 1321
    :cond_6d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    return-void
.end method

.method public clearCache()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 718
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->clear()V

    return-void
.end method

.method public closeDatabase()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 713
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public decryptCarrierLockMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string p1, "LockSettingsStorage"

    :try_start_2
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 1155
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 1156
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->getCarrierLockKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    sget-object v2, Lcom/android/server/locksettings/LockSettingsStorage;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v1, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 p0, 0x0

    .line 1157
    invoke-static {p2, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 1158
    new-instance p2, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_22} :catch_90
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_22} :catch_75
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_22} :catch_5a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_22} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_24

    goto/16 :goto_ab

    :catch_24
    move-exception p0

    .line 1168
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sec_encrypt.decrypt() Exception = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    :catch_3f
    move-exception p0

    .line 1166
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sec_encrypt.decrypt() InvalidAlgorithmParameterException = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    :catch_5a
    move-exception p0

    .line 1164
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sec_encrypt.decrypt() InvalidKeyException = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    :catch_75
    move-exception p0

    .line 1162
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sec_encrypt.decrypt() NoSuchPaddingException = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    :catch_90
    move-exception p0

    .line 1160
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sec_encrypt.decrypt() NoSuchAlgorithmException = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_aa
    const/4 p2, 0x0

    :goto_ab
    return-object p2
.end method

.method public final deleteFile(Ljava/lang/String;)V
    .registers 5

    .line 448
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 451
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 452
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    .line 454
    :cond_17
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 455
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final varargs deleteFilesAndRemoveCache([Ljava/lang/String;)V
    .registers 7

    .line 645
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_20

    aget-object v2, p1, v1

    .line 646
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 648
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 649
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    .line 650
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_20
    return-void
.end method

.method public deleteSyntheticPasswordState(IJLjava/lang/String;)V
    .registers 7

    .line 522
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 523
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_5d

    .line 525
    :try_start_f
    new-instance p3, Ljava/io/RandomAccessFile;

    const-string/jumbo p4, "rws"

    invoke-direct {p3, p1, p4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_37
    .catchall {:try_start_f .. :try_end_17} :catchall_35

    .line 526
    :try_start_17
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    long-to-int p4, v0

    .line 527
    new-array p4, p4, [B

    invoke-virtual {p3, p4}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_2b

    .line 528
    :try_start_21
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_37
    .catchall {:try_start_21 .. :try_end_24} :catchall_35

    .line 531
    :goto_24
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 532
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    goto :goto_4f

    :catchall_2b
    move-exception p4

    .line 525
    :try_start_2c
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception p3

    :try_start_31
    invoke-virtual {p4, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_34
    throw p4
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_37
    .catchall {:try_start_31 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception p1

    goto :goto_56

    :catch_37
    move-exception p3

    :try_start_38
    const-string p4, "LockSettingsStorage"

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to zeroize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_38 .. :try_end_4e} :catchall_35

    goto :goto_24

    .line 534
    :goto_4f
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    goto :goto_5d

    .line 531
    :goto_56
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 532
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 533
    throw p1

    :cond_5d
    :goto_5d
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 13

    .line 833
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 834
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 835
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    .line 836
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v4, v6

    const-string v1, "User %d [%s]:"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 837
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 838
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 840
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 841
    array-length v2, v1

    move v4, v5

    :goto_4a
    if-ge v4, v2, :cond_7c

    aget-object v7, v1, v4

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 842
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    .line 843
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    .line 844
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v3

    const-string v7, "%6d %s %s"

    .line 842
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    :cond_77
    const-string v1, "[Not found]"

    .line 847
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 849
    :cond_7c
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_e

    :cond_80
    return-void
.end method

.method public final ensureSyntheticPasswordDirectoryForUser(I)V
    .registers 2

    .line 595
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object p0

    .line 596
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_d

    .line 597
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    :cond_d
    return-void
.end method

.method public final fsyncDirectory(Ljava/io/File;)V
    .registers 6

    .line 401
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/file/OpenOption;

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_23

    .line 403
    :try_start_10
    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_17

    .line 404
    :try_start_13
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_23

    goto :goto_3a

    :catchall_17
    move-exception v0

    if-eqz p0, :cond_22

    .line 401
    :try_start_1a
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception p0

    :try_start_1f
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    throw v0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_23

    :catch_23
    move-exception p0

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error syncing directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockSettingsStorage"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3a
    return-void
.end method

.method public final getAppLockBackupPinFilename(I)Ljava/lang/String;
    .registers 3

    const-string v0, "applockbackuppin.key"

    .line 1441
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAppLockFingerprintPasswordFilename(I)Ljava/lang/String;
    .registers 3

    const-string v0, "applockfingerprintpassword.key"

    .line 1461
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAppLockPasswordFilename(I)Ljava/lang/String;
    .registers 3

    const-string v0, "applockpassword.key"

    .line 1400
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAppLockPatternFilename(I)Ljava/lang/String;
    .registers 3

    const-string v0, "applockpattern.key"

    .line 1421
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAppLockPinFilename(I)Ljava/lang/String;
    .registers 3

    const-string v0, "applockpin.key"

    .line 1380
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .registers 5

    const/4 v0, 0x0

    .line 684
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 685
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_21

    :cond_c
    const-string p1, "1"

    .line 686
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    const-string/jumbo p1, "true"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p2, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 p2, 0x1

    :goto_21
    return p2
.end method

.method public getCarrierLock()Z
    .registers 6

    .line 1217
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    const/4 v1, 0x0

    const-string v2, "getCarrierLock#mSKTLockState = "

    const-string v3, "LockSettingsStorage"

    const/4 v4, 0x1

    if-eqz v0, :cond_23

    if-eq v0, v4, :cond_d

    goto :goto_43

    .line 1230
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    move v1, v4

    goto :goto_43

    .line 1219
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getCarrierLockFromFile()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1220
    iput v4, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    .line 1222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_40
    const/4 v0, 0x2

    .line 1224
    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    :goto_43
    return v1
.end method

.method public final getCarrierLockFromFile()Z
    .registers 11

    .line 1176
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->isCarrierLockENCVersion()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "getCarrierLock() is true"

    const-string v3, "ON"

    const-string v4, "IOException while read file"

    const/4 v5, 0x0

    const/16 v6, 0x20

    const-string v7, "LockSettingsStorage"

    const/4 v8, 0x0

    if-eqz v0, :cond_3d

    .line 1177
    new-instance v0, Ljava/io/File;

    const-string v9, "/efs/sec_efs/sktdm_mem/enclawlock.txt"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 1180
    :try_start_20
    iget-object v9, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->decryptCarrierLockMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 1181
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_36

    .line 1182
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_35} :catch_39

    goto :goto_37

    :cond_36
    move v1, v8

    :goto_37
    move v8, v1

    goto :goto_3c

    .line 1186
    :catch_39
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    :goto_3c
    return v8

    .line 1191
    :cond_3d
    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/sec_efs/sktdm_mem/lawlock.txt"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1194
    :try_start_4a
    invoke-static {p0, v6, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5a

    .line 1195
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5a

    .line 1196
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_59} :catch_5d

    goto :goto_5b

    :cond_5a
    move v1, v8

    :goto_5b
    move v8, v1

    goto :goto_60

    .line 1200
    :catch_5d
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    :goto_60
    return v8
.end method

.method public final getCarrierLockKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "SHA-256"

    .line 1145
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    const-string p1, "SKT : Find lost phone plus !!!"

    .line 1146
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 1147
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string v0, "AES"

    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method public getChildProfileLockFile(I)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "gatekeeper.profile.key"

    .line 487
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInt(Ljava/lang/String;II)I
    .registers 5

    const/4 v0, 0x0

    .line 695
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 696
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_10

    :cond_c
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_10
    return p2
.end method

.method public final getLockCarrierPasswordFilename(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "sktpassword.key"

    .line 1255
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 502
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/system/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_2b

    .line 506
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 508
    :cond_2b
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLockFMMPasswordFilename(I)Ljava/lang/String;
    .registers 3

    const-string v0, "fmmpassword.key"

    .line 1137
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLockPasswordFilename(I)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "gatekeeper.password.key"

    .line 482
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLockPatternFilename(I)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "gatekeeper.pattern.key"

    .line 477
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .registers 6

    const/4 v0, 0x0

    .line 690
    invoke-virtual {p0, p1, v0, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 691
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_10

    :cond_c
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    :goto_10
    return-wide p2
.end method

.method public getLssLog()Lcom/android/server/locksettings/LockSettingsServiceLog;
    .registers 3

    .line 1284
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLSSLog:Lcom/android/server/locksettings/LockSettingsServiceLog;

    if-nez v0, :cond_d

    .line 1285
    new-instance v0, Lcom/android/server/locksettings/LockSettingsServiceLog;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsServiceLog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLSSLog:Lcom/android/server/locksettings/LockSettingsServiceLog;

    .line 1287
    :cond_d
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLSSLog:Lcom/android/server/locksettings/LockSettingsServiceLog;

    return-object p0
.end method

.method public getPersistentDataBlockManager()Lcom/android/server/PersistentDataBlockManagerInternal;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 723
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    if-nez v0, :cond_e

    .line 724
    const-class v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    .line 725
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    .line 727
    :cond_e
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    return-object p0
.end method

.method public getRebootEscrowFile(I)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "reboot.escrow.key"

    .line 492
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRebootEscrowServerBlob()Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "reboot.escrow.server.blob.key"

    .line 498
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSecurityDebugLevel()I
    .registers 1

    .line 1279
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSecurityDebugLevel:I

    return p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    const/16 v0, -0x270f

    if-ne p3, v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    const-string/jumbo v0, "legacy_lock_pattern_enabled"

    .line 704
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo p1, "lock_pattern_autolock"

    .line 708
    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 604
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 605
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const/4 p2, 0x1

    aput-object p4, p1, p2

    const-string p2, "%016x.%s"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 606
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 577
    sget-boolean v0, Lcom/samsung/android/knox/dar/DarRune;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    const-string/jumbo v1, "spblob/"

    if-eqz v0, :cond_4e

    .line 579
    :try_start_7
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 580
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 581
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isVirtualUser()Z

    move-result p0

    if-eqz p0, :cond_4e

    .line 582
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "users"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    .line 583
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 582
    invoke-static {p0, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_37} :catch_38

    return-object p0

    .line 586
    :catch_38
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error while get sp path for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LockSettingsStorage"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_4e
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public getValidSyntheticPasswordHandleLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 23

    move-object/from16 v0, p4

    .line 1327
    new-instance v1, Ljava/io/File;

    move-object/from16 v2, p3

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "LockSettingsStorage"

    if-nez v2, :cond_17

    const-string v0, "!@ getValidSyntheticPasswordHandleLocked return defaultHandle 1"

    .line 1329
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p5

    .line 1332
    :cond_17
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy/MM/dd HH:mm:ss.SSS"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@ getValidSyntheticPasswordHandleLocked handleFileName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  lastModified="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v4

    .line 1335
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_5c

    const-string v0, "!@ getValidSyntheticPasswordHandleLocked return defaultHandle 2"

    .line 1337
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p5

    .line 1340
    :cond_5c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@ getValidSyntheticPasswordHandleLocked tryHandles="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v6, 0x7fffffffffffffffL

    .line 1343
    array-length v8, v4

    move-wide v10, v6

    const/4 v12, 0x0

    move-wide/from16 v6, p5

    :goto_7a
    if-ge v12, v8, :cond_102

    aget-object v13, v4, v12

    .line 1344
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "\\."

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1345
    array-length v15, v14

    const/4 v9, 0x2

    if-ne v15, v9, :cond_ee

    const/4 v9, 0x1

    aget-object v9, v14, v9

    move-object/from16 v15, p2

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f0

    .line 1346
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p1, v4

    const-string v4, "!@ getValidSyntheticPasswordHandleLocked file="

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    move-object/from16 p3, v5

    move-wide/from16 p5, v6

    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const/4 v6, 0x0

    .line 1348
    aget-object v7, v14, v6

    const/16 v9, 0x10

    invoke-static {v7, v9}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v13

    cmp-long v7, v4, v10

    if-gez v7, :cond_f7

    .line 1349
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f7

    move-wide v10, v4

    goto :goto_f9

    :cond_ee
    move-object/from16 v15, p2

    :cond_f0
    move-object/from16 p1, v4

    move-object/from16 p3, v5

    move-wide/from16 p5, v6

    const/4 v6, 0x0

    :cond_f7
    move-wide/from16 v13, p5

    :goto_f9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-wide v6, v13

    goto/16 :goto_7a

    :cond_102
    move-wide/from16 p5, v6

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@ getValidSyntheticPasswordHandleLocked return validHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p5

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v13
.end method

.method public final getVirtualUsers()[I
    .registers 1

    .line 1471
    new-instance p0, Lcom/samsung/android/knox/dar/VirtualLockUtils;

    invoke-direct {p0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->getVirtualUsers()[I

    move-result-object p0

    return-object p0
.end method

.method public hasCarrierPassword(I)Z
    .registers 2

    .line 1259
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCarrierPasswordFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasChildProfileLock(I)Z
    .registers 2

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasFMMPassword(I)Z
    .registers 2

    .line 1141
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockFMMPasswordFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final hasFile(Ljava/lang/String;)Z
    .registers 2

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_b

    .line 372
    array-length p0, p0

    if-lez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public hasPassword(I)Z
    .registers 2

    .line 363
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasPattern(I)Z
    .registers 2

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasRebootEscrow(I)Z
    .registers 2

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasRebootEscrowServerBlob()Z
    .registers 2

    .line 355
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowServerBlob()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public haveAppLockBackupPin(I)Z
    .registers 2

    .line 1445
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public haveAppLockFingerprintPassword(I)Z
    .registers 2

    .line 1465
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public haveAppLockPassword(I)Z
    .registers 2

    .line 1405
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPasswordFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public haveAppLockPattern(I)Z
    .registers 2

    .line 1425
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPatternFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public haveAppLockPin(I)Z
    .registers 2

    .line 1384
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPinFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isCarrierLockENCVersion()Z
    .registers 2

    .line 1208
    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/sec_efs/sktdm_mem/enclawlock.txt"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public listSyntheticPasswordHandlesForAllUsers(Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 539
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 540
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 541
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 542
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 545
    :cond_2f
    sget-boolean v1, Lcom/samsung/android/knox/dar/DarRune;->KNOX_SUPPORT_DAR_VIRTUAL_USER:Z

    if-eqz v1, :cond_4b

    .line 546
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getVirtualUsers()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_39
    if-ge v3, v2, :cond_4b

    aget v4, v1, v3

    .line 547
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, p1, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_4b
    return-object v0
.end method

.method public listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 555
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object p0

    .line 556
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 557
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_10

    return-object p2

    .line 561
    :cond_10
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_13
    if-ge v2, v0, :cond_59

    aget-object v3, p0, v2

    .line 562
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 563
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_56

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 565
    :try_start_2e
    aget-object v4, v3, v1

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_3d} :catch_3e

    goto :goto_56

    .line 567
    :catch_3e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LockSettingsStorage"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_59
    return-object p2
.end method

.method public migrateLssLog()V
    .registers 1

    .line 1305
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLssLog()Lcom/android/server/locksettings/LockSettingsServiceLog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->migrateLssLog()V

    return-void
.end method

.method public prefetchUser(I)V
    .registers 13

    .line 253
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    monitor-enter v0

    .line 254
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->isFetched(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 255
    monitor-exit v0

    return-void

    .line 257
    :cond_d
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->setFetched(I)V

    .line 258
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->-$$Nest$mgetVersion(Lcom/android/server/locksettings/LockSettingsStorage$Cache;)I

    move-result v1

    .line 259
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_55

    .line 262
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "locksettings"

    .line 263
    sget-object v4, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    const-string/jumbo v5, "user=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    .line 265
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 263
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 267
    :goto_3a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 268
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 270
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v5, v3, v4, p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V

    goto :goto_3a

    .line 272
    :cond_4e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_51
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    return-void

    :catchall_55
    move-exception p0

    .line 259
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public readAppLockBackupkPinHash(I)[B
    .registers 2

    .line 1433
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_e

    .line 1434
    array-length p1, p0

    if-lez p1, :cond_e

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public readAppLockFingerprintPasswordHash(I)[B
    .registers 2

    .line 1453
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_e

    .line 1454
    array-length p1, p0

    if-lez p1, :cond_e

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public readAppLockPasswordHash(I)[B
    .registers 2

    .line 1392
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPasswordFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_e

    .line 1393
    array-length p1, p0

    if-lez p1, :cond_e

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public readAppLockPatternHash(I)[B
    .registers 2

    .line 1413
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPatternFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_e

    .line 1414
    array-length p1, p0

    if-lez p1, :cond_e

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public readAppLockPinHash(I)[B
    .registers 2

    .line 1372
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPinFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_e

    .line 1373
    array-length p1, p0

    if-lez p1, :cond_e

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public readCarrierPasswordHash(I)[B
    .registers 2

    .line 1263
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCarrierPasswordFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_e

    .line 1264
    array-length p1, p0

    if-lez p1, :cond_e

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public readChildProfileLock(I)[B
    .registers 2

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 3

    .line 296
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readPasswordHashIfExists(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 301
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readPatternHashIfExists(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object p0

    if-eqz p0, :cond_e

    return-object p0

    .line 305
    :cond_e
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object p0

    return-object p0
.end method

.method public readFMMPasswordHash(I)[B
    .registers 2

    .line 1129
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockFMMPasswordFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_e

    .line 1130
    array-length p1, p0

    if-lez p1, :cond_e

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public final readFile(Ljava/lang/String;)[B
    .registers 8

    .line 377
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    monitor-enter v0

    .line 378
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->hasFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 379
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->peekFile(Ljava/lang/String;)[B

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 381
    :cond_13
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->-$$Nest$mgetVersion(Lcom/android/server/locksettings/LockSettingsStorage$Cache;)I

    move-result v1

    .line 382
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_5c

    const/4 v0, 0x0

    .line 385
    :try_start_1b
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_23} :catch_56
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_23} :catch_3f

    .line 386
    :try_start_23
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v0, v3, [B

    const/4 v4, 0x0

    .line 387
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 388
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_35

    .line 389
    :try_start_31
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_34} :catch_56
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_3f

    goto :goto_56

    :catchall_35
    move-exception v3

    .line 385
    :try_start_36
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception v2

    :try_start_3b
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3e
    throw v3
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_3f} :catch_56
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception v2

    const-string v3, "LockSettingsStorage"

    .line 393
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot read file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :catch_56
    :goto_56
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFileIfUnchanged(Ljava/lang/String;[BI)V

    return-object v0

    :catchall_5c
    move-exception p0

    .line 382
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    monitor-enter v0

    .line 207
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->hasKeyValue(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 208
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->peekKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 210
    :cond_13
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->-$$Nest$mgetVersion(Lcom/android/server/locksettings/LockSettingsStorage$Cache;)I

    move-result v1

    .line 211
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_5d

    .line 214
    sget-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    .line 215
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "locksettings"

    .line 216
    sget-object v5, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    const-string/jumbo v6, "user=? AND name=?"

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    .line 218
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    aput-object v2, v7, v11

    const/4 v2, 0x1

    aput-object p1, v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 216
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_50

    .line 220
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 221
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4c

    :cond_4b
    move-object v3, v0

    .line 223
    :goto_4c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_51

    :cond_50
    move-object v3, v0

    .line 225
    :goto_51
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {p0, p1, v3, p3, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V

    if-ne v3, v0, :cond_59

    goto :goto_5c

    .line 226
    :cond_59
    move-object p2, v3

    check-cast p2, Ljava/lang/String;

    :goto_5c
    return-object p2

    :catchall_5d
    move-exception p0

    .line 211
    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public final readPasswordHashIfExists(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 4

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object p0

    .line 281
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_16

    .line 282
    new-instance p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1, v0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BILcom/android/server/locksettings/LockSettingsStorage$CredentialHash-IA;)V

    return-object p1

    :cond_16
    return-object v0
.end method

.method public final readPatternHashIfExists(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 4

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object p0

    .line 289
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_16

    .line 290
    new-instance p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1, v0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BILcom/android/server/locksettings/LockSettingsStorage$CredentialHash-IA;)V

    return-object p1

    :cond_16
    return-object v0
.end method

.method public readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    .registers 3

    .line 742
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object p0

    if-nez p0, :cond_9

    .line 744
    sget-object p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object p0

    .line 747
    :cond_9
    :try_start_9
    invoke-interface {p0}, Lcom/android/server/PersistentDataBlockManagerInternal;->getFrpCredentialHandle()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    const-string v0, "LockSettingsStorage"

    const-string v1, "Error reading persistent data block"

    .line 749
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 750
    sget-object p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object p0
.end method

.method public readRebootEscrow(I)[B
    .registers 2

    .line 335
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public readRebootEscrowServerBlob()[B
    .registers 2

    .line 351
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowServerBlob()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public readSyntheticPasswordState(IJLjava/lang/String;)[B
    .registers 5

    .line 518
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public removeChildProfileLock(I)V
    .registers 2

    .line 312
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p0

    .line 314
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    return-void
.end method

.method public final removeKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    .registers 9

    .line 235
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "name"

    .line 236
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_18
    const-string/jumbo v0, "locksettings"

    const-string/jumbo v1, "name=? AND user=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    .line 242
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 241
    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 243
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 244
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->removeKey(Ljava/lang/String;I)V
    :try_end_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_3d

    .line 246
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 248
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void

    :catchall_3d
    move-exception p0

    .line 246
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 247
    throw p0
.end method

.method public removeKey(Ljava/lang/String;I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    return-void
.end method

.method public removeRebootEscrow(I)V
    .registers 2

    .line 343
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/lang/String;)V

    return-void
.end method

.method public removeRebootEscrowServerBlob()V
    .registers 2

    .line 359
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowServerBlob()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/lang/String;)V

    return-void
.end method

.method public removeUser(I)V
    .registers 7

    .line 610
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 612
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 613
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_3a

    .line 617
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x3

    :try_start_1b
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 619
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 620
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 621
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 618
    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFilesAndRemoveCache([Ljava/lang/String;)V

    .line 622
    monitor-exit v1

    goto :goto_3d

    :catchall_37
    move-exception p0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_37

    throw p0

    .line 625
    :cond_3a
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 628
    :goto_3d
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v1

    .line 630
    :try_start_41
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string/jumbo v2, "locksettings"

    .line 631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 632
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 633
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->removeUser(I)V

    .line 637
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->purgePath(Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_41 .. :try_end_73} :catchall_7a

    .line 639
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 641
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void

    :catchall_7a
    move-exception p0

    .line 639
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 640
    throw p0
.end method

.method public sendLockTypeChangedInfo(I)V
    .registers 5

    .line 1085
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallback:Landroid/os/IRemoteCallback;

    const-string v1, "LockSettingsStorage"

    if-eqz v0, :cond_33

    .line 1087
    :try_start_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "secureState"

    .line 1088
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1089
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallback:Landroid/os/IRemoteCallback;

    invoke-interface {p1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    goto :goto_39

    :catch_17
    move-exception p1

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendLockTypeChangedInfo failed!!  mLockTypeCallback = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_39

    :cond_33
    const-string/jumbo p0, "mLockTypeCallback is null!!"

    .line 1095
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .registers 4

    if-eqz p2, :cond_5

    const-string p2, "1"

    goto :goto_7

    :cond_5
    const-string p2, "0"

    .line 656
    :goto_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setDatabaseOnCreateCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V
    .registers 2

    .line 175
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->setCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V

    return-void
.end method

.method public setInt(Ljava/lang/String;II)V
    .registers 4

    .line 664
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setLong(Ljava/lang/String;JI)V
    .registers 5

    .line 660
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setSecureLockModeChangedCallback(Landroid/os/IRemoteCallback;)V
    .registers 2

    .line 1080
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallback:Landroid/os/IRemoteCallback;

    return-void
.end method

.method public setSecurityDebugLevel(I)V
    .registers 2

    .line 1275
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSecurityDebugLevel:I

    .line 1276
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->writeLog()V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    const/16 v0, -0x270f

    if-eq p3, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "cannot store lock settings for FRP user"

    .line 668
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 670
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 671
    sget-object p3, Lcom/android/server/locksettings/LockSettingsStorage;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1c

    const-string p3, "com.android.providers.settings"

    .line 672
    invoke-static {p3}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 675
    :cond_1c
    sget-object p3, Lcom/android/server/locksettings/LockSettingsStorage;->CACHED_KEY_TO_LOCKSCREEN:[Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p3

    if-ltz p3, :cond_49

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@sendLockTypeChangedInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LockSettingsStorage"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    sget-object p1, Lcom/android/server/locksettings/LockSettingsStorage;->SECURE_STATE:[I

    aget p1, p1, p3

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->sendLockTypeChangedInfo(I)V

    :cond_49
    return-void
.end method

.method public updateCarrierLock()Z
    .registers 3

    const-string v0, "LockSettingsStorage"

    const-string/jumbo v1, "updateCarrierLock!!"

    .line 1241
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getCarrierLockFromFile()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 1243
    iput v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    goto :goto_15

    :cond_12
    const/4 v0, 0x2

    .line 1245
    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    .line 1247
    :goto_15
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    if-ne p0, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public uploadLogFile(I)V
    .registers 2

    .line 1295
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLssLog()Lcom/android/server/locksettings/LockSettingsServiceLog;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsServiceLog;->uploadLogFile(I)V

    return-void
.end method

.method public writeAppLockBackupPinHash([BI)V
    .registers 3

    .line 1429
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeAppLockFingerprintPasswordHash([BI)V
    .registers 3

    .line 1449
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeAppLockPasswordHash([BI)V
    .registers 3

    .line 1388
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPasswordFilename(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeAppLockPatternHash([BI)V
    .registers 3

    .line 1409
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPatternFilename(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeAppLockPinHash([BI)V
    .registers 3

    .line 1368
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getAppLockPinFilename(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeCarrierPasswordHash([BI)V
    .registers 3

    .line 1251
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCarrierPasswordFilename(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeChildProfileLock(I[B)V
    .registers 3

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V
    .registers 7

    .line 461
    iget v0, p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1f

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1f

    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    goto :goto_1f

    :cond_d
    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    .line 466
    iget-object p1, p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    goto :goto_24

    :cond_13
    const/4 p1, -0x1

    if-ne v0, p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    const-string p1, "Unknown credential type"

    .line 468
    invoke-static {v2, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move-object p1, v1

    goto :goto_24

    .line 464
    :cond_1f
    :goto_1f
    iget-object p1, p1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    .line 471
    :goto_24
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    .line 472
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeFMMPasswordHash([BI)V
    .registers 3

    .line 1122
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockFMMPasswordFilename(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    const/4 p1, 0x4

    .line 1124
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->sendLockTypeChangedInfo(I)V

    return-void
.end method

.method public final writeFile(Ljava/lang/String;[B)V
    .registers 10

    .line 411
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 418
    :try_start_4
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rws"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_55
    .catchall {:try_start_4 .. :try_end_c} :catchall_53

    if-eqz p2, :cond_1d

    .line 420
    :try_start_e
    array-length v1, p2

    if-nez v1, :cond_12

    goto :goto_1d

    :cond_12
    const/4 v1, 0x0

    .line 423
    array-length v3, p2

    invoke-virtual {v2, p2, v1, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 425
    array-length v1, p2

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    goto :goto_22

    :cond_1d
    :goto_1d
    const-wide/16 v3, 0x0

    .line 421
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 428
    :goto_22
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 429
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->fsyncDirectory(Ljava/io/File;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_35} :catch_51
    .catchall {:try_start_e .. :try_end_35} :catchall_94

    .line 435
    :try_start_35
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39
    .catchall {:try_start_35 .. :try_end_38} :catchall_b4

    goto :goto_8a

    :catch_39
    move-exception v1

    :try_start_3a
    const-string v2, "LockSettingsStorage"

    .line 437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4d
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_b4

    goto :goto_8a

    :catch_51
    move-exception v1

    goto :goto_59

    :catchall_53
    move-exception p0

    goto :goto_96

    :catch_55
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_59
    :try_start_59
    const-string v3, "LockSettingsStorage"

    .line 431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing to file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_59 .. :try_end_6f} :catchall_94

    if-eqz v2, :cond_8a

    .line 435
    :try_start_71
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75
    .catchall {:try_start_71 .. :try_end_74} :catchall_b4

    goto :goto_8a

    :catch_75
    move-exception v1

    :try_start_76
    const-string v2, "LockSettingsStorage"

    .line 437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4d

    .line 441
    :cond_8a
    :goto_8a
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    .line 442
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 443
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_76 .. :try_end_93} :catchall_b4

    return-void

    :catchall_94
    move-exception p0

    move-object v1, v2

    :goto_96
    if-eqz v1, :cond_b3

    .line 435
    :try_start_98
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c
    .catchall {:try_start_98 .. :try_end_9b} :catchall_b4

    goto :goto_b3

    :catch_9c
    move-exception p1

    :try_start_9d
    const-string p2, "LockSettingsStorage"

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error closing file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_b3
    :goto_b3
    throw p0

    :catchall_b4
    move-exception p0

    .line 443
    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_9d .. :try_end_b6} :catchall_b4

    throw p0
.end method

.method public writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "locksettings"

    .line 185
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "name"

    .line 186
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "value"

    .line 188
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_21
    const-string/jumbo v2, "name=? AND user=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    .line 193
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 192
    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 194
    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 195
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 196
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_40
    .catchall {:try_start_21 .. :try_end_40} :catchall_47

    .line 198
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 200
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void

    :catchall_47
    move-exception p0

    .line 198
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 199
    throw p0
.end method

.method public writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public writeLog()V
    .registers 3

    .line 1299
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSecurityDebugLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_c

    .line 1300
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLssLog()Lcom/android/server/locksettings/LockSettingsServiceLog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->writeLog()V

    :cond_c
    return-void
.end method

.method public writePersistentDataBlock(III[B)V
    .registers 6

    .line 732
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 736
    :cond_7
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->toBytes(III[B)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/server/PersistentDataBlockManagerInternal;->setFrpCredentialHandle([B)V

    .line 738
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public writeRebootEscrow(I[B)V
    .registers 3

    .line 331
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeRebootEscrowServerBlob([B)V
    .registers 3

    .line 347
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowServerBlob()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public writeSyntheticPasswordState(IJLjava/lang/String;[B)V
    .registers 6

    .line 513
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->ensureSyntheticPasswordDirectoryForUser(I)V

    .line 514
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method
