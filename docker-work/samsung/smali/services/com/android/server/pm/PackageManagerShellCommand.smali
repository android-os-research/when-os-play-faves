.class public Lcom/android/server/pm/PackageManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;,
        Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;,
        Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;,
        Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;,
        Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;
    }
.end annotation


# static fields
.field public static final ART_PROFILE_SNAPSHOT_DEBUG_LOCATION:Ljava/lang/String; = "/data/misc/profman/"

.field public static final DEFAULT_STAGED_READY_TIMEOUT_MS:I = 0xea60

.field public static final RANDOM:Ljava/security/SecureRandom;

.field public static final STDIN_PATH:Ljava/lang/String; = "-"

.field public static final SUPPORTED_PERMISSION_FLAGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_PERMISSION_FLAGS_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "PackageManagerShellCommand"

.field public static final UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNSUPPORTED_SESSION_CREATE_OPTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBrief:Z

.field public mComponents:Z

.field public final mContext:Landroid/content/Context;

.field public final mDomainVerificationShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

.field public final mInterface:Landroid/content/pm/IPackageManager;

.field public final mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

.field public final mPermissionManager:Landroid/permission/PermissionManager;

.field public mQueryFlags:I

.field public final mResourceCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field public mTargetUser:I

.field public final shellRestrictionsHelper:Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;


