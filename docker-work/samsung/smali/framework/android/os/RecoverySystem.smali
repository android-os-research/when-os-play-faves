.class public Landroid/os/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RecoverySystem$ProgressListener;,
        Landroid/os/RecoverySystem$ResumeOnRebootRebootErrorCode;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTION_EUICC_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.action.EUICC_FACTORY_RESET"

.field private static final blacklist ACTION_EUICC_REMOVE_INVISIBLE_SUBSCRIPTIONS:Ljava/lang/String; = "com.android.internal.action.EUICC_REMOVE_INVISIBLE_SUBSCRIPTIONS"

.field public static final greylist-max-o BLOCK_MAP_FILE:Ljava/io/File;

.field private static blacklist COMMAND_FILE:Ljava/io/File; = null

.field private static final greylist-max-o DEFAULT_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0x7530L

.field private static final blacklist DEFAULT_EUICC_REMOVING_INVISIBLE_PROFILES_TIMEOUT_MILLIS:J = 0xafc8L

.field private static final greylist-max-o DEFAULT_KEYSTORE:Ljava/io/File;

.field private static final blacklist LAST_CACHE_SUDDEN_RESET_LOG_PATH:Ljava/lang/String; = "/data/log/recovery_last_sudden_reset.log"

.field private static final blacklist LAST_INSTALL_PATH:Ljava/lang/String; = "last_install"

.field private static final greylist-max-o LAST_PREFIX:Ljava/lang/String; = "last_"

.field private static final blacklist LAST_RECOVERY_MODE:Ljava/lang/String; = "dev.lastrecoverymode"

.field private static final greylist-max-o LOG_FILE:Ljava/io/File;

.field private static final greylist-max-o LOG_FILE_MAX_LENGTH:I = 0x10000

.field private static final greylist-max-o MAX_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0xea60L

.field private static final blacklist MAX_EUICC_REMOVING_INVISIBLE_PROFILES_TIMEOUT_MILLIS:J = 0x15f90L

.field private static final greylist-max-o MIN_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0x1388L

.field private static final blacklist MIN_EUICC_REMOVING_INVISIBLE_PROFILES_TIMEOUT_MILLIS:J = 0x3a98L

.field private static final blacklist PACKAGE_NAME_EUICC_DATA_MANAGEMENT_CALLBACK:Ljava/lang/String; = "android"

.field private static final greylist-max-o PUBLISH_PROGRESS_INTERVAL_MS:J = 0x1f4L

.field private static final greylist-max-o RECOVERY_DIR:Ljava/io/File;

.field public static final blacklist RECOVERY_RESCUEPARTY_FILE:Ljava/io/File;

.field private static final blacklist RESCUEPARTY_LOG_MAX_LENGTH:I = 0x80000

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_INVALID_PACKAGE_NAME:I = 0x7d0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_LSKF_NOT_CAPTURED:I = 0xbb8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist RESUME_ON_REBOOT_REBOOT_ERROR_NONE:I = 0x0

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_PROVIDER_PREPARATION_FAILURE:I = 0x1388
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_SLOT_MISMATCH:I = 0xfa0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_UNSPECIFIED:I = 0x3e8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist SUDDEN_RESET_LAST_KMSG_NAME:Ljava/lang/String; = "recovery_sudden_reset_last_kmsg.log"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RecoverySystem"

.field private static final blacklist TMP_RECOVERY_LOG_PATH:Ljava/lang/String; = "/efs/recovery/tmp_recovery.log"

.field public static final greylist-max-o UNCRYPT_PACKAGE_FILE:Ljava/io/File;

.field public static final greylist-max-o UNCRYPT_STATUS_FILE:Ljava/io/File;

.field private static blacklist mShutdownIsInProgress:Ljava/lang/Boolean;

.field private static final blacklist mShutdownIsInProgressLock:Ljava/lang/Object;

.field private static final greylist-max-o sRequestLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mService:Landroid/os/IRecoverySystem;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 110
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 126
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    .line 127
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "log"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    .line 148
    new-instance v1, Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    .line 152
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/os/RecoverySystem;->mShutdownIsInProgressLock:Ljava/lang/Object;

    .line 153
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/os/RecoverySystem;->mShutdownIsInProgress:Ljava/lang/Boolean;

    .line 166
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "rescueparty_log"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Landroid/os/RecoverySystem;->RECOVERY_RESCUEPARTY_FILE:Ljava/io/File;

    .line 177
    new-instance v1, Ljava/io/File;

    const-string v2, "block.map"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    .line 185
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "uncrypt_file"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 193
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "uncrypt_status"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 1929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1930
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    .line 1931
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/IRecoverySystem;)V
    .registers 2
    .param p1, "service"    # Landroid/os/IRecoverySystem;

    .line 1936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1937
    iput-object p1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    .line 1938
    return-void
.end method

