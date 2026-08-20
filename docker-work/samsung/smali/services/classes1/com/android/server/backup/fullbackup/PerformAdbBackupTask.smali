.class public Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformAdbBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# static fields
.field public static mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;


# instance fields
.field public final mAllApps:Z

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public final mCompress:Z

.field public final mCurrentOpToken:I

.field public final mCurrentPassword:Ljava/lang/String;

.field public mCurrentTarget:Landroid/content/pm/PackageInfo;

.field public final mDoWidgets:Z

.field public final mEncryptPassword:Ljava/lang/String;

.field public mExtraFlag:I

.field public final mIncludeApks:Z

.field public final mIncludeObbs:Z

.field public final mIncludeShared:Z

.field public final mIncludeSystem:Z

.field public final mKeyValue:Z

.field public final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field public final mOutputFile:Landroid/os/ParcelFileDescriptor;

.field public final mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPrivilegeApp:Z

.field public mSmartSwitchBackupPath:[Ljava/lang/String;

.field public final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/backup/utils/BackupEligibilityRules;ZI[Ljava/lang/String;)V
    .registers 26

    move-object v0, p0

    move-object v1, p9

    move-object v2, p10

    move-object v3, p4

    .line 109
    invoke-direct {p0, p4}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    move-object v3, p1

    .line 110
    iput-object v3, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    move-object v4, p2

    .line 111
    iput-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 112
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v3

    iput v3, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    move-object/from16 v3, p16

    .line 113
    iput-object v3, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v3, p3

    .line 115
    iput-object v3, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move v3, p5

    .line 116
    iput-boolean v3, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    move v3, p6

    .line 117
    iput-boolean v3, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z

    move v3, p7

    .line 118
    iput-boolean v3, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z

    move v3, p8

    .line 119
    iput-boolean v3, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    move/from16 v3, p11

    .line 120
    iput-boolean v3, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    move/from16 v3, p12

    .line 121
    iput-boolean v3, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    if-nez p15, :cond_36

    .line 123
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3f

    .line 124
    :cond_36
    new-instance v3, Ljava/util/ArrayList;

    invoke-static/range {p15 .. p15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_3f
    iput-object v3, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 125
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    if-eqz v2, :cond_51

    const-string v3, ""

    .line 130
    invoke-virtual {v3, p10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    goto :goto_51

    .line 133
    :cond_4e
    iput-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_53

    .line 131
    :cond_51
    :goto_51
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    :goto_53
    move/from16 v1, p13

    .line 138
    iput-boolean v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    move/from16 v1, p14

    .line 139
    iput-boolean v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    move-object/from16 v1, p17

    .line 140
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    move/from16 v1, p18

    .line 142
    iput-boolean v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z

    move/from16 v1, p19

    .line 143
    iput v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I

    move-object/from16 v1, p20

    .line 144
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 148
    invoke-static {}, Lcom/android/server/backup/UserBackupManagerService;->isYuvaSupported()Z

    move-result v0

    if-eqz v0, :cond_7e

    const-string v0, "BackupManagerService"

    const-string v1, "Backup Manager Yuva is Supported"

    .line 149
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    :cond_7e
    return-void
.end method


# virtual methods
.method public final addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 156
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 159
    :try_start_16
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 162
    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_25} :catch_26

    goto :goto_4

    .line 164
    :catch_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", skipping"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_42
    return-void
.end method

.method public final emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/16 v1, 0x200

    .line 174
    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->randomBytes(I)[B

    move-result-object v0

    .line 175
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    const-string v3, "PBKDF2WithHmacSHA1"

    const/16 v4, 0x2710

    .line 176
    invoke-static {v3, v2, v0, v4}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v2

    const/16 v5, 0x20

    new-array v5, v5, [B

    .line 182
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getRng()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 183
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 184
    invoke-virtual {p0, v1}, Lcom/android/server/backup/UserBackupManagerService;->randomBytes(I)[B

    move-result-object p0

    const-string v1, "AES/CBC/PKCS5Padding"

    .line 187
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 188
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v7, v5, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v5, 0x1

    .line 189
    invoke-virtual {v6, v5, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 190
    new-instance v8, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v8, p2, v6}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    const-string p2, "AES-256"

    .line 193
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    .line 194
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {v0}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    invoke-static {p0}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 207
    invoke-virtual {v0, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 209
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    .line 210
    invoke-static {v1}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v6}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    .line 224
    invoke-virtual {v7}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v2

    .line 227
    invoke-virtual {v7}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v5

    .line 226
    invoke-static {v3, v5, p0, v4}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object p0

    .line 230
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    array-length v5, p0

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 232
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 233
    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 234
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 235
    array-length v1, v2

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 236
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 237
    array-length v1, p0

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 238
    invoke-virtual {v4, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 239
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 240
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 241
    invoke-static {p0}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v8
.end method

.method public execute()V
    .registers 1

    return-void
.end method

.method public final finalizeBackup(Ljava/io/OutputStream;)V
    .registers 2

    const/16 p0, 0x400

    :try_start_2
    new-array p0, p0, [B

    .line 251
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    const-string p0, "BackupManagerService"

    const-string p1, "Error attempting to finalize backup stream"

    .line 253
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    return-void
.end method

.method public handleCancel(Z)V
    .registers 4

    .line 571
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adb backup cancel of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_23

    .line 576
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 578
    :cond_23
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget p0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    invoke-interface {p1, p0}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    return-void
.end method

.method public operationComplete(J)V
    .registers 3

    return-void
.end method

.method public run()V
    .registers 31

    move-object/from16 v15, p0

    .line 259
    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    if-eqz v0, :cond_9

    const-string v0, ", including key-value backups"

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    const-string v1, "BackupManagerService"

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- Performing adb backup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ---"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 263
    new-instance v14, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v14, v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 265
    invoke-virtual {v14}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendStartBackup()V

    .line 269
    sget-object v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    const/4 v13, 0x0

    if-eqz v1, :cond_4a

    iget-object v2, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v2, :cond_4a

    .line 270
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerYuva;->sendStartBackupCallback(Ljava/lang/String;)V

    .line 273
    :cond_4a
    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 276
    iget-boolean v2, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    const/4 v12, 0x1

    if-eqz v2, :cond_7b

    const/high16 v2, 0x8000000

    .line 277
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    move v2, v13

    .line 279
    :goto_5c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7b

    .line 280
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 282
    iget-boolean v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    if-nez v4, :cond_73

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v12

    if-nez v4, :cond_78

    .line 284
    :cond_73
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 291
    :cond_7b
    iget-boolean v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    if-eqz v1, :cond_88

    .line 294
    invoke-static {v13}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_88

    .line 306
    invoke-virtual {v15, v0, v1}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 313
    :cond_88
    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_8f

    .line 314
    invoke-virtual {v15, v0, v1}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 321
    :cond_8f
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 323
    iget-boolean v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z

    if-eqz v1, :cond_9e

    iget v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_11a

    .line 324
    :cond_9e
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 325
    :cond_a6
    :goto_a6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 326
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 327
    iget-object v3, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_f9

    iget-object v3, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 328
    invoke-virtual {v3, v4}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_cd

    goto :goto_f9

    .line 335
    :cond_cd
    iget-object v3, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 336
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const-string v3, "BackupManagerService"

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is key-value."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    .line 329
    :cond_f9
    :goto_f9
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const-string v3, "BackupManagerService"

    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not eligible for backup, removing."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 347
    :cond_11a
    new-instance v10, Ljava/util/ArrayList;

    .line 348
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 349
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v1, 0x0

    .line 354
    :try_start_12f
    iget-object v2, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;
    :try_end_131
    .catch Landroid/os/RemoteException; {:try_start_12f .. :try_end_131} :catch_54e
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_131} :catch_4da
    .catchall {:try_start_12f .. :try_end_131} :catchall_4d2

    if-eqz v2, :cond_143

    :try_start_133
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_137
    .catch Landroid/os/RemoteException; {:try_start_133 .. :try_end_137} :catch_54e
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_137} :catch_4da
    .catchall {:try_start_133 .. :try_end_137} :catchall_13b

    if-lez v2, :cond_143

    move v2, v12

    goto :goto_144

    :catchall_13b
    move-exception v0

    move-object v4, v0

    :goto_13d
    move v5, v12

    move v6, v13

    move-object v2, v14

    move-object v3, v15

    goto/16 :goto_5cc

    :cond_143
    move v2, v13

    .line 374
    :goto_144
    :try_start_144
    iget-boolean v3, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z
    :try_end_146
    .catch Landroid/os/RemoteException; {:try_start_144 .. :try_end_146} :catch_54e
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_146} :catch_4da
    .catchall {:try_start_144 .. :try_end_146} :catchall_4d2

    if-nez v3, :cond_1ba

    :try_start_148
    iget-object v3, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ba

    const-string v0, "BackupManagerService"

    const-string v2, "Backup password mismatch; aborting"

    .line 376
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_159
    .catch Landroid/os/RemoteException; {:try_start_148 .. :try_end_159} :catch_54e
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_159} :catch_4da
    .catchall {:try_start_148 .. :try_end_159} :catchall_13b

    .line 533
    :try_start_159
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_15e} :catch_15f

    goto :goto_17a

    :catch_15f
    move-exception v0

    const-string v1, "BackupManagerService"

    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO error closing adb backup file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :goto_17a
    iget-object v2, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 538
    :try_start_17d
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 539
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 540
    monitor-exit v2
    :try_end_188
    .catchall {:try_start_17d .. :try_end_188} :catchall_1b7

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 542
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_192

    .line 543
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 545
    :cond_192
    invoke-virtual {v14}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    .line 547
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 551
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1b6

    .line 552
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    :cond_1b6
    return-void

    :catchall_1b7
    move-exception v0

    .line 540
    :try_start_1b8
    monitor-exit v2
    :try_end_1b9
    .catchall {:try_start_1b8 .. :try_end_1b9} :catchall_1b7

    throw v0

    .line 406
    :cond_1ba
    :try_start_1ba
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x400

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "ANDROID BACKUP\n"

    .line 408
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    .line 409
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    iget-boolean v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_1cc
    .catch Landroid/os/RemoteException; {:try_start_1ba .. :try_end_1cc} :catch_54e
    .catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_1cc} :catch_4da
    .catchall {:try_start_1ba .. :try_end_1cc} :catchall_4d2

    if-eqz v4, :cond_1d1

    :try_start_1ce
    const-string v4, "\n1\n"
    :try_end_1d0
    .catch Landroid/os/RemoteException; {:try_start_1ce .. :try_end_1d0} :catch_54e
    .catch Ljava/lang/Exception; {:try_start_1ce .. :try_end_1d0} :catch_4da
    .catchall {:try_start_1ce .. :try_end_1d0} :catchall_13b

    goto :goto_1d3

    :cond_1d1
    :try_start_1d1
    const-string v4, "\n0\n"

    :goto_1d3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1d6
    .catch Landroid/os/RemoteException; {:try_start_1d1 .. :try_end_1d6} :catch_54e
    .catch Ljava/lang/Exception; {:try_start_1d1 .. :try_end_1d6} :catch_4da
    .catchall {:try_start_1d1 .. :try_end_1d6} :catchall_4d2

    if-eqz v2, :cond_1dd

    .line 415
    :try_start_1d8
    invoke-virtual {v15, v3, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1dc} :catch_457
    .catchall {:try_start_1d8 .. :try_end_1dc} :catchall_13b

    goto :goto_1e4

    :cond_1dd
    :try_start_1dd
    const-string/jumbo v2, "none\n"

    .line 417
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v0

    .line 420
    :goto_1e4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 421
    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 424
    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_1f3
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_1f3} :catch_457
    .catchall {:try_start_1dd .. :try_end_1f3} :catchall_4d2

    if-eqz v0, :cond_203

    .line 425
    :try_start_1f5
    new-instance v0, Ljava/util/zip/Deflater;

    const/16 v3, 0x9

    invoke-direct {v0, v3}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 426
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v3, v2, v0, v12}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_1f5 .. :try_end_201} :catch_457
    .catchall {:try_start_1f5 .. :try_end_201} :catchall_13b

    move-object v8, v3

    goto :goto_204

    :cond_203
    move-object v8, v2

    .line 441
    :goto_204
    :try_start_204
    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z
    :try_end_206
    .catch Landroid/os/RemoteException; {:try_start_204 .. :try_end_206} :catch_44f
    .catch Ljava/lang/Exception; {:try_start_204 .. :try_end_206} :catch_446
    .catchall {:try_start_204 .. :try_end_206} :catchall_43d

    if-eqz v0, :cond_232

    .line 443
    :try_start_208
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.sharedstoragebackup"

    invoke-virtual {v0, v1, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 445
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_217
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_208 .. :try_end_217} :catch_224
    .catch Landroid/os/RemoteException; {:try_start_208 .. :try_end_217} :catch_221
    .catch Ljava/lang/Exception; {:try_start_208 .. :try_end_217} :catch_21d
    .catchall {:try_start_208 .. :try_end_217} :catchall_218

    goto :goto_232

    :catchall_218
    move-exception v0

    move-object v4, v0

    move-object v1, v8

    goto/16 :goto_13d

    :catch_21d
    move-exception v0

    move-object v1, v8

    goto/16 :goto_4db

    :catch_221
    move-object v1, v8

    goto/16 :goto_54e

    :catch_224
    :try_start_224
    const-string v0, "BackupManagerService"

    const-string v1, "Unable to find shared-storage backup handler"

    .line 447
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_232

    .line 449
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V
    :try_end_232
    .catch Landroid/os/RemoteException; {:try_start_224 .. :try_end_232} :catch_221
    .catch Ljava/lang/Exception; {:try_start_224 .. :try_end_232} :catch_21d
    .catchall {:try_start_224 .. :try_end_232} :catchall_218

    .line 455
    :cond_232
    :goto_232
    :try_start_232
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_236
    .catch Landroid/os/RemoteException; {:try_start_232 .. :try_end_236} :catch_44f
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_236} :catch_446
    .catchall {:try_start_232 .. :try_end_236} :catchall_43d

    move v9, v13

    :goto_237
    if-ge v9, v0, :cond_35e

    .line 457
    :try_start_239
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/content/pm/PackageInfo;

    const-string v1, "BackupManagerService"

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- Performing full backup for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v1, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    .line 463
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 466
    new-instance v17, Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v2, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v4, 0x0

    iget-boolean v6, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    const-wide v18, 0x7fffffffffffffffL

    iget v5, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    const/16 v20, 0x0

    iget-object v3, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I

    move-object/from16 v21, v11

    iget-boolean v11, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z

    move/from16 v22, v11

    iget-object v11, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mSmartSwitchBackupPath:[Ljava/lang/String;
    :try_end_281
    .catch Landroid/os/RemoteException; {:try_start_239 .. :try_end_281} :catch_356
    .catch Ljava/lang/Exception; {:try_start_239 .. :try_end_281} :catch_34d
    .catchall {:try_start_239 .. :try_end_281} :catchall_344

    move/from16 v23, v1

    move-object/from16 v1, v17

    move-object/from16 v24, v3

    move-object v3, v8

    move/from16 v25, v5

    move-object v5, v7

    move-object/from16 v26, v7

    move-object/from16 v7, p0

    move-object/from16 v27, v8

    move/from16 v28, v9

    move-wide/from16 v8, v18

    move-object/from16 v18, v10

    move/from16 v10, v25

    move-object/from16 v19, v21

    move/from16 v21, v22

    move-object/from16 v22, v11

    move/from16 v11, v20

    move-object/from16 v12, v24

    move/from16 v13, v23

    move-object/from16 v29, v14

    move/from16 v14, v21

    move-object/from16 v15, v22

    :try_start_2ab
    invoke-direct/range {v1 .. v15}, Lcom/android/server/backup/fullbackup/FullBackupEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JIILcom/android/server/backup/utils/BackupEligibilityRules;IZ[Ljava/lang/String;)V
    :try_end_2ae
    .catch Landroid/os/RemoteException; {:try_start_2ab .. :try_end_2ae} :catch_33c
    .catch Ljava/lang/Exception; {:try_start_2ab .. :try_end_2ae} :catch_333
    .catchall {:try_start_2ab .. :try_end_2ae} :catchall_32a

    if-eqz v16, :cond_2d9

    :try_start_2b0
    const-string v1, "Shared storage"
    :try_end_2b2
    .catch Landroid/os/RemoteException; {:try_start_2b0 .. :try_end_2b2} :catch_2cf
    .catch Ljava/lang/Exception; {:try_start_2b0 .. :try_end_2b2} :catch_2c4
    .catchall {:try_start_2b0 .. :try_end_2b2} :catchall_2b8

    move-object/from16 v3, p0

    move-object v2, v1

    move-object/from16 v1, v26

    goto :goto_2df

    :catchall_2b8
    move-exception v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object v4, v0

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    goto/16 :goto_5cc

    :catch_2c4
    move-exception v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    goto/16 :goto_4df

    :catch_2cf
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    goto/16 :goto_552

    :cond_2d9
    move-object/from16 v1, v26

    .line 479
    :try_start_2db
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_2dd
    .catch Landroid/os/RemoteException; {:try_start_2db .. :try_end_2dd} :catch_33c
    .catch Ljava/lang/Exception; {:try_start_2db .. :try_end_2dd} :catch_333
    .catchall {:try_start_2db .. :try_end_2dd} :catchall_32a

    move-object/from16 v3, p0

    :goto_2df
    :try_start_2df
    invoke-virtual {v3, v2}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 482
    iput-object v1, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 483
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupOnePackage()I

    .line 487
    iget-boolean v2, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z
    :try_end_2e9
    .catch Landroid/os/RemoteException; {:try_start_2df .. :try_end_2e9} :catch_33e
    .catch Ljava/lang/Exception; {:try_start_2df .. :try_end_2e9} :catch_328
    .catchall {:try_start_2df .. :try_end_2e9} :catchall_326

    if-eqz v2, :cond_315

    if-nez v16, :cond_315

    move-object/from16 v4, v27

    move-object/from16 v2, v29

    .line 488
    :try_start_2f1
    invoke-virtual {v2, v1, v4}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v5

    if-nez v5, :cond_319

    .line 490
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_2fe

    .line 491
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    .line 493
    :cond_2fe
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure writing OBB stack for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_315
    .catch Landroid/os/RemoteException; {:try_start_2f1 .. :try_end_315} :catch_3c7
    .catch Ljava/lang/Exception; {:try_start_2f1 .. :try_end_315} :catch_3c1
    .catchall {:try_start_2f1 .. :try_end_315} :catchall_3bb

    :cond_315
    move-object/from16 v4, v27

    move-object/from16 v2, v29

    :cond_319
    add-int/lit8 v9, v28, 0x1

    move-object v14, v2

    move-object v15, v3

    move-object v8, v4

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_237

    :catchall_326
    move-exception v0

    goto :goto_32d

    :catch_328
    move-exception v0

    goto :goto_336

    :catchall_32a
    move-exception v0

    move-object/from16 v3, p0

    :goto_32d
    move-object/from16 v4, v27

    move-object/from16 v2, v29

    goto/16 :goto_3bc

    :catch_333
    move-exception v0

    move-object/from16 v3, p0

    :goto_336
    move-object/from16 v4, v27

    move-object/from16 v2, v29

    goto/16 :goto_3c2

    :catch_33c
    move-object/from16 v3, p0

    :catch_33e
    move-object/from16 v4, v27

    move-object/from16 v2, v29

    goto/16 :goto_3c7

    :catchall_344
    move-exception v0

    move-object v4, v8

    move-object v2, v14

    move-object v3, v15

    move-object v1, v4

    move v5, v12

    move v6, v13

    goto/16 :goto_4d7

    :catch_34d
    move-exception v0

    move-object v4, v8

    move-object v2, v14

    move-object v3, v15

    move-object v1, v4

    move v5, v12

    move v6, v13

    goto/16 :goto_4df

    :catch_356
    move-object v4, v8

    move-object v2, v14

    move-object v3, v15

    move-object v1, v4

    move v5, v12

    move v6, v13

    goto/16 :goto_552

    :cond_35e
    move-object v4, v8

    move-object/from16 v19, v11

    move-object v2, v14

    move-object v3, v15

    .line 498
    :try_start_363
    iget-boolean v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z
    :try_end_365
    .catch Landroid/os/RemoteException; {:try_start_363 .. :try_end_365} :catch_43a
    .catch Ljava/lang/Exception; {:try_start_363 .. :try_end_365} :catch_436
    .catchall {:try_start_363 .. :try_end_365} :catchall_432

    if-eqz v0, :cond_3cc

    .line 499
    :try_start_367
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3cc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    const-string v5, "BackupManagerService"

    .line 501
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--- Performing key-value backup for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ---"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v5, Lcom/android/server/backup/KeyValueAdbBackupEngine;

    iget-object v6, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 507
    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    iget-object v7, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 508
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v20

    iget-object v7, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 509
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v21

    move-object v15, v5

    move-object/from16 v16, v4

    move-object/from16 v17, v1

    move-object/from16 v18, v6

    invoke-direct/range {v15 .. v21}, Lcom/android/server/backup/KeyValueAdbBackupEngine;-><init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V

    .line 510
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v5}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->backupOnePackage()V
    :try_end_3ba
    .catch Landroid/os/RemoteException; {:try_start_367 .. :try_end_3ba} :catch_3c7
    .catch Ljava/lang/Exception; {:try_start_367 .. :try_end_3ba} :catch_3c1
    .catchall {:try_start_367 .. :try_end_3ba} :catchall_3bb

    goto :goto_36b

    :catchall_3bb
    move-exception v0

    :goto_3bc
    move-object v1, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_4d7

    :catch_3c1
    move-exception v0

    :goto_3c2
    move-object v1, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_4df

    :catch_3c7
    :goto_3c7
    move-object v1, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_552

    .line 516
    :cond_3cc
    :try_start_3cc
    invoke-virtual {v3, v4}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_3cf
    .catch Landroid/os/RemoteException; {:try_start_3cc .. :try_end_3cf} :catch_43a
    .catch Ljava/lang/Exception; {:try_start_3cc .. :try_end_3cf} :catch_436
    .catchall {:try_start_3cc .. :try_end_3cf} :catchall_432

    if-eqz v4, :cond_3d7

    .line 530
    :try_start_3d1
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 531
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 533
    :cond_3d7
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3dc
    .catch Ljava/io/IOException; {:try_start_3d1 .. :try_end_3dc} :catch_3dd

    goto :goto_3f8

    :catch_3dd
    move-exception v0

    const-string v1, "BackupManagerService"

    .line 535
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error closing adb backup file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :goto_3f8
    iget-object v1, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 538
    :try_start_3fb
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 539
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 540
    monitor-exit v1
    :try_end_407
    .catchall {:try_start_3fb .. :try_end_407} :catchall_42f

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 542
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_411

    .line 543
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 545
    :cond_411
    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    .line 547
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 551
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_5c5

    goto/16 :goto_5bc

    :catchall_42f
    move-exception v0

    .line 540
    :try_start_430
    monitor-exit v1
    :try_end_431
    .catchall {:try_start_430 .. :try_end_431} :catchall_42f

    throw v0

    :catchall_432
    move-exception v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_443

    :catch_436
    move-exception v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_44c

    :catch_43a
    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_454

    :catchall_43d
    move-exception v0

    move-object v4, v8

    move v5, v12

    move v6, v13

    move-object v2, v14

    move-object v3, v15

    :goto_443
    move-object v1, v4

    goto/16 :goto_4d7

    :catch_446
    move-exception v0

    move-object v4, v8

    move v5, v12

    move v6, v13

    move-object v2, v14

    move-object v3, v15

    :goto_44c
    move-object v1, v4

    goto/16 :goto_4df

    :catch_44f
    move-object v4, v8

    move v5, v12

    move v6, v13

    move-object v2, v14

    move-object v3, v15

    :goto_454
    move-object v1, v4

    goto/16 :goto_552

    :catch_457
    move-exception v0

    move v5, v12

    move v6, v13

    move-object v2, v14

    move-object v3, v15

    :try_start_45c
    const-string v4, "BackupManagerService"

    const-string v7, "Unable to emit archive header"

    .line 432
    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_46f

    .line 434
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    .line 435
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V
    :try_end_46f
    .catch Landroid/os/RemoteException; {:try_start_45c .. :try_end_46f} :catch_552
    .catch Ljava/lang/Exception; {:try_start_45c .. :try_end_46f} :catch_4d0
    .catchall {:try_start_45c .. :try_end_46f} :catchall_5c9

    .line 533
    :cond_46f
    :try_start_46f
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_474
    .catch Ljava/io/IOException; {:try_start_46f .. :try_end_474} :catch_475

    goto :goto_490

    :catch_475
    move-exception v0

    const-string v1, "BackupManagerService"

    .line 535
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error closing adb backup file: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :goto_490
    iget-object v4, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 538
    :try_start_493
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 539
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 540
    monitor-exit v4
    :try_end_49e
    .catchall {:try_start_493 .. :try_end_49e} :catchall_4cd

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 542
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_4a8

    .line 543
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 545
    :cond_4a8
    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    .line 547
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 551
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4cc

    .line 552
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    :cond_4cc
    return-void

    :catchall_4cd
    move-exception v0

    .line 540
    :try_start_4ce
    monitor-exit v4
    :try_end_4cf
    .catchall {:try_start_4ce .. :try_end_4cf} :catchall_4cd

    throw v0

    :catch_4d0
    move-exception v0

    goto :goto_4df

    :catchall_4d2
    move-exception v0

    move v5, v12

    move v6, v13

    move-object v2, v14

    move-object v3, v15

    :goto_4d7
    move-object v4, v0

    goto/16 :goto_5cc

    :catch_4da
    move-exception v0

    :goto_4db
    move v5, v12

    move v6, v13

    move-object v2, v14

    move-object v3, v15

    :goto_4df
    :try_start_4df
    const-string v4, "BackupManagerService"

    const-string v7, "Internal exception during full backup"

    .line 523
    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_4ed

    .line 525
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V
    :try_end_4ed
    .catchall {:try_start_4df .. :try_end_4ed} :catchall_5c9

    :cond_4ed
    if-eqz v1, :cond_4f5

    .line 530
    :try_start_4ef
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 531
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 533
    :cond_4f5
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4fa
    .catch Ljava/io/IOException; {:try_start_4ef .. :try_end_4fa} :catch_4fb

    goto :goto_516

    :catch_4fb
    move-exception v0

    const-string v1, "BackupManagerService"

    .line 535
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error closing adb backup file: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :goto_516
    iget-object v4, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 538
    :try_start_519
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 539
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 540
    monitor-exit v4
    :try_end_524
    .catchall {:try_start_519 .. :try_end_524} :catchall_54b

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 542
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_52e

    .line 543
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 545
    :cond_52e
    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    .line 547
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 551
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_5c5

    goto/16 :goto_5bc

    :catchall_54b
    move-exception v0

    .line 540
    :try_start_54c
    monitor-exit v4
    :try_end_54d
    .catchall {:try_start_54c .. :try_end_54d} :catchall_54b

    throw v0

    :catch_54e
    :goto_54e
    move v5, v12

    move v6, v13

    move-object v2, v14

    move-object v3, v15

    :catch_552
    :goto_552
    :try_start_552
    const-string v0, "BackupManagerService"

    const-string v4, "App died during full backup"

    .line 518
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_560

    .line 520
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V
    :try_end_560
    .catchall {:try_start_552 .. :try_end_560} :catchall_5c9

    :cond_560
    if-eqz v1, :cond_568

    .line 530
    :try_start_562
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 531
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 533
    :cond_568
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_56d
    .catch Ljava/io/IOException; {:try_start_562 .. :try_end_56d} :catch_56e

    goto :goto_589

    :catch_56e
    move-exception v0

    const-string v1, "BackupManagerService"

    .line 535
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error closing adb backup file: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :goto_589
    iget-object v4, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 538
    :try_start_58c
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 539
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 540
    monitor-exit v4
    :try_end_597
    .catchall {:try_start_58c .. :try_end_597} :catchall_5c6

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 542
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_5a1

    .line 543
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 545
    :cond_5a1
    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    .line 547
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 551
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_5c5

    .line 552
    :goto_5bc
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    :cond_5c5
    return-void

    :catchall_5c6
    move-exception v0

    .line 540
    :try_start_5c7
    monitor-exit v4
    :try_end_5c8
    .catchall {:try_start_5c7 .. :try_end_5c8} :catchall_5c6

    throw v0

    :catchall_5c9
    move-exception v0

    goto/16 :goto_4d7

    :goto_5cc
    if-eqz v1, :cond_5d4

    .line 530
    :try_start_5ce
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 531
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 533
    :cond_5d4
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5d9
    .catch Ljava/io/IOException; {:try_start_5ce .. :try_end_5d9} :catch_5da

    goto :goto_5f5

    :catch_5da
    move-exception v0

    const-string v1, "BackupManagerService"

    .line 535
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO error closing adb backup file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :goto_5f5
    iget-object v1, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 538
    :try_start_5f8
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 539
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 540
    monitor-exit v1
    :try_end_603
    .catchall {:try_start_5f8 .. :try_end_603} :catchall_632

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 542
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_60d

    .line 543
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 545
    :cond_60d
    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    .line 547
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 551
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_631

    .line 552
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 555
    :cond_631
    throw v4

    :catchall_632
    move-exception v0

    .line 540
    :try_start_633
    monitor-exit v1
    :try_end_634
    .catchall {:try_start_633 .. :try_end_634} :catchall_632

    throw v0
.end method
