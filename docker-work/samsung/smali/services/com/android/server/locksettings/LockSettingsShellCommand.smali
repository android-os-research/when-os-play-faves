.class public Lcom/android/server/locksettings/LockSettingsShellCommand;
.super Landroid/os/ShellCommand;
.source "LockSettingsShellCommand.java"


# static fields
.field public static final COMMAND_CLEAR:Ljava/lang/String; = "clear"

.field public static final COMMAND_FAIL_TO_UNLOCK:Ljava/lang/String; = "fail"

.field public static final COMMAND_GET_DISABLED:Ljava/lang/String; = "get-disabled"

.field public static final COMMAND_HELP:Ljava/lang/String; = "help"

.field public static final COMMAND_LOCK:Ljava/lang/String; = "lock"

.field public static final COMMAND_REMOVE_CACHE:Ljava/lang/String; = "remove-cache"

.field public static final COMMAND_REQUIRE_STRONG_AUTH:Ljava/lang/String; = "require-strong-auth"

.field public static final COMMAND_SET_DISABLED:Ljava/lang/String; = "set-disabled"

.field public static final COMMAND_SET_PASSWORD:Ljava/lang/String; = "set-password"

.field public static final COMMAND_SET_PATTERN:Ljava/lang/String; = "set-pattern"

.field public static final COMMAND_SET_PIN:Ljava/lang/String; = "set-pin"

.field public static final COMMAND_SET_ROR_PROVIDER_PACKAGE:Ljava/lang/String; = "set-resume-on-reboot-provider-package"

.field public static final COMMAND_SP:Ljava/lang/String; = "sp"

.field public static final COMMAND_UNLOCK:Ljava/lang/String; = "unlock"

.field public static final COMMAND_VERIFY:Ljava/lang/String; = "verify"


# instance fields
.field public mCallback:Landroid/os/IRemoteCallback;

.field public final mCallingPid:I

.field public final mCallingUid:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mNew:Ljava/lang/String;

.field public mOld:Ljava/lang/String;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;II)V
    .registers 6

    .line 80
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    const-string v0, ""

    .line 76
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 455
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 82
    iput p3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCallingPid:I

    .line 83
    iput p4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCallingUid:I

    .line 84
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final checkCredential()Z
    .registers 6

    .line 415
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_72

    .line 418
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 419
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Profile uses unified challenge"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 424
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOldCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 427
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result v2

    if-nez v2, :cond_40

    .line 428
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    .line 430
    :cond_40
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Old password \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' didn\'t match"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_67

    .line 433
    :cond_60
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V
    :try_end_67
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_20 .. :try_end_67} :catch_68

    :goto_67
    return v0

    .line 437
    :catch_68
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Request throttled"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 441
    :cond_72
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_84

    .line 442
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Old password provided but user has no password"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_84
    const/4 p0, 0x1

    return p0
.end method

.method public final getOldCredential()Lcom/android/internal/widget/LockscreenCredential;
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 268
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0

    .line 270
    :cond_d
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 271
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 272
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityAlphabeticPassword(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 273
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0

    .line 275
    :cond_2c
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0

    .line 278
    :cond_33
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 279
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    .line 280
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 279
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0

    .line 284
    :cond_4c
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0
.end method

.method public final isMultifactorAuthEnforced(I)Z
    .registers 4

    if-nez p1, :cond_13

    .line 521
    :try_start_2
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    if-eqz p1, :cond_4a

    .line 523
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isMultifactorAuthenticationEnabled()Z

    move-result p0

    return p0

    .line 526
    :cond_13
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 528
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p1

    if-eqz p1, :cond_4a

    .line 530
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isMultifactorAuthenticationEnabled()Z

    move-result p0
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_29} :catch_2a

    return p0

    :catch_2a
    move-exception p1

    .line 535
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error while check isMultifactorAuthEnforced"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SecurityException : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShellCommand"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    const/4 p0, 0x0

    return p0
.end method

