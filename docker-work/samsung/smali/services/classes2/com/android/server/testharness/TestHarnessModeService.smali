.class public Lcom/android/server/testharness/TestHarnessModeService;
.super Lcom/android/server/SystemService;
.source "TestHarnessModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException;,
        Lcom/android/server/testharness/TestHarnessModeService$PersistentData;,
        Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TestHarnessModeService"

.field public static final TEST_HARNESS_MODE_PROPERTY:Ljava/lang/String; = "persist.sys.test_harness"


# instance fields
.field public mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

.field public final mService:Landroid/os/IBinder;

.field public mShouldSetUpTestHarnessMode:Z


# direct methods
.method public static bridge synthetic -$$Nest$mgetPersistentDataBlock(Lcom/android/server/testharness/TestHarnessModeService;)Lcom/android/server/PersistentDataBlockManagerInternal;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPrimaryUser(Lcom/android/server/testharness/TestHarnessModeService;)Landroid/content/pm/UserInfo;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 277
    new-instance p1, Lcom/android/server/testharness/TestHarnessModeService$1;

    invoke-direct {p1, p0}, Lcom/android/server/testharness/TestHarnessModeService$1;-><init>(Lcom/android/server/testharness/TestHarnessModeService;)V

    iput-object p1, p0, Lcom/android/server/testharness/TestHarnessModeService;->mService:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final completeTestHarnessModeSetup()V
    .registers 4

    .line 127
    sget-object v0, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v1, "Completing Test Harness Mode setup."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getTestHarnessModeData()[B

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    .line 133
    :cond_e
    :try_start_e
    invoke-static {v0}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->fromBytes([B)Lcom/android/server/testharness/TestHarnessModeService$PersistentData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/testharness/TestHarnessModeService;->setUpAdbFiles(Lcom/android/server/testharness/TestHarnessModeService$PersistentData;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->configureSettings()V

    .line 135
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->configureUser()V
    :try_end_1b
    .catch Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException; {:try_start_e .. :try_end_1b} :catch_25
    .catchall {:try_start_e .. :try_end_1b} :catchall_23

    .line 143
    :goto_1b
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/PersistentDataBlockManagerInternal;->clearTestHarnessModeData()V

    goto :goto_2e

    :catchall_23
    move-exception v0

    goto :goto_2f

    :catch_25
    move-exception v0

    .line 137
    :try_start_26
    sget-object v1, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set up Test Harness Mode. Bad data."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_23

    goto :goto_1b

    :goto_2e
    return-void

    .line 143
    :goto_2f
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/PersistentDataBlockManagerInternal;->clearTestHarnessModeData()V

    .line 144
    throw v0
.end method

.method public final configureSettings()V
    .registers 6

    .line 163
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "adb_enabled"

    const/4 v1, 0x0

    .line 167
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_20

    const-string v0, "ctl.restart"

    const-string v3, "adbd"

    .line 168
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v3, "Restarted adbd"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const-wide/16 v3, 0x0

    const-string v0, "adb_allowed_connection_time"

    .line 174
    invoke-static {p0, v0, v3, v4}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-string v0, "development_settings_enabled"

    .line 175
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "verifier_verify_adb_installs"

    .line 176
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v0, 0xf

    const-string/jumbo v1, "stay_on_while_plugged_in"

    .line 177
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "ota_disable_automatic_update"

    .line 181
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final configureUser()V
    .registers 4

    .line 197
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 199
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 201
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 202
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    return-void
.end method

.method public final disableLockScreen()V
    .registers 3

    .line 121
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 123
    iget p0, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v0, 0x1

    invoke-virtual {v1, v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    return-void
.end method

.method public final getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    if-nez v0, :cond_15

    .line 270
    sget-object v0, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v1, "Getting PersistentDataBlockManagerInternal from LocalServices"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-class v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    .line 272
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    iput-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    .line 274
    :cond_15
    iget-object p0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    return-object p0
.end method

.method public final getPrimaryUser()Landroid/content/pm/UserInfo;
    .registers 1

    .line 206
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 207
    invoke-virtual {p0}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getTestHarnessModeData()[B
    .registers 3

    .line 148
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_f

    .line 150
    sget-object p0, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v1, "Failed to start Test Harness Mode; no implementation of PersistentDataBlockManagerInternal was bound!"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 154
    :cond_f
    invoke-interface {p0}, Lcom/android/server/PersistentDataBlockManagerInternal;->getTestHarnessModeData()[B

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 155
    array-length v1, p0

    if-nez v1, :cond_19

    goto :goto_1a

    :cond_19
    return-object p0

    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_10

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_9

    goto :goto_13

    .line 94
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->completeTestHarnessModeSetup()V

    .line 95
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->showNotificationIfEnabled()V

    goto :goto_13

    .line 91
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->setUpTestHarnessMode()V

    .line 98
    :goto_13
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mService:Landroid/os/IBinder;

    const-string/jumbo v1, "testharness"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final setDeviceProvisioned()V
    .registers 4

    .line 228
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x1

    .line 229
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "user_setup_complete"

    const/4 v2, -0x2

    .line 230
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final setUpAdbFiles(Lcom/android/server/testharness/TestHarnessModeService$PersistentData;)V
    .registers 5

    .line 185
    const-class v0, Landroid/debug/AdbManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/debug/AdbManagerInternal;

    .line 187
    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->getAdbKeysFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 188
    iget-object v1, p1, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbKeys:[B

    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->getAdbKeysFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/testharness/TestHarnessModeService;->writeBytesToFile([BLjava/nio/file/Path;)V

    .line 190
    :cond_1b
    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 191
    iget-object p1, p1, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbTempKeys:[B

    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/testharness/TestHarnessModeService;->writeBytesToFile([BLjava/nio/file/Path;)V

    .line 193
    :cond_2e
    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->notifyKeyFilesUpdated()V

    return-void
.end method

.method public final setUpTestHarnessMode()V
    .registers 3

    .line 108
    sget-object v0, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v1, "Setting up test harness mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getTestHarnessModeData()[B

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    .line 115
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->setDeviceProvisioned()V

    .line 116
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->disableLockScreen()V

    const-string/jumbo p0, "persist.sys.test_harness"

    const-string v0, "1"

    .line 117
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final showNotificationIfEnabled()V
    .registers 7

    const-string/jumbo v0, "persist.sys.test_harness"

    const/4 v1, 0x0

    .line 238
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 241
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x1040dfa

    .line 242
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040df9

    .line 244
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 246
    new-instance v3, Landroid/app/Notification$Builder;

    .line 247
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x1080a85

    .line 248
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 249
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 250
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 251
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 252
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 253
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x106001c

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 256
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 257
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 258
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 262
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x36

    .line 263
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final writeBytesToFile([BLjava/nio/file/Path;)V
    .registers 4

    const/4 p0, 0x0

    :try_start_1
    new-array v0, p0, [Ljava/nio/file/OpenOption;

    .line 212
    invoke-static {p2, v0}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    .line 213
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 214
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    new-array p0, p0, [Ljava/nio/file/LinkOption;

    .line 216
    invoke-static {p2, p0}, Ljava/nio/file/Files;->getPosixFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;

    move-result-object p0

    .line 217
    sget-object p1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-static {p2, p0}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception p0

    .line 220
    sget-object p1, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string p2, "Failed to set up adb keys"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method
