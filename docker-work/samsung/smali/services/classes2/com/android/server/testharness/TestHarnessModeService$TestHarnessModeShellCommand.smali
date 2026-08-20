.class public Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;
.super Landroid/os/ShellCommand;
.source "TestHarnessModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/testharness/TestHarnessModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TestHarnessModeShellCommand"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/testharness/TestHarnessModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/testharness/TestHarnessModeService;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/testharness/TestHarnessModeService;Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;-><init>(Lcom/android/server/testharness/TestHarnessModeService;)V

    return-void
.end method


# virtual methods
.method public final checkPermissions()V
    .registers 3

    .line 314
    iget-object p0, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.ENABLE_TEST_HARNESS_MODE"

    const-string v1, "You must hold android.permission.ENABLE_TEST_HARNESS_MODE to enable Test Harness Mode"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getBytesFromFile(Ljava/io/File;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_39

    .line 359
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_39

    .line 362
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    new-array p0, p0, [Ljava/nio/file/OpenOption;

    .line 363
    invoke-static {p1, p0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    .line 364
    :try_start_14
    invoke-static {p1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0

    long-to-int p1, v0

    .line 365
    new-array v0, p1, [B

    .line 366
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_2d

    if-ne v1, p1, :cond_25

    .line 371
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0

    .line 368
    :cond_25
    :try_start_25
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to read the whole file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p1

    if-eqz p0, :cond_38

    .line 363
    :try_start_30
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_38
    :goto_38
    throw p1

    :cond_39
    :goto_39
    new-array p0, p0, [B

    return-object p0
.end method

.method public final handleEnable()I
    .registers 7

    const-string v0, "Failed to enable Test Harness Mode"

    const-string v1, "ShellCommand"

    .line 326
    const-class v2, Landroid/debug/AdbManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/debug/AdbManagerInternal;

    .line 327
    invoke-virtual {v2}, Landroid/debug/AdbManagerInternal;->getAdbKeysFile()Ljava/io/File;

    move-result-object v3

    .line 328
    invoke-virtual {v2}, Landroid/debug/AdbManagerInternal;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x1

    .line 331
    :try_start_15
    invoke-virtual {p0, v3}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v3

    .line 332
    invoke-virtual {p0, v2}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v2

    .line 334
    new-instance v5, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;

    invoke-direct {v5, v3, v2}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;-><init>([B[B)V

    .line 335
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-static {v2}, Lcom/android/server/testharness/TestHarnessModeService;->-$$Nest$mgetPersistentDataBlock(Lcom/android/server/testharness/TestHarnessModeService;)Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v2

    if-nez v2, :cond_37

    const-string v2, "Failed to enable Test Harness Mode. No implementation of PersistentDataBlockManagerInternal was bound."

    .line 337
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 342
    :cond_37
    invoke-virtual {v5}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->toBytes()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/PersistentDataBlockManagerInternal;->setTestHarnessModeData([B)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3e} :catch_66

    .line 349
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.FACTORY_RESET"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    .line 350
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 351
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.REASON"

    .line 352
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    .line 353
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 354
    iget-object p0, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x0

    return p0

    :catch_66
    move-exception v2

    const-string v3, "Failed to store ADB keys."

    .line 344
    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4
.end method

.method public final isDeviceSecure()Z
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 322
    iget-object p0, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-static {p0}, Lcom/android/server/testharness/TestHarnessModeService;->-$$Nest$mgetPrimaryUser(Lcom/android/server/testharness/TestHarnessModeService;)Landroid/content/pm/UserInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 4

    if-nez p1, :cond_7

    .line 290
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    const-string v0, "enable"

    .line 292
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "restore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 309
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 295
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->checkPermissions()V

    .line 296
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 298
    :try_start_24
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->isDeviceSecure()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 299
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Test Harness Mode cannot be enabled if there is a lock screen"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_40

    const/4 p0, 0x2

    .line 306
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 304
    :cond_38
    :try_start_38
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->handleEnable()I

    move-result p0
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_40

    .line 306
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_40
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 307
    throw p0
.end method

.method public onHelp()V
    .registers 2

    .line 376
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "About:"

    .line 377
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Test Harness Mode is a mode that the device can be placed in to prepare"

    .line 378
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  the device for running UI tests. The device is placed into this mode by"

    .line 379
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  first wiping all data from the device, preserving ADB keys."

    .line 380
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  By default, the following settings are configured:"

    .line 382
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    * Package Verifier is disabled"

    .line 383
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    * Stay Awake While Charging is enabled"

    .line 384
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    * OTA Updates are disabled"

    .line 385
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    * Auto-Sync for accounts is disabled"

    .line 386
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  Other apps may configure themselves differently in Test Harness Mode by"

    .line 388
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  checking ActivityManager.isRunningInUserTestHarness()"

    .line 389
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Test Harness Mode commands:"

    .line 391
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 392
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 393
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  enable|restore"

    .line 395
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Erase all data from this device and enable Test Harness Mode,"

    .line 396
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    preserving the stored ADB keys currently on the device and toggling"

    .line 397
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    settings in a way that are conducive to Instrumentation testing."

    .line 398
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