# direct methods
.method public static synthetic $r8$lambda$L_LIJj1fZCFWXe5iwSRX4bXSqJc(Lcom/android/server/pm/PackageManagerShellCommand;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerShellCommand;->lambda$runGetOemPermissions$1(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iOnjesg-KevwDgJhTh2Kwk85UOk(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->lambda$runListPackages$0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 7

    const-string v0, "--multi-package"

    .line 168
    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;

    .line 171
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_SESSION_CREATE_OPTS:Ljava/util/Set;

    .line 172
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->SUPPORTED_PERMISSION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "review-required"

    const-string/jumbo v2, "revoked-compat"

    const-string/jumbo v3, "revoke-when-requested"

    const-string/jumbo v4, "user-fixed"

    const-string/jumbo v5, "user-set"

    .line 175
    invoke-static {v1, v2, v3, v4, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    sput-object v6, Lcom/android/server/pm/PackageManagerShellCommand;->SUPPORTED_PERMISSION_FLAGS_LIST:Ljava/util/List;

    const/4 v6, 0x1

    .line 177
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x2

    .line 178
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x8

    .line 179
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x40

    .line 180
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x80

    .line 182
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 181
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/IPackageManager;Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationShell;)V
    .registers 5

    .line 204
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 190
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    .line 200
    new-instance v0, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;

    invoke-direct {v0}, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->shellRestrictionsHelper:Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;

    .line 205
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 206
    const-class p1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 207
    const-class p1, Landroid/permission/PermissionManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/permission/PermissionManager;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 208
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    .line 209
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mDomainVerificationShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    return-void
.end method

.method public static checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 3497
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "-"

    .line 3501
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-object p0

    .line 3505
    :cond_f
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 3506
    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    .line 3507
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    return-object p0

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 3512
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ABI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not supported on this device"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3498
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing ABI argument"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enabledSettingToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_1e

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_18

    const/4 v0, 0x3

    if-eq p0, v0, :cond_15

    const/4 v0, 0x4

    if-eq p0, v0, :cond_12

    const-string/jumbo p0, "unknown"

    return-object p0

    :cond_12
    const-string p0, "disabled-until-used"

    return-object p0

    :cond_15
    const-string p0, "disabled-user"

    return-object p0

    :cond_18
    const-string p0, "disabled"

    return-object p0

    :cond_1b
    const-string p0, "enabled"

    return-object p0

    :cond_1e
    const-string p0, "default"

    return-object p0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .registers 1

    .line 2839
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$runGetOemPermissions$1(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    .line 2784
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " granted:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$runListPackages$0(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 1040
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static printSession(Ljava/io/PrintWriter;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V
    .registers 4

    .line 1232
    iget-boolean p2, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlySessionId:Z

    if-eqz p2, :cond_c

    .line 1233
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    return-void

    .line 1236
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sessionId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; appPackageName = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; isStaged = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; isReady = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; isApplied = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; isFailed = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; errorMsg = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getStagedSessionErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1236
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final cancelBgDexOptJob()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2019
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->getService()Lcom/android/server/pm/BackgroundDexOptService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService;->cancelBackgroundDexoptJob()V

    .line 2020
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Success"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final checkIfMaintenanceModeUserExists(Landroid/os/IUserManager;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 3095
    invoke-interface {p1, p0, p0, p0}, Landroid/os/IUserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p1

    .line 3097
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 3098
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isMaintenanceMode()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x1

    :cond_1c
    return p0
.end method

.method public final displayPackageFilePath(Ljava/lang/String;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 664
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const-wide/32 v1, 0x40000000

    invoke-interface {v0, p1, v1, v2, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 665
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_3f

    .line 666
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo p2, "package:"

    .line 667
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 668
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3e

    .line 670
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v0, p1

    move v2, v1

    :goto_31
    if-ge v2, v0, :cond_3e

    aget-object v3, p1, v2

    .line 671
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_3e
    return v1

    :cond_3f
    const/4 p0, 0x1

    return p0
.end method

.method public final doAbandonSession(IZ)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3833
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 3836
    :try_start_5
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3837
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_26

    .line 3838
    :try_start_14
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    if-eqz p2, :cond_1e

    const-string p0, "Success"

    .line 3840
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_23

    :cond_1e
    const/4 p0, 0x0

    .line 3844
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p0

    :catchall_23
    move-exception p0

    move-object v1, v2

    goto :goto_27

    :catchall_26
    move-exception p0

    :goto_27
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3845
    throw p0
.end method

.method public final doAddFiles(ILjava/util/ArrayList;JZ)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;JZ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3539
    :try_start_2
    new-instance v9, Landroid/content/pm/PackageInstaller$Session;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3540
    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p1

    invoke-direct {v9, p1}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_11} :catch_91
    .catchall {:try_start_2 .. :try_end_11} :catchall_8f

    .line 3543
    :try_start_11
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_50

    const-string p1, "-"

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_50

    .line 3551
    :cond_25
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_29
    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/16 p3, 0x3a

    .line 3552
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    const/4 p4, -0x1

    if-eq p3, p4, :cond_48

    .line 3556
    invoke-virtual {p0, p2, v9}, Lcom/android/server/pm/PackageManagerShellCommand;->processArgForStdin(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)I

    move-result p2
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_42} :catch_8c
    .catchall {:try_start_11 .. :try_end_42} :catchall_89

    if-eqz p2, :cond_29

    .line 3570
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v0

    .line 3561
    :cond_48
    :try_start_48
    invoke-virtual {p0, p2, v9}, Lcom/android/server/pm/PackageManagerShellCommand;->processArgForLocalFile(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)V
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_4b} :catch_8c
    .catchall {:try_start_48 .. :try_end_4b} :catchall_89

    goto :goto_29

    .line 3570
    :cond_4c
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v1

    .line 3544
    :cond_50
    :goto_50
    :try_start_50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "base"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/server/pm/PackageManagerShellCommand;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_6d

    const-string p2, "apex"

    goto :goto_6f

    :cond_6d
    const-string p2, "apk"

    :goto_6f
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3545
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forStdIn(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object p1

    const/4 v3, 0x0

    .line 3547
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, v9

    move-wide v5, p3

    .line 3546
    invoke-virtual/range {v2 .. v8}, Landroid/content/pm/PackageInstaller$Session;->addFile(ILjava/lang/String;J[B[B)V
    :try_end_85
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_85} :catch_8c
    .catchall {:try_start_50 .. :try_end_85} :catchall_89

    .line 3570
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v1

    :catchall_89
    move-exception p0

    move-object v1, v9

    goto :goto_b7

    :catch_8c
    move-exception p1

    move-object v1, v9

    goto :goto_92

    :catchall_8f
    move-exception p0

    goto :goto_b7

    :catch_91
    move-exception p1

    .line 3566
    :goto_92
    :try_start_92
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to add file(s), reason: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3567
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Failure [failed to add file(s)]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b3
    .catchall {:try_start_92 .. :try_end_b3} :catchall_8f

    .line 3570
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v0

    :goto_b7
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3571
    throw p0
.end method

.method public final doCommitSession(IZ)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3789
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 3792
    :try_start_5
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3793
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_9b

    .line 3794
    :try_start_14
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->isMultiPackage()Z

    move-result p0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_98

    const-string p1, "]"

    if-nez p0, :cond_46

    :try_start_1c
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->isStaged()Z

    move-result p0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_98

    if-nez p0, :cond_46

    .line 3798
    :try_start_22
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->getNames()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/dex/DexMetadataHelper;->validateDexPaths([Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_29} :catch_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_29} :catch_2a
    .catchall {:try_start_22 .. :try_end_29} :catchall_98

    goto :goto_46

    :catch_2a
    move-exception p0

    .line 3800
    :try_start_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning [Could not validate the dex paths: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3801
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3800
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3804
    :cond_46
    :goto_46
    new-instance p0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver-IA;)V

    .line 3805
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 3806
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->isStaged()Z

    move-result v1
    :try_end_56
    .catchall {:try_start_2b .. :try_end_56} :catchall_98

    const-string v3, "Success"

    if-nez v1, :cond_8e

    .line 3807
    :try_start_5a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object p0

    const-string v1, "android.content.pm.extra.STATUS"

    const/4 v4, 0x1

    .line 3808
    invoke-virtual {p0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_6d

    if-eqz p2, :cond_8a

    .line 3812
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8a

    .line 3815
    :cond_6d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure ["

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.content.pm.extra.STATUS_MESSAGE"

    .line 3816
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3815
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_5a .. :try_end_8a} :catchall_98

    .line 3828
    :cond_8a
    :goto_8a
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v1

    :cond_8e
    if-eqz p2, :cond_93

    .line 3823
    :try_start_90
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_98

    :cond_93
    const/4 p0, 0x0

    .line 3828
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p0

    :catchall_98
    move-exception p0

    move-object v1, v2

    goto :goto_9c

    :catchall_9b
    move-exception p0

    :goto_9c
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3829
    throw p0
.end method

.method public final doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p3, v0, :cond_9

    .line 3525
    iget v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :cond_9
    const/4 v0, 0x0

    const-string v1, "doCreateSession"

    .line 3528
    invoke-virtual {p0, p3, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result p3

    .line 3529
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object p0

    const/4 v0, 0x0

    .line 3530
    invoke-interface {p0, p1, p2, v0, p3}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final doInstallAddSession(I[IZ)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3741
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 3744
    :try_start_5
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3745
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_43

    .line 3746
    :try_start_14
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->isMultiPackage()Z

    move-result p1

    if-nez p1, :cond_28

    .line 3747
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: parent session ID is not a multi-package session"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_40

    .line 3759
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    move p1, p0

    .line 3751
    :goto_2a
    :try_start_2a
    array-length v1, p2

    if-ge p1, v1, :cond_35

    .line 3752
    aget v1, p2, p1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageInstaller$Session;->addChildSessionId(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2a

    :cond_35
    if-eqz p3, :cond_3c

    const-string p1, "Success"

    .line 3755
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_2a .. :try_end_3c} :catchall_40

    .line 3759
    :cond_3c
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p0

    :catchall_40
    move-exception p0

    move-object v1, v2

    goto :goto_44

    :catchall_43
    move-exception p0

    :goto_44
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3760
    throw p0
.end method

.method public final doListPermissions(Ljava/util/ArrayList;ZZZII)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZZZII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3851
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 3852
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_e
    if-ge v5, v3, :cond_218

    .line 3854
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "  description:"

    const-string v8, "  label:"

    const-string v9, "  package:"

    const-string v10, "+ "

    const-string v11, ""

    if-eqz p2, :cond_fa

    if-lez v5, :cond_27

    .line 3858
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_27
    if-eqz v6, :cond_db

    .line 3861
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3862
    invoke-interface {v12, v6, v4}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v12

    if-eqz p4, :cond_6b

    .line 3864
    invoke-virtual {v0, v12}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, ": "

    if-eqz v13, :cond_55

    .line 3866
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v12, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    iget-object v4, v12, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v12, v15, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_f7

    .line 3868
    :cond_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v12, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_f7

    .line 3872
    :cond_6b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_74

    move-object v13, v10

    goto :goto_75

    :cond_74
    move-object v13, v11

    :goto_75
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "group:"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_f7

    .line 3874
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3875
    invoke-virtual {v0, v12}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_f7

    .line 3877
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v12, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    iget-object v14, v12, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3878
    invoke-virtual {v0, v12, v13, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3877
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3879
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v12, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    iget-object v14, v12, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 3880
    invoke-virtual {v0, v12, v13, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3879
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f7

    .line 3886
    :cond_db
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_e6

    if-nez p4, :cond_e6

    move-object v12, v10

    goto :goto_e7

    :cond_e6
    move-object v12, v11

    :goto_e7
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "ungrouped:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_f7
    :goto_f7
    const-string v4, "  "

    goto :goto_fb

    :cond_fa
    move-object v4, v11

    .line 3890
    :goto_fb
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 3891
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/permission/PermissionManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v12

    if-nez v12, :cond_10c

    move v13, v14

    goto :goto_110

    .line 3892
    :cond_10c
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    :goto_110
    const/4 v15, 0x1

    :goto_111
    if-ge v14, v13, :cond_208

    .line 3895
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Landroid/content/pm/PermissionInfo;

    if-eqz p2, :cond_128

    if-nez v6, :cond_128

    move/from16 v16, v3

    .line 3896
    iget-object v3, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v3, :cond_12a

    move-object/from16 v17, v6

    goto :goto_15b

    :cond_128
    move/from16 v16, v3

    .line 3899
    :cond_12a
    iget v3, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v3, v3, 0xf

    move-object/from16 v17, v6

    move/from16 v6, p5

    if-lt v3, v6, :cond_15b

    move/from16 v6, p6

    if-le v3, v6, :cond_139

    goto :goto_15b

    :cond_139
    if-eqz p4, :cond_15f

    if-eqz v15, :cond_13f

    const/4 v15, 0x0

    goto :goto_144

    :cond_13f
    const-string v3, ", "

    .line 3908
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3910
    :goto_144
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_156

    .line 3912
    iget v3, v1, Landroid/content/pm/PermissionInfo;->labelRes:I

    iget-object v6, v1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v3, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_15b

    .line 3915
    :cond_156
    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_15b
    :goto_15b
    move-object/from16 v18, v8

    goto/16 :goto_1fc

    .line 3918
    :cond_15f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_16b

    move-object v6, v10

    goto :goto_16c

    :cond_16b
    move-object v6, v11

    :goto_16c
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "permission:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_15b

    .line 3921
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3922
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_1dd

    .line 3924
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/content/pm/PermissionInfo;->labelRes:I

    move-object/from16 v18, v8

    iget-object v8, v1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3925
    invoke-virtual {v0, v1, v6, v8}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3924
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3927
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    iget-object v8, v1, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 3928
    invoke-virtual {v0, v1, v6, v8}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3927
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1df

    :cond_1dd
    move-object/from16 v18, v8

    .line 3931
    :goto_1df
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  protectionLevel:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3932
    invoke-static {v1}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3931
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1fc
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v16

    move-object/from16 v6, v17

    move-object/from16 v8, v18

    goto/16 :goto_111

    :cond_208
    move/from16 v16, v3

    if-eqz p4, :cond_20f

    .line 3938
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_20f
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v16

    const/4 v4, 0x0

    goto/16 :goto_e

    :cond_218
    return-void
.end method

.method public final doRemoveSplits(ILjava/util/Collection;Z)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3765
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 3768
    :try_start_5
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3769
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_3c
    .catchall {:try_start_5 .. :try_end_14} :catchall_3a

    .line 3770
    :try_start_14
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3771
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageInstaller$Session;->removeSplit(Ljava/lang/String;)V

    goto :goto_18

    :cond_28
    if-eqz p3, :cond_2f

    const-string p0, "Success"

    .line 3775
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2f} :catch_37
    .catchall {:try_start_14 .. :try_end_2f} :catchall_34

    :cond_2f
    const/4 p0, 0x0

    .line 3782
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p0

    :catchall_34
    move-exception p0

    move-object v1, v2

    goto :goto_5a

    :catch_37
    move-exception p0

    move-object v1, v2

    goto :goto_3d

    :catchall_3a
    move-exception p0

    goto :goto_5a

    :catch_3c
    move-exception p0

    .line 3779
    :goto_3d
    :try_start_3d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error: failed to remove split; "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_3d .. :try_end_55} :catchall_3a

    const/4 p0, 0x1

    .line 3782
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p0

    :goto_5a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3783
    throw p0
.end method

.method public final doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1450
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1452
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_e

    move v2, v3

    goto :goto_f

    :cond_e
    move v2, v4

    .line 1453
    :goto_f
    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v5, 0x20000

    and-int/2addr v1, v5

    if-eqz v1, :cond_18

    move v10, v3

    goto :goto_19

    :cond_18
    move v10, v4

    .line 1456
    :goto_19
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v7

    .line 1458
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v5, "-"

    if-nez v1, :cond_32

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_32

    :cond_30
    move v1, v4

    goto :goto_33

    :cond_32
    :goto_32
    move v1, v3

    .line 1459
    :goto_33
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v3, :cond_3b

    move v6, v3

    goto :goto_3c

    :cond_3b
    move v6, v4

    :goto_3c
    if-eqz v1, :cond_4e

    .line 1461
    iget-object v8, p1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v8, v8, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v11, -0x1

    cmp-long v8, v8, v11

    if-nez v8, :cond_4e

    const-string p0, "Error: must either specify a package size or an APK file"

    .line 1462
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_4e
    if-eqz v10, :cond_58

    if-eqz v6, :cond_58

    const-string p0, "Error: can\'t specify SPLIT(s) for APEX"

    .line 1467
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_58
    if-nez v2, :cond_71

    if-eqz v1, :cond_64

    if-eqz v6, :cond_64

    const-string p0, "Error: can\'t specify SPLIT(s) along with STDIN"

    .line 1473
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 1477
    :cond_64
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1478
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 1480
    :cond_6e
    invoke-virtual {p0, p1, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->setParamsSize(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;Ljava/util/List;)V

    .line 1484
    :cond_71
    :goto_71
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, p1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    invoke-virtual {p0, v1, v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v1

    if-eqz v2, :cond_8d

    .line 1489
    :try_start_7d
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v8, v2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    move-object v5, p0

    move v6, v1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerShellCommand;->doAddFiles(ILjava/util/ArrayList;JZ)I

    move-result v2
    :try_end_87
    .catchall {:try_start_7d .. :try_end_87} :catchall_c3

    if-eqz v2, :cond_9d

    .line 1514
    :try_start_89
    invoke-virtual {p0, v1, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_8c

    :catch_8c
    return v3

    .line 1494
    :cond_8d
    :try_start_8d
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v8, v2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    move-object v5, p0

    move v6, v1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplits(ILjava/util/ArrayList;JZ)I

    move-result v2
    :try_end_97
    .catchall {:try_start_8d .. :try_end_97} :catchall_c3

    if-eqz v2, :cond_9d

    .line 1514
    :try_start_99
    invoke-virtual {p0, v1, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_9c

    :catch_9c
    return v3

    .line 1499
    :cond_9d
    :try_start_9d
    invoke-virtual {p0, v1, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v2
    :try_end_a1
    .catchall {:try_start_9d .. :try_end_a1} :catchall_c3

    if-eqz v2, :cond_a7

    .line 1514
    :try_start_a3
    invoke-virtual {p0, v1, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_a6

    :catch_a6
    return v3

    .line 1505
    :cond_a7
    :try_start_a7
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v2, :cond_ba

    iget-wide v2, p1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->stagedReadyTimeoutMs:J

    const-wide/16 v5, 0x0

    cmp-long p1, v2, v5

    if-lez p1, :cond_ba

    .line 1506
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doWaitForStagedSessionReady(IJLjava/io/PrintWriter;)I

    move-result p0

    return p0

    :cond_ba
    const-string p1, "Success"

    .line 1509
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_bf
    .catchall {:try_start_a7 .. :try_end_bf} :catchall_c0

    return v4

    :catchall_c0
    move-exception p1

    move v3, v4

    goto :goto_c4

    :catchall_c3
    move-exception p1

    :goto_c4
    if-eqz v3, :cond_c9

    .line 1514
    :try_start_c6
    invoke-virtual {p0, v1, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_c9} :catch_c9

    .line 1518
    :catch_c9
    :cond_c9
    throw p1
.end method

.method public final doWaitForStagedSessionReady(IJLjava/io/PrintWriter;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 1523
    :goto_b
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1524
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0

    .line 1525
    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    const-string v3, "]"

    if-nez v0, :cond_34

    .line 1527
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failure [Unknown session "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 1530
    :cond_34
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v4

    if-nez v4, :cond_54

    .line 1531
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failure [Session "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a staged session]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 1534
    :cond_54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v6, v4, p2

    :goto_5a
    cmp-long v8, v4, v6

    if-gez v8, :cond_87

    if-eqz v0, :cond_6d

    .line 1541
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v8

    if-nez v8, :cond_87

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v8

    if-eqz v8, :cond_6d

    goto :goto_87

    :cond_6d
    sub-long v4, v6, v4

    const-wide/16 v8, 0x64

    .line 1544
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 1545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1546
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    goto :goto_5a

    :cond_87
    :goto_87
    if-nez v0, :cond_8f

    const-string p0, "Failure [failed to retrieve SessionInfo]"

    .line 1549
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 1552
    :cond_8f
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result p0

    if-nez p0, :cond_b5

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result p0

    if-nez p0, :cond_b5

    .line 1553
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failure [timed out after "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 1556
    :cond_b5
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result p0

    if-nez p0, :cond_e3

    .line 1557
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getStagedSessionErrorCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getStagedSessionErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1557
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_e3
    const-string p0, "Success. Reboot device to apply staged session"

    .line 1561
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3699
    :try_start_5
    new-instance v11, Landroid/content/pm/PackageInstaller$Session;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3700
    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v4

    move v5, p1

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v4

    invoke-direct {v11, v4}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_15} :catch_b1
    .catchall {:try_start_5 .. :try_end_15} :catchall_af

    .line 3702
    :try_start_15
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "-"

    .line 3705
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_2f

    .line 3706
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    :goto_2b
    move-wide/from16 v12, p3

    move-object v10, v0

    goto :goto_6f

    :cond_2f
    if-eqz v0, :cond_66

    const-string/jumbo v4, "r"

    .line 3708
    invoke-virtual {p0, v0, v4}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_38} :catch_ac
    .catchall {:try_start_15 .. :try_end_38} :catchall_a9

    const/4 v7, -0x1

    if-nez v4, :cond_3f

    .line 3735
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v7

    .line 3712
    :cond_3f
    :try_start_3f
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v8

    cmp-long v10, v8, v5

    if-gez v10, :cond_63

    .line 3714
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get size of: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_5f} :catch_ac
    .catchall {:try_start_3f .. :try_end_5f} :catchall_a9

    .line 3735
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v7

    :cond_63
    move-object v10, v4

    move-wide v12, v8

    goto :goto_6f

    .line 3718
    :cond_66
    :try_start_66
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_2b

    :goto_6f
    cmp-long v0, v12, v5

    if-gtz v0, :cond_80

    .line 3721
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v3, "Error: must specify a APK size"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_7c} :catch_ac
    .catchall {:try_start_66 .. :try_end_7c} :catchall_a9

    .line 3735
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v2

    :cond_80
    const-wide/16 v6, 0x0

    move-object v4, v11

    move-object/from16 v5, p5

    move-wide v8, v12

    .line 3725
    :try_start_86
    invoke-virtual/range {v4 .. v10}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    if-eqz p6, :cond_a4

    .line 3728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success: streamed "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytes"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_a4} :catch_ac
    .catchall {:try_start_86 .. :try_end_a4} :catchall_a9

    :cond_a4
    const/4 v0, 0x0

    .line 3735
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v0

    :catchall_a9
    move-exception v0

    move-object v3, v11

    goto :goto_d2

    :catch_ac
    move-exception v0

    move-object v3, v11

    goto :goto_b2

    :catchall_af
    move-exception v0

    goto :goto_d2

    :catch_b1
    move-exception v0

    .line 3732
    :goto_b2
    :try_start_b2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: failed to write; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_ce
    .catchall {:try_start_b2 .. :try_end_ce} :catchall_af

    .line 3735
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v2

    :goto_d2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3736
    throw v0
.end method

.method public final doWriteSplits(ILjava/util/ArrayList;JZ)I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;JZ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3682
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 3683
    :goto_b
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 3684
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_27
    move-object v10, v4

    goto :goto_42

    .line 3685
    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "base."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_38

    const-string v5, "apex"

    goto :goto_3a

    :cond_38
    const-string v5, "apk"

    :goto_3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_27

    :goto_42
    const/4 v11, 0x0

    move-object v5, p0

    move v6, p1

    move-wide v8, p3

    .line 3687
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    move-result v4

    if-eqz v4, :cond_f

    return v2

    :cond_4d
    return v1
.end method

.method public final getApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2706
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p0

    .line 2707
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFileStatSize(Ljava/io/File;)J
    .registers 4

    .line 3643
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "r"

    invoke-virtual {p0, v0, v1}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 3648
    :try_start_d
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_15

    .line 3650
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide v0

    :catchall_15
    move-exception p1

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3651
    throw p1

    .line 3645
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Can\'t open file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getRemainingArgs()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2142
    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 2143
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    return-object v0
.end method

.method public final getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3961
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    if-eqz v0, :cond_d

    return-object v0

    .line 3964
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-wide/32 v2, 0x20008200

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3968
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    .line 3969
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 3970
    new-instance v0, Landroid/content/res/Resources;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 3971
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final isApexApp(Ljava/lang/String;)Z
    .registers 2

    .line 2711
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->getApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final isProductApp(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 2687
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const-wide/32 v1, 0x400000

    invoke-interface {p0, p1, v1, v2, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 2689
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_15

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    :catch_15
    :cond_15
    return v0
.end method

.method public final isSystemExtApp(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 2697
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const-wide/32 v1, 0x400000

    invoke-interface {p0, p1, v1, v2, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 2699
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemExt()Z

    move-result p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_15

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    :catch_15
    :cond_15
    return v0
.end method

.method public final isVendorApp(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 2677
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const-wide/32 v1, 0x400000

    invoke-interface {p0, p1, v1, v2, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 2679
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_15

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    :catch_15
    :cond_15
    return v0
.end method

.method public final loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p3, :cond_7

    .line 3946
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz p2, :cond_14

    .line 3949
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 3952
    :try_start_f
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public final makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;"
        }
    .end annotation

    .line 3128
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 3129
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams-IA;)V

    .line 3131
    iput-object v0, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 3133
    iget v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v5, 0x400000

    or-int/2addr v4, v5

    iput v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3135
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setPackageSource(I)V

    const/4 v4, 0x0

    move v5, v1

    move v6, v4

    .line 3140
    :cond_1b
    :goto_1b
    :pswitch_1b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    if-eqz v7, :cond_350

    .line 3141
    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_339

    const/4 v9, -0x1

    .line 3144
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/16 v11, 0x10

    const/4 v12, 0x4

    sparse-switch v10, :sswitch_data_35c

    goto/16 :goto_1e9

    :sswitch_35
    const-string v10, "--skip-verification"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3f

    goto/16 :goto_1e9

    :cond_3f
    const/16 v9, 0x20

    goto/16 :goto_1e9

    :sswitch_43
    const-string v10, "--force-sdk"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4d

    goto/16 :goto_1e9

    :cond_4d
    const/16 v9, 0x1f

    goto/16 :goto_1e9

    :sswitch_51
    const-string v10, "--staged"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5b

    goto/16 :goto_1e9

    :cond_5b
    const/16 v9, 0x1e

    goto/16 :goto_1e9

    :sswitch_5f
    const-string v10, "--restrict-permissions"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_69

    goto/16 :goto_1e9

    :cond_69
    const/16 v9, 0x1d

    goto/16 :goto_1e9

    :sswitch_6d
    const-string v10, "--user"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_77

    goto/16 :goto_1e9

    :cond_77
    const/16 v9, 0x1c

    goto/16 :goto_1e9

    :sswitch_7b
    const-string v10, "--full"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_85

    goto/16 :goto_1e9

    :cond_85
    const/16 v9, 0x1b

    goto/16 :goto_1e9

    :sswitch_89
    const-string v10, "--apex"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_93

    goto/16 :goto_1e9

    :cond_93
    const/16 v9, 0x1a

    goto/16 :goto_1e9

    :sswitch_97
    const-string v10, "--preload"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a1

    goto/16 :goto_1e9

    :cond_a1
    const/16 v9, 0x19

    goto/16 :goto_1e9

    :sswitch_a5
    const-string v10, "--ephemeral"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_af

    goto/16 :goto_1e9

    :cond_af
    const/16 v9, 0x18

    goto/16 :goto_1e9

    :sswitch_b3
    const-string v10, "--originating-uri"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_bd

    goto/16 :goto_1e9

    :cond_bd
    const/16 v9, 0x17

    goto/16 :goto_1e9

    :sswitch_c1
    const-string v10, "--force-queryable"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_cb

    goto/16 :goto_1e9

    :cond_cb
    const/16 v9, 0x16

    goto/16 :goto_1e9

    :sswitch_cf
    const-string v10, "--pkg"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d9

    goto/16 :goto_1e9

    :cond_d9
    const/16 v9, 0x15

    goto/16 :goto_1e9

    :sswitch_dd
    const-string v10, "--abi"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e7

    goto/16 :goto_1e9

    :cond_e7
    const/16 v9, 0x14

    goto/16 :goto_1e9

    :sswitch_eb
    const-string v10, "-t"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f5

    goto/16 :goto_1e9

    :cond_f5
    const/16 v9, 0x13

    goto/16 :goto_1e9

    :sswitch_f9
    const-string v10, "-r"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_103

    goto/16 :goto_1e9

    :cond_103
    const/16 v9, 0x12

    goto/16 :goto_1e9

    :sswitch_107
    const-string v10, "-p"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_111

    goto/16 :goto_1e9

    :cond_111
    const/16 v9, 0x11

    goto/16 :goto_1e9

    :sswitch_115
    const-string v10, "-i"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11f

    goto/16 :goto_1e9

    :cond_11f
    move v9, v11

    goto/16 :goto_1e9

    :sswitch_122
    const-string v10, "-g"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12c

    goto/16 :goto_1e9

    :cond_12c
    const/16 v9, 0xf

    goto/16 :goto_1e9

    :sswitch_130
    const-string v10, "-f"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13a

    goto/16 :goto_1e9

    :cond_13a
    const/16 v9, 0xe

    goto/16 :goto_1e9

    :sswitch_13e
    const-string v10, "-d"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_148

    goto/16 :goto_1e9

    :cond_148
    const/16 v9, 0xd

    goto/16 :goto_1e9

    :sswitch_14c
    const-string v10, "-S"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_156

    goto/16 :goto_1e9

    :cond_156
    const/16 v9, 0xc

    goto/16 :goto_1e9

    :sswitch_15a
    const-string v10, "-R"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_164

    goto/16 :goto_1e9

    :cond_164
    const/16 v9, 0xb

    goto/16 :goto_1e9

    :sswitch_168
    const-string v10, "--staged-ready-timeout"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_172

    goto/16 :goto_1e9

    :cond_172
    const/16 v9, 0xa

    goto/16 :goto_1e9

    :sswitch_176
    const-string v10, "--multi-package"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_180

    goto/16 :goto_1e9

    :cond_180
    const/16 v9, 0x9

    goto/16 :goto_1e9

    :sswitch_184
    const-string v10, "--enable-rollback"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18e

    goto/16 :goto_1e9

    :cond_18e
    const/16 v9, 0x8

    goto/16 :goto_1e9

    :sswitch_192
    const-string v10, "--referrer"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_19b

    goto :goto_1e9

    :cond_19b
    const/4 v9, 0x7

    goto :goto_1e9

    :sswitch_19d
    const-string v10, "--instant"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a6

    goto :goto_1e9

    :cond_1a6
    const/4 v9, 0x6

    goto :goto_1e9

    :sswitch_1a8
    const-string v10, "--instantapp"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1b1

    goto :goto_1e9

    :cond_1b1
    const/4 v9, 0x5

    goto :goto_1e9

    :sswitch_1b3
    const-string v10, "--install-location"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1bc

    goto :goto_1e9

    :cond_1bc
    move v9, v12

    goto :goto_1e9

    :sswitch_1be
    const-string v10, "--dont-kill"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1c7

    goto :goto_1e9

    :cond_1c7
    const/4 v9, 0x3

    goto :goto_1e9

    :sswitch_1c9
    const-string v10, "--force-non-staged"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d2

    goto :goto_1e9

    :cond_1d2
    move v9, v8

    goto :goto_1e9

    :sswitch_1d4
    const-string v10, "--force-uuid"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1dd

    goto :goto_1e9

    :cond_1dd
    move v9, v1

    goto :goto_1e9

    :sswitch_1df
    const-string v10, "--install-reason"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1e8

    goto :goto_1e9

    :cond_1e8
    move v9, v4

    :goto_1e9
    packed-switch v9, :pswitch_data_3e2

    .line 3269
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown option "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3266
    :pswitch_203
    iget v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v8, 0x80000

    or-int/2addr v7, v8

    iput v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_1b

    .line 3244
    :pswitch_20c
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    goto/16 :goto_1b

    .line 3169
    :pswitch_211
    iget v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v8, -0x400001

    and-int/2addr v7, v8

    iput v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_1b

    .line 3216
    :pswitch_21b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    goto/16 :goto_1b

    .line 3210
    :pswitch_227
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    goto/16 :goto_1b

    .line 3234
    :pswitch_22c
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V

    .line 3235
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    goto/16 :goto_1b

    .line 3213
    :pswitch_234
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsVirtualPreload()V

    goto/16 :goto_1b

    .line 3176
    :pswitch_239
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    goto/16 :goto_1b

    .line 3247
    :pswitch_245
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setForceQueryable()V

    goto/16 :goto_1b

    .line 3189
    :pswitch_24a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v7, :cond_254

    goto/16 :goto_1b

    .line 3191
    :cond_254
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing package name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3202
    :pswitch_25c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/pm/PackageManagerShellCommand;->checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    goto/16 :goto_1b

    .line 3157
    :pswitch_268
    iget v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v7, v12

    iput v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_1b

    .line 3182
    :pswitch_26f
    iput v8, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 3183
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v7, :cond_27b

    goto/16 :goto_1b

    .line 3185
    :cond_27b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing inherit package name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3151
    :pswitch_283
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    if-eqz v7, :cond_28d

    goto/16 :goto_1b

    .line 3153
    :cond_28d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing installer package"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3166
    :pswitch_295
    iget v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v7, v7, 0x100

    iput v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_1b

    .line 3160
    :pswitch_29d
    iget v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v7, v11

    iput v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_1b

    .line 3163
    :pswitch_2a4
    iget v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v7, v7, 0x80

    iput v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_1b

    .line 3195
    :pswitch_2ac
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_2bf

    .line 3199
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    goto/16 :goto_1b

    .line 3197
    :cond_2bf
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Size must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2c7
    move v5, v4

    goto/16 :goto_1b

    .line 3263
    :pswitch_2ca
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->stagedReadyTimeoutMs:J

    goto/16 :goto_1b

    .line 3241
    :pswitch_2d6
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setMultiPackage()V

    goto/16 :goto_1b

    .line 3250
    :pswitch_2db
    iget-object v7, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    if-nez v7, :cond_2e3

    const-string v7, "com.android.shell"

    .line 3258
    iput-object v7, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 3260
    :cond_2e3
    iget v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v8, 0x40000

    or-int/2addr v7, v8

    iput v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_1b

    .line 3179
    :pswitch_2ec
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    goto/16 :goto_1b

    .line 3207
    :pswitch_2f8
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    goto/16 :goto_1b

    .line 3219
    :pswitch_2fd
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    goto/16 :goto_1b

    .line 3173
    :pswitch_309
    iget v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v7, v7, 0x1000

    iput v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_1b

    :pswitch_311
    move v6, v1

    goto/16 :goto_1b

    .line 3225
    :pswitch_314
    iget v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v7, v7, 0x200

    iput v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3226
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    const-string/jumbo v8, "internal"

    .line 3227
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 3228
    iput-object v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    goto/16 :goto_1b

    .line 3222
    :pswitch_32d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    goto/16 :goto_1b

    .line 3142
    :cond_339
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported option "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_350
    if-eqz v5, :cond_357

    .line 3273
    iget p0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr p0, v8

    iput p0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :cond_357
    if-eqz v6, :cond_35b

    .line 3276
    iput-boolean v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    :cond_35b
    return-object v2

    :sswitch_data_35c
    .sparse-switch
        -0x7ca7efaa -> :sswitch_1df
        -0x7449dd03 -> :sswitch_1d4
        -0x6c42be18 -> :sswitch_1c9
        -0x69f9e586 -> :sswitch_1be
        -0x4e451eb9 -> :sswitch_1b3
        -0x43c705c0 -> :sswitch_1a8
        -0x38b573bf -> :sswitch_19d
        -0x2a211e41 -> :sswitch_192
        -0x26fa19b2 -> :sswitch_184
        -0xa293dee -> :sswitch_176
        -0x9723f90 -> :sswitch_168
        0x5c5 -> :sswitch_15a
        0x5c6 -> :sswitch_14c
        0x5d7 -> :sswitch_13e
        0x5d9 -> :sswitch_130
        0x5da -> :sswitch_122
        0x5dc -> :sswitch_115
        0x5e3 -> :sswitch_107
        0x5e5 -> :sswitch_f9
        0x5e7 -> :sswitch_eb
        0x2900ec8 -> :sswitch_dd
        0x290482c -> :sswitch_cf
        0x4991420 -> :sswitch_c1
        0x8d57768 -> :sswitch_b3
        0x3eb0e7fd -> :sswitch_a5
        0x3fa0d469 -> :sswitch_97
        0x4f71fec2 -> :sswitch_89
        0x4f74582f -> :sswitch_7b
        0x4f7b216b -> :sswitch_6d
        0x59147c93 -> :sswitch_5f
        0x59daeac6 -> :sswitch_51
        0x781e9cb8 -> :sswitch_43
        0x79732a09 -> :sswitch_35
    .end sparse-switch

    :pswitch_data_3e2
    .packed-switch 0x0
        :pswitch_32d
        :pswitch_314
        :pswitch_311
        :pswitch_309
        :pswitch_2fd
        :pswitch_2f8
        :pswitch_2f8
        :pswitch_2ec
        :pswitch_2db
        :pswitch_2d6
        :pswitch_2ca
        :pswitch_2c7
        :pswitch_2ac
        :pswitch_2a4
        :pswitch_29d
        :pswitch_295
        :pswitch_283
        :pswitch_26f
        :pswitch_1b
        :pswitch_268
        :pswitch_25c
        :pswitch_24a
        :pswitch_245
        :pswitch_239
        :pswitch_2f8
        :pswitch_234
        :pswitch_22c
        :pswitch_227
        :pswitch_21b
        :pswitch_211
        :pswitch_20c
        :pswitch_1b
        :pswitch_203
    .end packed-switch
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 10

    if-nez p1, :cond_7

    .line 215
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 218
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 220
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_55e

    goto/16 :goto_395

    :sswitch_1a
    const-string/jumbo v2, "install"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x8

    goto/16 :goto_396

    :sswitch_27
    const-string v2, "get-moduleinfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x43

    goto/16 :goto_396

    :sswitch_33
    const-string/jumbo v2, "log-visibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x44

    goto/16 :goto_396

    :sswitch_40
    const-string/jumbo v2, "reconcile-secondary-dex-files"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x18

    goto/16 :goto_396

    :sswitch_4d
    const-string v2, "bypass-allowed-apex-update-check"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x46

    goto/16 :goto_396

    :sswitch_59
    const-string/jumbo v2, "set-install-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x12

    goto/16 :goto_396

    :sswitch_66
    const-string/jumbo v2, "set-permission-flags"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x2e

    goto/16 :goto_396

    :sswitch_73
    const-string v2, "disable-until-used"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x24

    goto/16 :goto_396

    :sswitch_7f
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x22

    goto/16 :goto_396

    :sswitch_8b
    const-string/jumbo v2, "install-write"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x10

    goto/16 :goto_396

    :sswitch_98
    const-string/jumbo v2, "set-home-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x3a

    goto/16 :goto_396

    :sswitch_a5
    const-string v2, "clear-permission-flags"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x2f

    goto/16 :goto_396

    :sswitch_b1
    const-string/jumbo v2, "trim-caches"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x34

    goto/16 :goto_396

    :sswitch_be
    const-string v2, "force-dex-opt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x19

    goto/16 :goto_396

    :sswitch_ca
    const-string/jumbo v2, "query-activities"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/4 v2, 0x5

    goto/16 :goto_396

    :sswitch_d6
    const-string v2, "compile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x17

    goto/16 :goto_396

    :sswitch_e2
    const-string/jumbo v2, "set-user-restriction"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x37

    goto/16 :goto_396

    :sswitch_ef
    const-string/jumbo v2, "uninstall-system-updates"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x41

    goto/16 :goto_396

    :sswitch_fc
    const-string/jumbo v2, "install-destroy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0xc

    goto/16 :goto_396

    :sswitch_109
    const-string/jumbo v2, "snapshot-profile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x1e

    goto/16 :goto_396

    :sswitch_116
    const-string/jumbo v2, "rollback-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x42

    goto/16 :goto_396

    :sswitch_123
    const-string/jumbo v2, "reset-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x2d

    goto/16 :goto_396

    :sswitch_130
    const-string/jumbo v2, "install-remove"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0xf

    goto/16 :goto_396

    :sswitch_13d
    const-string/jumbo v2, "install-add-session"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x14

    goto/16 :goto_396

    :sswitch_14a
    const-string v2, "get-harmful-app-warning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x3f

    goto/16 :goto_396

    :sswitch_156
    const-string/jumbo v2, "install-existing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x11

    goto/16 :goto_396

    :sswitch_163
    const-string/jumbo v2, "grant"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x2b

    goto/16 :goto_396

    :sswitch_170
    const-string v2, "clear"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x20

    goto/16 :goto_396

    :sswitch_17c
    const-string/jumbo v2, "install-streaming"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x9

    goto/16 :goto_396

    :sswitch_189
    const-string v2, "get-max-users"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x38

    goto/16 :goto_396

    :sswitch_195
    const-string/jumbo v2, "move-package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x15

    goto/16 :goto_396

    :sswitch_1a2
    const-string/jumbo v2, "path"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    move v2, v6

    goto/16 :goto_396

    :sswitch_1ae
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    move v2, v5

    goto/16 :goto_396

    :sswitch_1ba
    const-string/jumbo v2, "hide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x26

    goto/16 :goto_396

    :sswitch_1c7
    const-string v2, "dump"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    move v2, v7

    goto/16 :goto_396

    :sswitch_1d2
    const-string v2, "gc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    move v2, v4

    goto/16 :goto_396

    :sswitch_1dd
    const-string/jumbo v2, "move-primary-storage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x16

    goto/16 :goto_396

    :sswitch_1ea
    const-string v2, "default-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x25

    goto/16 :goto_396

    :sswitch_1f6
    const-string/jumbo v2, "install-create"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0xe

    goto/16 :goto_396

    :sswitch_203
    const-string/jumbo v2, "install-commit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0xd

    goto/16 :goto_396

    :sswitch_210
    const-string/jumbo v2, "unsuspend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x29

    goto/16 :goto_396

    :sswitch_21d
    const-string/jumbo v2, "set-permission-enforced"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x30

    goto/16 :goto_396

    :sswitch_22a
    const-string/jumbo v2, "remove-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x36

    goto/16 :goto_396

    :sswitch_237
    const-string v2, "get-stagedsessions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x40

    goto/16 :goto_396

    :sswitch_243
    const-string/jumbo v2, "query-receivers"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/4 v2, 0x7

    goto/16 :goto_396

    :sswitch_24f
    const-string v2, "bg-dexopt-job"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x1a

    goto/16 :goto_396

    :sswitch_25b
    const-string/jumbo v2, "query-services"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/4 v2, 0x6

    goto/16 :goto_396

    :sswitch_267
    const-string v2, "create-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x35

    goto/16 :goto_396

    :sswitch_273
    const-string/jumbo v2, "uninstall"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x1f

    goto/16 :goto_396

    :sswitch_280
    const-string v2, "bypass-staged-installer-check"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x45

    goto/16 :goto_396

    :sswitch_28c
    const-string/jumbo v2, "install-incremental"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0xa

    goto/16 :goto_396

    :sswitch_299
    const-string/jumbo v2, "unhide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x27

    goto/16 :goto_396

    :sswitch_2a6
    const-string v2, "dump-profiles"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x1d

    goto/16 :goto_396

    :sswitch_2b2
    const-string/jumbo v2, "revoke"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x2c

    goto/16 :goto_396

    :sswitch_2bf
    const-string/jumbo v2, "set-distracting-restriction"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x2a

    goto/16 :goto_396

    :sswitch_2cc
    const-string v2, "disable-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x23

    goto/16 :goto_396

    :sswitch_2d8
    const-string v2, "get-privapp-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x31

    goto/16 :goto_396

    :sswitch_2e4
    const-string v2, "get-oem-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x33

    goto/16 :goto_396

    :sswitch_2f0
    const-string v2, "get-privapp-deny-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x32

    goto/16 :goto_396

    :sswitch_2fc
    const-string/jumbo v2, "resolve-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    move v2, v3

    goto/16 :goto_396

    :sswitch_308
    const-string v2, "get-instantapp-resolver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x3c

    goto/16 :goto_396

    :sswitch_314
    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x21

    goto/16 :goto_396

    :sswitch_320
    const-string/jumbo v2, "has-feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x3d

    goto/16 :goto_396

    :sswitch_32d
    const-string v2, "cancel-bg-dexopt-job"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x1b

    goto :goto_396

    :sswitch_338
    const-string/jumbo v2, "set-silent-updates-policy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x47

    goto :goto_396

    :sswitch_344
    const-string/jumbo v2, "set-installer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x3b

    goto :goto_396

    :sswitch_350
    const-string v2, "get-max-running-users"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x39

    goto :goto_396

    :sswitch_35b
    const-string/jumbo v2, "suspend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x28

    goto :goto_396

    :sswitch_367
    const-string v2, "delete-dexopt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x1c

    goto :goto_396

    :sswitch_372
    const-string v2, "get-install-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x13

    goto :goto_396

    :sswitch_37d
    const-string/jumbo v2, "install-abandon"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0xb

    goto :goto_396

    :sswitch_389
    const-string/jumbo v2, "set-harmful-app-warning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_395

    const/16 v2, 0x3e

    goto :goto_396

    :cond_395
    :goto_395
    move v2, v1

    :goto_396
    packed-switch v2, :pswitch_data_680

    .line 368
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mDomainVerificationShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    goto/16 :goto_504

    .line 366
    :pswitch_39d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetSilentUpdatesPolicy()I

    move-result p0

    return p0

    .line 364
    :pswitch_3a2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runBypassAllowedApexUpdateCheck()I

    move-result p0

    return p0

    .line 362
    :pswitch_3a7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runBypassStagedInstallerCheck()I

    move-result p0

    return p0

    .line 360
    :pswitch_3ac
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runLogVisibility()I

    move-result p0

    return p0

    .line 358
    :pswitch_3b1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetModuleInfo()I

    move-result p0

    return p0

    .line 356
    :pswitch_3b6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRollbackApp()I

    move-result p0

    return p0

    .line 353
    :pswitch_3bb
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->uninstallSystemUpdates(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 351
    :pswitch_3c4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListStagedSessions()I

    move-result p0

    return p0

    .line 349
    :pswitch_3c9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetHarmfulAppWarning()I

    move-result p0

    return p0

    .line 347
    :pswitch_3ce
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHarmfulAppWarning()I

    move-result p0

    return p0

    .line 345
    :pswitch_3d3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runHasFeature()I

    move-result p0

    return p0

    .line 343
    :pswitch_3d8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetInstantAppResolver()I

    move-result p0

    return p0

    .line 341
    :pswitch_3dd
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetInstaller()I

    move-result p0

    return p0

    .line 339
    :pswitch_3e2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHomeActivity()I

    move-result p0

    return p0

    .line 337
    :pswitch_3e7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetMaxRunningUsers()I

    move-result p0

    return p0

    .line 335
    :pswitch_3ec
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetMaxUsers()I

    move-result p0

    return p0

    .line 333
    :pswitch_3f1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetUserRestriction()I

    move-result p0

    return p0

    .line 331
    :pswitch_3f6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRemoveUser()I

    move-result p0

    return p0

    .line 329
    :pswitch_3fb
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runCreateUser()I

    move-result p0

    return p0

    .line 327
    :pswitch_400
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runTrimCaches()I

    move-result p0

    return p0

    .line 325
    :pswitch_405
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetOemPermissions()I

    move-result p0

    return p0

    .line 323
    :pswitch_40a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPrivappDenyPermissions()I

    move-result p0

    return p0

    .line 321
    :pswitch_40f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPrivappPermissions()I

    move-result p0

    return p0

    .line 319
    :pswitch_414
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetPermissionEnforced()I

    move-result p0

    return p0

    .line 317
    :pswitch_419
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->setOrClearPermissionFlags(Z)I

    move-result p0

    return p0

    .line 315
    :pswitch_41e
    invoke-virtual {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->setOrClearPermissionFlags(Z)I

    move-result p0

    return p0

    .line 313
    :pswitch_423
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResetPermissions()I

    move-result p0

    return p0

    .line 311
    :pswitch_428
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runGrantRevokePermission(Z)I

    move-result p0

    return p0

    .line 309
    :pswitch_42d
    invoke-virtual {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runGrantRevokePermission(Z)I

    move-result p0

    return p0

    .line 307
    :pswitch_432
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetDistractingRestriction()I

    move-result p0

    return p0

    .line 305
    :pswitch_437
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(Z)I

    move-result p0

    return p0

    .line 303
    :pswitch_43c
    invoke-virtual {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(Z)I

    move-result p0

    return p0

    .line 301
    :pswitch_441
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHiddenSetting(Z)I

    move-result p0

    return p0

    .line 299
    :pswitch_446
    invoke-virtual {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHiddenSetting(Z)I

    move-result p0

    return p0

    .line 297
    :pswitch_44b
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result p0

    return p0

    .line 294
    :pswitch_450
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result p0

    return p0

    .line 291
    :pswitch_455
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result p0

    return p0

    .line 289
    :pswitch_45a
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result p0

    return p0

    .line 287
    :pswitch_45f
    invoke-virtual {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result p0

    return p0

    .line 285
    :pswitch_464
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runClear()I

    move-result p0

    return p0

    .line 283
    :pswitch_469
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runUninstall()I

    move-result p0

    return p0

    .line 281
    :pswitch_46e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSnapshotProfile()I

    move-result p0

    return p0

    .line 279
    :pswitch_473
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDumpProfiles()I

    move-result p0

    return p0

    .line 277
    :pswitch_478
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDeleteDexOpt()I

    move-result p0

    return p0

    .line 275
    :pswitch_47d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->cancelBgDexOptJob()I

    move-result p0

    return p0

    .line 273
    :pswitch_482
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDexoptJob()I

    move-result p0

    return p0

    .line 271
    :pswitch_487
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runForceDexOpt()I

    move-result p0

    return p0

    .line 269
    :pswitch_48c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runreconcileSecondaryDexFiles()I

    move-result p0

    return p0

    .line 267
    :pswitch_491
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runCompile()I

    move-result p0

    return p0

    .line 265
    :pswitch_496
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMovePrimaryStorage()I

    move-result p0

    return p0

    .line 263
    :pswitch_49b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMovePackage()I

    move-result p0

    return p0

    .line 261
    :pswitch_4a0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallAddSession()I

    move-result p0

    return p0

    .line 259
    :pswitch_4a5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetInstallLocation()I

    move-result p0

    return p0

    .line 257
    :pswitch_4aa
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetInstallLocation()I

    move-result p0

    return p0

    .line 255
    :pswitch_4af
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallExisting()I

    move-result p0

    return p0

    .line 253
    :pswitch_4b4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallWrite()I

    move-result p0

    return p0

    .line 251
    :pswitch_4b9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallRemove()I

    move-result p0

    return p0

    .line 249
    :pswitch_4be
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCreate()I

    move-result p0

    return p0

    .line 247
    :pswitch_4c3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCommit()I

    move-result p0

    return p0

    .line 245
    :pswitch_4c8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallAbandon()I

    move-result p0

    return p0

    .line 242
    :pswitch_4cd
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runIncrementalInstall()I

    move-result p0

    return p0

    .line 240
    :pswitch_4d2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runStreamingInstall()I

    move-result p0

    return p0

    .line 238
    :pswitch_4d7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstall()I

    move-result p0

    return p0

    .line 236
    :pswitch_4dc
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentReceivers()I

    move-result p0

    return p0

    .line 234
    :pswitch_4e1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentServices()I

    move-result p0

    return p0

    .line 232
    :pswitch_4e6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentActivities()I

    move-result p0

    return p0

    .line 230
    :pswitch_4eb
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResolveActivity()I

    move-result p0

    return p0

    .line 228
    :pswitch_4f0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGc()I

    move-result p0

    return p0

    .line 226
    :pswitch_4f5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runList()I

    move-result p0

    return p0

    .line 224
    :pswitch_4fa
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDump()I

    move-result p0

    return p0

    .line 222
    :pswitch_4ff
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runPath()I

    move-result p0

    return p0

    .line 369
    :goto_504
    invoke-virtual {v2, p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runCommand(Lcom/android/modules/utils/BasicShellCommandHandler;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_510

    .line 371
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, v7

    return p0

    .line 374
    :cond_510
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_530

    const-string v2, "-l"

    .line 376
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_523

    .line 377
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result p0

    return p0

    :cond_523
    const-string v2, "-lf"

    .line 378
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_543

    .line 379
    invoke-virtual {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result p0

    return p0

    .line 381
    :cond_530
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_543

    const-string v3, "-p"

    .line 382
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_543

    .line 383
    invoke-virtual {p0, v2, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->displayPackageFilePath(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 386
    :cond_543
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0
    :try_end_547
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_547} :catch_548

    return p0

    :catch_548
    move-exception p0

    .line 390
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :sswitch_data_55e
    .sparse-switch
        -0x7d5639bf -> :sswitch_389
        -0x7540f3bd -> :sswitch_37d
        -0x737996c2 -> :sswitch_372
        -0x7288a262 -> :sswitch_367
        -0x6e635fc4 -> :sswitch_35b
        -0x6e1196e6 -> :sswitch_350
        -0x67c8bc23 -> :sswitch_344
        -0x5b75ef1e -> :sswitch_338
        -0x55e399df -> :sswitch_32d
        -0x504e493d -> :sswitch_320
        -0x4d6ada7d -> :sswitch_314
        -0x4b90d264 -> :sswitch_308
        -0x495fa230 -> :sswitch_2fc
        -0x41b47fcb -> :sswitch_2f0
        -0x410d7369 -> :sswitch_2e4
        -0x3fd1a8ae -> :sswitch_2d8
        -0x3d838470 -> :sswitch_2cc
        -0x38494450 -> :sswitch_2bf
        -0x37b0f17a -> :sswitch_2b2
        -0x36d5185d -> :sswitch_2a6
        -0x321a08a5 -> :sswitch_299
        -0x2c20e158 -> :sswitch_28c
        -0x29ee859f -> :sswitch_280
        -0x2549d71e -> :sswitch_273
        -0x202b5604 -> :sswitch_267
        -0x1b57243d -> :sswitch_25b
        -0x1a825bcc -> :sswitch_24f
        -0x1a490a61 -> :sswitch_243
        -0x18d650e6 -> :sswitch_237
        -0x143f388c -> :sswitch_22a
        -0xd1dc6eb -> :sswitch_21d
        -0x85b5c7d -> :sswitch_210
        -0x7e40657 -> :sswitch_203
        -0x7bd8e92 -> :sswitch_1f6
        -0x6dac5fb -> :sswitch_1ea
        -0x533744c -> :sswitch_1dd
        0xcdc -> :sswitch_1d2
        0x2f39f4 -> :sswitch_1c7
        0x30dd42 -> :sswitch_1ba
        0x32b09e -> :sswitch_1ae
        0x346425 -> :sswitch_1a2
        0x120f24a -> :sswitch_195
        0x5296aa8 -> :sswitch_189
        0x5951ab0 -> :sswitch_17c
        0x5a5b64d -> :sswitch_170
        0x5e0c11c -> :sswitch_163
        0x664b17d -> :sswitch_156
        0x8569735 -> :sswitch_14a
        0xe265438 -> :sswitch_13d
        0x1127c8f6 -> :sswitch_130
        0x156ea506 -> :sswitch_123
        0x1678dbb8 -> :sswitch_116
        0x1bde3ea0 -> :sswitch_109
        0x2f90ddc8 -> :sswitch_fc
        0x3142fb77 -> :sswitch_ef
        0x372512d5 -> :sswitch_e2
        0x38a75a33 -> :sswitch_d6
        0x3ec9c212 -> :sswitch_ca
        0x4308171b -> :sswitch_be
        0x4634ad3c -> :sswitch_b1
        0x533c0489 -> :sswitch_a5
        0x55326612 -> :sswitch_98
        0x5bb0b12d -> :sswitch_8b
        0x639e22e8 -> :sswitch_7f
        0x653560d1 -> :sswitch_73
        0x67a44b14 -> :sswitch_66
        0x681c75b2 -> :sswitch_59
        0x68bf5845 -> :sswitch_4d
        0x6a555f29 -> :sswitch_40
        0x6cc4393b -> :sswitch_33
        0x6ecbfff1 -> :sswitch_27
        0x74ae259b -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_680
    .packed-switch 0x0
        :pswitch_4ff
        :pswitch_4fa
        :pswitch_4f5
        :pswitch_4f0
        :pswitch_4eb
        :pswitch_4e6
        :pswitch_4e1
        :pswitch_4dc
        :pswitch_4d7
        :pswitch_4d2
        :pswitch_4cd
        :pswitch_4c8
        :pswitch_4c8
        :pswitch_4c3
        :pswitch_4be
        :pswitch_4b9
        :pswitch_4b4
        :pswitch_4af
        :pswitch_4aa
        :pswitch_4a5
        :pswitch_4a0
        :pswitch_49b
        :pswitch_496
        :pswitch_491
        :pswitch_48c
        :pswitch_487
        :pswitch_482
        :pswitch_47d
        :pswitch_478
        :pswitch_473
        :pswitch_46e
        :pswitch_469
        :pswitch_464
        :pswitch_45f
        :pswitch_45a
        :pswitch_455
        :pswitch_450
        :pswitch_44b
        :pswitch_446
        :pswitch_441
        :pswitch_43c
        :pswitch_437
        :pswitch_432
        :pswitch_42d
        :pswitch_428
        :pswitch_423
        :pswitch_41e
        :pswitch_419
        :pswitch_414
        :pswitch_40f
        :pswitch_40a
        :pswitch_405
        :pswitch_400
        :pswitch_3fb
        :pswitch_3f6
        :pswitch_3f1
        :pswitch_3ec
        :pswitch_3e7
        :pswitch_3e2
        :pswitch_3dd
        :pswitch_3d8
        :pswitch_3d3
        :pswitch_3ce
        :pswitch_3c9
        :pswitch_3c4
        :pswitch_3bb
        :pswitch_3b6
        :pswitch_3b1
        :pswitch_3ac
        :pswitch_3a7
        :pswitch_3a2
        :pswitch_39d
    .end packed-switch
.end method

.method public onHelp()V
    .registers 10

    .line 3977
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Package manager (package) commands:"

    .line 3978
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    .line 3979
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    .line 3980
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    .line 3981
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  path [--user USER_ID] PACKAGE"

    .line 3982
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Print the path to the .apk of the given PACKAGE."

    .line 3983
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3984
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dump PACKAGE"

    .line 3985
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Print various system state associated with the given PACKAGE."

    .line 3986
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3987
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  has-feature FEATURE_NAME [version]"

    .line 3988
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Prints true and returns exit status 0 when system has a FEATURE_NAME,"

    .line 3989
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    otherwise prints false and returns exit status 1"

    .line 3990
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3991
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  list features"

    .line 3992
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Prints all features of the system."

    .line 3993
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3994
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  list instrumentation [-f] [TARGET-PACKAGE]"

    .line 3995
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Prints all test packages; optionally only those targeting TARGET-PACKAGE"

    .line 3996
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Options:"

    .line 3997
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -f: dump the name of the .apk file containing the test package"

    .line 3998
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3999
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  list libraries"

    .line 4000
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Prints all system libraries."

    .line 4001
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4002
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  list packages [-f] [-d] [-e] [-s] [-3] [-i] [-l] [-u] [-U] "

    .line 4003
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      [--show-versioncode] [--apex-only] [--uid UID] [--user USER_ID] [FILTER]"

    .line 4004
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Prints all packages; optionally only those whose name contains"

    .line 4005
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    the text in FILTER.  Options are:"

    .line 4006
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -f: see their associated file"

    .line 4007
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -a: all known packages (but excluding APEXes)"

    .line 4008
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -d: filter to only show disabled packages"

    .line 4009
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -e: filter to only show enabled packages"

    .line 4010
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -s: filter to only show system packages"

    .line 4011
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -3: filter to only show third party packages"

    .line 4012
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -i: see the installer for the packages"

    .line 4013
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -l: ignored (used for compatibility with older releases)"

    .line 4014
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -U: also show the package UID"

    .line 4015
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -u: also include uninstalled packages"

    .line 4016
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --show-versioncode: also show the version code"

    .line 4017
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --apex-only: only show APEX packages"

    .line 4018
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --uid UID: filter to only show packages with the given UID"

    .line 4019
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --user USER_ID: only list packages belonging to the given user"

    .line 4020
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4021
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  list permission-groups"

    .line 4022
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Prints all known permission groups."

    .line 4023
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4024
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  list permissions [-g] [-f] [-d] [-u] [GROUP]"

    .line 4025
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Prints all known permissions; optionally only those in GROUP.  Options are:"

    .line 4026
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -g: organize by group"

    .line 4027
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -f: print all information"

    .line 4028
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -s: short summary"

    .line 4029
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -d: only list dangerous permissions"

    .line 4030
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -u: list only the permissions users will see"

    .line 4031
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4032
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  list staged-sessions [--only-ready] [--only-sessionid] [--only-parent]"

    .line 4033
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Prints all staged sessions."

    .line 4034
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --only-ready: show only staged sessions that are ready"

    .line 4035
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --only-sessionid: show only sessionId of each session"

    .line 4036
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --only-parent: hide all children sessions"

    .line 4037
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4038
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  list users"

    .line 4039
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Prints all users."

    .line 4040
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4041
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  resolve-activity [--brief] [--components] [--query-flags FLAGS]"

    .line 4042
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "       [--user USER_ID] INTENT"

    .line 4043
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    Prints the activity that resolves to the given INTENT."

    .line 4044
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4045
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  query-activities [--brief] [--components] [--query-flags FLAGS]"

    .line 4046
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4047
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    Prints all activities that can handle the given INTENT."

    .line 4048
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4049
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  query-services [--brief] [--components] [--query-flags FLAGS]"

    .line 4050
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4051
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    Prints all services that can handle the given INTENT."

    .line 4052
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4053
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  query-receivers [--brief] [--components] [--query-flags FLAGS]"

    .line 4054
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4055
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Prints all broadcast receivers that can handle the given INTENT."

    .line 4056
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4057
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  install [-rtfdg] [-i PACKAGE] [--user USER_ID|all|current]"

    .line 4058
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "       [-p INHERIT_PACKAGE] [--install-location 0/1/2]"

    .line 4059
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "       [--install-reason 0/1/2/3/4] [--originating-uri URI]"

    .line 4060
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "       [--referrer URI] [--abi ABI_NAME] [--force-sdk]"

    .line 4061
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "       [--preload] [--instant] [--full] [--dont-kill]"

    .line 4062
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "       [--enable-rollback]"

    .line 4063
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "       [--force-uuid internal|UUID] [--pkg PACKAGE] [-S BYTES]"

    .line 4064
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "       [--apex] [--staged-ready-timeout TIMEOUT]"

    .line 4065
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "       [PATH [SPLIT...]|-]"

    .line 4066
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "    Install an application.  Must provide the apk data to install, either as"

    .line 4067
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "    file path(s) or \'-\' to read from stdin.  Options are:"

    .line 4068
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "      -R: disallow replacement of existing application"

    .line 4069
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "      -t: allow test packages"

    .line 4070
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "      -i: specify package name of installer owning the app"

    .line 4071
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "      -f: install application on internal flash"

    .line 4072
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "      -d: allow version code downgrade (debuggable packages only)"

    .line 4073
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "      -p: partial application install (new split on top of existing pkg)"

    .line 4074
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "      -g: grant all runtime permissions"

    .line 4075
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "      -S: size in bytes of package, required for stdin"

    .line 4076
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --user: install under the given user."

    .line 4077
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --dont-kill: installing a new feature split, don\'t kill running app"

    .line 4078
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --restrict-permissions: don\'t whitelist restricted permissions at install"

    .line 4079
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --originating-uri: set URI where app was downloaded from"

    .line 4080
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --referrer: set URI that instigated the install of the app"

    .line 4081
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --pkg: specify expected package name of app being installed"

    .line 4082
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --abi: override the default ABI of the platform"

    .line 4083
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --instant: cause the app to be installed as an ephemeral install app"

    .line 4084
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --full: cause the app to be installed as a non-ephemeral full app"

    .line 4085
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --install-location: force the install location:"

    .line 4086
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "          0=auto, 1=internal only, 2=prefer external"

    .line 4087
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --install-reason: indicates why the app is being installed:"

    .line 4088
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "          0=unknown, 1=admin policy, 2=device restore,"

    .line 4089
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "          3=device setup, 4=user request"

    .line 4090
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --force-uuid: force install on to disk volume with given UUID"

    .line 4091
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --apex: install an .apex file, not an .apk"

    .line 4092
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --staged-ready-timeout: By default, staged sessions wait 60000"

    .line 4093
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "          milliseconds for pre-reboot verification to complete when"

    .line 4095
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "          performing staged install. This flag is used to alter the waiting"

    .line 4096
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "          time. You can skip the waiting time by specifying a TIMEOUT of \'0\'"

    .line 4097
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4098
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "  install-existing [--user USER_ID|all|current]"

    .line 4099
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "       [--instant] [--full] [--wait] [--restrict-permissions] PACKAGE"

    .line 4100
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "    Installs an existing application for a new user.  Options are:"

    .line 4101
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --user: install for the given user."

    .line 4102
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --instant: install as an instant app"

    .line 4103
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --full: install as a full app"

    .line 4104
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --wait: wait until the package is installed"

    .line 4105
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --restrict-permissions: don\'t whitelist restricted permissions"

    .line 4106
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4107
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "  install-create [-lrtsfdg] [-i PACKAGE] [--user USER_ID|all|current]"

    .line 4108
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4109
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4110
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4111
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4112
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "       [--force-uuid internal|UUID] [--pkg PACKAGE] [--apex] [-S BYTES]"

    .line 4113
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "       [--multi-package] [--staged]"

    .line 4114
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Like \"install\", but starts an install session.  Use \"install-write\""

    .line 4115
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    to push data into the session, and \"install-commit\" to finish."

    .line 4116
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4117
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  install-write [-S BYTES] SESSION_ID SPLIT_NAME [PATH|-]"

    .line 4118
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Write an apk into the given install session.  If the path is \'-\', data"

    .line 4119
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    will be read from stdin.  Options are:"

    .line 4120
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4121
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4122
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  install-remove SESSION_ID SPLIT..."

    .line 4123
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Mark SPLIT(s) as removed in the given install session."

    .line 4124
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4125
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  install-add-session MULTI_PACKAGE_SESSION_ID CHILD_SESSION_IDs"

    .line 4126
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Add one or more session IDs to a multi-package session."

    .line 4127
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4128
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  install-commit SESSION_ID"

    .line 4129
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Commit the given active install session, installing the app."

    .line 4130
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4131
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  install-abandon SESSION_ID"

    .line 4132
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Delete the given active install session."

    .line 4133
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4134
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  set-install-location LOCATION"

    .line 4135
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Changes the default install location.  NOTE this is only intended for debugging;"

    .line 4136
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    using this can cause applications to break and other undersireable behavior."

    .line 4137
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    LOCATION is one of:"

    .line 4138
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    0 [auto]: Let system decide the best location"

    .line 4139
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    1 [internal]: Install on internal device storage"

    .line 4140
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    2 [external]: Install on external media"

    .line 4141
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4142
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  get-install-location"

    .line 4143
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Returns the current install location: 0, 1 or 2 as per set-install-location."

    .line 4144
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4145
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  move-package PACKAGE [internal|UUID]"

    .line 4146
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4147
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  move-primary-storage [internal|UUID]"

    .line 4148
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4149
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  uninstall [-k] [--user USER_ID] [--versionCode VERSION_CODE]"

    .line 4150
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "       PACKAGE [SPLIT...]"

    .line 4151
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Remove the given package name from the system.  May remove an entire app"

    .line 4152
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    if no SPLIT names specified, otherwise will remove only the splits of the"

    .line 4153
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    given app.  Options are:"

    .line 4154
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      -k: keep the data and cache directories around after package removal."

    .line 4155
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      --user: remove the app from the given user."

    .line 4156
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      --versionCode: only uninstall if the app has the given version code."

    .line 4157
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4158
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  clear [--user USER_ID] [--cache-only] PACKAGE"

    .line 4159
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Deletes data associated with a package. Options are:"

    .line 4160
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    --user: specifies the user for which we need to clear data"

    .line 4161
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    --cache-only: a flag which tells if we only need to clear cache data"

    .line 4162
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4163
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  enable [--user USER_ID] PACKAGE_OR_COMPONENT"

    .line 4164
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  disable [--user USER_ID] PACKAGE_OR_COMPONENT"

    .line 4165
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  disable-user [--user USER_ID] PACKAGE_OR_COMPONENT"

    .line 4166
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  disable-until-used [--user USER_ID] PACKAGE_OR_COMPONENT"

    .line 4167
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  default-state [--user USER_ID] PACKAGE_OR_COMPONENT"

    .line 4168
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    These commands change the enabled state of a given package or"

    .line 4169
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    component (written as \"package/class\")."

    .line 4170
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4171
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  hide [--user USER_ID] PACKAGE_OR_COMPONENT"

    .line 4172
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  unhide [--user USER_ID] PACKAGE_OR_COMPONENT"

    .line 4173
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4174
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  suspend [--user USER_ID] PACKAGE [PACKAGE...]"

    .line 4175
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Suspends the specified package(s) (as user)."

    .line 4176
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4177
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  unsuspend [--user USER_ID] PACKAGE [PACKAGE...]"

    .line 4178
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Unsuspends the specified package(s) (as user)."

    .line 4179
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4180
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  set-distracting-restriction [--user USER_ID] [--flag FLAG ...]"

    .line 4181
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      PACKAGE [PACKAGE...]"

    .line 4182
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Sets the specified restriction flags to given package(s) (for user)."

    .line 4183
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Flags are:"

    .line 4184
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      hide-notifications: Hides notifications from this package"

    .line 4185
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      hide-from-suggestions: Hides this package from suggestions"

    .line 4186
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "        (by the launcher, etc.)"

    .line 4187
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Any existing flags are overwritten, which also means that if no flags are"

    .line 4188
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    specified then all existing flags will be cleared."

    .line 4189
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4190
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  grant [--user USER_ID] PACKAGE PERMISSION"

    .line 4191
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  revoke [--user USER_ID] PACKAGE PERMISSION"

    .line 4192
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    These commands either grant or revoke permissions to apps.  The permissions"

    .line 4193
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    must be declared as used in the app\'s manifest, be runtime permissions"

    .line 4194
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    (protection level dangerous), and the app targeting SDK greater than Lollipop MR1."

    .line 4195
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4196
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "  set-permission-flags [--user USER_ID] PACKAGE PERMISSION [FLAGS..]"

    .line 4197
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "  clear-permission-flags [--user USER_ID] PACKAGE PERMISSION [FLAGS..]"

    .line 4198
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    These commands either set or clear permission flags on apps.  The permissions"

    .line 4199
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4200
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4201
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    The flags must be one or more of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/pm/PackageManagerShellCommand;->SUPPORTED_PERMISSION_FLAGS_LIST:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4203
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  reset-permissions"

    .line 4204
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Revert all runtime permissions to their default state."

    .line 4205
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4206
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  set-permission-enforced PERMISSION [true|false]"

    .line 4207
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4208
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  get-privapp-permissions TARGET-PACKAGE"

    .line 4209
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Prints all privileged permissions for a package."

    .line 4210
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4211
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  get-privapp-deny-permissions TARGET-PACKAGE"

    .line 4212
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Prints all privileged permissions that are denied for a package."

    .line 4213
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4214
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  get-oem-permissions TARGET-PACKAGE"

    .line 4215
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Prints all OEM permissions for a package."

    .line 4216
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4217
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  trim-caches DESIRED_FREE_SPACE [internal|UUID]"

    .line 4218
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Trim cache files to reach the given free space."

    .line 4219
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4220
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4221
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Lists the current users."

    .line 4222
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4223
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  create-user [--profileOf USER_ID] [--managed] [--restricted] [--ephemeral]"

    .line 4224
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      [--guest] [--pre-create-only] [--user-type USER_TYPE] USER_NAME"

    .line 4225
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Create a new user with the given USER_NAME, printing the new user identifier"

    .line 4226
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    of the user."

    .line 4227
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    USER_TYPE is the name of a user type, e.g. android.os.usertype.profile.MANAGED."

    .line 4229
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      If not specified, the default user type is android.os.usertype.full.SECONDARY."

    .line 4230
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --managed is shorthand for \'--user-type android.os.usertype.profile.MANAGED\'."

    .line 4231
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --restricted is shorthand for \'--user-type android.os.usertype.full.RESTRICTED\'."

    .line 4232
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --guest is shorthand for \'--user-type android.os.usertype.full.GUEST\'."

    .line 4233
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4234
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  remove-user [--set-ephemeral-if-in-use | --wait] USER_ID"

    .line 4235
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Remove the user with the given USER_IDENTIFIER, deleting all data"

    .line 4236
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    associated with that user."

    .line 4237
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --set-ephemeral-if-in-use: If the user is currently running and"

    .line 4238
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        therefore cannot be removed immediately, mark the user as ephemeral"

    .line 4239
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        so that it will be automatically removed when possible (after user"

    .line 4240
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        switch or reboot)"

    .line 4241
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --wait: Wait until user is removed. Ignored if set-ephemeral-if-in-use"

    .line 4242
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4243
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set-user-restriction [--user USER_ID] RESTRICTION VALUE"

    .line 4244
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4245
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  get-max-users"

    .line 4246
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4247
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  get-max-running-users"

    .line 4248
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4249
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  compile [-m MODE | -r REASON] [-f] [-c] [--split SPLIT_NAME]"

    .line 4250
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "          [--reset] [--check-prof (true | false)] (-a | TARGET-PACKAGE)"

    .line 4251
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Trigger compilation of TARGET-PACKAGE or all packages if \"-a\".  Options are:"

    .line 4252
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -a: compile all packages"

    .line 4253
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -c: clear profile data before compiling"

    .line 4254
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -f: force compilation even if not needed"

    .line 4255
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -m: select compilation mode"

    .line 4256
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "          MODE is one of the dex2oat compiler filters:"

    .line 4257
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "            assume-verified"

    .line 4258
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "            extract"

    .line 4259
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "            verify"

    .line 4260
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "            quicken"

    .line 4261
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "            space-profile"

    .line 4262
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "            space"

    .line 4263
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "            speed-profile"

    .line 4264
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "            speed"

    .line 4265
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "            everything"

    .line 4266
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -r: select compilation reason"

    .line 4267
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "          REASON is one of:"

    .line 4268
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4269
    :goto_545
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_563

    .line 4270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "            "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v2

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_545

    :cond_563
    const-string v2, "      --reset: restore package to its post-install state"

    .line 4272
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --check-prof (true | false): look at profiles when doing dexopt?"

    .line 4273
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --secondary-dex: compile app secondary dex files"

    .line 4274
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --split SPLIT: compile only the given split name"

    .line 4275
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --compile-layouts: compile layout resources for faster inflation"

    .line 4276
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4277
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  force-dex-opt PACKAGE"

    .line 4278
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Force immediate execution of dex opt for the given PACKAGE."

    .line 4279
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4280
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  delete-dexopt PACKAGE"

    .line 4281
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Delete dex optimization results for the given PACKAGE."

    .line 4282
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4283
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  bg-dexopt-job"

    .line 4284
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Execute the background optimizations immediately."

    .line 4285
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Note that the command only runs the background optimizer logic. It may"

    .line 4286
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    overlap with the actual job but the job scheduler will not be able to"

    .line 4287
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    cancel it. It will also run even if the device is not in the idle"

    .line 4288
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    maintenance mode."

    .line 4289
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  cancel-bg-dexopt-job"

    .line 4290
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Cancels currently running background optimizations immediately."

    .line 4291
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    This cancels optimizations run from bg-dexopt-job or from JobScjeduler."

    .line 4292
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Note that cancelling currently running bg-dexopt-job command requires"

    .line 4293
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    running this command from separate adb shell."

    .line 4294
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4295
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  reconcile-secondary-dex-files TARGET-PACKAGE"

    .line 4296
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Reconciles the package secondary dex files with the generated oat files."

    .line 4297
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4298
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dump-profiles [--dump-classes-and-methods] TARGET-PACKAGE"

    .line 4299
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Dumps method/class profile files to"

    .line 4300
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    /data/misc/profman/TARGET-PACKAGE-primary.prof.txt."

    .line 4301
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --dump-classes-and-methods: passed along to the profman binary to"

    .line 4303
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        switch to the format used by \'profman --create-profile-from\'."

    .line 4304
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4305
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  snapshot-profile TARGET-PACKAGE [--code-path path]"

    .line 4306
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Take a snapshot of the package profiles to"

    .line 4307
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    /data/misc/profman/TARGET-PACKAGE[-code-path].prof"

    .line 4308
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    If TARGET-PACKAGE=android it will take a snapshot of the boot image"

    .line 4310
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4311
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set-home-activity [--user USER_ID] TARGET-COMPONENT"

    .line 4312
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Set the default home activity (aka launcher)."

    .line 4313
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    TARGET-COMPONENT can be a package name (com.package.my) or a full"

    .line 4314
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    component (com.package.my/component.name). However, only the package name"

    .line 4315
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    matters: the actual component used will be determined automatically from"

    .line 4316
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    the package."

    .line 4317
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4318
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set-installer PACKAGE INSTALLER"

    .line 4319
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Set installer package name"

    .line 4320
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4321
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  get-instantapp-resolver"

    .line 4322
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Return the name of the component that is the current instant app installer."

    .line 4323
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4324
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set-harmful-app-warning [--user <USER_ID>] <PACKAGE> [<WARNING>]"

    .line 4325
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Mark the app as harmful with the given warning message."

    .line 4326
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4327
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  get-harmful-app-warning [--user <USER_ID>] <PACKAGE>"

    .line 4328
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Return the harmful app warning message for the given app, if present"

    .line 4329
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4330
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-string v2, "  uninstall-system-updates [<PACKAGE>]"

    .line 4331
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Removes updates to the given system application and falls back to its"

    .line 4332
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    /system version. Does nothing if the given package is not a system app."

    .line 4333
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    If no package is specified, removes updates to all system applications."

    .line 4334
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4335
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  get-moduleinfo [--all | --installed] [module-name]"

    .line 4336
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Displays module info. If module-name is specified only that info is shown"

    .line 4337
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    By default, without any argument only installed modules are shown."

    .line 4338
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --all: show all module info"

    .line 4339
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --installed: show only installed modules"

    .line 4340
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4341
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  log-visibility [--enable|--disable] <PACKAGE>"

    .line 4342
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Turns on debug logging when visibility is blocked for the given package."

    .line 4343
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --enable: turn on debug logging (default)"

    .line 4344
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --disable: turn off debug logging"

    .line 4345
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4346
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set-silent-updates-policy [--allow-unlimited-silent-updates <INSTALLER>]"

    .line 4347
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "                            [--throttle-time <SECONDS>] [--reset]"

    .line 4348
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Sets the policies of the silent updates."

    .line 4349
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --allow-unlimited-silent-updates: allows unlimited silent updated"

    .line 4350
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        installation requests from the installer without the throttle time."

    .line 4351
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --throttle-time: update the silent updates throttle time in seconds."

    .line 4352
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --reset: restore the installer and throttle time to the default, and"

    .line 4353
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        clear tracks of silent updates in the system."

    .line 4354
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4355
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4356
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mDomainVerificationShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->printHelp(Ljava/io/PrintWriter;)V

    .line 4357
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4358
    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final parseIntentAndUser()Landroid/content/Intent;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v0, -0x2

    .line 1247
    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    const/4 v0, 0x0

    .line 1248
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    .line 1249
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 1250
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerShellCommand$4;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {p0, v0}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v0

    .line 1269
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1270
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1269
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    return-object v0
.end method

.method public final printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    .registers 7

    if-nez p4, :cond_4

    if-eqz p5, :cond_96

    .line 1278
    :cond_4
    iget-object p0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_14

    .line 1279
    new-instance p0, Landroid/content/ComponentName;

    iget-object p4, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p4, p4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 1280
    :cond_14
    iget-object p0, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p0, :cond_24

    .line 1281
    new-instance p0, Landroid/content/ComponentName;

    iget-object p4, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, p4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p4, p4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 1282
    :cond_24
    iget-object p0, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz p0, :cond_34

    .line 1283
    new-instance p0, Landroid/content/ComponentName;

    iget-object p4, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, p4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object p4, p4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_34
    const/4 p0, 0x0

    :goto_35
    if-eqz p0, :cond_96

    if-nez p5, :cond_7f

    .line 1289
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p5, "priority="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p3, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " preferredOrder="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " match=0x"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p3, Landroid/content/pm/ResolveInfo;->match:I

    .line 1291
    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " specificIndex="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p3, Landroid/content/pm/ResolveInfo;->specificIndex:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " isDefault="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1289
    invoke-virtual {p1, p3}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 1295
    :cond_7f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    return-void

    .line 1299
    :cond_96
    invoke-virtual {p3, p1, p2}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public final printSessionList(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;",
            "Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;",
            ")V"
        }
    .end annotation

    .line 1199
    new-instance p0, Landroid/util/SparseArray;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 1200
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 1201
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    .line 1203
    :cond_21
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_25
    :goto_25
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 1204
    iget-boolean v1, p3, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyReady:Z

    if-eqz v1, :cond_3c

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v1

    if-nez v1, :cond_3c

    goto :goto_25

    .line 1207
    :cond_3c
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getParentSessionId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_44

    goto :goto_25

    .line 1210
    :cond_44
    invoke-static {p1, v0, p3}, Lcom/android/server/pm/PackageManagerShellCommand;->printSession(Ljava/io/PrintWriter;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V

    .line 1211
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-boolean v1, p3, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyParent:Z

    if-nez v1, :cond_25

    .line 1212
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1213
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getChildSessionIds()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 1214
    :goto_59
    array-length v2, v0

    if-ge v1, v2, :cond_93

    .line 1215
    aget v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    if-nez v2, :cond_8d

    .line 1217
    iget-boolean v2, p3, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlySessionId:Z

    if-eqz v2, :cond_70

    .line 1218
    aget v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    goto :goto_90

    .line 1220
    :cond_70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sessionId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_90

    .line 1223
    :cond_8d
    invoke-static {p1, v2, p3}, Lcom/android/server/pm/PackageManagerShellCommand;->printSession(Ljava/io/PrintWriter;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V

    :goto_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 1226
    :cond_93
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_25

    :cond_97
    return-void
.end method

.method public final processArgForLocalFile(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)V
    .registers 11

    .line 3657
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3658
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3659
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->getFileStatSize(Ljava/io/File;)J

    move-result-wide v4

    .line 3660
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forLocalFile(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v0

    .line 3664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".idsig"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "r"

    .line 3665
    invoke-virtual {p0, p1, v1}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_4a

    .line 3668
    :try_start_2b
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->readFrom(Landroid/os/ParcelFileDescriptor;)Landroid/os/incremental/V4Signature;

    move-result-object p1

    .line 3669
    invoke-virtual {p1}, Landroid/os/incremental/V4Signature;->toByteArray()[B

    move-result-object p1
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_33} :catch_3a
    .catchall {:try_start_2b .. :try_end_33} :catchall_38

    .line 3673
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v7, p1

    goto :goto_4c

    :catchall_38
    move-exception p1

    goto :goto_46

    :catch_3a
    move-exception p1

    :try_start_3b
    const-string v1, "PackageManagerShellCommand"

    const-string v2, "V4 signature file exists but failed to be parsed."

    .line 3671
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_38

    .line 3673
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4a

    :goto_46
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3674
    throw p1

    :cond_4a
    :goto_4a
    const/4 p0, 0x0

    move-object v7, p0

    :goto_4c
    const/4 v2, 0x0

    .line 3677
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    move-result-object v6

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/PackageInstaller$Session;->addFile(ILjava/lang/String;J[B[B)V

    return-void
.end method

.method public final processArgForStdin(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)I
    .registers 14

    const-string v0, ":"

    .line 3575
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 3582
    :try_start_7
    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_15

    .line 3583
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p2

    const-string v0, "Must specify file name and size"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_15
    const/4 v2, 0x0

    .line 3586
    aget-object v6, v0, v2

    .line 3587
    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 3590
    array-length v4, v0

    if-le v4, v3, :cond_2c

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 3591
    aget-object v3, v0, v3

    goto :goto_2d

    :cond_2c
    move-object v3, v6

    .line 3593
    :goto_2d
    array-length v4, v0

    const/4 v5, 0x3

    if-le v4, v5, :cond_3c

    .line 3594
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v4

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_3d

    :cond_3c
    const/4 v4, 0x0

    :goto_3d
    move-object v10, v4

    .line 3596
    array-length v4, v0

    const/4 v5, 0x4

    if-le v4, v5, :cond_65

    .line 3597
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4c

    if-le v0, v1, :cond_66

    .line 3599
    :cond_4c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported streaming version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_64} :catch_e4

    return v1

    :cond_65
    move v0, v2

    .line 3610
    :cond_66
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 3611
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Empty file name in: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_85
    if-eqz v10, :cond_d6

    if-nez v0, :cond_8e

    .line 3621
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forDataOnlyStreaming(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v0

    goto :goto_92

    .line 3622
    :cond_8e
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forStreaming(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v0

    .line 3624
    :goto_92
    :try_start_92
    array-length v3, v10

    if-lez v3, :cond_da

    invoke-static {v10}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    move-result-object v3

    if-nez v3, :cond_da

    .line 3625
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V4 signature is invalid in: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_b3} :catch_b4

    return v1

    :catch_b4
    move-exception p2

    .line 3629
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V4 signature is invalid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 3635
    :cond_d6
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forStdIn(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v0

    :cond_da
    const/4 v5, 0x0

    .line 3638
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    move-result-object v9

    move-object v4, p2

    invoke-virtual/range {v4 .. v10}, Landroid/content/pm/PackageInstaller$Session;->addFile(ILjava/lang/String;J[B[B)V

    return v2

    :catch_e4
    move-exception p2

    .line 3605
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse file parameters: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reason: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final removeUser(Landroid/os/IUserManager;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManagerShellCommand"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    invoke-interface {p1, p2}, Landroid/os/IUserManager;->removeUser(I)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p0, 0x1

    return p0

    .line 2995
    :cond_1e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: couldn\'t remove user id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final removeUserAndWait(Landroid/os/IUserManager;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing (and waiting for completion) user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManagerShellCommand"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3005
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$5;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/server/pm/PackageManagerShellCommand$5;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;ILjava/util/concurrent/CountDownLatch;)V

    .line 3015
    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    .line 3016
    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    const/4 v4, 0x0

    .line 3019
    :try_start_2d
    invoke-interface {p1, p2}, Landroid/os/IUserManager;->removeUser(I)Z

    move-result p1

    if-eqz p1, :cond_56

    const-wide/16 v5, 0xa

    .line 3020
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_52

    .line 3022
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Error: Remove user %d timed out\n"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p1, v0, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_4e} :catch_74
    .catchall {:try_start_2d .. :try_end_4e} :catchall_72

    .line 3036
    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerInternal;->removeUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    return v4

    :cond_52
    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerInternal;->removeUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    return v1

    .line 3028
    :cond_56
    :try_start_56
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: couldn\'t remove user id "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_6e} :catch_74
    .catchall {:try_start_56 .. :try_end_6e} :catchall_72

    .line 3036
    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerInternal;->removeUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    return v4

    :catchall_72
    move-exception p0

    goto :goto_94

    :catch_74
    move-exception p1

    .line 3032
    :try_start_75
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: Remove user %d wait interrupted: %s\n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v4

    aput-object p1, v5, v1

    invoke-virtual {p0, v0, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 3033
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_90
    .catchall {:try_start_75 .. :try_end_90} :catchall_72

    .line 3036
    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerInternal;->removeUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    return v4

    :goto_94
    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerInternal;->removeUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 3037
    throw p0
.end method

.method public final removeUserWhenPossible(Landroid/os/IUserManager;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " or set as ephemeral if in use."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManagerShellCommand"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3043
    invoke-interface {p1, p2, v0}, Landroid/os/IUserManager;->removeUserWhenPossible(IZ)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_5e

    if-eq p1, v1, :cond_4c

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3a

    .line 3055
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    .line 3056
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Error: couldn\'t remove or mark ephemeral user id %d\n"

    .line 3055
    invoke-virtual {p0, p2, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v1

    .line 3052
    :cond_3a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Success: user %d is already being removed\n"

    invoke-virtual {p0, p2, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v0

    .line 3049
    :cond_4c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Success: user %d set as ephemeral\n"

    invoke-virtual {p0, p2, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v0

    .line 3046
    :cond_5e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Success: user %d removed\n"

    invoke-virtual {p0, p2, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v0
.end method

.method public final runBypassAllowedApexUpdateCheck()I
    .registers 4

    .line 483
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 485
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v1

    .line 486
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-interface {v1, p0}, Landroid/content/pm/IPackageInstaller;->bypassNextAllowedApexUpdateCheck(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_17

    const/4 p0, 0x0

    return p0

    :catch_17
    move-exception p0

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 489
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final runBypassStagedInstallerCheck()I
    .registers 4

    .line 469
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 471
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v1

    .line 472
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-interface {v1, p0}, Landroid/content/pm/IPackageInstaller;->bypassNextStagedInstallerCheck(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_17

    const/4 p0, 0x0

    return p0

    :catch_17
    move-exception p0

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 475
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final runClear()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2323
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 2328
    :goto_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3e

    const-string v6, "--cache-only"

    .line 2329
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c

    const-string v2, "--user"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 2337
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    .line 2331
    :cond_33
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    goto :goto_7

    :cond_3c
    move v3, v5

    goto :goto_7

    .line 2342
    :cond_3e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4e

    .line 2344
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no package specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_4e
    const/16 v4, -0x2710

    const-string/jumbo v6, "runClear"

    .line 2349
    invoke-virtual {p0, v2, v4, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v2

    .line 2350
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;

    invoke-direct {v4}, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;-><init>()V

    if-nez v3, :cond_66

    .line 2352
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 2353
    invoke-interface {v3, v0, v1, v4, v2}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    goto :goto_6b

    .line 2355
    :cond_66
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v0, v2, v4}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    .line 2357
    :goto_6b
    monitor-enter v4

    .line 2358
    :catch_6c
    :goto_6c
    :try_start_6c
    iget-boolean v0, v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z
    :try_end_6e
    .catchall {:try_start_6c .. :try_end_6e} :catchall_8d

    if-nez v0, :cond_74

    .line 2360
    :try_start_70
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_73
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_73} :catch_6c
    .catchall {:try_start_70 .. :try_end_73} :catchall_8d

    goto :goto_6c

    .line 2364
    :cond_74
    :try_start_74
    monitor-exit v4
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_8d

    .line 2366
    iget-boolean v0, v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->result:Z

    if-eqz v0, :cond_83

    .line 2367
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Success"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 2370
    :cond_83
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Failed"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :catchall_8d
    move-exception p0

    .line 2364
    :try_start_8e
    monitor-exit v4
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw p0
.end method

.method public final runCompile()I
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1810
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "dalvik.vm.usejitprofiles"

    const/4 v3, 0x0

    .line 1811
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move v8, v3

    move v9, v8

    move v10, v9

    move v15, v10

    move/from16 v19, v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v18, 0x0

    .line 1823
    :goto_18
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v11

    const/4 v12, -0x1

    const/4 v14, 0x4

    const/4 v13, 0x1

    if-eqz v11, :cond_e5

    .line 1824
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_2be

    goto/16 :goto_9d

    :sswitch_2a
    const-string v14, "--check-prof"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_34

    goto/16 :goto_9d

    :cond_34
    const/16 v12, 0x9

    goto/16 :goto_9d

    :sswitch_38
    const-string v14, "--compile-layouts"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_42

    goto/16 :goto_9d

    :cond_42
    const/16 v12, 0x8

    goto/16 :goto_9d

    :sswitch_46
    const-string v14, "--secondary-dex"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4f

    goto :goto_9d

    :cond_4f
    const/4 v12, 0x7

    goto :goto_9d

    :sswitch_51
    const-string v14, "-r"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5a

    goto :goto_9d

    :cond_5a
    const/4 v12, 0x6

    goto :goto_9d

    :sswitch_5c
    const-string v14, "-m"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_65

    goto :goto_9d

    :cond_65
    const/4 v12, 0x5

    goto :goto_9d

    :sswitch_67
    const-string v4, "-f"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_70

    goto :goto_9d

    :cond_70
    move v12, v14

    goto :goto_9d

    :sswitch_72
    const-string v4, "-c"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    goto :goto_9d

    :cond_7b
    const/4 v12, 0x3

    goto :goto_9d

    :sswitch_7d
    const-string v4, "-a"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_86

    goto :goto_9d

    :cond_86
    const/4 v12, 0x2

    goto :goto_9d

    :sswitch_88
    const-string v4, "--split"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_91

    goto :goto_9d

    :cond_91
    move v12, v13

    goto :goto_9d

    :sswitch_93
    const-string v4, "--reset"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9c

    goto :goto_9d

    :cond_9c
    move v12, v3

    :goto_9d
    packed-switch v12, :pswitch_data_2e8

    .line 1858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v13

    .line 1844
    :pswitch_b5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_18

    :pswitch_bb
    move v8, v13

    goto/16 :goto_18

    :pswitch_be
    move v10, v13

    goto/16 :goto_18

    .line 1838
    :pswitch_c1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_18

    .line 1835
    :pswitch_c7
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_18

    :pswitch_cd
    move v15, v13

    goto/16 :goto_18

    :pswitch_d0
    move/from16 v19, v13

    goto/16 :goto_18

    :pswitch_d4
    move v9, v13

    goto/16 :goto_18

    .line 1855
    :pswitch_d7
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_18

    :pswitch_dd
    const-string/jumbo v7, "install"

    move v15, v13

    move/from16 v19, v15

    goto/16 :goto_18

    :cond_e5
    const-string v4, "call runCompile by cmdline"

    .line 1863
    invoke-static {v14, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    if-eqz v5, :cond_107

    const-string/jumbo v2, "true"

    .line 1866
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    move v2, v13

    goto :goto_107

    :cond_f7
    const-string v2, "false"

    .line 1868
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    move v2, v3

    goto :goto_107

    :cond_101
    const-string v0, "Invalid value for \"--check-prof\". Expected \"true\" or \"false\"."

    .line 1871
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v13

    :cond_107
    :goto_107
    if-eqz v6, :cond_10b

    move v4, v13

    goto :goto_10c

    :cond_10b
    move v4, v3

    :goto_10c
    if-eqz v7, :cond_110

    move v5, v13

    goto :goto_111

    :cond_110
    move v5, v3

    :goto_111
    if-nez v4, :cond_117

    if-nez v5, :cond_117

    if-eqz v8, :cond_12f

    :cond_117
    if-nez v4, :cond_11d

    if-eqz v5, :cond_11d

    if-nez v8, :cond_12f

    :cond_11d
    if-eqz v4, :cond_123

    if-nez v5, :cond_123

    if-nez v8, :cond_12f

    :cond_123
    if-eqz v4, :cond_129

    if-eqz v5, :cond_129

    if-eqz v8, :cond_12f

    :cond_129
    if-eqz v4, :cond_135

    if-eqz v5, :cond_135

    if-eqz v8, :cond_135

    :cond_12f
    const-string v0, "Must specify exactly one of compilation filter (\"-m\"), compilation reason (\"-r\"), or compile layouts (\"--compile-layouts\")"

    .line 1884
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v13

    :cond_135
    if-eqz v9, :cond_13f

    if-eqz v18, :cond_13f

    const-string v0, "-a cannot be specified together with --split"

    .line 1890
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v13

    :cond_13f
    if-eqz v10, :cond_149

    if-eqz v18, :cond_149

    const-string v0, "--secondary-dex cannot be specified together with --split"

    .line 1895
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v13

    :cond_149
    if-eqz v4, :cond_16d

    .line 1901
    invoke-static {v6}, Ldalvik/system/DexFile;->isValidCompilerFilter(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16b

    .line 1902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not a valid compilation filter."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v13

    :cond_16b
    move-object v4, v6

    goto :goto_16e

    :cond_16d
    const/4 v4, 0x0

    :goto_16e
    if-eqz v5, :cond_19e

    move v4, v3

    .line 1910
    :goto_171
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_182

    .line 1911
    aget-object v5, v5, v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17f

    goto :goto_183

    :cond_17f
    add-int/lit8 v4, v4, 0x1

    goto :goto_171

    :cond_182
    move v4, v12

    :goto_183
    if-ne v4, v12, :cond_19a

    .line 1918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown compilation reason: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v13

    .line 1922
    :cond_19a
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v4

    :cond_19e
    if-eqz v9, :cond_1a7

    .line 1928
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5}, Landroid/content/pm/IPackageManager;->getAllPackages()Ljava/util/List;

    move-result-object v5

    goto :goto_1b7

    .line 1930
    :cond_1a7
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1b3

    const-string v0, "Error: package name not specified"

    .line 1932
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v13

    .line 1935
    :cond_1b3
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 1938
    :goto_1b7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1940
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v11, v3

    :goto_1c1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, "/"

    if-eqz v12, :cond_23e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v19, :cond_1d6

    .line 1942
    iget-object v14, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v14, v12}, Landroid/content/pm/IPackageManager;->clearApplicationProfileData(Ljava/lang/String;)V

    :cond_1d6
    if-eqz v9, :cond_1fe

    .line 1946
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1947
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    :cond_1fe
    move/from16 v20, v11

    if-eqz v8, :cond_213

    .line 1952
    const-class v11, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v11}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageManagerInternal;

    .line 1954
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManagerInternal;->compileLayouts(Ljava/lang/String;)Z

    move-result v11

    :goto_20e
    move-object v3, v12

    move/from16 v22, v15

    const/4 v0, 0x4

    goto :goto_22f

    :cond_213
    if-eqz v10, :cond_21c

    .line 1957
    iget-object v11, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v11, v12, v4, v15}, Landroid/content/pm/IPackageManager;->performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    goto :goto_20e

    .line 1959
    :cond_21c
    iget-object v11, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/16 v21, 0x1

    move-object v14, v12

    move v13, v2

    move-object v3, v14

    const/4 v0, 0x4

    move-object v14, v4

    move/from16 v22, v15

    move/from16 v16, v21

    move-object/from16 v17, v18

    invoke-interface/range {v11 .. v17}, Landroid/content/pm/IPackageManager;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    move-result v11

    :goto_22f
    if-nez v11, :cond_234

    .line 1964
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_234
    move v14, v0

    move/from16 v11, v20

    move/from16 v15, v22

    const/4 v3, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    goto :goto_1c1

    :cond_23e
    move v0, v14

    .line 1968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish runCompile by cmdline (failed cnt): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1969
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1968
    invoke-static {v0, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 1971
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26e

    const-string v0, "Success"

    .line 1972
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_26e
    const/4 v0, 0x0

    .line 1974
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_296

    .line 1975
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure: package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " could not be compiled"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_296
    const-string v2, "Failure: the following packages could not be compiled: "

    .line 1978
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1980
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v13, v3

    :goto_2a0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v13, :cond_2b0

    move v13, v0

    goto :goto_2b5

    :cond_2b0
    const-string v5, ", "

    .line 1984
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1986
    :goto_2b5
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2a0

    .line 1988
    :cond_2b9
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    return v3

    nop

    :sswitch_data_2be
    .sparse-switch
        -0x60476451 -> :sswitch_93
        -0x60346686 -> :sswitch_88
        0x5d4 -> :sswitch_7d
        0x5d6 -> :sswitch_72
        0x5d9 -> :sswitch_67
        0x5e0 -> :sswitch_5c
        0x5e5 -> :sswitch_51
        0x4baaae9e -> :sswitch_46
        0x4ee8cb4f -> :sswitch_38
        0x64c6429e -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_2e8
    .packed-switch 0x0
        :pswitch_dd
        :pswitch_d7
        :pswitch_d4
        :pswitch_d0
        :pswitch_cd
        :pswitch_c7
        :pswitch_c1
        :pswitch_be
        :pswitch_bb
        :pswitch_b5
    .end packed-switch
.end method

.method public runCreateUser()I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v9, v0

    move-object v4, v1

    move v3, v2

    move v8, v3

    .line 2853
    :cond_7
    :goto_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x1

    if-eqz v5, :cond_c1

    const-string v6, "--profileOf"

    .line 2855
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 2856
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "runCreateUser"

    invoke-virtual {p0, v5, v0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v9

    :goto_25
    move-object v5, v1

    goto :goto_75

    :cond_27
    const-string v6, "--managed"

    .line 2858
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    const-string v5, "android.os.usertype.profile.MANAGED"

    goto :goto_75

    :cond_32
    const-string v6, "--restricted"

    .line 2860
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    const-string v5, "android.os.usertype.full.RESTRICTED"

    goto :goto_75

    :cond_3d
    const-string v6, "--guest"

    .line 2862
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    const-string v5, "android.os.usertype.full.GUEST"

    goto :goto_75

    :cond_48
    const-string v6, "--demo"

    .line 2864
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    const-string v5, "android.os.usertype.full.DEMO"

    goto :goto_75

    :cond_53
    const-string v6, "--ephemeral"

    .line 2866
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    or-int/lit16 v8, v8, 0x100

    goto :goto_25

    :cond_5e
    const-string v6, "--pre-create-only"

    .line 2868
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    move-object v5, v1

    move v3, v11

    goto :goto_75

    :cond_69
    const-string v6, "--user-type"

    .line 2870
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 2871
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    :goto_75
    if-eqz v5, :cond_7

    if-eqz v4, :cond_a5

    .line 2878
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a5

    .line 2879
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: more than one user type was specified ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v11

    :cond_a5
    move-object v4, v5

    goto/16 :goto_7

    .line 2873
    :cond_a8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown option "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v11

    .line 2886
    :cond_c1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_d3

    if-nez v3, :cond_d3

    .line 2888
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no user name specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v11

    :cond_d3
    if-eqz v6, :cond_e0

    if-eqz v3, :cond_e0

    .line 2892
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v5, "Warning: name is ignored for pre-created users"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e0
    const-string/jumbo v0, "user"

    .line 2898
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2897
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v5

    .line 2900
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->checkIfMaintenanceModeUserExists(Landroid/os/IUserManager;)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 2901
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: couldn\'t create user"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v11

    :cond_fb
    const-string v0, "account"

    .line 2906
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2905
    invoke-static {v0}, Landroid/accounts/IAccountManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;

    move-result-object v0

    if-nez v4, :cond_10b

    .line 2908
    invoke-static {v8}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    move-result-object v4

    :cond_10b
    move-object v7, v4

    const-wide/32 v12, 0x40000

    const-string/jumbo v4, "shell_runCreateUser"

    .line 2910
    invoke-static {v12, v13, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2912
    :try_start_115
    invoke-static {v7}, Landroid/os/UserManager;->isUserTypeRestricted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_134

    if-ltz v9, :cond_11f

    move v3, v9

    goto :goto_120

    :cond_11f
    move v3, v2

    .line 2915
    :goto_120
    invoke-interface {v5, v6, v3}, Landroid/os/IUserManager;->createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2917
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-nez v4, :cond_12e

    const-string/jumbo v4, "root"

    goto :goto_130

    :cond_12e
    const-string v4, "com.android.shell"

    .line 2916
    :goto_130
    invoke-interface {v0, v3, v9, v4}, Landroid/accounts/IAccountManager;->addSharedAccountsFromParentUser(IILjava/lang/String;)V

    goto :goto_148

    :cond_134
    if-gez v9, :cond_143

    if-eqz v3, :cond_13d

    .line 2920
    invoke-interface {v5, v7}, Landroid/os/IUserManager;->preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    goto :goto_141

    .line 2921
    :cond_13d
    invoke-interface {v5, v6, v7, v8}, Landroid/os/IUserManager;->createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    :goto_141
    move-object v1, v0

    goto :goto_148

    :cond_143
    const/4 v10, 0x0

    .line 2923
    invoke-interface/range {v5 .. v10}, Landroid/os/IUserManager;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1
    :try_end_148
    .catch Landroid/os/ServiceSpecificException; {:try_start_115 .. :try_end_148} :catch_14e
    .catchall {:try_start_115 .. :try_end_148} :catchall_14c

    .line 2928
    :goto_148
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_168

    :catchall_14c
    move-exception p0

    goto :goto_18f

    :catch_14e
    move-exception v0

    .line 2926
    :try_start_14f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_167
    .catchall {:try_start_14f .. :try_end_167} :catchall_14c

    goto :goto_148

    :goto_168
    if-eqz v1, :cond_185

    .line 2932
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success: created user id "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 2935
    :cond_185
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: couldn\'t create User."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v11

    .line 2928
    :goto_18f
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2929
    throw p0
.end method

.method public final runDeleteDexOpt()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2025
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2026
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    .line 2027
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    const-string p0, "Error: no package name"

    .line 2028
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 2031
    :cond_15
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 2032
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManagerInternal;->deleteOatArtifactsOfPackage(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_2d

    const-string p0, "Error: delete failed"

    .line 2034
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 2037
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success: freed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete-dexopt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ,freed "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PackageManagerShellCommand"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final runDexoptJob()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2006
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    const-string v2, "call runDexoptJob by cmdline"

    .line 2007
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 2008
    :goto_b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 2009
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 2011
    :cond_15
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->getService()Lcom/android/server/pm/BackgroundDexOptService;

    move-result-object v2

    .line 2012
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v0, 0x0

    .line 2011
    :cond_20
    invoke-virtual {v2, v0}, Lcom/android/server/pm/BackgroundDexOptService;->runBackgroundDexoptJob(Ljava/util/List;)Z

    move-result v0

    .line 2013
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish runDexoptJob by cmdline: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 2014
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    if-eqz v0, :cond_41

    const-string v1, "Success"

    goto :goto_43

    :cond_41
    const-string v1, "Failure"

    :goto_43
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_4a

    const/4 p0, 0x0

    goto :goto_4b

    :cond_4a
    const/4 p0, -0x1

    :goto_4b
    return p0
.end method

.method public final runDump()I
    .registers 2

    .line 3390
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    .line 3392
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no package specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 3395
    :cond_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runDumpProfiles()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2043
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    .line 2047
    :goto_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2c

    const-string v3, "--dump-classes-and-methods"

    .line 2048
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 2053
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_2a
    move v3, v1

    goto :goto_7

    .line 2058
    :cond_2c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2059
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, v0, v3}, Landroid/content/pm/IPackageManager;->dumpProfiles(Ljava/lang/String;Z)V

    return v2
.end method

.method public runForceDexOpt()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2000
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/pm/IPackageManager;->forceDexOpt(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runGc()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 744
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 745
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Ok"

    .line 746
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runGetHarmfulAppWarning()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x2

    .line 3426
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    const-string v0, "--user"

    .line 3427
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3428
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 3430
    :cond_18
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_32
    const/16 v1, -0x2710

    const-string/jumbo v2, "runGetHarmfulAppWarning"

    .line 3436
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v0

    .line 3437
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 3438
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v1, v0}, Landroid/content/pm/IPackageManager;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3439
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 3440
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_54
    const/4 p0, 0x1

    return p0
.end method

.method public final runGetInstallLocation()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1745
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getInstallLocation()I

    move-result v0

    if-nez v0, :cond_b

    const-string v1, "auto"

    goto :goto_1b

    :cond_b
    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    const-string/jumbo v1, "internal"

    goto :goto_1b

    :cond_12
    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    const-string v1, "external"

    goto :goto_1b

    :cond_18
    const-string/jumbo v1, "invalid"

    .line 1754
    :goto_1b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runGetInstantAppResolver()I
    .registers 3

    .line 3353
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x1

    .line 3355
    :try_start_5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getInstantAppResolverComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_e

    return v1

    .line 3359
    :cond_e
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_17

    const/4 p0, 0x0

    return p0

    :catch_17
    move-exception p0

    .line 3362
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public runGetMaxRunningUsers()I
    .registers 4

    .line 3113
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 3114
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 3115
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum supported running users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3116
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMaxRunningUsers()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3115
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public runGetMaxUsers()I
    .registers 3

    .line 3107
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maximum supported users: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3108
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3107
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runGetModuleInfo()I
    .registers 7

    .line 402
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 406
    :cond_5
    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_35

    const-string v4, "--all"

    .line 407
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    const-string v4, "--installed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 414
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_31
    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    goto :goto_5

    .line 419
    :cond_35
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const-string v4, " packageName: "

    if-eqz v2, :cond_61

    .line 422
    :try_start_3d
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, v2, v1}, Landroid/content/pm/IPackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object p0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/pm/ModuleInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_95

    .line 426
    :cond_61
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, v1}, Landroid/content/pm/IPackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object p0

    .line 427
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ModuleInfo;

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/pm/ModuleInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_94} :catch_97

    goto :goto_6b

    :cond_95
    :goto_95
    const/4 p0, 0x1

    return p0

    :catch_97
    move-exception p0

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3
.end method

.method public final runGetOemPermissions()I
    .registers 3

    .line 2773
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    .line 2775
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no package specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 2778
    :cond_11
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 2779
    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 2780
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_2b

    .line 2783
    :cond_22
    new-instance v1, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_35

    .line 2781
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "{}"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_35
    const/4 p0, 0x0

    return p0
.end method

.method public final runGetPrivappDenyPermissions()I
    .registers 4

    .line 2744
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    .line 2746
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no package specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 2751
    :cond_11
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isVendorApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2752
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_61

    .line 2753
    :cond_20
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2754
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_61

    .line 2755
    :cond_2f
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isSystemExtApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 2756
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 2757
    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_61

    .line 2758
    :cond_3e
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isApexApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 2759
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v1

    .line 2760
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->getApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2759
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ApexManager;->getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2761
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    .line 2762
    invoke-virtual {v2, v1, v0}, Lcom/android/server/SystemConfig;->getApexPrivAppDenyPermissions(Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_61

    .line 2764
    :cond_59
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 2767
    :goto_61
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    if-nez v0, :cond_6b

    const-string/jumbo v0, "{}"

    goto :goto_6f

    .line 2768
    :cond_6b
    invoke-virtual {v0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2767
    :goto_6f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runGetPrivappPermissions()I
    .registers 4

    .line 2715
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    .line 2717
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no package specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 2722
    :cond_11
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isVendorApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2723
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_61

    .line 2724
    :cond_20
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2725
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_61

    .line 2726
    :cond_2f
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isSystemExtApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 2727
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 2728
    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_61

    .line 2729
    :cond_3e
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isApexApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 2730
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v1

    .line 2731
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->getApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2730
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ApexManager;->getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2732
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    .line 2733
    invoke-virtual {v2, v1, v0}, Lcom/android/server/SystemConfig;->getApexPrivAppPermissions(Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_61

    .line 2735
    :cond_59
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 2738
    :goto_61
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    if-nez v0, :cond_6b

    const-string/jumbo v0, "{}"

    goto :goto_6f

    .line 2739
    :cond_6b
    invoke-virtual {v0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2738
    :goto_6f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runGrantRevokePermission(Z)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 2585
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    const-string v3, "--user"

    .line 2586
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2587
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 2591
    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_2a

    .line 2593
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: no package specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 2596
    :cond_2a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3a

    .line 2598
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: no permission specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_3a
    const/16 v3, -0x2710

    const-string/jumbo v5, "runGrantRevokePermission"

    .line 2601
    invoke-virtual {p0, v1, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    if-eqz p1, :cond_4f

    .line 2604
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    invoke-virtual {p0, v2, v4, v1}, Landroid/permission/PermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_55

    .line 2606
    :cond_4f
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    const/4 p1, 0x0

    invoke-virtual {p0, v2, v4, v1, p1}, Landroid/permission/PermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_55
    return v0
.end method

.method public final runHasFeature()I
    .registers 7

    .line 3368
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3369
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_11

    const-string p0, "Error: expected FEATURE name"

    .line 3371
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 3374
    :cond_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_19

    const/4 v4, 0x0

    goto :goto_1d

    .line 3376
    :cond_19
    :try_start_19
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3377
    :goto_1d
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v1, v4}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1

    .line 3378
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_2a} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2a} :catch_2d

    xor-int/lit8 p0, v1, 0x1

    return p0

    :catch_2d
    move-exception p0

    .line 3384
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 3381
    :catch_36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: illegal version number "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public final runIncrementalInstall()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1437
    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v0

    .line 1438
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-nez v2, :cond_13

    .line 1440
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getIncrementalDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;

    move-result-object v2

    .line 1439
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V

    .line 1442
    :cond_13
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I

    move-result p0

    return p0
.end method

.method public final runInstall()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1446
    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I

    move-result p0

    return p0
.end method

.method public final runInstallAbandon()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1566
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 1567
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I

    move-result p0

    return p0
.end method

.method public final runInstallAddSession()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1626
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1627
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1629
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 1631
    :goto_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 1632
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->add(I)V

    goto :goto_11

    .line 1634
    :cond_1f
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2c

    const-string p0, "Error: At least two sessions are required."

    .line 1635
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 1638
    :cond_2c
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-virtual {p0, v1, v0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doInstallAddSession(I[IZ)I

    move-result p0

    return p0
.end method

.method public final runInstallCommit()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1571
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-wide/32 v1, 0xea60

    .line 1574
    :goto_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_35

    const-string v1, "--staged-ready-timeout"

    .line 1575
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1577
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_7

    .line 1580
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1583
    :cond_35
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    .line 1584
    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v5

    if-eqz v5, :cond_46

    const/4 p0, 0x1

    return p0

    .line 1587
    :cond_46
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v5

    .line 1588
    invoke-interface {v5, v3}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    if-eqz v5, :cond_63

    .line 1589
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v5

    if-eqz v5, :cond_63

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_63

    .line 1590
    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doWaitForStagedSessionReady(IJLjava/io/PrintWriter;)I

    move-result p0

    return p0

    :cond_63
    const-string p0, "Success"

    .line 1592
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4
.end method

.method public final runInstallCreate()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1597
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1598
    sget-object v1, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_SESSION_CREATE_OPTS:Ljava/util/Set;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v1

    .line 1599
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result p0

    .line 1603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success: created install session ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runInstallExisting()I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1656
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x400000

    move v6, v3

    move v3, v1

    .line 1661
    :goto_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x1

    if-eqz v4, :cond_8f

    const/4 v5, -0x1

    .line 1662
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_13e

    goto :goto_5b

    :sswitch_1a
    const-string v7, "--restrict-permissions"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    goto :goto_5b

    :cond_23
    const/4 v5, 0x5

    goto :goto_5b

    :sswitch_25
    const-string v7, "--wait"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2e

    goto :goto_5b

    :cond_2e
    const/4 v5, 0x4

    goto :goto_5b

    :sswitch_30
    const-string v7, "--user"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_39

    goto :goto_5b

    :cond_39
    const/4 v5, 0x3

    goto :goto_5b

    :sswitch_3b
    const-string v7, "--full"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_44

    goto :goto_5b

    :cond_44
    const/4 v5, 0x2

    goto :goto_5b

    :sswitch_46
    const-string v7, "--ephemeral"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4f

    goto :goto_5b

    :cond_4f
    move v5, v10

    goto :goto_5b

    :sswitch_51
    const-string v7, "--instant"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5a

    goto :goto_5b

    :cond_5a
    move v5, v1

    :goto_5b
    packed-switch v5, :pswitch_data_158

    .line 1682
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    :pswitch_73
    const v4, -0x400001

    and-int/2addr v4, v6

    goto :goto_8c

    :pswitch_78
    move v3, v10

    goto :goto_a

    .line 1664
    :pswitch_7a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    goto :goto_a

    :pswitch_83
    and-int/lit16 v4, v6, -0x801

    or-int/lit16 v4, v4, 0x4000

    goto :goto_8c

    :pswitch_88
    or-int/lit16 v4, v6, 0x800

    and-int/lit16 v4, v4, -0x4001

    :goto_8c
    move v6, v4

    goto/16 :goto_a

    .line 1687
    :cond_8f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_9b

    const-string p0, "Error: package name not specified"

    .line 1689
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    :cond_9b
    const/16 v4, -0x2710

    const-string/jumbo v5, "runInstallExisting"

    .line 1693
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v2

    const/4 v7, 0x0

    if-eqz v3, :cond_f1

    .line 1698
    :try_start_a7
    new-instance v11, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v3, 0x0

    invoke-direct {v11, v3}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver-IA;)V

    .line 1699
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    .line 1700
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installing package "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for user: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1702
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    const/4 v12, 0x0

    move-object v4, v9

    move v5, v6

    move v6, v7

    move-object v7, p0

    move v8, v2

    move-object v9, v12

    .line 1701
    invoke-interface/range {v3 .. v9}, Landroid/content/pm/IPackageInstaller;->installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V

    .line 1703
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object p0

    const-string v2, "android.content.pm.extra.STATUS"

    .line 1704
    invoke-virtual {p0, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string v2, "Received intent for package install"

    .line 1706
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez p0, :cond_ef

    goto :goto_f0

    :cond_ef
    move v1, v10

    :goto_f0
    return v1

    .line 1710
    :cond_f1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v4, v9

    move v5, v2

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result p0
    :try_end_fb
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_fb} :catch_135
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a7 .. :try_end_fb} :catch_135

    const/4 v3, -0x3

    const-string v4, "Package "

    if-eq p0, v3, :cond_11b

    .line 1715
    :try_start_100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " installed for user: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 1713
    :cond_11b
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_135
    .catch Landroid/os/RemoteException; {:try_start_100 .. :try_end_135} :catch_135
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_100 .. :try_end_135} :catch_135

    :catch_135
    move-exception p0

    .line 1718
    invoke-virtual {p0}, Landroid/util/AndroidException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    :sswitch_data_13e
    .sparse-switch
        -0x38b573bf -> :sswitch_51
        0x3eb0e7fd -> :sswitch_46
        0x4f74582f -> :sswitch_3b
        0x4f7b216b -> :sswitch_30
        0x4f7bc715 -> :sswitch_25
        0x59147c93 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_88
        :pswitch_88
        :pswitch_83
        :pswitch_7a
        :pswitch_78
        :pswitch_73
    .end packed-switch
.end method

.method public final runInstallRemove()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1643
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1645
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1647
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v2

    .line 1648
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1d

    const-string p0, "Error: split name not specified"

    .line 1649
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 1652
    :cond_1d
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplits(ILjava/util/Collection;Z)I

    move-result p0

    return p0
.end method

.method public final runInstallWrite()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    move-wide v5, v0

    .line 1611
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    const-string v1, "-S"

    .line 1612
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1613
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_3

    .line 1615
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1619
    :cond_31
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1620
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    .line 1621
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    move-object v2, p0

    .line 1622
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public final runList()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 710
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_11

    const-string p0, "Error: didn\'t specify type of data to list"

    .line 712
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 715
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_102

    :goto_19
    move v3, v2

    goto/16 :goto_96

    :sswitch_1c
    const-string/jumbo v3, "permissions"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_19

    :cond_26
    const/16 v3, 0x9

    goto/16 :goto_96

    :sswitch_2a
    const-string/jumbo v3, "libraries"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_19

    :cond_34
    const/16 v3, 0x8

    goto/16 :goto_96

    :sswitch_38
    const-string/jumbo v3, "packages"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    goto :goto_19

    :cond_42
    const/4 v3, 0x7

    goto :goto_96

    :sswitch_44
    const-string/jumbo v3, "instrumentation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    goto :goto_19

    :cond_4e
    const/4 v3, 0x6

    goto :goto_96

    :sswitch_50
    const-string/jumbo v3, "users"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    goto :goto_19

    :cond_5a
    const/4 v3, 0x5

    goto :goto_96

    :sswitch_5c
    const-string/jumbo v3, "sdks"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    goto :goto_19

    :cond_66
    const/4 v3, 0x4

    goto :goto_96

    :sswitch_68
    const-string v3, "features"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    goto :goto_19

    :cond_71
    const/4 v3, 0x3

    goto :goto_96

    :sswitch_73
    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    goto :goto_19

    :cond_7d
    const/4 v3, 0x2

    goto :goto_96

    :sswitch_7f
    const-string/jumbo v3, "permission-groups"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    goto :goto_19

    :cond_89
    const/4 v3, 0x1

    goto :goto_96

    :sswitch_8b
    const-string/jumbo v3, "staged-sessions"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    goto :goto_19

    :cond_95
    move v3, v4

    :goto_96
    packed-switch v3, :pswitch_data_12c

    .line 739
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown list type \'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 728
    :pswitch_b3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPermissions()I

    move-result p0

    return p0

    .line 721
    :pswitch_b8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListLibraries()I

    move-result p0

    return p0

    .line 719
    :pswitch_bd
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListInstrumentation()I

    move-result p0

    return p0

    :pswitch_c2
    const-string/jumbo v0, "user"

    .line 734
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 735
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const-string/jumbo v0, "list"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    .line 736
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getShellCallback()Landroid/os/ShellCallback;

    move-result-object v10

    invoke-virtual {p0}, Landroid/os/ShellCommand;->adoptResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v11

    .line 734
    invoke-interface/range {v5 .. v11}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    return v4

    .line 732
    :pswitch_e8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListSdks()I

    move-result p0

    return p0

    .line 717
    :pswitch_ed
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListFeatures()I

    move-result p0

    return p0

    .line 724
    :pswitch_f2
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result p0

    return p0

    .line 726
    :pswitch_f7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPermissionGroups()I

    move-result p0

    return p0

    .line 730
    :pswitch_fc
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListStagedSessions()I

    move-result p0

    return p0

    nop

    :sswitch_data_102
    .sparse-switch
        -0x431ede9c -> :sswitch_8b
        -0x3b73d86e -> :sswitch_7f
        -0x301acbba -> :sswitch_73
        -0x11531bc3 -> :sswitch_68
        0x35cb79 -> :sswitch_5c
        0x6a68e08 -> :sswitch_50
        0x20752f6e -> :sswitch_44
        0x2cc154ed -> :sswitch_38
        0x3071b299 -> :sswitch_2a
        0x4392f484 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_fc
        :pswitch_f7
        :pswitch_f2
        :pswitch_ed
        :pswitch_e8
        :pswitch_c2
        :pswitch_bd
        :pswitch_f2
        :pswitch_b8
        :pswitch_b3
    .end packed-switch
.end method

.method public final runListFeatures()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 751
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 752
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 755
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerShellCommand$1;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x0

    if-eqz v1, :cond_1e

    .line 764
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1f

    :cond_1e
    move v2, p0

    :goto_1f
    move v3, p0

    :goto_20
    if-ge v3, v2, :cond_64

    .line 766
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/FeatureInfo;

    const-string v5, "feature:"

    .line 767
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 768
    iget-object v5, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_46

    .line 769
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 770
    iget v5, v4, Landroid/content/pm/FeatureInfo;->version:I

    if-lez v5, :cond_42

    const-string v5, "="

    .line 771
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 772
    iget v4, v4, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 774
    :cond_42
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_61

    .line 776
    :cond_46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reqGlEsVersion=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 777
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 776
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_64
    return p0
.end method

.method public final runListInstrumentation()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 784
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_7
    const/4 v4, -0x1

    .line 790
    :try_start_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_45

    .line 791
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x5d9

    if-eq v6, v7, :cond_17

    goto :goto_21

    :cond_17
    const-string v6, "-f"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    move v6, v1

    goto :goto_22

    :cond_21
    :goto_21
    move v6, v4

    :goto_22
    if-eqz v6, :cond_43

    .line 796
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x2d

    if-eq v2, v6, :cond_2e

    move-object v2, v5

    goto :goto_7

    .line 799
    :cond_2e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_42} :catch_9d

    return v4

    :cond_43
    const/4 v3, 0x1

    goto :goto_7

    .line 810
    :cond_45
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 811
    invoke-interface {v4, v2, v1}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    .line 814
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$2;

    invoke-direct {v4, p0}, Lcom/android/server/pm/PackageManagerShellCommand$2;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v2, :cond_5e

    .line 820
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_5f

    :cond_5e
    move p0, v1

    :goto_5f
    move v4, v1

    :goto_60
    if-ge v4, p0, :cond_9c

    .line 822
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/InstrumentationInfo;

    const-string/jumbo v6, "instrumentation:"

    .line 823
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v3, :cond_7a

    .line 825
    iget-object v6, v5, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "="

    .line 826
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 828
    :cond_7a
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " (target="

    .line 830
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 831
    iget-object v5, v5, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ")"

    .line 832
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    :cond_9c
    return v1

    :catch_9d
    move-exception p0

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4
.end method

.method public final runListLibraries()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 838
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 839
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 840
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 841
    :goto_11
    array-length v5, v2

    if-ge v4, v5, :cond_1c

    .line 842
    aget-object v5, v2, v4

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 846
    :cond_1c
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$3;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerShellCommand$3;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 855
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    move v2, v3

    :goto_29
    if-ge v2, p0, :cond_3d

    .line 857
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "library:"

    .line 858
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_3d
    return v3
.end method

.method public final runListPackages(Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 865
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(ZZ)I

    move-result p0

    return p0
.end method

.method public final runListPackages(ZZ)I
    .registers 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz p2, :cond_8

    const-string/jumbo v1, "sdk:"

    goto :goto_b

    :cond_8
    const-string/jumbo v1, "package:"

    .line 874
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    move/from16 v5, p1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 886
    :goto_1d
    :pswitch_1d
    :try_start_1d
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11d

    .line 887
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_364

    goto/16 :goto_c2

    :sswitch_2c
    const-string v3, "--apex-only"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    const/16 v3, 0xb

    goto/16 :goto_c3

    :sswitch_38
    const-string v3, "--user"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    const/16 v3, 0xc

    goto/16 :goto_c3

    :sswitch_44
    const-string v3, "--uid"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    const/16 v3, 0xd

    goto/16 :goto_c3

    :sswitch_50
    const-string v3, "-u"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    const/16 v3, 0x8

    goto/16 :goto_c3

    :sswitch_5c
    const-string v3, "-s"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    const/4 v3, 0x6

    goto :goto_c3

    :sswitch_66
    const-string v3, "-l"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    const/4 v3, 0x5

    goto :goto_c3

    :sswitch_70
    const-string v3, "-i"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    const/4 v3, 0x4

    goto :goto_c3

    :sswitch_7a
    const-string v3, "-f"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    const/4 v3, 0x3

    goto :goto_c3

    :sswitch_84
    const-string v3, "-e"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    const/4 v3, 0x1

    goto :goto_c3

    :sswitch_8e
    const-string v3, "-d"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    const/4 v3, 0x0

    goto :goto_c3

    :sswitch_98
    const-string v3, "-a"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    const/4 v3, 0x2

    goto :goto_c3

    :sswitch_a2
    const-string v3, "-U"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    const/4 v3, 0x7

    goto :goto_c3

    :sswitch_ac
    const-string v3, "-3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    const/16 v3, 0x9

    goto :goto_c3

    :sswitch_b7
    const-string v3, "--show-versioncode"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    const/16 v3, 0xa

    goto :goto_c3

    :cond_c2
    :goto_c2
    const/4 v3, -0x1

    :goto_c3
    packed-switch v3, :pswitch_data_39e

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    goto :goto_109

    .line 931
    :pswitch_c9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_ed

    .line 927
    :pswitch_d2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_1d

    :pswitch_dc
    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v6, v3

    const/4 v13, 0x1

    goto/16 :goto_1d

    :pswitch_e2
    const/16 v16, 0x1

    goto/16 :goto_1d

    :pswitch_e6
    const/4 v12, 0x1

    goto/16 :goto_1d

    :pswitch_e9
    or-int/lit16 v6, v6, 0x2000

    goto/16 :goto_1d

    :goto_ed
    :pswitch_ed
    const/4 v15, 0x1

    goto/16 :goto_1d

    :pswitch_f0
    const/4 v11, 0x1

    goto/16 :goto_1d

    :pswitch_f3
    const/4 v14, 0x1

    goto/16 :goto_1d

    :pswitch_f6
    const/4 v5, 0x1

    goto/16 :goto_1d

    :pswitch_f9
    const v3, 0x402000

    or-int/2addr v3, v6

    const/high16 v4, 0x20000000

    or-int v6, v3, v4

    goto/16 :goto_1d

    :pswitch_103
    const/4 v10, 0x1

    goto/16 :goto_1d

    :pswitch_106
    const/4 v9, 0x1

    goto/16 :goto_1d

    .line 934
    :goto_109
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_11b
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_11b} :catch_347

    const/4 v1, -0x1

    return v1

    .line 943
    :cond_11d
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 946
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v4, :cond_148

    .line 947
    invoke-static {}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isCarlifeForceConnect()Z

    move-result v4

    if-eqz v4, :cond_148

    .line 948
    invoke-static {v3}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isBaiduCarlifePkg(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_143

    const-string v4, "carlife"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_143

    if-nez v3, :cond_13c

    goto :goto_143

    :cond_13c
    move-object/from16 v18, v2

    move/from16 v19, v15

    const/4 v2, 0x1

    const/4 v4, 0x0

    goto :goto_14e

    .line 949
    :cond_143
    :goto_143
    invoke-static {v2}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->printCarlifePkgName(Ljava/io/PrintWriter;)V

    const/4 v4, 0x0

    return v4

    :cond_148
    const/4 v4, 0x0

    move-object/from16 v18, v2

    move/from16 v19, v15

    const/4 v2, 0x1

    :goto_14e
    new-array v15, v2, [I

    aput v7, v15, v4

    const/4 v2, -0x1

    if-ne v7, v2, :cond_161

    .line 957
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    .line 958
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v15

    :cond_161
    if-eqz p2, :cond_166

    const/high16 v2, 0x4000000

    or-int/2addr v6, v2

    .line 966
    :cond_166
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 967
    array-length v4, v15

    const/4 v7, 0x0

    :goto_16d
    if-ge v7, v4, :cond_305

    move/from16 v20, v4

    aget v4, v15, v7

    move-object/from16 v21, v15

    const-string/jumbo v15, "runListPackages"

    move/from16 v22, v7

    const/4 v7, 0x0

    .line 969
    invoke-virtual {v0, v4, v7, v15}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v15

    .line 970
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    int-to-long v1, v6

    .line 971
    invoke-interface {v7, v1, v2, v15}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v7

    .line 972
    invoke-virtual {v7}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v7

    .line 974
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    move/from16 v25, v6

    const/4 v6, 0x0

    :goto_195
    if-ge v6, v15, :cond_2ed

    .line 976
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v27, v7

    move-object/from16 v7, v26

    check-cast v7, Landroid/content/pm/PackageInfo;

    move/from16 v26, v15

    .line 977
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v6

    if-eqz v3, :cond_1c5

    .line 978
    iget-object v6, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1c5

    move-wide/from16 v31, v1

    move-object/from16 v29, v3

    :goto_1b8
    move/from16 v34, v4

    move/from16 v30, v8

    move-object/from16 v1, v23

    move-object/from16 v8, v24

    const/4 v4, 0x3

    const/16 v17, 0x1

    goto/16 :goto_2d9

    .line 981
    :cond_1c5
    iget-boolean v6, v7, Landroid/content/pm/PackageInfo;->isApex:Z

    move-object/from16 v29, v3

    const/4 v3, -0x1

    if-eq v8, v3, :cond_1d7

    if-nez v6, :cond_1d7

    .line 982
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v8, :cond_1d7

    move-wide/from16 v31, v1

    goto :goto_1b8

    :cond_1d7
    if-nez v6, :cond_1e6

    .line 986
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v17, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1e8

    move/from16 v3, v17

    goto :goto_1e9

    :cond_1e6
    const/16 v17, 0x1

    :cond_1e8
    const/4 v3, 0x0

    :goto_1e9
    move/from16 v30, v8

    if-nez v6, :cond_1f6

    .line 988
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v8, :cond_1f6

    move/from16 v8, v17

    goto :goto_1f7

    :cond_1f6
    const/4 v8, 0x0

    :goto_1f7
    if-eqz v9, :cond_207

    if-nez v8, :cond_1fc

    goto :goto_207

    :cond_1fc
    :goto_1fc
    move-wide/from16 v31, v1

    move/from16 v34, v4

    move-object/from16 v1, v23

    move-object/from16 v8, v24

    const/4 v4, 0x3

    goto/16 :goto_2d9

    :cond_207
    :goto_207
    if-eqz v10, :cond_20b

    if-eqz v8, :cond_1fc

    :cond_20b
    if-eqz v11, :cond_20f

    if-eqz v3, :cond_1fc

    :cond_20f
    if-eqz v12, :cond_213

    if-nez v3, :cond_1fc

    :cond_213
    if-eqz v13, :cond_218

    if-nez v6, :cond_218

    goto :goto_1fc

    :cond_218
    if-eqz p2, :cond_272

    .line 999
    iget-object v8, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    iget-object v3, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1000
    invoke-interface {v8, v3, v1, v2, v4}, Landroid/content/pm/IPackageManager;->getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    if-nez v3, :cond_225

    goto :goto_1fc

    .line 1006
    :cond_225
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 1007
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    move-wide/from16 v31, v1

    const/4 v1, 0x0

    :goto_230
    if-ge v1, v8, :cond_267

    .line 1008
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/SharedLibraryInfo;

    move-object/from16 v33, v3

    .line 1009
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v3

    move/from16 v34, v4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_260

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_26b

    :cond_260
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v33

    move/from16 v4, v34

    goto :goto_230

    :cond_267
    move/from16 v34, v4

    const/4 v4, 0x3

    const/4 v3, 0x0

    :goto_26b
    if-nez v3, :cond_279

    move-object/from16 v1, v23

    move-object/from16 v8, v24

    goto :goto_2d9

    :cond_272
    move-wide/from16 v31, v1

    move/from16 v34, v4

    const/4 v4, 0x3

    .line 1018
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :cond_279
    move-object/from16 v1, v23

    .line 1021
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_28c

    .line 1023
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 1024
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    :cond_28c
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_2a7

    const-string v2, " versionCode:"

    .line 1028
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2a0

    .line 1030
    iget-wide v2, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_2a7

    .line 1032
    :cond_2a0
    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2a7
    :goto_2a7
    if-eqz v14, :cond_2b9

    const-string v2, "  installer="

    .line 1036
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    iget-object v3, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    :cond_2b9
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda0;-><init>()V

    move-object/from16 v8, v24

    .line 1039
    invoke-interface {v8, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v19, :cond_2d9

    if-nez v6, :cond_2d9

    .line 1043
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d9
    :goto_2d9
    add-int/lit8 v6, v28, 0x1

    move-object/from16 v23, v1

    move-object/from16 v24, v8

    move/from16 v15, v26

    move-object/from16 v7, v27

    move-object/from16 v3, v29

    move/from16 v8, v30

    move-wide/from16 v1, v31

    move/from16 v4, v34

    goto/16 :goto_195

    :cond_2ed
    move-object/from16 v29, v3

    move/from16 v30, v8

    move-object/from16 v1, v23

    move-object/from16 v8, v24

    const/4 v4, 0x3

    const/16 v17, 0x1

    add-int/lit8 v7, v22, 0x1

    move-object v2, v8

    move/from16 v4, v20

    move-object/from16 v15, v21

    move/from16 v6, v25

    move/from16 v8, v30

    goto/16 :goto_16d

    :cond_305
    move-object v8, v2

    .line 1047
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_345

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1048
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v3, v18

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1049
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1050
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33f

    const-string v2, " uid:"

    .line 1051
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ","

    .line 1052
    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1054
    :cond_33f
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v18, v3

    goto :goto_30e

    :cond_345
    const/4 v1, 0x0

    return v1

    :catch_347
    move-exception v0

    move-object v3, v2

    .line 939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    nop

    :sswitch_data_364
    .sparse-switch
        -0x1d6f426b -> :sswitch_b7
        0x5a6 -> :sswitch_ac
        0x5c8 -> :sswitch_a2
        0x5d4 -> :sswitch_98
        0x5d7 -> :sswitch_8e
        0x5d8 -> :sswitch_84
        0x5d9 -> :sswitch_7a
        0x5dc -> :sswitch_70
        0x5df -> :sswitch_66
        0x5e6 -> :sswitch_5c
        0x5e8 -> :sswitch_50
        0x2905ab0 -> :sswitch_44
        0x4f7b216b -> :sswitch_38
        0x6bd72bd7 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_39e
    .packed-switch 0x0
        :pswitch_106
        :pswitch_103
        :pswitch_f9
        :pswitch_f6
        :pswitch_f3
        :pswitch_1d
        :pswitch_f0
        :pswitch_ed
        :pswitch_e9
        :pswitch_e6
        :pswitch_e2
        :pswitch_dc
        :pswitch_d2
        :pswitch_c9
    .end packed-switch
.end method

.method public final runListPermissionGroups()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1060
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1061
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/permission/PermissionManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object p0

    .line 1063
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_10
    if-ge v3, v2, :cond_26

    .line 1065
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PermissionGroupInfo;

    const-string/jumbo v5, "permission group:"

    .line 1066
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1067
    iget-object v4, v4, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_26
    return v1
.end method

.method public final runListPermissions()I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1073
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v9, v2

    move v10, v9

    move v11, v10

    move v12, v11

    .line 1080
    :goto_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_74

    const/4 v4, -0x1

    .line 1081
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_f8

    goto :goto_50

    :sswitch_1a
    const-string v5, "-u"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_50

    :cond_23
    const/4 v4, 0x4

    goto :goto_50

    :sswitch_25
    const-string v5, "-s"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    goto :goto_50

    :cond_2e
    const/4 v4, 0x3

    goto :goto_50

    :sswitch_30
    const-string v5, "-g"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    goto :goto_50

    :cond_39
    const/4 v4, 0x2

    goto :goto_50

    :sswitch_3b
    const-string v5, "-f"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    goto :goto_50

    :cond_44
    move v4, v6

    goto :goto_50

    :sswitch_46
    const-string v5, "-d"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    goto :goto_50

    :cond_4f
    move v4, v1

    :goto_50
    packed-switch v4, :pswitch_data_10e

    .line 1100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :pswitch_68
    move v12, v6

    goto :goto_a

    :pswitch_6a
    move v9, v6

    move v10, v9

    move v11, v10

    goto :goto_a

    :pswitch_6e
    move v9, v6

    goto :goto_a

    :pswitch_70
    move v10, v6

    goto :goto_a

    :pswitch_72
    move v2, v6

    goto :goto_a

    .line 1105
    :cond_74
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-eqz v9, :cond_9b

    .line 1107
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 1108
    invoke-virtual {v3, v1}, Landroid/permission/PermissionManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v3

    .line 1109
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_86
    if-ge v5, v4, :cond_96

    .line 1111
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PermissionGroupInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_86

    :cond_96
    const/4 v3, 0x0

    .line 1113
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    .line 1115
    :cond_9b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 1116
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a2
    const-string v14, ""

    if-eqz v2, :cond_cd

    const-string v2, "Dangerous Permissions:"

    .line 1120
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, v13

    move v4, v9

    move v5, v10

    move v6, v11

    .line 1122
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    if-eqz v12, :cond_f6

    const-string v2, "Normal Permissions:"

    .line 1126
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, v13

    move v4, v9

    move v5, v10

    move v6, v11

    .line 1128
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto :goto_f6

    :cond_cd
    if-eqz v12, :cond_e2

    const-string v2, "Dangerous and Normal Permissions:"

    .line 1133
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, v13

    move v4, v9

    move v5, v10

    move v6, v11

    .line 1135
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto :goto_f6

    :cond_e2
    const-string v2, "All Permissions:"

    .line 1139
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v7, -0x2710

    const/16 v8, 0x2710

    move-object v2, p0

    move-object v3, v13

    move v4, v9

    move v5, v10

    move v6, v11

    .line 1141
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    :cond_f6
    :goto_f6
    return v1

    nop

    :sswitch_data_f8
    .sparse-switch
        0x5d7 -> :sswitch_46
        0x5d9 -> :sswitch_3b
        0x5da -> :sswitch_30
        0x5e6 -> :sswitch_25
        0x5e8 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_72
        :pswitch_70
        :pswitch_6e
        :pswitch_6a
        :pswitch_68
    .end packed-switch
.end method

.method public final runListSdks()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 869
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(ZZ)I

    move-result p0

    return p0
.end method

.method public final runListStagedSessions()I
    .registers 6

    .line 1172
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    .line 1173
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "  "

    const/16 v3, 0x78

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 1174
    :try_start_d
    new-instance v1, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$SessionDump-IA;)V

    .line 1176
    :cond_13
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_38

    .line 1177
    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->setSessionFlag(Ljava/lang/String;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 1178
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_80

    .line 1194
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    return v3

    .line 1184
    :cond_38
    :try_start_38
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1185
    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/IPackageInstaller;->getStagedSessions()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    .line 1186
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->printSessionList(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_49} :catch_4e
    .catchall {:try_start_38 .. :try_end_49} :catchall_80

    const/4 p0, 0x1

    .line 1194
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    return p0

    :catch_4e
    move-exception p0

    .line 1188
    :try_start_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1188
    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_4f .. :try_end_7c} :catchall_80

    .line 1194
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    return v3

    :catchall_80
    move-exception p0

    .line 1172
    :try_start_81
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->close()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_85

    goto :goto_89

    :catchall_85
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_89
    throw p0
.end method

.method public final runLogVisibility()I
    .registers 6

    .line 439
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x1

    :cond_5
    move v2, v1

    .line 443
    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    if-eqz v3, :cond_34

    const-string v2, "--disable"

    .line 444
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "--enable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 452
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_32
    const/4 v2, 0x0

    goto :goto_6

    .line 457
    :cond_34
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 459
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 460
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManagerInternal;->setVisibilityLogging(Ljava/lang/String;Z)V

    return v1

    .line 462
    :cond_46
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no package specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4
.end method

.method public runMovePackage()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1759
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 1761
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: package name not specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 1764
    :cond_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "internal"

    .line 1765
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x0

    .line 1769
    :cond_1f
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v0, v2}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1771
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v2

    .line 1772
    :goto_2b
    invoke-static {v2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v3

    if-nez v3, :cond_3d

    const-wide/16 v2, 0x3e8

    .line 1773
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1774
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v2

    goto :goto_2b

    :cond_3d
    const/16 v0, -0x64

    if-ne v2, v0, :cond_4c

    .line 1778
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Success"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1781
    :cond_4c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public runMovePrimaryStorage()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1787
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "internal"

    .line 1788
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    .line 1792
    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v0

    .line 1794
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v1

    .line 1795
    :goto_1a
    invoke-static {v1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v2

    if-nez v2, :cond_2c

    const-wide/16 v1, 0x3e8

    .line 1796
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 1797
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v1

    goto :goto_1a

    :cond_2c
    const/16 v0, -0x64

    if-ne v1, v0, :cond_3b

    .line 1801
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Success"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1804
    :cond_3b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final runPath()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 682
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const-string v2, "--user"

    .line 683
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 684
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_19

    :cond_18
    move v0, v1

    .line 687
    :goto_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 689
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no package specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 694
    :cond_2a
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v3, :cond_42

    .line 695
    invoke-static {}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isCarlifeForceConnect()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-static {v2}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isBaiduCarlifePkg(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 696
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 697
    invoke-static {p0}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->printCarlifePathInfo(Ljava/io/PrintWriter;)V

    return v1

    :cond_42
    const/16 v1, -0x2710

    const-string/jumbo v3, "runPath"

    .line 704
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v0

    .line 705
    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->displayPackageFilePath(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final runQueryIntentActivities()I
    .registers 12

    .line 1328
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v1
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_93

    .line 1333
    :try_start_4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    int-to-long v3, v3

    iget v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1334
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1335
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_84

    .line 1336
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_25

    goto :goto_84

    .line 1339
    :cond_25
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v3, :cond_63

    .line 1340
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " activities found:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1341
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    move v10, v2

    .line 1342
    :goto_3b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_89

    const-string v4, "  Activity #"

    .line 1343
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "    "

    .line 1344
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3b

    .line 1347
    :cond_63
    new-instance v9, Landroid/util/PrintWriterPrinter;

    invoke-direct {v9, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    move v1, v2

    .line 1348
    :goto_69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_89

    const-string v5, ""

    .line 1349
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v3, p0

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    :cond_84
    :goto_84
    const-string p0, "No activities found"

    .line 1337
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_89} :catch_8a

    :cond_89
    return v2

    :catch_8a
    move-exception p0

    .line 1354
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed calling service"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_93
    move-exception p0

    .line 1330
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final runQueryIntentReceivers()I
    .registers 12

    .line 1396
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v1
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_93

    .line 1401
    :try_start_4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    int-to-long v3, v3

    iget v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1402
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1403
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_84

    .line 1404
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_25

    goto :goto_84

    .line 1407
    :cond_25
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v3, :cond_63

    .line 1408
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " receivers found:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    move v10, v2

    .line 1410
    :goto_3b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_89

    const-string v4, "  Receiver #"

    .line 1411
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "    "

    .line 1412
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3b

    .line 1415
    :cond_63
    new-instance v9, Landroid/util/PrintWriterPrinter;

    invoke-direct {v9, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    move v1, v2

    .line 1416
    :goto_69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_89

    const-string v5, ""

    .line 1417
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v3, p0

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    :cond_84
    :goto_84
    const-string p0, "No receivers found"

    .line 1405
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_89} :catch_8a

    :cond_89
    return v2

    :catch_8a
    move-exception p0

    .line 1422
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed calling service"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_93
    move-exception p0

    .line 1398
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final runQueryIntentServices()I
    .registers 12

    .line 1362
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v1
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_93

    .line 1367
    :try_start_4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    int-to-long v3, v3

    iget v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1368
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1369
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_84

    .line 1370
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_25

    goto :goto_84

    .line 1373
    :cond_25
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v3, :cond_63

    .line 1374
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " services found:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1375
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    move v10, v2

    .line 1376
    :goto_3b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_89

    const-string v4, "  Service #"

    .line 1377
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "    "

    .line 1378
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3b

    .line 1381
    :cond_63
    new-instance v9, Landroid/util/PrintWriterPrinter;

    invoke-direct {v9, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    move v1, v2

    .line 1382
    :goto_69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_89

    const-string v5, ""

    .line 1383
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v3, p0

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    :cond_84
    :goto_84
    const-string p0, "No services found"

    .line 1371
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_89} :catch_8a

    :cond_89
    return v2

    :catch_8a
    move-exception p0

    .line 1388
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed calling service"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_93
    move-exception p0

    .line 1364
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final runRemoveSplits(Ljava/lang/String;Ljava/util/Collection;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2279
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2280
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 2281
    iget v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2282
    iput-object p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    const/4 v2, -0x1

    .line 2284
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2287
    :try_start_19
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplits(ILjava/util/Collection;Z)I

    move-result p2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_36

    if-eqz p2, :cond_23

    .line 2301
    :try_start_1f
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_22

    :catch_22
    return v1

    .line 2291
    :cond_23
    :try_start_23
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result p2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_36

    if-eqz p2, :cond_2d

    .line 2301
    :try_start_29
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2c

    :catch_2c
    return v1

    :cond_2d
    :try_start_2d
    const-string p2, "Success"

    .line 2296
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_33

    return v2

    :catchall_33
    move-exception p2

    move v1, v2

    goto :goto_37

    :catchall_36
    move-exception p2

    :goto_37
    if-eqz v1, :cond_3c

    .line 2301
    :try_start_39
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3c

    .line 2305
    :catch_3c
    :cond_3c
    throw p2
.end method

.method public runRemoveUser()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2947
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_54

    .line 2948
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_a2

    :goto_12
    move v5, v6

    goto :goto_34

    :sswitch_14
    const-string v5, "--wait"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 v5, 0x2

    goto :goto_34

    :sswitch_1f
    const-string v5, "-w"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    goto :goto_12

    :cond_28
    move v5, v4

    goto :goto_34

    :sswitch_2a
    const-string v5, "--set-ephemeral-if-in-use"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    goto :goto_12

    :cond_33
    move v5, v0

    :goto_34
    packed-switch v5, :pswitch_data_b0

    .line 2957
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :pswitch_50
    move v2, v4

    goto :goto_3

    :pswitch_52
    move v1, v4

    goto :goto_3

    .line 2962
    :cond_54
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_64

    .line 2964
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no user id specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 2967
    :cond_64
    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v5, "user"

    .line 2969
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 2968
    invoke-static {v5}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v5

    .line 2971
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->checkIfMaintenanceModeUserExists(Landroid/os/IUserManager;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 2972
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: couldn\'t remove user"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_83
    if-eqz v1, :cond_8a

    .line 2977
    invoke-virtual {p0, v5, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->removeUserWhenPossible(Landroid/os/IUserManager;I)I

    move-result p0

    return p0

    :cond_8a
    if-eqz v2, :cond_91

    .line 2979
    invoke-virtual {p0, v5, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->removeUserAndWait(Landroid/os/IUserManager;I)Z

    move-result v1

    goto :goto_95

    :cond_91
    invoke-virtual {p0, v5, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->removeUser(Landroid/os/IUserManager;I)Z

    move-result v1

    :goto_95
    if-eqz v1, :cond_a1

    .line 2981
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v1, "Success: removed user"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_a1
    return v4

    :sswitch_data_a2
    .sparse-switch
        -0x4149182c -> :sswitch_2a
        0x5ea -> :sswitch_1f
        0x4f7bc715 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_52
        :pswitch_50
        :pswitch_50
    .end packed-switch
.end method

.method public final runResetPermissions()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2612
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-interface {p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->resetRuntimePermissions()V

    const/4 p0, 0x0

    return p0
.end method

.method public final runResolveActivity()I
    .registers 13

    .line 1305
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v1
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_39

    .line 1310
    :try_start_4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    int-to-long v3, v3

    iget v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 1312
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-nez v9, :cond_1f

    const-string p0, "No activity found"

    .line 1314
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2e

    .line 1316
    :cond_1f
    new-instance v7, Landroid/util/PrintWriterPrinter;

    invoke-direct {v7, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v8, ""

    .line 1317
    iget-boolean v10, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v11, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2e} :catch_30

    :goto_2e
    const/4 p0, 0x0

    return p0

    :catch_30
    move-exception p0

    .line 1320
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed calling service"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_39
    move-exception p0

    .line 1307
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final runRollbackApp()I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-wide/32 v1, 0xea60

    .line 549
    :goto_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_35

    const-string v1, "--staged-ready-timeout"

    .line 550
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 552
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_7

    .line 555
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 558
    :cond_35
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_42

    const-string p0, "Error: package name not specified"

    .line 560
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 566
    :cond_42
    :try_start_42
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    const-string v6, "com.android.shell"

    .line 567
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    const/4 v8, 0x0

    .line 566
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5
    :try_end_4f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_42 .. :try_end_4f} :catch_fe

    .line 573
    new-instance v6, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver-IA;)V

    .line 574
    const-class v9, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/rollback/RollbackManager;

    .line 576
    invoke-virtual {v5}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_65
    :goto_65
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_91

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/rollback/RollbackInfo;

    .line 577
    invoke-virtual {v10}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_79
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_65

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/rollback/PackageRollbackInfo;

    .line 578
    invoke-virtual {v12}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_79

    move-object v7, v10

    goto :goto_65

    :cond_91
    if-nez v7, :cond_a8

    .line 586
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No available rollbacks for: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 590
    :cond_a8
    invoke-virtual {v7}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v3

    .line 591
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v10

    .line 590
    invoke-virtual {v5, v3, v9, v10}, Landroid/content/rollback/RollbackManager;->commitRollback(ILjava/util/List;Landroid/content/IntentSender;)V

    .line 593
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "android.content.rollback.extra.STATUS"

    .line 594
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_e3

    .line 598
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure ["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.content.rollback.extra.STATUS_MESSAGE"

    .line 599
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 598
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 603
    :cond_e3
    invoke-virtual {v7}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v3

    if-eqz v3, :cond_f8

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_f8

    .line 604
    invoke-virtual {v7}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v3

    .line 605
    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doWaitForStagedSessionReady(IJLjava/io/PrintWriter;)I

    move-result p0

    return p0

    :cond_f8
    const-string p0, "Success"

    .line 608
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v8

    :catch_fe
    move-exception p0

    .line 570
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final runSetDistractingRestriction()I
    .registers 9

    .line 2450
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 2454
    :goto_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_70

    const-string v6, "--flag"

    .line 2455
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c

    const-string v2, "--user"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 2474
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    .line 2457
    :cond_33
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    goto :goto_7

    .line 2460
    :cond_3c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2461
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v6, "hide-notifications"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6d

    const-string/jumbo v6, "hide-from-suggestions"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6a

    .line 2469
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized flag: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_6a
    or-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_6d
    or-int/lit8 v3, v3, 0x2

    goto :goto_7

    .line 2479
    :cond_70
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v4

    .line 2480
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_80

    const-string p0, "Error: package name not specified"

    .line 2481
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_80
    const/16 v6, -0x2710

    :try_start_82
    const-string/jumbo v7, "set-distracting"

    .line 2485
    invoke-virtual {p0, v2, v6, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v2

    .line 2487
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    new-array v6, v1, [Ljava/lang/String;

    .line 2488
    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 2487
    invoke-interface {p0, v4, v3, v2}, Landroid/content/pm/IPackageManager;->setDistractingPackageRestrictionsAsUser([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p0

    .line 2489
    array-length v2, p0

    if-lez v2, :cond_b3

    .line 2490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set restriction for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_b2} :catch_b4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_82 .. :try_end_b2} :catch_b4

    return v5

    :cond_b3
    return v1

    :catch_b4
    move-exception p0

    .line 2495
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5
.end method

.method public final runSetEnabledSetting(I)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2393
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const-string v2, "--user"

    .line 2394
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2395
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_19

    :cond_18
    move v0, v1

    .line 2398
    :goto_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x1

    if-nez v8, :cond_2a

    .line 2400
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: no package or component specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 2404
    :cond_2a
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->shellRestrictionsHelper:Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;

    .line 2405
    invoke-virtual {v3, v8}, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;->isRestrictedPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 2406
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to change state of package: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_4b
    const/16 v2, -0x2710

    const-string/jumbo v3, "runSetEnabledSetting"

    .line 2411
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v0

    .line 2412
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    const-string v9, " new state: "

    if-nez v2, :cond_a4

    .line 2414
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shell:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2415
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v8

    move v4, p1

    move v6, v0

    .line 2414
    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 2416
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2418
    invoke-interface {p0, v8, v0}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result p0

    .line 2417
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2416
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 2421
    :cond_a4
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2, p1, v1, v0}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 2422
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2424
    invoke-interface {p0, v2, v0}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result p0

    .line 2423
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2422
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final runSetHarmfulAppWarning()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x2

    .line 3403
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    const-string v0, "--user"

    .line 3404
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3405
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 3407
    :cond_18
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_32
    const/16 v1, -0x2710

    const-string/jumbo v2, "runSetHarmfulAppWarning"

    .line 3413
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v0

    .line 3414
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 3415
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 3417
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, v1, v2, v0}, Landroid/content/pm/IPackageManager;->setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runSetHiddenSetting(Z)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2431
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const-string v2, "--user"

    .line 2432
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2433
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_19

    :cond_18
    move v0, v1

    .line 2436
    :goto_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 2438
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: no package or component specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/16 v3, -0x2710

    const-string/jumbo v4, "runSetHiddenSetting"

    .line 2442
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v0

    .line 2443
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2, p1, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    .line 2444
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " new hidden state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2445
    invoke-interface {p0, v2, v0}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2444
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final runSetHomeActivity()I
    .registers 13

    .line 3282
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 3285
    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_33

    const-string v2, "--user"

    .line 3286
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 3291
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 3288
    :cond_2a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    goto :goto_6

    .line 3297
    :cond_33
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x2f

    .line 3298
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_41

    :goto_3f
    move-object v7, v3

    goto :goto_52

    .line 3303
    :cond_41
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_4d

    const-string p0, "Error: invalid component name"

    .line 3305
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 3308
    :cond_4d
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_3f

    :goto_52
    const/16 v3, -0x2710

    const-string/jumbo v5, "runSetHomeActivity"

    .line 3311
    invoke-virtual {p0, v2, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v2

    .line 3312
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 3314
    :try_start_60
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/app/role/RoleManager;

    const-string v6, "android.app.role.HOME"

    const/4 v8, 0x0

    .line 3316
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v10

    new-instance v11, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v11, v3}, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 3315
    invoke-virtual/range {v5 .. v11}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3317
    invoke-virtual {v3}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_90

    const-string p0, "Success"

    .line 3319
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_90
    const-string p0, "Error: Failed to set default home."

    .line 3322
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_95} :catch_96

    return v4

    :catch_96
    move-exception p0

    .line 3326
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4
.end method

.method public final runSetInstallLocation()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Error: install location has to be a number."

    .line 1726
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_13

    .line 1728
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no install location specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 1732
    :cond_13
    :try_start_13
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_17} :catch_29

    .line 1737
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v1}, Landroid/content/pm/IPackageManager;->setInstallLocation(I)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1738
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_27
    const/4 p0, 0x0

    return p0

    .line 1734
    :catch_29
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public final runSetInstaller()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3332
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 3333
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    if-nez v1, :cond_e

    goto :goto_30

    :cond_e
    const-string v3, "com.samsung.android.themecenter"

    .line 3340
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 3342
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Set installer failed with internal error"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 3347
    :cond_20
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0, v1}, Landroid/content/pm/IPackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 3348
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Success"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 3336
    :cond_30
    :goto_30
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Must provide both target and installer package names"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public final runSetPermissionEnforced()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2661
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 2663
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no permission specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 2666
    :cond_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    .line 2668
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no enforcement specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public final runSetSilentUpdatesPolicy()I
    .registers 14

    .line 3448
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move-object v3, v2

    move-object v5, v3

    .line 3453
    :goto_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-eqz v6, :cond_66

    .line 3454
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_d6

    :goto_18
    move v9, v8

    goto :goto_3a

    :sswitch_1a
    const-string v9, "--allow-unlimited-silent-updates"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_23

    goto :goto_18

    :cond_23
    const/4 v9, 0x2

    goto :goto_3a

    :sswitch_25
    const-string v9, "--throttle-time"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2e

    goto :goto_18

    :cond_2e
    move v9, v7

    goto :goto_3a

    :sswitch_30
    const-string v9, "--reset"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_39

    goto :goto_18

    :cond_39
    move v9, v1

    :goto_3a
    packed-switch v9, :pswitch_data_e4

    .line 3465
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v8

    .line 3456
    :pswitch_52
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    .line 3459
    :pswitch_57
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_9

    :pswitch_64
    move v4, v7

    goto :goto_9

    :cond_66
    if-eqz v3, :cond_87

    .line 3469
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v1, v9, v11

    if-gez v1, :cond_87

    .line 3470
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Invalid value for \"--throttle-time\":"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v8

    .line 3475
    :cond_87
    :try_start_87
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object p0

    if-eqz v4, :cond_98

    .line 3477
    invoke-interface {p0, v2}, Landroid/content/pm/IPackageInstaller;->setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    .line 3478
    invoke-interface {p0, v1, v2}, Landroid/content/pm/IPackageInstaller;->setSilentUpdatesThrottleTime(J)V

    goto :goto_a6

    :cond_98
    if-eqz v5, :cond_9d

    .line 3481
    invoke-interface {p0, v5}, Landroid/content/pm/IPackageInstaller;->setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V

    :cond_9d
    if-eqz v3, :cond_a6

    .line 3484
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p0, v1, v2}, Landroid/content/pm/IPackageInstaller;->setSilentUpdatesThrottleTime(J)V
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_a6} :catch_a7

    :cond_a6
    :goto_a6
    return v7

    :catch_a7
    move-exception p0

    .line 3488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3489
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3490
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3488
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v8

    :sswitch_data_d6
    .sparse-switch
        -0x60476451 -> :sswitch_30
        0x2dfd71f0 -> :sswitch_25
        0x3bbbf162 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_64
        :pswitch_57
        :pswitch_52
    .end packed-switch
.end method

.method public runSetUserRestriction()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3063
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const-string v2, "--user"

    .line 3064
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3065
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_19

    :cond_18
    move v0, v1

    .line 3068
    :goto_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 3069
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    .line 3071
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2c

    move v3, v5

    goto :goto_35

    :cond_2c
    const-string v4, "0"

    .line 3073
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    move v3, v1

    :goto_35
    const/16 v4, -0x2710

    const-string/jumbo v6, "runSetUserRestriction"

    .line 3080
    invoke-virtual {p0, v0, v4, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v0

    const-string/jumbo v4, "user"

    .line 3082
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 3081
    invoke-static {v4}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v4

    .line 3084
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->checkIfMaintenanceModeUserExists(Landroid/os/IUserManager;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 3085
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: couldn\'t set restriction to user"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    .line 3089
    :cond_59
    invoke-interface {v4, v2, v3, v0}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V

    return v1

    .line 3076
    :cond_5d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: valid value not specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5
.end method

.method public final runSnapshotProfile()I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2064
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2067
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    const-string v1, "android"

    .line 2068
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v1, 0x0

    move-object v2, v1

    .line 2072
    :goto_10
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    const/4 v9, -0x1

    if-eqz v3, :cond_41

    const-string v2, "--code-path"

    .line 2073
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 2082
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown arg: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return v9

    :cond_34
    if-eqz v8, :cond_3c

    const-string p0, "--code-path cannot be used for the boot image."

    .line 2076
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return v9

    .line 2079
    :cond_3c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_41
    const/4 v10, 0x0

    if-nez v8, :cond_71

    .line 2090
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v7, v4, v5, v10}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_63

    .line 2093
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package not found "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return v9

    .line 2096
    :cond_63
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_6e

    move-object v11, v3

    move-object v12, v11

    goto :goto_73

    :cond_6e
    move-object v11, v2

    move-object v12, v3

    goto :goto_73

    :cond_71
    move-object v12, v1

    move-object v11, v2

    .line 2103
    :goto_73
    new-instance v13, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;

    invoke-direct {v13, v1}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback-IA;)V

    .line 2105
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-nez v1, :cond_82

    const-string/jumbo v1, "root"

    goto :goto_84

    :cond_82
    const-string v1, "com.android.shell"

    :goto_84
    move-object v6, v1

    .line 2109
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getArtManager()Landroid/content/pm/dex/IArtManager;

    move-result-object v1

    invoke-interface {v1, v8, v6}, Landroid/content/pm/dex/IArtManager;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_97

    const-string p0, "Error: Runtime profiling is not enabled"

    .line 2110
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    .line 2113
    :cond_97
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getArtManager()Landroid/content/pm/dex/IArtManager;

    move-result-object v1

    move v2, v8

    move-object v3, v7

    move-object v4, v11

    move-object v5, v13

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/dex/IArtManager;->snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    .line 2115
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->waitTillDone()Z

    move-result p0

    if-nez p0, :cond_b4

    const-string p0, "Error: callback not called"

    .line 2116
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2117
    invoke-static {v13}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->-$$Nest$fgetmErrCode(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)I

    move-result p0

    return p0

    .line 2121
    :cond_b4
    :try_start_b4
    new-instance p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-static {v13}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->-$$Nest$fgetmProfileReadFd(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_bd} :catch_124
    .catch Landroid/system/ErrnoException; {:try_start_b4 .. :try_end_bd} :catch_124

    if-nez v8, :cond_e1

    .line 2122
    :try_start_bf
    invoke-static {v12, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c6

    goto :goto_e1

    .line 2123
    :cond_c6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e3

    :cond_e1
    :goto_e1
    const-string v1, ""

    .line 2124
    :goto_e3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/misc/profman/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".prof"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2126
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_101
    .catchall {:try_start_bf .. :try_end_101} :catchall_11a

    .line 2127
    :try_start_101
    invoke-static {p0, v2}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_104
    .catchall {:try_start_101 .. :try_end_104} :catchall_110

    .line 2128
    :try_start_104
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    const/16 v2, 0x1a4

    .line 2130
    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_10c
    .catchall {:try_start_104 .. :try_end_10c} :catchall_11a

    .line 2131
    :try_start_10c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_10f} :catch_124
    .catch Landroid/system/ErrnoException; {:try_start_10c .. :try_end_10f} :catch_124

    return v10

    :catchall_110
    move-exception v1

    .line 2126
    :try_start_111
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_114
    .catchall {:try_start_111 .. :try_end_114} :catchall_115

    goto :goto_119

    :catchall_115
    move-exception v2

    :try_start_116
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_119
    throw v1
    :try_end_11a
    .catchall {:try_start_116 .. :try_end_11a} :catchall_11a

    :catchall_11a
    move-exception v1

    .line 2121
    :try_start_11b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_11e
    .catchall {:try_start_11b .. :try_end_11e} :catchall_11f

    goto :goto_123

    :catchall_11f
    move-exception p0

    :try_start_120
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_123
    throw v1
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_124} :catch_124
    .catch Landroid/system/ErrnoException; {:try_start_120 .. :try_end_124} :catch_124

    :catch_124
    move-exception p0

    .line 2132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when reading the profile fd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2133
    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    return v9
.end method

.method public final runStreamingInstall()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1428
    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v0

    .line 1429
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-nez v2, :cond_13

    .line 1431
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getStreamingDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;

    move-result-object v2

    .line 1430
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V

    .line 1433
    :cond_13
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I

    move-result p0

    return p0
.end method

.method public final runSuspend(Z)I
    .registers 23

    move-object/from16 v0, p0

    .line 2501
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 2504
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 2505
    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    move v7, v5

    .line 2507
    :goto_14
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_ed

    const/4 v10, -0x1

    .line 2508
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v12, 0x4

    sparse-switch v11, :sswitch_data_190

    goto/16 :goto_7d

    :sswitch_26
    const-string v11, "--user"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2f

    goto :goto_7d

    :cond_2f
    const/4 v10, 0x7

    goto :goto_7d

    :sswitch_31
    const-string v11, "--les"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3a

    goto :goto_7d

    :cond_3a
    const/4 v10, 0x6

    goto :goto_7d

    :sswitch_3c
    const-string v11, "--lel"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_45

    goto :goto_7d

    :cond_45
    const/4 v10, 0x5

    goto :goto_7d

    :sswitch_47
    const-string v11, "--led"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_50

    goto :goto_7d

    :cond_50
    move v10, v12

    goto :goto_7d

    :sswitch_52
    const-string v11, "--aes"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5b

    goto :goto_7d

    :cond_5b
    const/4 v10, 0x3

    goto :goto_7d

    :sswitch_5d
    const-string v11, "--ael"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_66

    goto :goto_7d

    :cond_66
    const/4 v10, 0x2

    goto :goto_7d

    :sswitch_68
    const-string v11, "--aed"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_71

    goto :goto_7d

    :cond_71
    move v10, v9

    goto :goto_7d

    :sswitch_73
    const-string v11, "--dialogMessage"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7c

    goto :goto_7d

    :cond_7c
    move v10, v5

    :goto_7d
    packed-switch v10, :pswitch_data_1b2

    .line 2541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    .line 2510
    :pswitch_95
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_14

    .line 2521
    :pswitch_9f
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 2522
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v10

    if-nez p1, :cond_ab

    goto/16 :goto_14

    :cond_ab
    const-string v11, "--a"

    .line 2527
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b5

    move-object v11, v2

    goto :goto_b6

    :cond_b5
    move-object v11, v3

    .line 2528
    :goto_b6
    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v12, 0x64

    if-eq v8, v12, :cond_da

    const/16 v12, 0x6c

    if-eq v8, v12, :cond_cd

    const/16 v12, 0x73

    if-eq v8, v12, :cond_c8

    goto/16 :goto_14

    .line 2536
    :cond_c8
    invoke-virtual {v11, v9, v10}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 2530
    :cond_cd
    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v11, v9, v12, v13}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_14

    .line 2533
    :cond_da
    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v11, v9, v12, v13}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_14

    .line 2513
    :pswitch_e7
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_14

    .line 2546
    :cond_ed
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v8

    .line 2547
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_fd

    const-string v0, "Error: package name not specified"

    .line 2548
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    .line 2552
    :cond_fd
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    if-nez v10, :cond_107

    const-string/jumbo v10, "root"

    goto :goto_109

    :cond_107
    const-string v10, "com.android.shell"

    :goto_109
    move-object/from16 v19, v10

    .line 2555
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_121

    .line 2556
    new-instance v10, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v10}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 2557
    invoke-virtual {v10, v6}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object v6

    .line 2558
    invoke-virtual {v6}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v6

    move-object/from16 v18, v6

    goto :goto_123

    :cond_121
    move-object/from16 v18, v4

    :goto_123
    const/16 v6, -0x2710

    :try_start_125
    const-string/jumbo v10, "runSuspend"

    .line 2564
    invoke-virtual {v0, v7, v6, v10}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v6

    .line 2565
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    new-array v7, v5, [Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, [Ljava/lang/String;

    .line 2566
    invoke-virtual {v2}, Landroid/os/PersistableBundle;->size()I

    move-result v7

    if-lez v7, :cond_140

    move-object/from16 v16, v2

    goto :goto_142

    :cond_140
    move-object/from16 v16, v4

    .line 2567
    :goto_142
    invoke-virtual {v3}, Landroid/os/PersistableBundle;->size()I

    move-result v2

    if-lez v2, :cond_14b

    move-object/from16 v17, v3

    goto :goto_14d

    :cond_14b
    move-object/from16 v17, v4

    :goto_14d
    move/from16 v15, p1

    move/from16 v20, v6

    .line 2565
    invoke-interface/range {v13 .. v20}, Landroid/content/pm/IPackageManager;->setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;I)[Ljava/lang/String;

    move v2, v5

    .line 2569
    :goto_155
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_186

    .line 2570
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " new suspended state: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2572
    invoke-interface {v7, v3, v6}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2571
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_183
    .catch Landroid/os/RemoteException; {:try_start_125 .. :try_end_183} :catch_187
    .catch Ljava/lang/IllegalArgumentException; {:try_start_125 .. :try_end_183} :catch_187

    add-int/lit8 v2, v2, 0x1

    goto :goto_155

    :cond_186
    return v5

    :catch_187
    move-exception v0

    .line 2576
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :sswitch_data_190
    .sparse-switch
        -0x25a4801 -> :sswitch_73
        0x2900f20 -> :sswitch_68
        0x2900f28 -> :sswitch_5d
        0x2900f2f -> :sswitch_52
        0x290386b -> :sswitch_47
        0x2903873 -> :sswitch_3c
        0x290387a -> :sswitch_31
        0x4f7b216b -> :sswitch_26
    .end sparse-switch

    :pswitch_data_1b2
    .packed-switch 0x0
        :pswitch_e7
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_95
    .end packed-switch
.end method

.method public final runTrimCaches()I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2791
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 2793
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no size specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_11
    const-wide/16 v2, 0x1

    .line 2797
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    .line 2798
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    const/4 v7, 0x0

    if-lt v5, v6, :cond_25

    const/16 v6, 0x39

    if-le v5, v6, :cond_67

    :cond_25
    const/16 v2, 0x4b

    if-eq v5, v2, :cond_61

    const/16 v2, 0x6b

    if-ne v5, v2, :cond_2e

    goto :goto_61

    :cond_2e
    const/16 v2, 0x4d

    if-eq v5, v2, :cond_5d

    const/16 v2, 0x6d

    if-ne v5, v2, :cond_37

    goto :goto_5d

    :cond_37
    const/16 v2, 0x47

    if-eq v5, v2, :cond_59

    const/16 v2, 0x67

    if-ne v5, v2, :cond_40

    goto :goto_59

    .line 2807
    :cond_40
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid suffix: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_59
    :goto_59
    const-wide/32 v2, 0x40000000

    goto :goto_63

    :cond_5d
    :goto_5d
    const-wide/32 v2, 0x100000

    goto :goto_63

    :cond_61
    :goto_61
    const-wide/16 v2, 0x400

    .line 2810
    :goto_63
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2814
    :cond_67
    :try_start_67
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_6b} :catch_96

    mul-long v10, v0, v2

    .line 2819
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "internal"

    .line 2820
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    const/4 v0, 0x0

    :cond_7b
    move-object v9, v0

    .line 2823
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;

    invoke-direct {v2}, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;-><init>()V

    .line 2824
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v12, 0x2

    move-object v13, v2

    invoke-interface/range {v8 .. v13}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    .line 2826
    monitor-enter v2

    .line 2827
    :catch_89
    :goto_89
    :try_start_89
    iget-boolean p0, v2, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z
    :try_end_8b
    .catchall {:try_start_89 .. :try_end_8b} :catchall_93

    if-nez p0, :cond_91

    .line 2829
    :try_start_8d
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_90
    .catch Ljava/lang/InterruptedException; {:try_start_8d .. :try_end_90} :catch_89
    .catchall {:try_start_8d .. :try_end_90} :catchall_93

    goto :goto_89

    .line 2833
    :cond_91
    :try_start_91
    monitor-exit v2

    return v7

    :catchall_93
    move-exception p0

    monitor-exit v2
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_93

    throw p0

    .line 2816
    :catch_96
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: expected number at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final runUninstall()I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2189
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-wide v8, v4

    move v5, v2

    move v4, v3

    .line 2195
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x1

    if-eqz v6, :cond_6b

    .line 2196
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_156

    :goto_1b
    move v7, v2

    goto :goto_3d

    :sswitch_1d
    const-string v7, "--versionCode"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    goto :goto_1b

    :cond_26
    const/4 v7, 0x2

    goto :goto_3d

    :sswitch_28
    const-string v7, "--user"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_31

    goto :goto_1b

    :cond_31
    move v7, v13

    goto :goto_3d

    :sswitch_33
    const-string v7, "-k"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    goto :goto_1b

    :cond_3c
    move v7, v3

    :goto_3d
    packed-switch v7, :pswitch_data_164

    .line 2207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v13

    .line 2204
    :pswitch_55
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-wide v8, v6

    goto :goto_d

    .line 2201
    :pswitch_5f
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    goto :goto_d

    :pswitch_68
    or-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 2212
    :cond_6b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_77

    const-string v0, "Error: package name not specified"

    .line 2214
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v13

    .line 2218
    :cond_77
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerShellCommand;->shellRestrictionsHelper:Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;

    .line 2219
    invoke-virtual {v6, v7}, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;->isRestrictedPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 2220
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to uninstall a package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v13

    .line 2225
    :cond_98
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v6

    .line 2226
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a7

    .line 2227
    invoke-virtual {v0, v7, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runRemoveSplits(Ljava/lang/String;Ljava/util/Collection;)I

    move-result v0

    return v0

    :cond_a7
    if-ne v5, v2, :cond_ad

    or-int/lit8 v2, v4, 0x2

    move v12, v2

    goto :goto_ae

    :cond_ad
    move v12, v4

    :goto_ae
    const-string/jumbo v2, "runUninstall"

    .line 2234
    invoke-virtual {v0, v5, v3, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v2

    .line 2235
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver-IA;)V

    .line 2236
    const-class v5, Landroid/content/pm/PackageManagerInternal;

    .line 2237
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    .line 2239
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->isApexPackage(Ljava/lang/String;)Z

    move-result v5

    const-string v15, "]"

    if-eqz v5, :cond_d6

    .line 2241
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v11

    move v10, v2

    .line 2240
    invoke-virtual/range {v6 .. v12}, Landroid/content/pm/PackageManagerInternal;->uninstallApex(Ljava/lang/String;JILandroid/content/IntentSender;I)V

    move-object v5, v15

    goto :goto_125

    :cond_d6
    and-int/lit8 v5, v12, 0x2

    if-nez v5, :cond_10b

    .line 2244
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const-wide/32 v10, 0x4000000

    invoke-interface {v5, v7, v10, v11, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-nez v5, :cond_fd

    .line 2247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure [not installed for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v13

    .line 2250
    :cond_fd
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v13

    if-eqz v5, :cond_106

    move v5, v13

    goto :goto_107

    :cond_106
    move v5, v3

    :goto_107
    if-eqz v5, :cond_10b

    or-int/lit8 v12, v12, 0x4

    :cond_10b
    move/from16 v17, v12

    .line 2259
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v14

    new-instance v0, Landroid/content/pm/VersionedPackage;

    invoke-direct {v0, v7, v8, v9}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/16 v16, 0x0

    .line 2261
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v18

    move-object v5, v15

    move-object v15, v0

    move/from16 v19, v2

    .line 2259
    invoke-interface/range {v14 .. v19}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 2264
    :goto_125
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.content.pm.extra.STATUS"

    .line 2265
    invoke-virtual {v0, v2, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_137

    const-string v0, "Success"

    .line 2268
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 2271
    :cond_137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.content.pm.extra.STATUS_MESSAGE"

    .line 2272
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2271
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v13

    nop

    :sswitch_data_156
    .sparse-switch
        0x5de -> :sswitch_33
        0x4f7b216b -> :sswitch_28
        0x704d4945 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_164
    .packed-switch 0x0
        :pswitch_68
        :pswitch_5f
        :pswitch_55
    .end packed-switch
.end method

.method public final runreconcileSecondaryDexFiles()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1994
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1995
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setOrClearPermissionFlags(Z)I
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    .line 2620
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    const-string v3, "--user"

    .line 2621
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2622
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 2626
    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    if-nez v3, :cond_2a

    .line 2628
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: no package specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 2631
    :cond_2a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3a

    .line 2633
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: no permission specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 2638
    :cond_3a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4a

    .line 2640
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: no permission flags specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_4a
    move v6, v0

    :goto_4b
    if-eqz v5, :cond_88

    .line 2644
    sget-object v7, Lcom/android/server/pm/PackageManagerShellCommand;->SUPPORTED_PERMISSION_FLAGS:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_78

    .line 2645
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: specified flag "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not one of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->SUPPORTED_PERMISSION_FLAGS_LIST:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 2649
    :cond_78
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    or-int/2addr v6, v5

    .line 2650
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    goto :goto_4b

    :cond_88
    const/16 v2, -0x2710

    const-string/jumbo v5, "runGrantRevokePermission"

    .line 2653
    invoke-virtual {p0, v1, v2, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    if-eqz p1, :cond_99

    move p1, v6

    goto :goto_9a

    :cond_99
    move p1, v0

    .line 2656
    :goto_9a
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    move v5, v6

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Landroid/permission/PermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    return v0
.end method

.method public final setParamsSize(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;Ljava/util/List;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "Error: Failed to parse APK file: "

    .line 614
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_111

    const/4 v2, 0x0

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    goto/16 :goto_111

    :cond_1f
    const-wide/16 v4, 0x0

    .line 620
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v6

    .line 621
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v8, "r"

    move-object/from16 v9, p0

    .line 622
    invoke-virtual {v9, v7, v8}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    if-eqz v8, :cond_df

    .line 629
    :try_start_40
    invoke-virtual {v6}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v10

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    .line 628
    invoke-static {v10, v11, v7, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v10

    .line 630
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v11

    if-nez v11, :cond_88

    .line 636
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Landroid/content/pm/parsing/ApkLite;

    .line 637
    new-instance v10, Landroid/content/pm/parsing/PackageLite;

    const/4 v12, 0x0

    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 641
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->getTargetSdkVersion()I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v11, v10

    invoke-direct/range {v11 .. v23}, Landroid/content/pm/parsing/PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II[Ljava/util/Set;[Ljava/util/Set;)V

    .line 643
    iget-object v11, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v11, v11, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 644
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    .line 643
    invoke-static {v10, v11, v12}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J

    move-result-wide v10
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_83} :catch_af
    .catchall {:try_start_40 .. :try_end_83} :catchall_ad

    add-long/2addr v4, v10

    .line 651
    :try_start_84
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_29

    goto :goto_29

    .line 631
    :cond_88
    :try_start_88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 634
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_ad} :catch_af
    .catchall {:try_start_88 .. :try_end_ad} :catchall_ad

    :catchall_ad
    move-exception v0

    goto :goto_db

    :catch_af
    move-exception v0

    .line 646
    :try_start_b0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_db
    .catchall {:try_start_b0 .. :try_end_db} :catchall_ad

    .line 651
    :goto_db
    :try_start_db
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_de

    .line 654
    :catch_de
    throw v0

    .line 624
    :cond_df
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Can\'t open file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_10c
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    :cond_111
    :goto_111
    return-void
.end method

.method public final setSessionFlag(Ljava/lang/String;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)Z
    .registers 6

    .line 1155
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch p0, :sswitch_data_3c

    goto :goto_2e

    :sswitch_e
    const-string p0, "--only-ready"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_2e

    :cond_17
    const/4 v2, 0x2

    goto :goto_2e

    :sswitch_19
    const-string p0, "--only-sessionid"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_2e

    :cond_22
    move v2, v1

    goto :goto_2e

    :sswitch_24
    const-string p0, "--only-parent"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v2, v0

    :goto_2e
    packed-switch v2, :pswitch_data_4a

    return v0

    .line 1160
    :pswitch_32
    iput-boolean v1, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyReady:Z

    goto :goto_3a

    .line 1163
    :pswitch_35
    iput-boolean v1, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlySessionId:Z

    goto :goto_3a

    .line 1157
    :pswitch_38
    iput-boolean v1, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyParent:Z

    :goto_3a
    return v1

    nop

    :sswitch_data_3c
    .sparse-switch
        -0x7a952fb5 -> :sswitch_24
        -0x6e25b510 -> :sswitch_19
        0x4ebe19e2 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_38
        :pswitch_35
        :pswitch_32
    .end packed-switch
.end method

.method public final translateUserId(IILjava/lang/String;)I
    .registers 11

    const/16 p0, -0x2710

    if-eq p2, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    move v3, p0

    .line 3517
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 3518
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x1

    const-string/jumbo v6, "pm command"

    move v2, p1

    move-object v5, p3

    .line 3517
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1e

    goto :goto_1f

    :cond_1e
    move p2, p0

    :goto_1f
    return p2
.end method

.method public final uninstallSystemUpdates(Ljava/lang/String;)I
    .registers 14

    .line 497
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 500
    :try_start_5
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v2

    const-wide/32 v3, 0x102000

    const/4 v9, 0x1

    if-nez p1, :cond_1c

    .line 503
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 504
    invoke-interface {p0, v3, v4, v1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    .line 507
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    goto :goto_2b

    .line 509
    :cond_1c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 510
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1, v3, v4, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-interface {v5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p0, v5

    .line 514
    :goto_2b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p1, v1

    :cond_30
    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 515
    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uninstalling updates to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    new-instance v11, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v3, 0x0

    invoke-direct {v11, v3}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver-IA;)V

    .line 518
    new-instance v4, Landroid/content/pm/VersionedPackage;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v10, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v4, v3, v5}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 520
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v2

    .line 518
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 522
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.content.pm.extra.STATUS"

    .line 523
    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_30

    .line 527
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t uninstall package: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9a} :catch_a5

    move p1, v9

    goto :goto_30

    :cond_9c
    if-eqz p1, :cond_9f

    return v1

    :cond_9f
    const-string p0, "Success"

    .line 540
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :catch_a5
    move-exception p0

    .line 532
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 532
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method
