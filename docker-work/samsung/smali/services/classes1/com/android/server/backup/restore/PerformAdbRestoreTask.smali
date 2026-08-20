.class public Lcom/android/server/backup/restore/PerformAdbRestoreTask;
.super Ljava/lang/Object;
.source "PerformAdbRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;


# instance fields
.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mCurrentPassword:Ljava/lang/String;

.field public final mDecryptPassword:Ljava/lang/String;

.field public final mInputFile:Landroid/os/ParcelFileDescriptor;

.field public final mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field public mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field public mOperationTypeMIGRATION:Z

.field public mPrivilegeApp:Z

.field public restorePass:Z


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    .registers 10

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationTypeMIGRATION:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->restorePass:Z

    .line 87
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 88
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 89
    iput-object p3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 90
    iput-object p4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    .line 91
    iput-object p5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    .line 92
    iput-object p6, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 93
    iput-object p7, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    new-instance p2, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-direct {p2, p1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 95
    iput-boolean p8, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    .line 96
    invoke-static {}, Lcom/android/server/backup/UserBackupManagerService;->isYuvaSupported()Z

    move-result p0

    if-eqz p0, :cond_34

    const-string p0, "BackupManagerService"

    const-string p1, "Backup Manager Yuva is Supported"

    .line 97
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object p0

    sput-object p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    :cond_34
    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;ZZ)V
    .registers 11

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationTypeMIGRATION:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->restorePass:Z

    .line 105
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 106
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 107
    iput-object p3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 108
    iput-object p4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    .line 109
    iput-object p5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    .line 110
    iput-object p6, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 111
    iput-object p7, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    new-instance p2, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-direct {p2, p1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 113
    iput-boolean p8, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    .line 114
    iput-boolean p9, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationTypeMIGRATION:Z

    .line 115
    invoke-static {}, Lcom/android/server/backup/UserBackupManagerService;->isYuvaSupported()Z

    move-result p0

    if-eqz p0, :cond_36

    const-string p0, "BackupManagerService"

    const-string p1, "Backup Manager Yuva is Supported"

    .line 116
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object p0

    sput-object p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    :cond_36
    return-void
.end method

.method public static attemptEncryptionKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .registers 16

    const-string v0, "AES"

    const-string v1, "Incorrect password"

    const-string v2, "BackupManagerService"

    const/4 v3, 0x0

    :try_start_7
    const-string v4, "AES/CBC/PKCS5Padding"

    .line 306
    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 308
    invoke-static {p1, p0, p2, p4}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 310
    invoke-static {p5}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 311
    new-instance p5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p5, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 312
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    .line 313
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    invoke-direct {p2, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p0, 0x2

    .line 312
    invoke-virtual {v4, p0, p2, p5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 315
    invoke-static {p6}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 316
    invoke-virtual {v4, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    const/4 p5, 0x0

    .line 320
    aget-byte p5, p2, p5

    const/4 p6, 0x1

    add-int/2addr p5, p6

    .line 321
    invoke-static {p2, p6, p5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p6

    add-int/lit8 v5, p5, 0x1

    .line 324
    aget-byte p5, p2, p5

    add-int/2addr p5, v5

    .line 325
    invoke-static {p2, v5, p5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    add-int/lit8 v6, p5, 0x1

    .line 329
    aget-byte p5, p2, p5

    add-int/2addr p5, v6

    .line 330
    invoke-static {p2, v6, p5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    .line 334
    invoke-static {p1, v5, p3, p4}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object p1

    .line 336
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_68

    .line 337
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, p6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 338
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p2, v5, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, p0, p2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 342
    new-instance p0, Ljavax/crypto/CipherInputStream;

    invoke-direct {p0, p7, v4}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    move-object v3, p0

    goto :goto_9c

    :cond_68
    if-eqz p8, :cond_9c

    .line 344
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_6d} :catch_94
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7 .. :try_end_6d} :catch_8e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7 .. :try_end_6d} :catch_86
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_6d} :catch_7e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_6d} :catch_76
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_6d} :catch_6e

    goto :goto_9c

    :catch_6e
    if-eqz p8, :cond_9c

    const-string p0, "Illegal password; aborting"

    .line 372
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :catch_76
    if-eqz p8, :cond_9c

    const-string p0, "Needed padding mechanism unavailable!"

    .line 368
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :catch_7e
    if-eqz p8, :cond_9c

    const-string p0, "Needed decryption algorithm unavailable!"

    .line 364
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :catch_86
    if-eqz p8, :cond_9c

    const-string p0, "Invalid block size in encryption key"

    .line 360
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :catch_8e
    if-eqz p8, :cond_9c

    .line 356
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :catch_94
    move-exception p0

    if-eqz p8, :cond_9c

    const-string p1, "Needed parameter spec unavailable!"

    .line 348
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9c
    :goto_9c
    return-object v3
.end method

.method public static decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;
    .registers 20

    move-object/from16 v0, p1

    const-string v1, "BackupManagerService"

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "AES-256"

    .line 385
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 387
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {v0}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 390
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 391
    invoke-static {v3}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v12

    .line 393
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 394
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v14

    .line 396
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v15

    const-string v4, "PBKDF2WithHmacSHA1"

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object v5, v0

    move-object v6, v12

    move v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, p3

    .line 399
    invoke-static/range {v3 .. v11}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptEncryptionKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_73

    if-eqz p2, :cond_73

    const-string v4, "PBKDF2WithHmacSHA1And8bit"

    const/4 v11, 0x1

    move-object/from16 v3, p0

    move-object v5, v0

    move-object v6, v12

    move v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, p3

    .line 402
    invoke-static/range {v3 .. v11}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptEncryptionKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v0

    move-object v2, v0

    goto :goto_73

    .line 407
    :cond_53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encryption method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_67} :catch_6e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_67} :catch_68

    goto :goto_73

    :catch_68
    const-string v0, "Can\'t read input header"

    .line 412
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    :catch_6e
    const-string v0, "Can\'t parse restore data header"

    .line 410
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    :goto_73
    return-object v2