.method private blacklist allocateSpaceForUpdate(Ljava/io/File;)Z
    .registers 4
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1819
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IRecoverySystem;->allocateSpaceForUpdate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static varargs blacklist bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1556
    sget-object v0, Landroid/os/RecoverySystem;->mShutdownIsInProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1557
    :try_start_3
    sget-object v1, Landroid/os/RecoverySystem;->mShutdownIsInProgress:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    .line 1558
    :cond_d
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/os/RecoverySystem;->mShutdownIsInProgress:Ljava/lang/Boolean;

    .line 1559
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1c1

    .line 1560
    const-string v0, "RecoverySystem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@[RecoverySystem] bootCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    sget-object v1, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1564
    :try_start_34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1565
    .local v0, "stackTraceElements":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1566
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "!@[RecoverySystem] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_49
    if-ge v5, v3, :cond_6b

    aget-object v6, v0, v5

    .line 1568
    .local v6, "st":Ljava/lang/StackTraceElement;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    nop

    .end local v6    # "st":Ljava/lang/StackTraceElement;
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 1570
    :cond_6b
    const-string v3, "RecoverySystem"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    sget-object v3, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1572
    sget-object v3, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1573
    const/4 v3, 0x0

    .line 1574
    .local v3, "recovery_cause":Ljava/lang/String;
    sget-object v5, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1576
    const/4 v5, 0x3

    .line 1579
    .local v5, "retryCount":I
    :cond_85
    new-instance v6, Ljava/io/RandomAccessFile;

    sget-object v7, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    const-string/jumbo v8, "rwd"

    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_34 .. :try_end_8f} :catchall_1be

    .line 1581
    .local v6, "command":Ljava/io/RandomAccessFile;
    :try_start_8f
    array-length v7, p1

    move v8, v4

    :goto_91
    if-ge v8, v7, :cond_b3

    aget-object v9, p1, v8

    .line 1582
    .local v9, "arg":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b0

    .line 1583
    invoke-virtual {v6, v9}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 1584
    const-string v10, "\n"

    invoke-virtual {v6, v10}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 1585
    const-string v10, "--reason="

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b0

    .line 1586
    invoke-static {v9}, Landroid/os/RecoverySystem;->getRecoveryReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 1581
    .end local v9    # "arg":Ljava/lang/String;
    :cond_b0
    add-int/lit8 v8, v8, 0x1

    goto :goto_91

    .line 1591
    :cond_b3
    const-string v7, "RecoverySystem"

    const-string v8, "!@[RecoverySystem] bootCommand: before fsync syscall!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 1593
    const-string v7, "RecoverySystem"

    const-string v8, "!@[RecoverySystem] bootCommand: after fsync syscall!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catchall {:try_start_8f .. :try_end_c8} :catchall_1b8

    .line 1595
    :try_start_c8
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 1596
    nop

    .line 1597
    add-int/lit8 v5, v5, -0x1

    .line 1598
    sget-object v7, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_de

    .line 1599
    const-string v4, "RecoverySystem"

    const-string v7, "COMMAND_FILE is already exist!!"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    goto :goto_fa

    .line 1602
    :cond_de
    const-string v7, "RecoverySystem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retryCount : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    nop

    .end local v6    # "command":Ljava/io/RandomAccessFile;
    if-nez v5, :cond_85

    .line 1605
    :goto_fa
    sget-object v4, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1a9

    .line 1610
    const-string/jumbo v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1611
    .local v4, "pm":Landroid/os/PowerManager;
    const-string/jumbo v6, "persist.sys.reboot.reason"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1612
    .local v6, "reason":Ljava/lang/String;
    const-string/jumbo v7, "nvrecovery"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_194

    .line 1615
    const-string v7, "download"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_187

    .line 1619
    const-string v7, "RecoverySystem"

    const-string v8, "calling pm.reboot"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    if-nez v3, :cond_12f

    const-string v7, "bootCommand()"

    move-object v3, v7

    .line 1623
    :cond_12f
    const-string v7, "RecoverySystem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!@[RecoverySystem] bootCommand: [reset tracking] write to recovery_cause : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_147
    .catchall {:try_start_c8 .. :try_end_147} :catchall_1be

    .line 1624
    :try_start_147
    new-instance v7, Ljava/io/FileOutputStream;

    const-string v8, "/sys/class/sec/sec_debug/recovery_cause"

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14e} :catch_178
    .catchall {:try_start_147 .. :try_end_14e} :catchall_1be

    .line 1625
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_14e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RecoverySystem"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1626
    .local v8, "content":Ljava/lang/String;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_16a
    .catchall {:try_start_14e .. :try_end_16a} :catchall_16e

    .line 1627
    .end local v8    # "content":Ljava/lang/String;
    :try_start_16a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_16d
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_16d} :catch_178
    .catchall {:try_start_16a .. :try_end_16d} :catchall_1be

    .line 1629
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_180

    .line 1624
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catchall_16e
    move-exception v8

    :try_start_16f
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_172
    .catchall {:try_start_16f .. :try_end_172} :catchall_173

    goto :goto_177

    :catchall_173
    move-exception v9

    :try_start_174
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "recovery_cause":Ljava/lang/String;
    .end local v4    # "pm":Landroid/os/PowerManager;
    .end local v5    # "retryCount":I
    .end local v6    # "reason":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "args":[Ljava/lang/String;
    :goto_177
    throw v8
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_178} :catch_178
    .catchall {:try_start_174 .. :try_end_178} :catchall_1be

    .line 1627
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "recovery_cause":Ljava/lang/String;
    .restart local v4    # "pm":Landroid/os/PowerManager;
    .restart local v5    # "retryCount":I
    .restart local v6    # "reason":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "args":[Ljava/lang/String;
    :catch_178
    move-exception v7

    .line 1628
    .local v7, "e":Ljava/io/IOException;
    :try_start_179
    const-string v8, "RecoverySystem"

    const-string v9, "IOException when writing /sys/class/sec/sec_debug/recovery_cause:"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1632
    .end local v7    # "e":Ljava/io/IOException;
    :goto_180
    const-string/jumbo v7, "recovery"

    invoke-virtual {v4, v7}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_1a1

    .line 1616
    :cond_187
    const-string v7, "RecoverySystem"

    const-string v8, "FactoryTest ->download "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    const-string v7, "download"

    invoke-virtual {v4, v7}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_1a1

    .line 1613
    :cond_194
    const-string v7, "RecoverySystem"

    const-string v8, "FactoryTest ->nvrecovery "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    const-string/jumbo v7, "nvrecovery"

    invoke-virtual {v4, v7}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1634
    :goto_1a1
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Reboot failed (no permissions?)"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "args":[Ljava/lang/String;
    throw v7

    .line 1606
    .end local v4    # "pm":Landroid/os/PowerManager;
    .end local v6    # "reason":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "args":[Ljava/lang/String;
    :cond_1a9
    const-string v4, "RecoverySystem"

    const-string v6, "!@[RecoverySystem] bootCommand: command file absent, throw exception"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Reboot failed (unable to create command file)"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "args":[Ljava/lang/String;
    throw v4

    .line 1595
    .local v6, "command":Ljava/io/RandomAccessFile;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "args":[Ljava/lang/String;
    :catchall_1b8
    move-exception v4

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 1596
    nop

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "args":[Ljava/lang/String;
    throw v4

    .line 1635
    .end local v0    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "recovery_cause":Ljava/lang/String;
    .end local v5    # "retryCount":I
    .end local v6    # "command":Ljava/io/RandomAccessFile;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "args":[Ljava/lang/String;
    :catchall_1be
    move-exception v0

    monitor-exit v1
    :try_end_1c0
    .catchall {:try_start_179 .. :try_end_1c0} :catchall_1be

    throw v0

    .line 1559
    :catchall_1c1
    move-exception v1

    :try_start_1c2
    monitor-exit v0
    :try_end_1c3
    .catchall {:try_start_1c2 .. :try_end_1c3} :catchall_1c1

    throw v1
.end method

.method public static whitelist cancelScheduledUpdate(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 988
    const-string/jumbo v0, "recovery"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 989
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v0}, Landroid/os/RecoverySystem;->clearBcb()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 992
    return-void

    .line 990
    :cond_10
    new-instance v1, Ljava/io/IOException;

    const-string v2, "cancel scheduled update failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o clearBcb()Z
    .registers 2

    .line 1827
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0}, Landroid/os/IRecoverySystem;->clearBcb()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1828
    :catch_7
    move-exception v0

    .line 1830
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist clearLskf(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1867
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->clearLskf(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1868
    :catch_7
    move-exception v0

    .line 1869
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not clear LSKF"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static whitelist clearPrepareForUnattendedUpdate(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 862
    const-string/jumbo v0, "recovery"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 863
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RecoverySystem;->clearLskf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 866
    return-void

    .line 864
    :cond_14
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not reset unattended update state"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 13
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .line 1945
    const-string v0, "copyFile: Error close FileChannel "

    const-string v1, "RecoverySystem"

    const/4 v2, 0x0

    .line 1946
    .local v2, "inputChannel":Ljava/nio/channels/FileChannel;
    const/4 v3, 0x0

    .line 1948
    .local v3, "outputChannel":Ljava/nio/channels/FileChannel;
    :try_start_6
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    move-object v2, v4

    .line 1949
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    move-object v3, v4

    .line 1950
    const-wide/16 v7, 0x0

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    move-object v5, v3

    move-object v6, v2

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 1951
    const/16 v4, 0x1a0

    .line 1952
    .local v4, "mode":I
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 1953
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3e8

    const/16 v7, 0x3ef

    invoke-static {v5, v6, v7}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_39} :catch_5f
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_39} :catch_4e
    .catchall {:try_start_6 .. :try_end_39} :catchall_4c

    .line 1960
    .end local v4    # "mode":I
    if-eqz v2, :cond_41

    :try_start_3b
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_41

    .line 1962
    :catch_3f
    move-exception v4

    goto :goto_47

    .line 1961
    :cond_41
    :goto_41
    if-eqz v3, :cond_4b

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_46} :catch_3f

    goto :goto_4b

    .line 1963
    .local v4, "e":Ljava/io/IOException;
    :goto_47
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1965
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_70

    .line 1964
    :cond_4b
    :goto_4b
    goto :goto_70

    .line 1959
    :catchall_4c
    move-exception v4

    goto :goto_91

    .line 1956
    :catch_4e
    move-exception v4

    .line 1957
    .local v4, "e":Landroid/system/ErrnoException;
    :try_start_4f
    const-string v5, "copyFile: Error chmod recovery logs"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_4c

    .line 1960
    .end local v4    # "e":Landroid/system/ErrnoException;
    if-eqz v2, :cond_59

    :try_start_56
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1961
    :cond_59
    if-eqz v3, :cond_4b

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5e} :catch_3f

    goto :goto_4b

    .line 1954
    :catch_5f
    move-exception v4

    .line 1955
    .local v4, "e":Ljava/io/IOException;
    :try_start_60
    const-string v5, "copyFile: Error copy recovery logs"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_4c

    .line 1960
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_6a

    :try_start_67
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1961
    :cond_6a
    if-eqz v3, :cond_4b

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6f} :catch_3f

    goto :goto_4b

    .line 1966
    :goto_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    return-void

    .line 1960
    :goto_91
    if-eqz v2, :cond_99

    :try_start_93
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_99

    .line 1962
    :catch_97
    move-exception v5

    goto :goto_9f

    .line 1961
    :cond_99
    :goto_99
    if-eqz v3, :cond_a3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_9e} :catch_97

    goto :goto_a3

    .line 1963
    .local v5, "e":Ljava/io/IOException;
    :goto_9f
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a4

    .line 1964
    .end local v5    # "e":Ljava/io/IOException;
    :cond_a3
    :goto_a3
    nop

    .line 1965
    :goto_a4
    throw v4
.end method

.method private static blacklist getRecoveryReason(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "arg"    # Ljava/lang/String;

    .line 1511
    const/4 v0, 0x0

    .line 1512
    .local v0, "reason":Ljava/lang/String;
    const-string v1, "="

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1514
    .local v1, "idx":I
    add-int/lit8 v2, v1, 0x1

    :try_start_9
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_d
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_9 .. :try_end_d} :catch_f

    move-object v0, v2

    .line 1517
    goto :goto_17

    .line 1515
    :catch_f
    move-exception v2

    .line 1516
    .local v2, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v3, "RecoverySystem"

    const-string v4, "StringIndexOutOfBoundsException when splitting recovery cause:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1518
    .end local v2    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :goto_17
    return-object v0
.end method