.method public final isNewCredentialSufficient(Lcom/android/internal/widget/LockscreenCredential;)Z
    .registers 6

    .line 359
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 360
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 362
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordComplexity(I)I

    move-result v1

    .line 364
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isPassword()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_31

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isPin()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_31

    .line 368
    :cond_1e
    new-instance v2, Landroid/app/admin/PasswordMetrics;

    .line 369
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result p1

    if-eqz p1, :cond_28

    move p1, v3

    goto :goto_29

    :cond_28
    const/4 p1, -0x1

    :goto_29
    invoke-direct {v2, p1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    .line 370
    invoke-static {v0, v1, v2}, Landroid/app/admin/PasswordMetrics;->validatePasswordMetrics(Landroid/app/admin/PasswordMetrics;ILandroid/app/admin/PasswordMetrics;)Ljava/util/List;

    move-result-object p1

    goto :goto_3d

    .line 366
    :cond_31
    :goto_31
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isPin()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p1

    .line 365
    invoke-static {v0, v1, v2, p1}, Landroid/app/admin/PasswordMetrics;->validatePassword(Landroid/app/admin/PasswordMetrics;IZ[B)Ljava/util/List;

    move-result-object p1

    .line 373
    :goto_3d
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    .line 374
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New credential doesn\'t satisfy admin policies: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 375
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 374
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_61
    return v3
.end method

.method public final isShipBuild()Z
    .registers 2

    const-string/jumbo p0, "ro.product_ship"

    const-string v0, "false"

    .line 513
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 12

    if-nez p1, :cond_7

    .line 90
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    const/4 v0, -0x1

    .line 93
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iput v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 95
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->parseArgs()V

    .line 96
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_185

    const-string/jumbo v2, "set-disabled"

    const-string v3, "get-disabled"

    const-string/jumbo v4, "set-resume-on-reboot-provider-package"

    const-string/jumbo v5, "help"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_69

    .line 97
    :try_start_2e
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1a6

    goto :goto_56

    :sswitch_36
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    move v1, v6

    goto :goto_57

    :sswitch_3e
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    move v1, v7

    goto :goto_57

    :sswitch_46
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    move v1, v9

    goto :goto_57

    :sswitch_4e
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    move v1, v8

    goto :goto_57

    :cond_56
    :goto_56
    move v1, v0

    :goto_57
    if-eqz v1, :cond_69

    if-eq v1, v8, :cond_69

    if-eq v1, v7, :cond_69

    if-eq v1, v6, :cond_69

    .line 104
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "The device does not support lock screen - ignoring the command."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 109
    :cond_69
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1b8

    goto :goto_97

    :sswitch_71
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    move v1, v8

    goto :goto_98

    :sswitch_79
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    move v1, v6

    goto :goto_98

    :sswitch_81
    const-string/jumbo v1, "require-strong-auth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    move v1, v7

    goto :goto_98

    :sswitch_8c
    const-string/jumbo v1, "remove-cache"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    move v1, v9

    goto :goto_98

    :cond_97
    :goto_97
    move v1, v0

    :goto_98
    if-eqz v1, :cond_181

    if-eq v1, v8, :cond_17d

    if-eq v1, v7, :cond_179

    if-eq v1, v6, :cond_175

    .line 124
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->checkCredential()Z

    move-result v1

    if-nez v1, :cond_a7

    return v0

    .line 128
    :cond_a7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1ca

    goto/16 :goto_124

    :sswitch_b0
    const-string/jumbo v1, "set-pin"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    move v6, v7

    goto/16 :goto_125

    :sswitch_bc
    const-string/jumbo v1, "set-password"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    move v6, v8

    goto :goto_125

    :sswitch_c7
    const-string v1, "clear"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    goto :goto_125

    :sswitch_d0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/4 v6, 0x5

    goto :goto_125

    :sswitch_d8
    const-string/jumbo v1, "lock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/16 v6, 0x8

    goto :goto_125

    :sswitch_e4
    const-string v1, "fail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/16 v6, 0xa

    goto :goto_125

    :sswitch_ef
    const-string/jumbo v1, "sp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/4 v6, 0x4

    goto :goto_125

    :sswitch_fa
    const-string/jumbo v1, "verify"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/4 v6, 0x6

    goto :goto_125

    :sswitch_105
    const-string/jumbo v1, "unlock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/16 v6, 0x9

    goto :goto_125

    :sswitch_111
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/4 v6, 0x7

    goto :goto_125

    :sswitch_119
    const-string/jumbo v1, "set-pattern"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    move v6, v9

    goto :goto_125

    :cond_124
    :goto_124
    move v6, v0

    :goto_125
    packed-switch v6, :pswitch_data_1f8

    .line 165
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    goto :goto_15d

    .line 161
    :pswitch_12d
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runFailToUnlock()V

    goto :goto_171

    .line 158
    :pswitch_131
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runUnlock()V

    goto :goto_171

    .line 155
    :pswitch_135
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runLock()V

    goto :goto_171

    .line 151
    :pswitch_139
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runGetDisabled()V

    goto :goto_171

    .line 148
    :pswitch_13d
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runVerify()V

    goto :goto_171

    .line 145
    :pswitch_141
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runSetDisabled()V

    goto :goto_171

    .line 142
    :pswitch_145
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runChangeSp()V

    goto :goto_171

    .line 139
    :pswitch_149
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runClear()Z

    move-result v8

    goto :goto_171

    .line 136
    :pswitch_14e
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runSetPin()Z

    move-result v8

    goto :goto_171

    .line 133
    :pswitch_153
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runSetPassword()Z

    move-result v8

    goto :goto_171

    .line 130
    :pswitch_158
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runSetPattern()Z

    move-result v8

    goto :goto_171

    .line 165
    :goto_15d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_171
    if-eqz v8, :cond_174

    move v0, v9

    :cond_174
    return v0

    .line 121
    :cond_175
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->onHelp()V

    return v9

    .line 118
    :cond_179
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runRequireStrongAuth()Z

    return v9

    .line 115
    :cond_17d
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runSetResumeOnRebootProviderPackage()Z

    return v9

    .line 112
    :cond_181
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runRemoveCache()V
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_184} :catch_185

    return v9

    :catch_185
    move-exception v1

    .line 170
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while executing command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    return v0

    :sswitch_data_1a6
    .sparse-switch
        -0x57d6f0ed -> :sswitch_4e
        0x30cf41 -> :sswitch_46
        0x47ccf87 -> :sswitch_3e
        0x3f569a99 -> :sswitch_36
    .end sparse-switch

    :sswitch_data_1b8
    .sparse-switch
        -0x74adb707 -> :sswitch_8c
        -0x33c6cd4a -> :sswitch_81
        0x30cf41 -> :sswitch_79
        0x3f569a99 -> :sswitch_71
    .end sparse-switch

    :sswitch_data_1ca
    .sparse-switch
        -0x79d9f6db -> :sswitch_119
        -0x57d6f0ed -> :sswitch_111
        -0x321820bc -> :sswitch_105
        -0x30df7787 -> :sswitch_fa
        0xe5d -> :sswitch_ef
        0x2fd71e -> :sswitch_e4
        0x32c52b -> :sswitch_d8
        0x47ccf87 -> :sswitch_d0
        0x5a5b64d -> :sswitch_c7
        0x3ce04fa6 -> :sswitch_bc
        0x763ee1aa -> :sswitch_b0
    .end sparse-switch

    :pswitch_data_1f8
    .packed-switch 0x0
        :pswitch_158
        :pswitch_153
        :pswitch_14e
        :pswitch_149
        :pswitch_145
        :pswitch_141
        :pswitch_13d
        :pswitch_139
        :pswitch_135
        :pswitch_131
        :pswitch_12d
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    const-string v0, ""

    .line 183
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    :try_start_6
    const-string/jumbo v1, "lockSettings service commands:"

    .line 184
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "NOTE: when lock screen is set, all commands require the --old <CREDENTIAL> argument."

    .line 186
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    .line 189
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Prints this help text."

    .line 190
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  get-disabled [--old <CREDENTIAL>] [--user USER_ID]"

    .line 192
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Checks whether lock screen is disabled."

    .line 193
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set-disabled [--old <CREDENTIAL>] [--user USER_ID] <true|false>"

    .line 195
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    When true, disables lock screen."

    .line 196
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set-pattern [--old <CREDENTIAL>] [--user USER_ID] <PATTERN>"

    .line 198
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Sets the lock screen as pattern, using the given PATTERN to unlock."

    .line 199
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set-pin [--old <CREDENTIAL>] [--user USER_ID] <PIN>"

    .line 201
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Sets the lock screen as PIN, using the given PIN to unlock."

    .line 202
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set-password [--old <CREDENTIAL>] [--user USER_ID] <PASSWORD>"

    .line 204
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Sets the lock screen as password, using the given PASSOWRD to unlock."

    .line 205
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  sp [--old <CREDENTIAL>] [--user USER_ID]"

    .line 207
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Gets whether synthetic password is enabled."

    .line 208
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  sp [--old <CREDENTIAL>] [--user USER_ID] <1|0>"

    .line 210
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Enables / disables synthetic password."

    .line 211
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  clear [--old <CREDENTIAL>] [--user USER_ID]"

    .line 213
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Clears the lock credentials."

    .line 214
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  verify [--old <CREDENTIAL>] [--user USER_ID]"

    .line 216
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Verifies the lock credentials."

    .line 217
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  remove-cache [--user USER_ID]"

    .line 219
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Removes cached unified challenge for the managed profile."

    .line 220
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set-resume-on-reboot-provider-package <package_name>"

    .line 222
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Sets the package name for server based resume on reboot service provider."

    .line 223
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  require-strong-auth [--user USER_ID] <reason>"

    .line 226
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Requires the strong authentication. The current supported reasons: STRONG_AUTH_REQUIRED_AFTER_USER_LOCKDOWN."

    .line 227
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c0
    .catchall {:try_start_6 .. :try_end_c0} :catchall_c4

    .line 230
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_c4
    move-exception v0

    if-eqz p0, :cond_cf

    .line 183
    :try_start_c7
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_cb

    goto :goto_cf

    :catchall_cb
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_cf
    :goto_cf
    throw v0
.end method

.method public final parseArgs()V
    .registers 4

    .line 235
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_55

    const-string v1, "--old"

    .line 236
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 237
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    goto :goto_0

    :cond_15
    const-string v1, "--user"

    .line 238
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 239
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    goto :goto_0

    :cond_28
    const-string v1, "--type"

    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 242
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    goto :goto_0

    .line 245
    :cond_37
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 249
    :cond_55
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    return-void
.end method

.method public final runChangeSp()V
    .registers 4

    .line 253
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    if-eqz v0, :cond_33

    const-string v1, "1"

    .line 254
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 255
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->enableSyntheticPassword()V

    .line 256
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Synthetic password enabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_33

    .line 257
    :cond_1b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 258
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->disableSyntheticPassword()V

    .line 259
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Synthetic password disabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    :cond_33
    :goto_33
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "SP Enabled = %b"

    .line 262
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runClear()Z
    .registers 5

    .line 349
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 350
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->isNewCredentialSufficient(Lcom/android/internal/widget/LockscreenCredential;)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 p0, 0x0

    return p0

    .line 353
    :cond_c
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOldCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    .line 354
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Lock credential cleared"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final runFailToUnlock()V
    .registers 4

    .line 504
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    const-string v1, "finger"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    const-string v1, "face"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 505
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown unlock type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 509
    :cond_39
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    const-string v1, "fail"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final runGetDisabled()V
    .registers 3

    .line 409
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    .line 410
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final runLock()V
    .registers 3

    .line 495
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 496
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Please add lock type with --type option"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 500
    :cond_12
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    const-string/jumbo v1, "lock"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final runRemoveCache()V
    .registers 4

    .line 450
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->removeCachedUnifiedChallenge(I)V

    .line 451
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Password cached removed for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runRequireStrongAuth()Z
    .registers 4

    .line 331
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 333
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "STRONG_AUTH_REQUIRED_AFTER_USER_LOCKDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 339
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_27
    const/16 v0, 0x20

    const/4 v1, -0x1

    .line 336
    iput v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 342
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 343
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Require strong auth for USER_ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " because of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final runSetDisabled()V
    .registers 4

    .line 403
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 404
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 405
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lock screen disabled set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runSetPassword()Z
    .registers 5

    .line 300
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 301
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->isNewCredentialSufficient(Lcom/android/internal/widget/LockscreenCredential;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p0, 0x0

    return p0

    .line 304
    :cond_e
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOldCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    .line 305
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Password set to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final runSetPattern()Z
    .registers 5

    .line 289
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 290
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v0

    .line 289
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 291
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->isNewCredentialSufficient(Lcom/android/internal/widget/LockscreenCredential;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 p0, 0x0

    return p0

    .line 294
    :cond_16
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOldCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    .line 295
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pattern set to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final runSetPin()Z
    .registers 5

    .line 310
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 311
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->isNewCredentialSufficient(Lcom/android/internal/widget/LockscreenCredential;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p0, 0x0

    return p0

    .line 314
    :cond_e
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOldCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    .line 315
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pin set to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final runSetResumeOnRebootProviderPackage()Z
    .registers 7

    .line 320
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "persist.sys.resume_on_reboot_provider_package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ShellCommand"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCallingPid:I

    iget p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCallingUid:I

    const-string v5, "android.permission.BIND_RESUME_ON_REBOOT_SERVICE"

    invoke-virtual {v1, v5, v4, p0, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 326
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final runUnlock()V
    .registers 4

    .line 486
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    const-string v1, "finger"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    const-string v1, "face"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 487
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown unlock type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 491
    :cond_39
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    const-string/jumbo v1, "unlock"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final runVerify()V
    .registers 2

    .line 178
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Lock credential verified successfully"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 464
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCallback:Landroid/os/IRemoteCallback;

    if-nez v0, :cond_1d

    .line 465
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not supported command: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 469
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->isShipBuild()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 470
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Not supported ship build"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 474
    :cond_2d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "command"

    .line 475
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "type"

    .line 476
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :try_start_3d
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCallback:Landroid/os/IRemoteCallback;

    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_43

    goto :goto_5b

    .line 481
    :catch_43
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed command: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5b
    return-void
.end method

.method public setCallback(Landroid/os/IRemoteCallback;)Lcom/android/server/locksettings/LockSettingsShellCommand;
    .registers 2

    .line 459
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCallback:Landroid/os/IRemoteCallback;

    return-object p0
.end method