.end method

.method public static parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xf

    new-array v0, v0, [B

    .line 241
    invoke-static {p0, v0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readFullyOrThrow(Ljava/io/InputStream;[B)V

    const-string v1, "ANDROID BACKUP\n"

    const-string v2, "UTF-8"

    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 244
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const-string v1, "BackupManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_75

    .line 246
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_5c

    const/4 v0, 0x1

    if-ne v3, v0, :cond_28

    move v3, v0

    goto :goto_29

    :cond_28
    move v3, v2

    .line 253
    :goto_29
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_35

    move v4, v0

    goto :goto_36

    :cond_35
    move v4, v2

    .line 255
    :goto_36
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "none"

    .line 256
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    :goto_43
    move v2, v0

    goto :goto_59

    :cond_45
    if-eqz p1, :cond_54

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_54

    .line 260
    invoke-static {p1, v5, v3, p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_59

    goto :goto_43

    :cond_54
    const-string p1, "Archive is encrypted but no password given"

    .line 267
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    :goto_59
    move p1, v2

    move v2, v4

    goto :goto_71

    .line 270
    :cond_5c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong header version: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    :goto_71
    move v7, v2

    move v2, p1

    move p1, v7

    goto :goto_7b

    :cond_75
    const-string p1, "Didn\'t read the right header magic"

    .line 273
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    :goto_7b
    if-nez v2, :cond_8b

    const-string p0, "Invalid restore data; aborting."

    .line 277
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget-object p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz p0, :cond_89

    .line 279
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V

    :cond_89
    const/4 p0, 0x0

    return-object p0

    :cond_8b
    if-eqz p1, :cond_93

    .line 285
    new-instance p1, Ljava/util/zip/InflaterInputStream;

    invoke-direct {p1, p0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, p1

    :cond_93
    return-object p0
.end method

.method public static readFullyOrThrow(Ljava/io/InputStream;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 220
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 221
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_e

    add-int/2addr v0, v1

    goto :goto_1

    .line 223
    :cond_e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Couldn\'t fully read data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    return-void
.end method

.method public static readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 291
    :goto_7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_17

    const/16 v2, 0xa

    if-ne v1, v2, :cond_12

    goto :goto_17

    :cond_12
    int-to-char v1, v1

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 297
    :cond_17
    :goto_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 22

    move-object/from16 v1, p0

    .line 123
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    const-string v2, "BackupManagerService"

    const-string v3, "--- Performing full-dataset restore ---"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    .line 125
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v2}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendStartRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 130
    :try_start_1b
    iget-boolean v5, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    if-nez v5, :cond_8c

    iget-object v5, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8c

    const-string v0, "BackupManagerService"

    const-string v5, "Backup password mismatch; aborting"

    .line 132
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_37

    .line 135
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_37} :catch_1b6
    .catchall {:try_start_1b .. :try_end_37} :catchall_1b3

    .line 194
    :cond_37
    :try_start_37
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_45

    :catch_3d
    move-exception v0

    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    .line 196
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    :goto_45
    iget-object v5, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v5

    .line 200
    :try_start_48
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 202
    monitor-exit v5
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_89

    .line 203
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 204
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 205
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_67

    .line 206
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    :cond_67
    const-string v0, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    .line 208
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 211
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 212
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    :cond_88
    return-void

    :catchall_89
    move-exception v0

    .line 202
    :try_start_8a
    monitor-exit v5
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v0

    .line 140
    :cond_8c
    :try_start_8c
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_97} :catch_1b6
    .catchall {:try_start_8c .. :try_end_97} :catchall_1b3

    .line 142
    :try_start_97
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9d} :catch_1b1
    .catchall {:try_start_97 .. :try_end_9d} :catchall_1ae

    if-nez v4, :cond_f7

    .line 192
    :try_start_9f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 194
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a7} :catch_a8

    goto :goto_b0

    :catch_a8
    move-exception v0

    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    .line 196
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    :goto_b0
    iget-object v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v6

    .line 200
    :try_start_b3
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 202
    monitor-exit v6
    :try_end_be
    .catchall {:try_start_b3 .. :try_end_be} :catchall_f4

    .line 203
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 204
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 205
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_d2

    .line 206
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    :cond_d2
    const-string v0, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    .line 208
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 211
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 212
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    :cond_f3
    return-void

    :catchall_f4
    move-exception v0

    .line 202
    :try_start_f5
    monitor-exit v6
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_f4

    throw v0

    .line 153
    :cond_f7
    :try_start_f7
    iget-boolean v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationTypeMIGRATION:Z

    if-eqz v6, :cond_113

    .line 154
    new-instance v6, Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v7, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 155
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 156
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iget-object v8, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 157
    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v8

    invoke-direct {v6, v7, v0, v8, v3}, Lcom/android/server/backup/utils/BackupEligibilityRules;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;II)V

    goto :goto_12b

    .line 160
    :cond_113
    new-instance v6, Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v7, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 161
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 162
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iget-object v8, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 163
    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v8

    const/4 v9, 0x3

    invoke-direct {v6, v7, v0, v8, v9}, Lcom/android/server/backup/utils/BackupEligibilityRules;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;II)V

    :goto_12b
    move-object/from16 v20, v6

    .line 166
    new-instance v0, Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v11, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v12, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    const/4 v13, 0x0

    iget-object v14, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v20}, Lcom/android/server/backup/restore/FullRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 169
    iget-boolean v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    invoke-virtual {v0, v6}, Lcom/android/server/backup/restore/FullRestoreEngine;->setPrivilegeApp(Z)V

    .line 170
    new-instance v6, Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-direct {v6, v0, v4}, Lcom/android/server/backup/restore/FullRestoreEngineThread;-><init>(Lcom/android/server/backup/restore/FullRestoreEngine;Ljava/io/InputStream;)V

    .line 172
    invoke-virtual {v6}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->run()V

    .line 174
    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->getRestorePass()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->restorePass:Z

    if-nez v0, :cond_15f

    .line 176
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_15f

    .line 177
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_15f} :catch_1b1
    .catchall {:try_start_f7 .. :try_end_15f} :catchall_1ae

    .line 192
    :cond_15f
    :try_start_15f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 194
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_167
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_167} :catch_168

    goto :goto_170

    :catch_168
    move-exception v0

    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    .line 196
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    :goto_170
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 200
    :try_start_173
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 202
    monitor-exit v4
    :try_end_17e
    .catchall {:try_start_173 .. :try_end_17e} :catchall_1ab

    .line 203
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 204
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 205
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_192

    .line 206
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    :cond_192
    const-string v0, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    .line 208
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 211
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_21a

    goto :goto_211

    :catchall_1ab
    move-exception v0

    .line 202
    :try_start_1ac
    monitor-exit v4
    :try_end_1ad
    .catchall {:try_start_1ac .. :try_end_1ad} :catchall_1ab

    throw v0

    :catchall_1ae
    move-exception v0

    move-object v4, v5

    goto :goto_1b4

    :catch_1b1
    move-object v4, v5

    goto :goto_1b6

    :catchall_1b3
    move-exception v0

    :goto_1b4
    move-object v5, v0

    goto :goto_21e

    :catch_1b6
    :goto_1b6
    :try_start_1b6
    const-string v0, "BackupManagerService"

    const-string v5, "Unable to read restore input"

    .line 185
    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_1c4

    .line 187
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V
    :try_end_1c4
    .catchall {:try_start_1b6 .. :try_end_1c4} :catchall_1b3

    :cond_1c4
    if-eqz v4, :cond_1c9

    .line 192
    :try_start_1c6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 194
    :cond_1c9
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_1c6 .. :try_end_1ce} :catch_1cf

    goto :goto_1d7

    :catch_1cf
    move-exception v0

    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    .line 196
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    :goto_1d7
    iget-object v5, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v5

    .line 200
    :try_start_1da
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 202
    monitor-exit v5
    :try_end_1e5
    .catchall {:try_start_1da .. :try_end_1e5} :catchall_21b

    .line 203
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 204
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 205
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_1f9

    .line 206
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    :cond_1f9
    const-string v0, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    .line 208
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 211
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_21a

    .line 212
    :goto_211
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    :cond_21a
    return-void

    :catchall_21b
    move-exception v0

    .line 202
    :try_start_21c
    monitor-exit v5
    :try_end_21d
    .catchall {:try_start_21c .. :try_end_21d} :catchall_21b

    throw v0

    :goto_21e
    if-eqz v4, :cond_223

    .line 192
    :try_start_220
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 194
    :cond_223
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_228
    .catch Ljava/io/IOException; {:try_start_220 .. :try_end_228} :catch_229

    goto :goto_231

    :catch_229
    move-exception v0

    const-string v4, "BackupManagerService"

    const-string v6, "Close of restore data pipe threw"

    .line 196
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    :goto_231
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 200
    :try_start_234
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 202
    monitor-exit v4
    :try_end_23f
    .catchall {:try_start_234 .. :try_end_23f} :catchall_275

    .line 203
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 204
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 205
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_253

    .line 206
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    :cond_253
    const-string v0, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    .line 208
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 211
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_274

    .line 212
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 215
    :cond_274
    throw v5

    :catchall_275
    move-exception v0

    .line 202
    :try_start_276
    monitor-exit v4
    :try_end_277
    .catchall {:try_start_276 .. :try_end_277} :catchall_275

    throw v0
.end method