.method private static greylist-max-o getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;
    .registers 8
    .param p0, "keystore"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 281
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 282
    .local v0, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    if-nez p0, :cond_9

    .line 283
    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 285
    :cond_9
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 287
    .local v1, "zip":Ljava/util/zip/ZipFile;
    :try_start_e
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 288
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 289
    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_18
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 290
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 291
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_41

    .line 293
    .local v5, "is":Ljava/io/InputStream;
    :try_start_28
    invoke-virtual {v2, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_36

    .line 295
    :try_start_31
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 296
    nop

    .line 297
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "is":Ljava/io/InputStream;
    goto :goto_18

    .line 295
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_36
    move-exception v6

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 296
    nop

    .end local v0    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v1    # "zip":Ljava/util/zip/ZipFile;
    .end local p0    # "keystore":Ljava/io/File;
    throw v6
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_41

    .line 299
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v0    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v1    # "zip":Ljava/util/zip/ZipFile;
    .restart local p0    # "keystore":Ljava/io/File;
    :cond_3c
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 300
    nop

    .line 301
    return-object v0

    .line 299
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 300
    throw v2
.end method

.method public static greylist-max-o handleAftermath(Landroid/content/Context;)Ljava/lang/String;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;

    .line 1647
    sget-object v0, Landroid/os/RecoverySystem;->mShutdownIsInProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1648
    :try_start_3
    sget-object v1, Landroid/os/RecoverySystem;->mShutdownIsInProgress:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 1649
    const-string v1, "RecoverySystem"

    const-string v3, "!@[RecoverySystem] handleAftermath: disabled, as shutdown in progress"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    monitor-exit v0

    return-object v2

    .line 1652
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_281

    .line 1653
    const-string v0, "RecoverySystem"

    const-string v1, "!@[RecoverySystem] handleAftermath"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const/4 v0, 0x0

    .line 1659
    .local v0, "log":Ljava/lang/String;
    :try_start_1e
    sget-object v1, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    const/high16 v3, -0x10000

    const-string v4, "...\n"

    invoke-static {v1, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_28} :catch_33
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_28} :catch_2a

    move-object v0, v1

    .line 1664
    :goto_29
    goto :goto_3c

    .line 1662
    :catch_2a
    move-exception v1

    .line 1663
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "RecoverySystem"

    const-string v4, "Error reading recovery log"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 1660
    .end local v1    # "e":Ljava/io/IOException;
    :catch_33
    move-exception v1

    .line 1661
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v3, "RecoverySystem"

    const-string v4, "No recovery log file"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    goto :goto_29

    .line 1667
    :goto_3c
    const/4 v1, 0x0

    .line 1668
    .local v1, "reFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 1671
    .local v3, "reFis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    :try_start_3f
    new-instance v5, Ljava/io/File;

    const-string v6, "/cache/recovery/last_recovery_mode"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 1672
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 1673
    const/16 v5, 0x15

    new-array v5, v5, [B

    .line 1674
    .local v5, "mode":[B
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 1675
    .local v6, "bytes":I
    if-lez v6, :cond_7c

    .line 1676
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v5, v4, v6, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1677
    .local v7, "lastRecoveryMode":Ljava/lang/String;
    const-string v8, "RecoverySystem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "last_recovery_mode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    const-string v8, "dev.lastrecoverymode"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    .end local v7    # "lastRecoveryMode":Ljava/lang/String;
    :cond_7c
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_89

    .line 1681
    const-string v7, "RecoverySystem"

    const-string v8, "Failed to delete /cache/recovery/last_recovery_mode"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_89} :catch_a7
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_89} :catch_99
    .catchall {:try_start_3f .. :try_end_89} :catchall_96

    .line 1689
    .end local v5    # "mode":[B
    .end local v6    # "bytes":I
    :cond_89
    :try_start_89
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    .line 1692
    :cond_8c
    :goto_8c
    goto :goto_b5

    .line 1690
    :catch_8d
    move-exception v5

    .line 1691
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "RecoverySystem"

    const-string v7, "IOException when close last_recovery_mode file:"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1693
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_b5

    .line 1688
    :catchall_96
    move-exception v2

    goto/16 :goto_270

    .line 1685
    :catch_99
    move-exception v5

    .line 1686
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_9a
    const-string v6, "RecoverySystem"

    const-string v7, "IOException when read /cache/recovery/last_recovery_mode:"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a1
    .catchall {:try_start_9a .. :try_end_a1} :catchall_96

    .line 1689
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_8c

    :try_start_a3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_8d

    goto :goto_8c

    .line 1683
    :catch_a7
    move-exception v5

    .line 1684
    .local v5, "e":Ljava/io/FileNotFoundException;
    :try_start_a8
    const-string v6, "RecoverySystem"

    const-string v7, "FileNotFoundException when open /cache/recovery/last_recovery_mode:"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_af
    .catchall {:try_start_a8 .. :try_end_af} :catchall_96

    .line 1689
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_8c

    :try_start_b1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_8d

    goto :goto_8c

    .line 1697
    :goto_b5
    new-instance v5, Ljava/io/File;

    sget-object v6, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v7, "last_history"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    const-string v8, "/data/log/recovery_history.log"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v7}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1698
    new-instance v5, Ljava/io/File;

    const-string/jumbo v7, "last_extra_history"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    const-string v8, "/data/log/recovery_extra_history.log"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v7}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1699
    new-instance v5, Ljava/io/File;

    const-string/jumbo v7, "last_recovery"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/log/recovery.log"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1700
    sget-object v5, Landroid/os/RecoverySystem;->RECOVERY_RESCUEPARTY_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_139

    .line 1701
    :try_start_f5
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string/jumbo v7, "rw"

    invoke-direct {v6, v5, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_fd} :catch_11d

    move-object v5, v6

    .line 1702
    .local v5, "raf":Ljava/io/RandomAccessFile;
    :try_start_fe
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x80000

    cmp-long v6, v6, v8

    if-lez v6, :cond_10c

    .line 1703
    invoke-virtual {v5, v8, v9}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 1705
    :cond_10c
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10f
    .catchall {:try_start_fe .. :try_end_10f} :catchall_113

    .line 1706
    :try_start_10f
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_112} :catch_11d

    .line 1708
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_125

    .line 1701
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catchall_113
    move-exception v6

    :try_start_114
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_117
    .catchall {:try_start_114 .. :try_end_117} :catchall_118

    goto :goto_11c

    :catchall_118
    move-exception v7

    :try_start_119
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "log":Ljava/lang/String;
    .end local v1    # "reFile":Ljava/io/File;
    .end local v3    # "reFis":Ljava/io/FileInputStream;
    .end local p0    # "context":Landroid/content/Context;
    :goto_11c
    throw v6
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_11d} :catch_11d

    .line 1706
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "log":Ljava/lang/String;
    .restart local v1    # "reFile":Ljava/io/File;
    .restart local v3    # "reFis":Ljava/io/FileInputStream;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_11d
    move-exception v5

    .line 1707
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "RecoverySystem"

    const-string v7, "IOException with rescueparty_log :"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1709
    .end local v5    # "e":Ljava/io/IOException;
    :goto_125
    new-instance v5, Ljava/io/File;

    sget-object v6, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v7, "rescueparty_log"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/log/rescueparty_log"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1714
    :cond_139
    sget-object v5, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    .line 1715
    .local v5, "reservePackage":Z
    if-nez v5, :cond_19b

    sget-object v6, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_19b

    .line 1716
    const/4 v7, 0x0

    .line 1718
    .local v7, "filename":Ljava/lang/String;
    :try_start_14a
    invoke-static {v6, v4, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_14e} :catch_150

    move-object v7, v2

    .line 1721
    goto :goto_158

    .line 1719
    :catch_150
    move-exception v2

    .line 1720
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "RecoverySystem"

    const-string v6, "Error reading uncrypt file"

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1725
    .end local v2    # "e":Ljava/io/IOException;
    :goto_158
    if-eqz v7, :cond_19b

    const-string v2, "/data"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 1726
    sget-object v2, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_183

    .line 1727
    const-string v2, "RecoverySystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19b

    .line 1729
    :cond_183
    const-string v2, "RecoverySystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t delete: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    .end local v7    # "filename":Ljava/lang/String;
    :cond_19b
    :goto_19b
    const-string v2, "RecoverySystem"

    const-string v4, "copy sudden_reset_log to /data/log/"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    new-instance v2, Ljava/io/File;

    sget-object v4, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v6, "recovery_sudden_reset_last_kmsg.log"

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1737
    .local v2, "tmpSuddenResetLastKmsg":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1bf

    .line 1738
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/log"

    const-string/jumbo v8, "recovery_sudden_reset_last_kmsg.log"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v6}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1741
    :cond_1bf
    new-instance v6, Ljava/io/File;

    const-string v7, "/efs/recovery/tmp_recovery.log"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1742
    .local v6, "tmpRecoveryLogFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1ff

    .line 1743
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/log/recovery_last_sudden_reset.log"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1744
    new-instance v7, Ljava/io/File;

    const-string v8, "/proc/last_kmsg"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/log"

    const-string/jumbo v10, "recovery_sudden_reset_last_kmsg.log"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v8}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1745
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_1f8

    .line 1746
    const-string v7, "RecoverySystem"

    const-string v8, "Deleted: /efs/recovery/tmp_recovery.log"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ff

    .line 1748
    :cond_1f8
    const-string v7, "RecoverySystem"

    const-string v8, "Can\'t delete: /efs/recovery/tmp_recovery.log"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    :cond_1ff
    :goto_1ff
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 1760
    .local v4, "names":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_204
    if-eqz v4, :cond_26f

    array-length v8, v4

    if-ge v7, v8, :cond_26f

    .line 1762
    aget-object v8, v4, v7

    const-string/jumbo v9, "last_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_26c

    aget-object v8, v4, v7

    const-string/jumbo v9, "last_install"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_220

    goto :goto_26c

    .line 1763
    :cond_220
    if-eqz v5, :cond_231

    aget-object v8, v4, v7

    sget-object v9, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_231

    goto :goto_26c

    .line 1764
    :cond_231
    if-eqz v5, :cond_242

    aget-object v8, v4, v7

    sget-object v9, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_242

    goto :goto_26c

    .line 1765
    :cond_242
    aget-object v8, v4, v7

    sget-object v9, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_251

    goto :goto_26c

    .line 1766
    :cond_251
    aget-object v8, v4, v7

    sget-object v9, Landroid/os/RecoverySystem;->RECOVERY_RESCUEPARTY_FILE:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_260

    goto :goto_26c

    .line 1768
    :cond_260
    new-instance v8, Ljava/io/File;

    sget-object v9, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    aget-object v10, v4, v7

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    .line 1760
    :cond_26c
    :goto_26c
    add-int/lit8 v7, v7, 0x1

    goto :goto_204

    .line 1771
    .end local v7    # "i":I
    :cond_26f
    return-object v0

    .line 1689
    .end local v2    # "tmpSuddenResetLastKmsg":Ljava/io/File;
    .end local v4    # "names":[Ljava/lang/String;
    .end local v5    # "reservePackage":Z
    .end local v6    # "tmpRecoveryLogFile":Ljava/io/File;
    :goto_270
    if-eqz v3, :cond_27f

    :try_start_272
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_275
    .catch Ljava/io/IOException; {:try_start_272 .. :try_end_275} :catch_276

    goto :goto_27f

    .line 1690
    :catch_276
    move-exception v4

    .line 1691
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "RecoverySystem"

    const-string v6, "IOException when close last_recovery_mode file:"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_280

    .line 1692
    .end local v4    # "e":Ljava/io/IOException;
    :cond_27f
    :goto_27f
    nop

    .line 1693
    :goto_280
    throw v2

    .line 1652
    .end local v0    # "log":Ljava/lang/String;
    .end local v1    # "reFile":Ljava/io/File;
    .end local v3    # "reFis":Ljava/io/FileInputStream;
    :catchall_281
    move-exception v1

    :try_start_282
    monitor-exit v0
    :try_end_283
    .catchall {:try_start_282 .. :try_end_283} :catchall_281

    throw v1
.end method

.method public static whitelist installPackage(Landroid/content/Context;Ljava/io/File;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;Z)V

    .line 642
    return-void
.end method

.method public static whitelist installPackage(Landroid/content/Context;Ljava/io/File;Z)V
    .registers 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "processed"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 663
    move-object/from16 v1, p0

    sget-object v2, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    monitor-enter v2

    .line 664
    :try_start_5
    sget-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 666
    sget-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 668
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, "filename":Ljava/lang/String;
    const-string v4, "RecoverySystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!! REBOOTING TO INSTALL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " !!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const-string v4, "_s.zip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 673
    .local v4, "securityUpdate":Z
    const-string v5, "/data/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 674
    .local v5, "fileInData":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--update_org_package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 679
    .local v6, "orgFilenameArg":Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_c6

    .line 680
    if-eqz p2, :cond_74

    .line 681
    sget-object v0, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_65

    goto :goto_bc

    .line 682
    :cond_65
    const-string v0, "RecoverySystem"

    const-string v7, "Package claimed to have been processed but failed to find the block map file."

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    new-instance v0, Ljava/io/IOException;

    const-string v7, "Failed to find block map file"

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    throw v0

    .line 687
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :cond_74
    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_79
    .catchall {:try_start_5 .. :try_end_79} :catchall_2ac

    .line 689
    .local v9, "uncryptFile":Ljava/io/FileWriter;
    :try_start_79
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_79 .. :try_end_8f} :catchall_c0

    .line 691
    :try_start_8f
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V

    .line 692
    nop

    .line 695
    invoke-virtual {v0, v8, v7}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v10

    if-eqz v10, :cond_9f

    .line 696
    invoke-virtual {v0, v8, v7}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v10

    if-nez v10, :cond_b7

    .line 697
    :cond_9f
    const-string v10, "RecoverySystem"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error setting permission for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_b7
    sget-object v0, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 705
    .end local v9    # "uncryptFile":Ljava/io/FileWriter;
    :goto_bc
    const-string v0, "@/cache/recovery/block.map"

    move-object v3, v0

    goto :goto_c6

    .line 691
    .restart local v9    # "uncryptFile":Ljava/io/FileWriter;
    :catchall_c0
    move-exception v0

    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V

    .line 692
    nop

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    throw v0

    .line 708
    .end local v9    # "uncryptFile":Ljava/io/FileWriter;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :cond_c6
    :goto_c6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--update_package="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 709
    .local v9, "filenameArg":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--locale="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 710
    .local v10, "localeArg":Ljava/lang/String;
    const-string v0, "--security\n"

    move-object v11, v0

    .line 712
    .local v11, "securityArg":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "command":Ljava/lang/String;
    if-eqz v4, :cond_12c

    .line 714
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "--security\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    .line 717
    :cond_12c
    const-string v12, "com.ws.dm"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14d

    .line 718
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "--carry_out=att_fota\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    goto :goto_182

    .line 719
    :cond_14d
    const-string v12, "com.samsung.sdm.sdmviewer"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16e

    .line 720
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "--carry_out=vzw_fota\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    goto :goto_182

    .line 722
    :cond_16e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "--carry_out=open_fota\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    .line 725
    :goto_182
    if-eqz v5, :cond_197

    .line 726
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    goto :goto_198

    .line 725
    :cond_197
    move-object v12, v0

    .line 729
    .end local v0    # "command":Ljava/lang/String;
    .local v12, "command":Ljava/lang/String;
    :goto_198
    sget-object v0, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_19d
    .catchall {:try_start_8f .. :try_end_19d} :catchall_2ac

    .line 730
    const/4 v0, 0x3

    move v13, v0

    .line 732
    .local v13, "retry_count":I
    :cond_19f
    :try_start_19f
    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v14, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    const-string/jumbo v15, "rwd"

    invoke-direct {v0, v14, v15}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1a9} :catch_29c
    .catchall {:try_start_19f .. :try_end_1a9} :catchall_2ac

    move-object v14, v0

    .line 733
    .local v14, "commandFile":Ljava/io/RandomAccessFile;
    :try_start_1aa
    invoke-virtual {v14, v12}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 734
    const-string v0, "RecoverySystem"

    const-string v15, "!@RecoverySystem before fsync syscall!!"

    invoke-static {v0, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 736
    const-string v0, "RecoverySystem"

    const-string v15, "!@RecoverySystem after fsync syscall!!"

    invoke-static {v0, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c2
    .catchall {:try_start_1aa .. :try_end_1c2} :catchall_290

    .line 737
    :try_start_1c2
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c5
    .catch Ljava/io/IOException; {:try_start_1c2 .. :try_end_1c5} :catch_29c
    .catchall {:try_start_1c2 .. :try_end_1c5} :catchall_2ac

    .line 740
    .end local v14    # "commandFile":Ljava/io/RandomAccessFile;
    nop

    .line 741
    add-int/lit8 v13, v13, -0x1

    .line 742
    :try_start_1c8
    sget-object v0, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d8

    .line 743
    const-string v0, "RecoverySystem"

    const-string v14, "COMMAND_FILE is already exist!!"

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    goto :goto_1f2

    .line 746
    :cond_1d8
    const-string v0, "RecoverySystem"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Retry_count : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    if-gtz v13, :cond_19f

    .line 749
    :goto_1f2
    sget-object v0, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-ne v0, v8, :cond_281

    .line 772
    const-string v0, "RecoverySystem"

    const-string v8, "!@[reset tracking] installPackage write to recovery_cause"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_201
    .catchall {:try_start_1c8 .. :try_end_201} :catchall_2ac

    .line 773
    :try_start_201
    new-instance v0, Ljava/io/FileWriter;

    const-string v8, "/sys/class/sec/sec_debug/recovery_cause"

    invoke-direct {v0, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_208
    .catch Ljava/io/IOException; {:try_start_201 .. :try_end_208} :catch_22f
    .catchall {:try_start_201 .. :try_end_208} :catchall_2ac

    move-object v8, v0

    .line 774
    .local v8, "rebootDescr":Ljava/io/FileWriter;
    :try_start_209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RecoverySystem installPackage: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_21f
    .catchall {:try_start_209 .. :try_end_21f} :catchall_223

    .line 775
    :try_start_21f
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_222
    .catch Ljava/io/IOException; {:try_start_21f .. :try_end_222} :catch_22f
    .catchall {:try_start_21f .. :try_end_222} :catchall_2ac

    .line 778
    .end local v8    # "rebootDescr":Ljava/io/FileWriter;
    goto :goto_237

    .line 773
    .restart local v8    # "rebootDescr":Ljava/io/FileWriter;
    :catchall_223
    move-exception v0

    move-object v14, v0

    :try_start_225
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_228
    .catchall {:try_start_225 .. :try_end_228} :catchall_229

    goto :goto_22e

    :catchall_229
    move-exception v0

    move-object v15, v0

    :try_start_22b
    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "securityUpdate":Z
    .end local v5    # "fileInData":Z
    .end local v6    # "orgFilenameArg":Ljava/lang/String;
    .end local v9    # "filenameArg":Ljava/lang/String;
    .end local v10    # "localeArg":Ljava/lang/String;
    .end local v11    # "securityArg":Ljava/lang/String;
    .end local v12    # "command":Ljava/lang/String;
    .end local v13    # "retry_count":I
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    :goto_22e
    throw v14
    :try_end_22f
    .catch Ljava/io/IOException; {:try_start_22b .. :try_end_22f} :catch_22f
    .catchall {:try_start_22b .. :try_end_22f} :catchall_2ac

    .line 775
    .end local v8    # "rebootDescr":Ljava/io/FileWriter;
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v4    # "securityUpdate":Z
    .restart local v5    # "fileInData":Z
    .restart local v6    # "orgFilenameArg":Ljava/lang/String;
    .restart local v9    # "filenameArg":Ljava/lang/String;
    .restart local v10    # "localeArg":Ljava/lang/String;
    .restart local v11    # "securityArg":Ljava/lang/String;
    .restart local v12    # "command":Ljava/lang/String;
    .restart local v13    # "retry_count":I
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :catch_22f
    move-exception v0

    .line 776
    .local v0, "e":Ljava/io/IOException;
    :try_start_230
    const-string v8, "RecoverySystem"

    const-string v14, "IOException when writing /sys/class/sec/sec_debug/recovery_cause:"

    invoke-static {v8, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    .end local v0    # "e":Ljava/io/IOException;
    :goto_237
    const-string/jumbo v0, "power"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 783
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v8, "recovery-update"

    .line 786
    .local v8, "reason":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.software.leanback"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_276

    .line 787
    const-class v14, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/display/DisplayManager;

    .line 788
    .local v14, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v14, v7}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getState()I

    move-result v7

    const/4 v15, 0x2

    if-eq v7, v15, :cond_276

    .line 789
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, ",quiescent"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .line 792
    .end local v14    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_276
    invoke-virtual {v0, v8}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 794
    new-instance v7, Ljava/io/IOException;

    const-string v14, "Reboot failed (no permissions?)"

    invoke-direct {v7, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    throw v7

    .line 750
    .end local v0    # "pm":Landroid/os/PowerManager;
    .end local v8    # "reason":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :cond_281
    const-string v0, "RecoverySystem"

    const-string v7, "!@ command file absent, throw exception"

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    new-instance v0, Ljava/io/IOException;

    const-string v7, "failed to create command file"

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    throw v0
    :try_end_290
    .catchall {:try_start_230 .. :try_end_290} :catchall_2ac

    .line 732
    .local v14, "commandFile":Ljava/io/RandomAccessFile;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :catchall_290
    move-exception v0

    move-object v7, v0

    :try_start_292
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_295
    .catchall {:try_start_292 .. :try_end_295} :catchall_296

    goto :goto_29b

    :catchall_296
    move-exception v0

    move-object v8, v0

    :try_start_298
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "securityUpdate":Z
    .end local v5    # "fileInData":Z
    .end local v6    # "orgFilenameArg":Ljava/lang/String;
    .end local v9    # "filenameArg":Ljava/lang/String;
    .end local v10    # "localeArg":Ljava/lang/String;
    .end local v11    # "securityArg":Ljava/lang/String;
    .end local v12    # "command":Ljava/lang/String;
    .end local v13    # "retry_count":I
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    :goto_29b
    throw v7
    :try_end_29c
    .catch Ljava/io/IOException; {:try_start_298 .. :try_end_29c} :catch_29c
    .catchall {:try_start_298 .. :try_end_29c} :catchall_2ac

    .line 737
    .end local v14    # "commandFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v4    # "securityUpdate":Z
    .restart local v5    # "fileInData":Z
    .restart local v6    # "orgFilenameArg":Ljava/lang/String;
    .restart local v9    # "filenameArg":Ljava/lang/String;
    .restart local v10    # "localeArg":Ljava/lang/String;
    .restart local v11    # "securityArg":Ljava/lang/String;
    .restart local v12    # "command":Ljava/lang/String;
    .restart local v13    # "retry_count":I
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :catch_29c
    move-exception v0

    .line 738
    .local v0, "e":Ljava/io/IOException;
    :try_start_29d
    const-string v7, "RecoverySystem"

    const-string v8, "IOException when writing command cause:"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 739
    new-instance v7, Ljava/io/IOException;

    const-string v8, "failed to create command file"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    throw v7

    .line 795
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "securityUpdate":Z
    .end local v5    # "fileInData":Z
    .end local v6    # "orgFilenameArg":Ljava/lang/String;
    .end local v9    # "filenameArg":Ljava/lang/String;
    .end local v10    # "localeArg":Ljava/lang/String;
    .end local v11    # "securityArg":Ljava/lang/String;
    .end local v12    # "command":Ljava/lang/String;
    .end local v13    # "retry_count":I
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :catchall_2ac
    move-exception v0

    monitor-exit v2
    :try_end_2ae
    .catchall {:try_start_29d .. :try_end_2ae} :catchall_2ac

    throw v0
.end method

.method private blacklist isLskfCaptured(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1882
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->isLskfCaptured(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1883
    :catch_7
    move-exception v0

    .line 1884
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not get LSKF capture state"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static whitelist isPreparedForUnattendedUpdate(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 910
    const-class v0, Landroid/os/RecoverySystem;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 911
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RecoverySystem;->isLskfCaptured(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static whitelist prepareForUnattendedUpdate(Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateToken"    # Ljava/lang/String;
    .param p2, "intentSender"    # Landroid/content/IntentSender;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 830
    if-eqz p1, :cond_37

    .line 834
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 835
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 840
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RecoverySystem;

    .line 841
    .local v1, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/os/RecoverySystem;->requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 844
    return-void

    .line 842
    :cond_26
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "preparation for update failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 836
    .end local v1    # "rs":Landroid/os/RecoverySystem;
    :cond_2f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to request LSKF because the device doesn\'t have a lock screen. "

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 831
    .end local v0    # "keyguardManager":Landroid/app/KeyguardManager;
    :cond_37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "updateToken == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 621
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V

    .line 622
    return-void
.end method

.method public static whitelist processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "filename":Ljava/lang/String;
    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 563
    return-void

    .line 566
    :cond_d
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RecoverySystem;

    .line 567
    .local v1, "rs":Landroid/os/RecoverySystem;
    const/4 v2, 0x0

    .line 568
    .local v2, "progressListener":Landroid/os/IRecoverySystemProgressListener;
    if-eqz p2, :cond_2c

    .line 570
    if-eqz p3, :cond_1d

    .line 571
    move-object v3, p3

    .local v3, "progressHandler":Landroid/os/Handler;
    goto :goto_26

    .line 573
    .end local v3    # "progressHandler":Landroid/os/Handler;
    :cond_1d
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 575
    .restart local v3    # "progressHandler":Landroid/os/Handler;
    :goto_26
    new-instance v4, Landroid/os/RecoverySystem$2;

    invoke-direct {v4, v3, p2}, Landroid/os/RecoverySystem$2;-><init>(Landroid/os/Handler;Landroid/os/RecoverySystem$ProgressListener;)V

    move-object v2, v4

    .line 597
    .end local v3    # "progressHandler":Landroid/os/Handler;
    :cond_2c
    invoke-direct {v1, v0, v2}, Landroid/os/RecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 600
    return-void

    .line 598
    :cond_33
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "process package failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static greylist-max-o readAndVerifyPackageCompatibilityEntry(Ljava/io/File;)Z
    .registers 5
    .param p0, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 513
    .local v0, "zip":Ljava/util/zip/ZipFile;
    :try_start_5
    const-string v1, "compatibility.zip"

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_1e

    .line 514
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_12

    .line 515
    const/4 v2, 0x1

    .line 519
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 515
    return v2

    .line 517
    :cond_12
    :try_start_12
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 518
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/os/RecoverySystem;->verifyPackageCompatibility(Ljava/io/InputStream;)Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    .line 519
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 518
    return v3

    .line 512
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catchall_1e
    move-exception v1

    :try_start_1f
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_27
    throw v1
.end method

.method public static whitelist rebootAndApply(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "slotSwitch"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 933
    const-class v0, Landroid/os/RecoverySystem;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 934
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Landroid/os/RecoverySystem;->rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    return v1
.end method

.method public static whitelist rebootAndApply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateToken"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 887
    if-eqz p1, :cond_1f

    .line 890
    const-string/jumbo v0, "recovery"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 892
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/os/RecoverySystem;->rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_16

    .line 896
    return-void

    .line 894
    :cond_16
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "system not prepared to apply update"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 888
    .end local v0    # "rs":Landroid/os/RecoverySystem;
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "updateToken == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist rebootPromptAndWipeAppData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1408
    const-string/jumbo v0, "rescueparty"

    const-string v1, "RecoverySystem"

    const/4 v2, 0x0

    .line 1409
    .local v2, "checkpointing":Z
    const/4 v3, 0x0

    .line 1410
    .local v3, "needReboot":Z
    const/4 v4, 0x0

    .line 1412
    .local v4, "vold":Landroid/os/IVold;
    :try_start_8
    const-string/jumbo v5, "vold"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IVold$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVold;

    move-result-object v5

    move-object v4, v5

    .line 1413
    if-eqz v4, :cond_1c

    .line 1414
    invoke-interface {v4}, Landroid/os/IVold;->needsCheckpoint()Z

    move-result v5

    move v2, v5

    goto :goto_21

    .line 1416
    :cond_1c
    const-string v5, "Failed to get vold"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_21} :catch_22

    .line 1420
    :goto_21
    goto :goto_28

    .line 1418
    :catch_22
    move-exception v5

    .line 1419
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "Failed to check for checkpointing"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_28
    const/4 v5, 0x0

    if-eqz v2, :cond_47

    .line 1426
    :try_start_2b
    invoke-interface {v4, v0, v5}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V

    .line 1427
    const-string v5, "Rescue Party requested wipe. Aborting update"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_33} :catch_34

    .line 1432
    goto :goto_46

    .line 1428
    :catch_34
    move-exception v5

    .line 1429
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v6, "Rescue Party requested wipe. Rebooting instead."

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1431
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1433
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_46
    return-void

    .line 1436
    :cond_47
    const/4 v0, 0x0

    .line 1437
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 1438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--reason="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1441
    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--locale="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1442
    .local v1, "localeArg":Ljava/lang/String;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v6, v5

    const/4 v5, 0x1

    const-string v7, "--prompt_and_wipe_app_data"

    aput-object v7, v6, v5

    const/4 v5, 0x2

    aput-object v0, v6, v5

    const/4 v5, 0x3

    aput-object v1, v6, v5

    invoke-static {p0, v6}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1443
    return-void
.end method

.method public static greylist-max-o rebootPromptAndWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1367
    const-string/jumbo v0, "rescueparty"

    const-string v1, "RecoverySystem"

    const/4 v2, 0x0

    .line 1368
    .local v2, "checkpointing":Z
    const/4 v3, 0x0

    .line 1369
    .local v3, "needReboot":Z
    const/4 v4, 0x0

    .line 1371
    .local v4, "vold":Landroid/os/IVold;
    :try_start_8
    const-string/jumbo v5, "vold"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IVold$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVold;

    move-result-object v5

    move-object v4, v5

    .line 1372
    if-eqz v4, :cond_1c

    .line 1373
    invoke-interface {v4}, Landroid/os/IVold;->needsCheckpoint()Z

    move-result v5

    move v2, v5

    goto :goto_21

    .line 1375
    :cond_1c
    const-string v5, "Failed to get vold"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_21} :catch_22

    .line 1379
    :goto_21
    goto :goto_28

    .line 1377
    :catch_22
    move-exception v5

    .line 1378
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "Failed to check for checkpointing"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_28
    const/4 v5, 0x0

    if-eqz v2, :cond_47

    .line 1385
    :try_start_2b
    invoke-interface {v4, v0, v5}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V

    .line 1386
    const-string v5, "Rescue Party requested wipe. Aborting update"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_33} :catch_34

    .line 1391
    goto :goto_46

    .line 1387
    :catch_34
    move-exception v5

    .line 1388
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v6, "Rescue Party requested wipe. Rebooting instead."

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1390
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1392
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_46
    return-void

    .line 1395
    :cond_47
    const/4 v0, 0x0

    .line 1396
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 1397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--reason="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1400
    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--locale="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1401
    .local v1, "localeArg":Ljava/lang/String;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v6, v5

    const/4 v5, 0x1

    const-string v7, "--prompt_and_wipe_data"

    aput-object v7, v6, v5

    const/4 v5, 0x2

    aput-object v0, v6, v5

    const/4 v5, 0x3

    aput-object v1, v6, v5

    invoke-static {p0, v6}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1402
    return-void
.end method

.method private greylist-max-o rebootRecoveryWithCommand(Ljava/lang/String;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/String;

    .line 1839
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1841
    goto :goto_7

    .line 1840
    :catch_6
    move-exception v0

    .line 1842
    :goto_7
    return-void
.end method

.method public static whitelist rebootWipeAb(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1483
    const/4 v0, 0x0

    .line 1484
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1488
    :cond_1e
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 1489
    .local v1, "filename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--wipe_package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1490
    .local v2, "filenameArg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--locale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1491
    .local v3, "localeArg":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "--wipe_ab"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-static {p0, v4}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1492
    return-void
.end method

.method public static whitelist rebootWipeCache(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1451
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 1452
    return-void
.end method

.method public static greylist-max-o rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1456
    const/4 v0, 0x0

    .line 1457
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1461
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1462
    .local v1, "localeArg":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "--wipe_cache"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static {p0, v2}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1463
    return-void
.end method

.method public static blacklist rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1502
    const/4 v0, 0x0

    .line 1503
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1507
    :cond_1e
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1508
    return-void
.end method

.method public static whitelist rebootWipeUserData(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1008
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 1010
    return-void
.end method

.method public static greylist-max-o rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1014
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 1016
    return-void
.end method

.method public static greylist-max-o rebootWipeUserData(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1021
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 1023
    return-void
.end method

.method public static greylist-max-o rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1028
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 1029
    return-void
.end method

.method public static greylist-max-o rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .param p4, "wipeEuicc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1056
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;)V

    .line 1057
    return-void
.end method

.method public static blacklist rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;)V
    .registers 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .param p4, "wipeEuicc"    # Z
    .param p5, "extraCmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1063
    move-object/from16 v10, p0

    const-string v0, "RecoverySystem"

    const-string/jumbo v1, "rebootWipeUserData++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    if-nez p3, :cond_33

    .line 1065
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 1066
    .local v1, "restrPol":Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v1, :cond_33

    invoke-virtual {v1}, Landroid/sec/enterprise/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_33

    .line 1067
    :cond_1d
    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1068
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 1067
    const-string v7, "RecoverySystem"

    const-string v8, "Wiping data (factory reset) is not allowed for this user."

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1070
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Wiping data is not allowed due to restriction policy."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1074
    .end local v1    # "restrPol":Landroid/sec/enterprise/RestrictionPolicy;
    :cond_33
    :goto_33
    const-string/jumbo v1, "user"

    invoke-virtual {v10, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/os/UserManager;

    .line 1075
    .local v11, "um":Landroid/os/UserManager;
    if-nez p3, :cond_5f

    const-string/jumbo v1, "no_factory_reset"

    invoke-virtual {v11, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_5f

    .line 1078
    :cond_49
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1079
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 1078
    const-string v6, "RecoverySystem"

    const-string v7, "Wiping data (factory reset) is not allowed for this user."

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1083
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Wiping data is not allowed for this user."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1085
    :cond_5f
    :goto_5f
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    move-object v12, v1

    .line 1088
    .local v12, "condition":Landroid/os/ConditionVariable;
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v13, v1

    .line 1089
    .local v13, "hthread":Landroid/os/HandlerThread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rebootWipeUserData: run handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    nop

    .line 1093
    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    .line 1094
    const-string/jumbo v1, "rebootWipeUserData: sendOrderedBroadcastAsUser"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v14, v1

    .line 1098
    .local v14, "intent":Landroid/content/Intent;
    const/high16 v1, 0x11000000

    invoke-virtual {v14, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1100
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v5, Landroid/os/RecoverySystem$3;

    invoke-direct {v5, v12}, Landroid/os/RecoverySystem$3;-><init>(Landroid/os/ConditionVariable;)V

    new-instance v6, Landroid/os/Handler;

    .line 1108
    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1100
    const-string v4, "android.permission.MASTER_CLEAR"

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1111
    const-string/jumbo v1, "rebootWipeUserData: wait intent to complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-virtual {v12}, Landroid/os/ConditionVariable;->block()V

    .line 1114
    const-string/jumbo v1, "rebootWipeUserData: continue.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    invoke-virtual {v13}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 1116
    const/4 v1, 0x0

    .line 1119
    .end local v13    # "hthread":Landroid/os/HandlerThread;
    .local v1, "hthread":Landroid/os/HandlerThread;
    const-class v2, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v10, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/euicc/EuiccManager;

    .line 1120
    .local v2, "euiccManager":Landroid/telephony/euicc/EuiccManager;
    if-eqz p4, :cond_d7

    .line 1121
    const-string v3, "android"

    invoke-static {v10, v3}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_da

    .line 1123
    :cond_d7
    invoke-static {v10, v2}, Landroid/os/RecoverySystem;->removeEuiccInvisibleSubs(Landroid/content/Context;Landroid/telephony/euicc/EuiccManager;)V

    .line 1126
    :goto_da
    const/4 v3, 0x0

    .line 1127
    .local v3, "shutdownArg":Ljava/lang/String;
    if-eqz p1, :cond_df

    .line 1128
    const-string v3, "--shutdown_after"

    .line 1131
    :cond_df
    const/4 v4, 0x0

    .line 1132
    .local v4, "reasonArg":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_126

    .line 1133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string/jumbo v7, "yyyy-MM-ddTHH:mm:ssZ"

    invoke-static {v7, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1134
    .local v5, "timeStamp":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_128

    .line 1132
    .end local v5    # "timeStamp":Ljava/lang/String;
    :cond_126
    move-object/from16 v8, p2

    .line 1137
    :goto_128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--locale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1141
    .local v5, "localeArg":Ljava/lang/String;
    const-string v6, ""

    .line 1142
    .local v6, "extraCmdArg":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_162

    .line 1143
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n--"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1150
    :cond_162
    const/4 v15, 0x5

    const/16 v16, 0x1

    const/16 v17, 0x1

    .line 1151
    :try_start_167
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    const-string v19, "RecoverySystem"

    const-string v20, "Starting user data Wipe "

    .line 1150
    invoke-static/range {v15 .. v20}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1157
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--wipe_data"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1158
    .local v7, "cmdStr":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "!@[RecoverySystem] rebootWipeUserData: COMMAND String with Extra Command: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v0, v9

    const/4 v9, 0x1

    aput-object v7, v0, v9

    const/4 v9, 0x2

    aput-object v4, v0, v9

    const/4 v9, 0x3

    aput-object v5, v0, v9

    invoke-static {v10, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_1ad
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_1ad} :catch_1af

    .line 1170
    .end local v7    # "cmdStr":Ljava/lang/String;
    nop

    .line 1172
    return-void

    .line 1163
    :catch_1af
    move-exception v0

    .line 1165
    .local v0, "ioE":Ljava/io/IOException;
    const/4 v15, 0x5

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 1166
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to wipe user data (factory reset). "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1167
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1165
    const-string v19, "RecoverySystem"

    invoke-static/range {v15 .. v20}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1169
    throw v0
.end method

.method private blacklist rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "slotSwitch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1895
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IRecoverySystem;->rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1896
    :catch_7
    move-exception v0

    .line 1897
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not reboot for update"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1909
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2}, Landroid/os/IRecoverySystem;->rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1910
    :catch_7
    move-exception v0

    .line 1911
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not reboot for update"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static greylist-max-o recursiveDelete(Ljava/io/File;)V
    .registers 5
    .param p0, "name"    # Ljava/io/File;

    .line 1778
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1779
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1780
    .local v0, "files":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-eqz v0, :cond_1d

    array-length v2, v0

    if-ge v1, v2, :cond_1d

    .line 1781
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1782
    .local v2, "f":Ljava/io/File;
    invoke-static {v2}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    .line 1780
    .end local v2    # "f":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1786
    .end local v0    # "files":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1d
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    const-string v1, "RecoverySystem"

    if-nez v0, :cond_3c

    .line 1787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t delete: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 1789
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    :goto_52
    return-void
.end method

.method private static blacklist removeEuiccInvisibleSubs(Landroid/content/Context;Landroid/telephony/euicc/EuiccManager;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "euiccManager"    # Landroid/telephony/euicc/EuiccManager;

    .line 1258
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1259
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "euicc_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "RecoverySystem"

    if-nez v1, :cond_15

    .line 1262
    const-string v1, "Skip removing eUICC invisible profiles as it is not provisioned."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    return-void

    .line 1264
    :cond_15
    if-eqz p1, :cond_69

    invoke-virtual {p1}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_69

    .line 1268
    :cond_1e
    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 1269
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 1270
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    nop

    .line 1271
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 1272
    .local v3, "availableSubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_63

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_34

    goto :goto_63

    .line 1276
    :cond_34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1277
    .local v2, "invisibleSubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 1278
    .local v5, "sub":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v6

    if-eqz v6, :cond_5e

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 1279
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1281
    .end local v5    # "sub":Landroid/telephony/SubscriptionInfo;
    :cond_5e
    goto :goto_3d

    .line 1282
    :cond_5f
    invoke-static {p0, v2, p1}, Landroid/os/RecoverySystem;->removeEuiccInvisibleSubs(Landroid/content/Context;Ljava/util/List;Landroid/telephony/euicc/EuiccManager;)Z

    .line 1283
    return-void

    .line 1273
    .end local v2    # "invisibleSubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_63
    :goto_63
    const-string v4, "Skip removing eUICC invisible profiles as no available profiles found."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    return-void

    .line 1265
    .end local v1    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v3    # "availableSubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_69
    :goto_69
    const-string v1, "Skip removing eUICC invisible profiles as eUICC manager is not available."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    return-void
.end method

.method private static blacklist removeEuiccInvisibleSubs(Landroid/content/Context;Ljava/util/List;Landroid/telephony/euicc/EuiccManager;)Z
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "euiccManager"    # Landroid/telephony/euicc/EuiccManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Landroid/telephony/euicc/EuiccManager;",
            ")Z"
        }
    .end annotation

    .line 1287
    .local p1, "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-string v1, "RecoverySystem"

    if-eqz p1, :cond_124

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v10, p0

    move-object/from16 v15, p2

    goto/16 :goto_128

    .line 1291
    :cond_10
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1292
    .local v2, "removeSubsLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1294
    .local v3, "removedSubsCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v5, Landroid/os/RecoverySystem$5;

    invoke-direct {v5, v3, v2}, Landroid/os/RecoverySystem$5;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    .line 1312
    .local v5, "removeEuiccSubsReceiver":Landroid/content/BroadcastReceiver;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.internal.action.EUICC_REMOVE_INVISIBLE_SUBSCRIPTIONS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1313
    .local v6, "intent":Landroid/content/Intent;
    const-string v8, "android"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1314
    const/high16 v8, 0xc000000

    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object/from16 v10, p0

    invoke-static {v10, v4, v6, v8, v9}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1320
    .local v8, "callbackIntent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 1321
    .local v9, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v9, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1322
    new-instance v7, Landroid/os/HandlerThread;

    const-string v11, "euiccRemovingSubsReceiverThread"

    invoke-direct {v7, v11}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1324
    .local v7, "euiccHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 1325
    new-instance v11, Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1326
    .local v11, "euiccHandler":Landroid/os/Handler;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    .line 1327
    invoke-virtual {v12, v5, v9, v13, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1329
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_61
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    .line 1330
    .local v13, "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Remove invisible subscription "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1332
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from card "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1333
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1330
    invoke-static {v1, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v14

    move-object/from16 v15, p2

    invoke-virtual {v15, v14}, Landroid/telephony/euicc/EuiccManager;->createForCardId(I)Landroid/telephony/euicc/EuiccManager;

    move-result-object v14

    .line 1335
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {v14, v0, v8}, Landroid/telephony/euicc/EuiccManager;->deleteSubscription(ILandroid/app/PendingIntent;)V

    .line 1336
    .end local v13    # "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    goto :goto_61

    .line 1338
    :cond_a7
    move-object/from16 v15, p2

    .line 1339
    :try_start_a9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "euicc_removing_invisible_profiles_timeout_millis"

    const-wide/32 v13, 0xafc8

    .line 1338
    invoke-static {v0, v12, v13, v14}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    .line 1342
    .local v12, "waitingTimeMillis":J
    const-wide/16 v16, 0x3a98

    cmp-long v0, v12, v16

    if-gez v0, :cond_bf

    .line 1343
    const-wide/16 v12, 0x3a98

    goto :goto_c9

    .line 1344
    :cond_bf
    const-wide/32 v16, 0x15f90

    cmp-long v0, v12, v16

    if-lez v0, :cond_c9

    .line 1345
    const-wide/32 v12, 0x15f90

    .line 1347
    :cond_c9
    :goto_c9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v12, v13, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_e3

    .line 1348
    const-string v0, "Timeout removing invisible euicc profiles."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d6
    .catch Ljava/lang/InterruptedException; {:try_start_a9 .. :try_end_d6} :catch_fe
    .catchall {:try_start_a9 .. :try_end_d6} :catchall_fc

    .line 1349
    nop

    .line 1356
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1357
    nop

    .line 1358
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 1349
    return v4

    .line 1356
    .end local v12    # "waitingTimeMillis":J
    :cond_e3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1357
    nop

    .line 1358
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 1361
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_fa

    const/4 v0, 0x1

    goto :goto_fb

    :cond_fa
    move v0, v4

    :goto_fb
    return v0

    .line 1356
    :catchall_fc
    move-exception v0

    goto :goto_118

    .line 1351
    :catch_fe
    move-exception v0

    .line 1352
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_ff
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->interrupt()V

    .line 1353
    const-string v12, "Removing invisible euicc profiles interrupted"

    invoke-static {v1, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10b
    .catchall {:try_start_ff .. :try_end_10b} :catchall_fc

    .line 1354
    nop

    .line 1356
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1357
    nop

    .line 1358
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 1354
    return v4

    .line 1356
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_118
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1357
    nop

    .line 1358
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 1360
    throw v0

    .line 1287
    .end local v2    # "removeSubsLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v3    # "removedSubsCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v5    # "removeEuiccSubsReceiver":Landroid/content/BroadcastReceiver;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "euiccHandlerThread":Landroid/os/HandlerThread;
    .end local v8    # "callbackIntent":Landroid/app/PendingIntent;
    .end local v9    # "intentFilter":Landroid/content/IntentFilter;
    .end local v11    # "euiccHandler":Landroid/os/Handler;
    :cond_124
    move-object/from16 v10, p0

    move-object/from16 v15, p2

    .line 1288
    :goto_128
    const-string v0, "There are no eUICC invisible profiles needed to be removed."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sender"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1853
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2}, Landroid/os/IRecoverySystem;->requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1854
    :catch_7
    move-exception v0

    .line 1855
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not request LSKF capture"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static greylist-max-o sanitizeArg(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "arg"    # Ljava/lang/String;

    .line 1920
    const/4 v0, 0x0

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1921
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1922
    return-object p0
.end method

.method public static whitelist scheduleUpdateOnBoot(Landroid/content/Context;Ljava/io/File;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 950
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "filename":Ljava/lang/String;
    const-string v1, "_s.zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 955
    .local v1, "securityUpdate":Z
    const-string v2, "/data/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 956
    const-string v0, "@/cache/recovery/block.map"

    .line 959
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--update_package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 960
    .local v2, "filenameArg":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--locale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 961
    .local v3, "localeArg":Ljava/lang/String;
    const-string v4, "--security\n"

    .line 963
    .local v4, "securityArg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 964
    .local v5, "command":Ljava/lang/String;
    if-eqz v1, :cond_74

    .line 965
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--security\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 968
    :cond_74
    const-string/jumbo v6, "recovery"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/RecoverySystem;

    .line 969
    .local v6, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v6, v5}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 972
    return-void

    .line 970
    :cond_84
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "schedule update on boot failed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private greylist-max-o setupBcb(Ljava/lang/String;)Z
    .registers 3
    .param p1, "command"    # Ljava/lang/String;

    .line 1809
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1810
    :catch_7
    move-exception v0

    .line 1812
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .registers 4
    .param p1, "packageFile"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IRecoverySystemProgressListener;

    .line 1798
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2}, Landroid/os/IRecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1799
    :catch_7
    move-exception v0

    .line 1801
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    .registers 28
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .param p2, "deviceCertsZipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 335
    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 337
    .local v10, "fileLen":J
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    move-object/from16 v12, p0

    invoke-direct {v0, v12, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v13, v0

    .line 339
    .local v13, "raf":Ljava/io/RandomAccessFile;
    :try_start_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 340
    .local v5, "startTimeMillis":J
    const/4 v0, 0x0

    if-eqz v9, :cond_1b

    .line 341
    invoke-interface {v9, v0}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 344
    :cond_1b
    const-wide/16 v1, 0x6

    sub-long v1, v10, v1

    invoke-virtual {v13, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 345
    const/4 v1, 0x6

    new-array v2, v1, [B

    move-object v14, v2

    .line 346
    .local v14, "footer":[B
    invoke-virtual {v13, v14}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 348
    const/4 v2, 0x2

    aget-byte v3, v14, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19c

    const/4 v3, 0x3

    aget-byte v7, v14, v3

    if-ne v7, v4, :cond_19c

    .line 352
    const/4 v4, 0x4

    aget-byte v4, v14, v4

    and-int/lit16 v4, v4, 0xff

    const/4 v7, 0x5

    aget-byte v8, v14, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int v15, v4, v8

    .line 353
    .local v15, "commentSize":I
    aget-byte v4, v14, v0

    and-int/lit16 v4, v4, 0xff

    const/4 v8, 0x1

    aget-byte v1, v14, v8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v4, v1

    .line 355
    .local v4, "signatureStart":I
    add-int/lit8 v1, v15, 0x16

    new-array v1, v1, [B

    .line 356
    .local v1, "eocd":[B
    add-int/lit8 v3, v15, 0x16

    int-to-long v2, v3

    sub-long v2, v10, v2

    invoke-virtual {v13, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 357
    invoke-virtual {v13, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 361
    aget-byte v2, v1, v0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_18f

    aget-byte v2, v1, v8

    const/16 v8, 0x4b

    if-ne v2, v8, :cond_18f

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    if-ne v2, v7, :cond_18f

    const/4 v2, 0x3

    aget-byte v0, v1, v2

    const/4 v2, 0x6

    if-ne v0, v2, :cond_18f

    .line 366
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_75
    array-length v2, v1

    const/16 v17, 0x3

    add-int/lit8 v2, v2, -0x3

    if-ge v0, v2, :cond_a2

    .line 367
    aget-byte v2, v1, v0

    if-ne v2, v3, :cond_9c

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_9c

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    if-ne v2, v7, :cond_9c

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_94

    goto :goto_9d

    .line 369
    :cond_94
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "EOCD marker found after start of EOCD"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v2

    .line 367
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_9c
    const/4 v3, 0x6

    .line 366
    :goto_9d
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x50

    goto :goto_75

    .line 374
    .end local v0    # "i":I
    :cond_a2
    new-instance v0, Lsun/security/pkcs/PKCS7;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v3, v15, 0x16

    sub-int/2addr v3, v4

    invoke-direct {v2, v1, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v0, v2}, Lsun/security/pkcs/PKCS7;-><init>(Ljava/io/InputStream;)V

    .line 379
    .local v0, "block":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    move-object v7, v2

    .line 380
    .local v7, "certificates":[Ljava/security/cert/X509Certificate;
    if-eqz v7, :cond_180

    array-length v2, v7

    if-eqz v2, :cond_180

    .line 383
    const/4 v2, 0x0

    aget-object v3, v7, v2

    move-object/from16 v16, v3

    .line 384
    .local v16, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 386
    .local v2, "signatureKey":Ljava/security/PublicKey;
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS7;->getSignerInfos()[Lsun/security/pkcs/SignerInfo;

    move-result-object v3

    .line 387
    .local v3, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    if-eqz v3, :cond_16d

    array-length v8, v3

    if-eqz v8, :cond_16d

    .line 390
    const/4 v8, 0x0

    aget-object v8, v3, v8

    .line 394
    .local v8, "signerInfo":Lsun/security/pkcs/SignerInfo;
    const/16 v17, 0x0

    .line 396
    .local v17, "verified":Z
    if-nez p2, :cond_d5

    sget-object v18, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    goto :goto_d7

    :cond_d5
    move-object/from16 v18, p2

    .line 395
    :goto_d7
    invoke-static/range {v18 .. v18}, Landroid/os/RecoverySystem;->getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;

    move-result-object v18

    .line 397
    .local v18, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_df
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_fd

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/security/cert/X509Certificate;

    .line 398
    .local v20, "c":Ljava/security/cert/X509Certificate;
    move-object/from16 v21, v1

    .end local v1    # "eocd":[B
    .local v21, "eocd":[B
    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 399
    const/16 v17, 0x1

    .line 400
    goto :goto_ff

    .line 402
    .end local v20    # "c":Ljava/security/cert/X509Certificate;
    :cond_fa
    move-object/from16 v1, v21

    goto :goto_df

    .line 397
    .end local v21    # "eocd":[B
    .restart local v1    # "eocd":[B
    :cond_fd
    move-object/from16 v21, v1

    .line 403
    .end local v1    # "eocd":[B
    .restart local v21    # "eocd":[B
    :goto_ff
    if-eqz v17, :cond_159

    .line 409
    move-object/from16 v19, v2

    .end local v2    # "signatureKey":Ljava/security/PublicKey;
    .local v19, "signatureKey":Ljava/security/PublicKey;
    const-wide/16 v1, 0x0

    invoke-virtual {v13, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 410
    move-object v2, v8

    .end local v8    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .local v2, "signerInfo":Lsun/security/pkcs/SignerInfo;
    move-object/from16 v8, p1

    .line 411
    .local v8, "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    new-instance v1, Landroid/os/RecoverySystem$1;

    move-object/from16 v20, v21

    move-object/from16 v21, v1

    .end local v21    # "eocd":[B
    .local v20, "eocd":[B
    move-object v12, v2

    move-object/from16 v22, v3

    .end local v2    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v3    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .local v12, "signerInfo":Lsun/security/pkcs/SignerInfo;
    .local v22, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    move-wide v2, v10

    move/from16 v23, v4

    .end local v4    # "signatureStart":I
    .local v23, "signatureStart":I
    move v4, v15

    move-object/from16 v24, v7

    .end local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .local v24, "certificates":[Ljava/security/cert/X509Certificate;
    move-object v7, v13

    invoke-direct/range {v1 .. v8}, Landroid/os/RecoverySystem$1;-><init>(JIJLjava/io/RandomAccessFile;Landroid/os/RecoverySystem$ProgressListener;)V

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    move-result-object v1

    .line 456
    .local v1, "verifyResult":Lsun/security/pkcs/SignerInfo;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    .line 457
    .local v2, "interrupted":Z
    if-eqz v9, :cond_12f

    .line 458
    const/16 v3, 0x64

    invoke-interface {v9, v3}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V
    :try_end_12f
    .catchall {:try_start_11 .. :try_end_12f} :catchall_1a5

    .line 461
    :cond_12f
    if-nez v2, :cond_150

    .line 465
    if-eqz v1, :cond_147

    .line 469
    .end local v0    # "block":Lsun/security/pkcs/PKCS7;
    .end local v1    # "verifyResult":Lsun/security/pkcs/SignerInfo;
    .end local v2    # "interrupted":Z
    .end local v5    # "startTimeMillis":J
    .end local v8    # "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    .end local v12    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v14    # "footer":[B
    .end local v15    # "commentSize":I
    .end local v16    # "cert":Ljava/security/cert/X509Certificate;
    .end local v17    # "verified":Z
    .end local v18    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v19    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "eocd":[B
    .end local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v23    # "signatureStart":I
    .end local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 470
    nop

    .line 473
    invoke-static/range {p0 .. p0}, Landroid/os/RecoverySystem;->readAndVerifyPackageCompatibilityEntry(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 476
    return-void

    .line 474
    :cond_13e
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "package compatibility verification failed"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    .restart local v0    # "block":Lsun/security/pkcs/PKCS7;
    .restart local v1    # "verifyResult":Lsun/security/pkcs/SignerInfo;
    .restart local v2    # "interrupted":Z
    .restart local v5    # "startTimeMillis":J
    .restart local v8    # "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    .restart local v12    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .restart local v14    # "footer":[B
    .restart local v15    # "commentSize":I
    .restart local v16    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v17    # "verified":Z
    .restart local v18    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v19    # "signatureKey":Ljava/security/PublicKey;
    .restart local v20    # "eocd":[B
    .restart local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v23    # "signatureStart":I
    .restart local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    :cond_147
    :try_start_147
    new-instance v3, Ljava/security/SignatureException;

    const-string/jumbo v4, "signature digest verification failed"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v3

    .line 462
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_150
    new-instance v3, Ljava/security/SignatureException;

    const-string/jumbo v4, "verification was interrupted"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v3

    .line 404
    .end local v1    # "verifyResult":Lsun/security/pkcs/SignerInfo;
    .end local v12    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v19    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "eocd":[B
    .end local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v23    # "signatureStart":I
    .end local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    .local v2, "signatureKey":Ljava/security/PublicKey;
    .restart local v3    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v4    # "signatureStart":I
    .restart local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .local v8, "signerInfo":Lsun/security/pkcs/SignerInfo;
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local v21    # "eocd":[B
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_159
    move-object/from16 v19, v2

    move-object/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v24, v7

    move-object v12, v8

    move-object/from16 v20, v21

    .end local v2    # "signatureKey":Ljava/security/PublicKey;
    .end local v3    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v4    # "signatureStart":I
    .end local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v8    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v21    # "eocd":[B
    .restart local v12    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .restart local v19    # "signatureKey":Ljava/security/PublicKey;
    .restart local v20    # "eocd":[B
    .restart local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v23    # "signatureStart":I
    .restart local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    new-instance v1, Ljava/security/SignatureException;

    const-string/jumbo v2, "signature doesn\'t match any trusted key"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v1

    .line 387
    .end local v12    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v17    # "verified":Z
    .end local v18    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v19    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "eocd":[B
    .end local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v23    # "signatureStart":I
    .end local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    .local v1, "eocd":[B
    .restart local v2    # "signatureKey":Ljava/security/PublicKey;
    .restart local v3    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v4    # "signatureStart":I
    .restart local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_16d
    move-object/from16 v20, v1

    move-object/from16 v19, v2

    move-object/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v24, v7

    .line 388
    .end local v1    # "eocd":[B
    .end local v2    # "signatureKey":Ljava/security/PublicKey;
    .end local v3    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v4    # "signatureStart":I
    .end local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v19    # "signatureKey":Ljava/security/PublicKey;
    .restart local v20    # "eocd":[B
    .restart local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v23    # "signatureStart":I
    .restart local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    new-instance v1, Ljava/security/SignatureException;

    const-string/jumbo v2, "signature contains no signedData"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v1

    .line 380
    .end local v16    # "cert":Ljava/security/cert/X509Certificate;
    .end local v19    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "eocd":[B
    .end local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v23    # "signatureStart":I
    .end local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v1    # "eocd":[B
    .restart local v4    # "signatureStart":I
    .restart local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_180
    move-object/from16 v20, v1

    move/from16 v23, v4

    move-object/from16 v24, v7

    .line 381
    .end local v1    # "eocd":[B
    .end local v4    # "signatureStart":I
    .end local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v20    # "eocd":[B
    .restart local v23    # "signatureStart":I
    .restart local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    new-instance v1, Ljava/security/SignatureException;

    const-string/jumbo v2, "signature contains no certificates"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v1

    .line 361
    .end local v0    # "block":Lsun/security/pkcs/PKCS7;
    .end local v20    # "eocd":[B
    .end local v23    # "signatureStart":I
    .end local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v1    # "eocd":[B
    .restart local v4    # "signatureStart":I
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_18f
    move-object/from16 v20, v1

    move/from16 v23, v4

    .line 363
    .end local v1    # "eocd":[B
    .end local v4    # "signatureStart":I
    .restart local v20    # "eocd":[B
    .restart local v23    # "signatureStart":I
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "no signature in file (bad footer)"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v0

    .line 349
    .end local v15    # "commentSize":I
    .end local v20    # "eocd":[B
    .end local v23    # "signatureStart":I
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_19c
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "no signature in file (no footer)"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v0
    :try_end_1a5
    .catchall {:try_start_147 .. :try_end_1a5} :catchall_1a5

    .line 469
    .end local v5    # "startTimeMillis":J
    .end local v14    # "footer":[B
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :catchall_1a5
    move-exception v0

    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 470
    throw v0
.end method

.method public static whitelist verifyPackageCompatibility(Ljava/io/File;)Z
    .registers 4
    .param p0, "compatibilityFile"    # Ljava/io/File;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 534
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 535
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_5
    invoke-static {v0}, Landroid/os/RecoverySystem;->verifyPackageCompatibility(Ljava/io/InputStream;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 536
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 535
    return v1

    .line 534
    :catchall_d
    move-exception v1

    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    throw v1
.end method

.method private static greylist verifyPackageCompatibility(Ljava/io/InputStream;)Z
    .registers 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 488
    .local v1, "zis":Ljava/util/zip/ZipInputStream;
    :goto_a
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    move-object v3, v2

    .local v3, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_53

    .line 489
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    .line 490
    .local v4, "entrySize":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v4, v6

    if-gtz v2, :cond_33

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_33

    .line 494
    long-to-int v2, v4

    new-array v2, v2, [B

    .line 495
    .local v2, "bytes":[B
    invoke-static {v1, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 496
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    .end local v2    # "bytes":[B
    .end local v4    # "entrySize":J
    goto :goto_a

    .line 491
    .restart local v4    # "entrySize":J
    :cond_33
    new-instance v2, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid entry size ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") in the compatibility file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 498
    .end local v4    # "entrySize":J
    :cond_53
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 501
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Landroid/os/VintfObject;->verify([Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    return v2

    .line 499
    :cond_6f
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "no entries found in the compatibility file"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist-max-o wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1182
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1183
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v0, "euicc_provisioned"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    const-string v5, "RecoverySystem"

    if-nez v0, :cond_18

    .line 1186
    const-string v0, "Skipping eUICC wipe/retain as it is not provisioned"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    return v4

    .line 1190
    :cond_18
    const-string v0, "euicc"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/telephony/euicc/EuiccManager;

    .line 1192
    .local v6, "euiccManager":Landroid/telephony/euicc/EuiccManager;
    if-eqz v6, :cond_ef

    invoke-virtual {v6}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 1193
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v4, v0

    .line 1194
    .local v4, "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v7, v0

    .line 1196
    .local v7, "wipingSucceeded":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v0, Landroid/os/RecoverySystem$4;

    invoke-direct {v0, v7, v4}, Landroid/os/RecoverySystem$4;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    move-object v8, v0

    .line 1214
    .local v8, "euiccWipeFinishReceiver":Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/Intent;

    const-string v9, "com.android.internal.action.EUICC_FACTORY_RESET"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 1215
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v11, p1

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1216
    const/high16 v0, 0xc000000

    sget-object v12, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v1, v3, v10, v0, v12}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    .line 1222
    .local v12, "callbackIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v13, v0

    .line 1223
    .local v13, "filterConsent":Landroid/content/IntentFilter;
    invoke-virtual {v13, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1224
    new-instance v0, Landroid/os/HandlerThread;

    const-string v9, "euiccWipeFinishReceiverThread"

    invoke-direct {v0, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 1225
    .local v9, "euiccHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 1226
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v0, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v14, v0

    .line 1227
    .local v14, "euiccHandler":Landroid/os/Handler;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v15, 0x0

    .line 1228
    invoke-virtual {v0, v8, v13, v15, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1229
    invoke-virtual {v6, v12}, Landroid/telephony/euicc/EuiccManager;->eraseSubscriptions(Landroid/app/PendingIntent;)V

    .line 1231
    nop

    .line 1232
    :try_start_7a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v15, "euicc_factory_reset_timeout_millis"
    :try_end_80
    .catch Ljava/lang/InterruptedException; {:try_start_7a .. :try_end_80} :catch_ce
    .catchall {:try_start_7a .. :try_end_80} :catchall_cb

    move-object/from16 v16, v4

    .end local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .local v16, "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    const-wide/16 v3, 0x7530

    .line 1231
    :try_start_84
    invoke-static {v0, v15, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 1235
    .local v3, "waitingTimeMillis":J
    const-wide/16 v17, 0x1388

    cmp-long v0, v3, v17

    if-gez v0, :cond_91

    .line 1236
    const-wide/16 v3, 0x1388

    goto :goto_9b

    .line 1237
    :cond_91
    const-wide/32 v17, 0xea60

    cmp-long v0, v3, v17

    if-lez v0, :cond_9b

    .line 1238
    const-wide/32 v3, 0xea60

    .line 1240
    :cond_9b
    :goto_9b
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_9d
    .catch Ljava/lang/InterruptedException; {:try_start_84 .. :try_end_9d} :catch_c7
    .catchall {:try_start_84 .. :try_end_9d} :catchall_c3

    move-object/from16 v15, v16

    .end local v16    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .local v15, "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :try_start_9f
    invoke-virtual {v15, v3, v4, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_b4

    .line 1241
    const-string v0, "Timeout wiping eUICC data."

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Ljava/lang/InterruptedException; {:try_start_9f .. :try_end_aa} :catch_c1
    .catchall {:try_start_9f .. :try_end_aa} :catchall_e6

    .line 1242
    nop

    .line 1249
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1242
    const/4 v5, 0x0

    return v5

    .line 1249
    .end local v3    # "waitingTimeMillis":J
    :cond_b4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1250
    nop

    .line 1251
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    .line 1244
    :catch_c1
    move-exception v0

    goto :goto_d0

    .line 1249
    .end local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v16    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catchall_c3
    move-exception v0

    move-object/from16 v15, v16

    .end local v16    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    goto :goto_e7

    .line 1244
    .end local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v16    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catch_c7
    move-exception v0

    move-object/from16 v15, v16

    .end local v16    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    goto :goto_d0

    .line 1249
    .end local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catchall_cb
    move-exception v0

    move-object v15, v4

    .end local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    goto :goto_e7

    .line 1244
    .end local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catch_ce
    move-exception v0

    move-object v15, v4

    .line 1245
    .end local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :goto_d0
    :try_start_d0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1246
    const-string v3, "Wiping eUICC data interrupted"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_dc
    .catchall {:try_start_d0 .. :try_end_dc} :catchall_e6

    .line 1247
    nop

    .line 1249
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1247
    const/4 v3, 0x0

    return v3

    .line 1249
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_e6
    move-exception v0

    :goto_e7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1250
    throw v0

    .line 1192
    .end local v7    # "wipingSucceeded":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v8    # "euiccWipeFinishReceiver":Landroid/content/BroadcastReceiver;
    .end local v9    # "euiccHandlerThread":Landroid/os/HandlerThread;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "callbackIntent":Landroid/app/PendingIntent;
    .end local v13    # "filterConsent":Landroid/content/IntentFilter;
    .end local v14    # "euiccHandler":Landroid/os/Handler;
    .end local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :cond_ef
    move-object/from16 v11, p1

    .line 1253
    const/4 v3, 0x0

    return v3
.end method
