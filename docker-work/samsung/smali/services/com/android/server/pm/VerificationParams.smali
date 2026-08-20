.class public final Lcom/android/server/pm/VerificationParams;
.super Lcom/android/server/pm/HandlerParams;
.source "VerificationParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;
    }
.end annotation


# static fields
.field public static final DEFAULT_ENABLE_ROLLBACK_TIMEOUT_MILLIS:J = 0x2710L

.field public static final DEFAULT_INTEGRITY_VERIFICATION_TIMEOUT:J = 0x7530L

.field public static final DEFAULT_INTEGRITY_VERIFY_ENABLE:Z = true

.field public static final DEFAULT_VERIFY_ENABLE:Z = true

.field public static final PROPERTY_ENABLE_ROLLBACK_TIMEOUT_MILLIS:Ljava/lang/String; = "enable_rollback_timeout"


# instance fields
.field public final mDataLoaderType:I

.field public mErrorMessage:Ljava/lang/String;

.field public final mInstallFlags:I

.field public final mInstallSource:Lcom/android/server/pm/InstallSource;

.field public final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field public final mPackageAbiOverride:Ljava/lang/String;

.field public final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field public mParentVerificationParams:Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;

.field public final mRequiredInstalledVersionCode:J

.field public mRet:I

.field public final mSessionId:I

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;

.field public final mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

.field public mWaitForEnableRollbackToComplete:Z

.field public mWaitForIntegrityVerificationToComplete:Z

.field public mWaitForVerificationToComplete:Z

.field public sessionFlags:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmErrorMessage(Lcom/android/server/pm/VerificationParams;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/VerificationParams;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRet(Lcom/android/server/pm/VerificationParams;)I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/VerificationParams;->mRet:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetIntegrityVerificationTimeout(Lcom/android/server/pm/VerificationParams;)J
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/pm/VerificationParams;->getIntegrityVerificationTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mstartSamsungVerificationTimeoutCountdown(Lcom/android/server/pm/VerificationParams;IZLcom/android/server/pm/PackageVerificationResponse;J)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/VerificationParams;->startSamsungVerificationTimeoutCountdown(IZLcom/android/server/pm/PackageVerificationResponse;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartVerificationTimeoutCountdown(Lcom/android/server/pm/VerificationParams;IZLcom/android/server/pm/PackageVerificationResponse;J)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/VerificationParams;->startVerificationTimeoutCountdown(IZLcom/android/server/pm/PackageVerificationResponse;J)V

    return-void
.end method

.method public constructor <init>(Landroid/os/UserHandle;Ljava/io/File;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;ILandroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V
    .registers 12

    .line 152
    invoke-direct {p0, p1, p11}, Lcom/android/server/pm/HandlerParams;-><init>(Landroid/os/UserHandle;Lcom/android/server/pm/PackageManagerService;)V

    const/4 p1, 0x0

    .line 138
    iput p1, p0, Lcom/android/server/pm/VerificationParams;->sessionFlags:I

    const/4 p11, 0x1

    .line 143
    iput p11, p0, Lcom/android/server/pm/VerificationParams;->mRet:I

    const/4 p11, 0x0

    .line 144
    iput-object p11, p0, Lcom/android/server/pm/VerificationParams;->mErrorMessage:Ljava/lang/String;

    if-eqz p2, :cond_15

    .line 155
    invoke-static {p2}, Lcom/android/server/pm/OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    goto :goto_1b

    .line 157
    :cond_15
    invoke-static {p3}, Lcom/android/server/pm/OriginInfo;->fromStagedContainer(Ljava/lang/String;)Lcom/android/server/pm/OriginInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 160
    :goto_1b
    iput-object p4, p0, Lcom/android/server/pm/VerificationParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 161
    iget p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput p2, p0, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    .line 162
    iput-object p6, p0, Lcom/android/server/pm/VerificationParams;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 163
    iget-object p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/VerificationParams;->mPackageAbiOverride:Ljava/lang/String;

    .line 164
    new-instance p2, Lcom/android/server/pm/VerificationInfo;

    iget-object p3, p5, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iget-object p4, p5, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iget p6, p5, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-direct {p2, p3, p4, p6, p7}, Lcom/android/server/pm/VerificationInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    iput-object p2, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    .line 170
    iput-object p8, p0, Lcom/android/server/pm/VerificationParams;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 171
    iget-wide p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide p2, p0, Lcom/android/server/pm/VerificationParams;->mRequiredInstalledVersionCode:J

    .line 172
    iget-object p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz p2, :cond_42

    .line 173
    invoke-virtual {p2}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result p1

    :cond_42
    iput p1, p0, Lcom/android/server/pm/VerificationParams;->mDataLoaderType:I

    .line 174
    iput p9, p0, Lcom/android/server/pm/VerificationParams;->mSessionId:I

    .line 176
    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    iput p1, p0, Lcom/android/server/pm/VerificationParams;->sessionFlags:I

    .line 178
    iput-object p10, p0, Lcom/android/server/pm/VerificationParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    return-void
.end method

.method public static matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 834
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x0

    if-ge v1, v0, :cond_21

    .line 836
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 837
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_13

    goto :goto_1e

    .line 841
    :cond_13
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 842
    iget-object p0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_22

    :cond_1e
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_21
    move-object p0, v2

    :goto_22
    if-nez p0, :cond_25

    return-object v2

    .line 851
    :cond_25
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public getDefaultVerificationResponse()I
    .registers 4

    .line 688
    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 689
    invoke-virtual {p0}, Lcom/android/server/pm/HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "ensure_verify_apps"

    .line 688
    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p0, -0x1

    return p0

    .line 692
    :cond_16
    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string/jumbo v1, "verifier_default_response"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getIntegrityVerificationTimeout()J
    .registers 6

    .line 353
    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "app_integrity_verification_timeout"

    const-wide/16 v1, 0x7530

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 358
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public handleIntegrityVerificationFinished()V
    .registers 2

    const/4 v0, 0x0

    .line 893
    iput-boolean v0, p0, Lcom/android/server/pm/VerificationParams;->mWaitForIntegrityVerificationToComplete:Z

    .line 894
    invoke-virtual {p0}, Lcom/android/server/pm/VerificationParams;->handleReturnCode()V

    return-void
.end method

.method public handleReturnCode()V
    .registers 2

    .line 907
    iget-boolean v0, p0, Lcom/android/server/pm/VerificationParams;->mWaitForVerificationToComplete:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/pm/VerificationParams;->mWaitForIntegrityVerificationToComplete:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/pm/VerificationParams;->mWaitForEnableRollbackToComplete:Z

    if-eqz v0, :cond_d

    goto :goto_10

    .line 911
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/VerificationParams;->sendVerificationCompleteNotification()V

    :cond_10
    :goto_10
    return-void
.end method

.method public handleRollbackEnabled()V
    .registers 2

    const/4 v0, 0x0

    .line 901
    iput-boolean v0, p0, Lcom/android/server/pm/VerificationParams;->mWaitForEnableRollbackToComplete:Z

    .line 902
    invoke-virtual {p0}, Lcom/android/server/pm/VerificationParams;->handleReturnCode()V

    return-void
.end method

.method public handleStartCopy()V
    .registers 6

    .line 188
    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/VerificationParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v2, p0, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    iget-object v4, p0, Lcom/android/server/pm/VerificationParams;->mPackageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/android/server/pm/HandlerParams;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-wide v2, p0, Lcom/android/server/pm/VerificationParams;->mRequiredInstalledVersionCode:J

    iget v4, p0, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/pm/InstallPackageHelper;->verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    move-result-object v1

    .line 193
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/VerificationParams;->setReturnCode(ILjava/lang/String;)V

    .line 194
    iget v1, p0, Lcom/android/server/pm/VerificationParams;->mRet:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_31

    return-void

    .line 200
    :cond_31
    iget-object v1, p0, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v1, v1, Lcom/android/server/pm/OriginInfo;->mExisting:Z

    if-nez v1, :cond_4b

    .line 201
    iget v1, p0, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-nez v1, :cond_41

    .line 203
    invoke-virtual {p0, v0}, Lcom/android/server/pm/VerificationParams;->sendApkVerificationRequest(Landroid/content/pm/PackageInfoLite;)V

    .line 205
    :cond_41
    iget v0, p0, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4b

    .line 206
    invoke-virtual {p0}, Lcom/android/server/pm/VerificationParams;->sendEnableRollbackRequest()V

    :cond_4b
    return-void
.end method

.method public handleVerificationFinished()V
    .registers 2

    const/4 v0, 0x0

    .line 888
    iput-boolean v0, p0, Lcom/android/server/pm/VerificationParams;->mWaitForVerificationToComplete:Z

    .line 889
    invoke-virtual {p0}, Lcom/android/server/pm/VerificationParams;->handleReturnCode()V

    return-void
.end method

.method public final isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z
    .registers 6

    .line 705
    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v1, "ensure_verify_apps"

    invoke-virtual {v0, p2, v1}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_c

    return v0

    :cond_c
    if-eqz p3, :cond_1b

    .line 710
    iget-object p2, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/VerificationParams;->packageExists(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_17

    return v0

    .line 715
    :cond_17
    iget-boolean p0, p1, Landroid/content/pm/PackageInfoLite;->debuggable:Z

    xor-int/2addr p0, v0

    return p0

    .line 717
    :cond_1b
    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "verifier_verify_adb_installs"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return v0
.end method

.method public final isIntegrityVerificationEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final isVerificationEnabled(Landroid/content/pm/PackageInfoLite;I)Z
    .registers 8

    .line 731
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_8

    :cond_6
    iget v0, v0, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    .line 732
    :goto_8
    iget v1, p0, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    and-int/lit8 v2, v1, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1c

    const/high16 v0, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    move v3, v4

    .line 756
    :goto_17
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/pm/VerificationParams;->isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z

    move-result p0

    return p0

    :cond_1c
    and-int/lit16 p1, v1, 0x800

    if-eqz p1, :cond_68

    .line 762
    iget-object p1, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-eqz p2, :cond_44

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 763
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 766
    :try_start_30
    iget-object p1, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iget-object p2, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 767
    invoke-virtual {p1, v0, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/SecurityException; {:try_start_30 .. :try_end_43} :catch_44

    return v4

    .line 776
    :catch_44
    :cond_44
    iget-object p1, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-eqz p2, :cond_68

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mSamsungVerifierPackage:Ljava/lang/String;

    .line 777
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    .line 780
    :try_start_54
    iget-object p1, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iget-object p2, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mSamsungVerifierPackage:Ljava/lang/String;

    .line 781
    invoke-virtual {p1, v0, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/SecurityException; {:try_start_54 .. :try_end_67} :catch_68

    return v4

    .line 791
    :catch_68
    :cond_68
    iget p0, p0, Lcom/android/server/pm/VerificationParams;->sessionFlags:I

    const/high16 p1, 0x2000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_70

    return v4

    :cond_70
    return v3
.end method

.method public final matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfoLite;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/server/pm/PackageVerificationState;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 799
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    array-length v1, v0

    if-nez v1, :cond_7

    const/4 p0, 0x0

    return-object p0

    .line 803
    :cond_7
    array-length v0, v0

    .line 804
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_32

    .line 806
    iget-object v3, p1, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    aget-object v3, v3, v2

    .line 808
    iget-object v4, v3, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, p2}, Lcom/android/server/pm/VerificationParams;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_1f

    goto :goto_2f

    .line 814
    :cond_1f
    iget-object v5, p0, Lcom/android/server/pm/HandlerParams;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/InstallPackageHelper;->getUidForVerifier(Landroid/content/pm/VerifierInfo;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_29

    goto :goto_2f

    .line 823
    :cond_29
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    invoke-virtual {p3, v3}, Lcom/android/server/pm/PackageVerificationState;->addSufficientVerifier(I)V

    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_32
    return-object v1
.end method

.method public final packageExists(Ljava/lang/String;)Z
    .registers 3

    .line 698
    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 699
    :try_start_5
    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 700
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public populateInstallerExtras(Landroid/content/Intent;)V
    .registers 4

    .line 855
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 858
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    if-eqz v0, :cond_37

    .line 859
    iget-object v0, v0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUri:Landroid/net/Uri;

    if-eqz v0, :cond_16

    const-string v1, "android.intent.extra.ORIGINATING_URI"

    .line 860
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 863
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/VerificationInfo;->mReferrer:Landroid/net/Uri;

    if-eqz v0, :cond_21

    const-string v1, "android.intent.extra.REFERRER"

    .line 864
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 867
    :cond_21
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUid:I

    if-ltz v0, :cond_2c

    const-string v1, "android.intent.extra.ORIGINATING_UID"

    .line 868
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 871
    :cond_2c
    iget-object p0, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget p0, p0, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    if-ltz p0, :cond_37

    const-string v0, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    .line 872
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_37
    return-void
.end method

.method public final sendApkVerificationRequest(Landroid/content/pm/PackageInfoLite;)V
    .registers 6

    const-string v0, "PackageManager"

    .line 212
    iget-object v1, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v2, v1, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 214
    new-instance v1, Lcom/android/server/pm/PackageVerificationState;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageVerificationState;-><init>(Lcom/android/server/pm/VerificationParams;)V

    .line 216
    iget-object v3, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 218
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/pm/VerificationParams;->sendIntegrityVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V

    .line 219
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/pm/VerificationParams;->sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V

    .line 223
    invoke-virtual {v1}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 224
    iget-object v1, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 228
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/pm/HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 229
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v1, v2, :cond_33

    .line 230
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 233
    :cond_33
    :try_start_33
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.intent.action.PACKAGE_INSTALL_STARTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "packageName"

    .line 234
    iget-object p1, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "userID"

    .line 235
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v1, "android.permission.HARDWARE_TEST"

    invoke-virtual {p0, v2, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string/jumbo p0, "sendBroadcastAsUser. PACKAGE_INSTALL_STARTED"

    .line 237
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/IllegalStateException; {:try_start_33 .. :try_end_5d} :catch_5e

    goto :goto_64

    :catch_5e
    move-exception p0

    const-string p1, "Failed to send an intent for PACKAGE_INSTALL_STARTED: "

    .line 239
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_64
    return-void
.end method

.method public sendEnableRollbackRequest()V
    .registers 10

    .line 245
    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    const-wide/32 v2, 0x40000

    const-string v0, "enable_rollback"

    .line 246
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 248
    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    .line 251
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    iget v2, p0, Lcom/android/server/pm/VerificationParams;->mSessionId:I

    const-string v3, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "application/vnd.android.package-archive"

    .line 257
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 258
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    .line 265
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 267
    iget-object v3, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v5, "android.permission.PACKAGE_ROLLBACK_AGENT"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 270
    iput-boolean v2, p0, Lcom/android/server/pm/VerificationParams;->mWaitForEnableRollbackToComplete:Z

    const-string/jumbo v0, "rollback"

    const-string v2, "enable_rollback_timeout"

    const-wide/16 v3, 0x2710

    .line 273
    invoke-static {v0, v2, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gez v0, :cond_57

    goto :goto_58

    :cond_57
    move-wide v3, v5

    .line 280
    :goto_58
    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 281
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 282
    iget v1, p0, Lcom/android/server/pm/VerificationParams;->mSessionId:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 283
    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendIntegrityVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerificationParams;->isIntegrityVerificationEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_13

    move-object/from16 v3, p3

    .line 295
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageVerificationState;->setIntegrityVerificationResult(I)V

    return-void

    .line 300
    :cond_13
    new-instance v6, Landroid/content/Intent;

    const-string v3, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    new-instance v3, Ljava/io/File;

    iget-object v5, v0, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v6, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x50000001

    .line 309
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.content.pm.extra.VERIFICATION_ID"

    .line 311
    invoke-virtual {v6, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    iget-object v3, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const-string v5, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v6, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    iget v3, v2, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const-string v5, "android.intent.extra.VERSION_CODE"

    invoke-virtual {v6, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v2

    const-string v5, "android.intent.extra.LONG_VERSION_CODE"

    invoke-virtual {v6, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 315
    invoke-virtual {v0, v6}, Lcom/android/server/pm/VerificationParams;->populateInstallerExtras(Landroid/content/Intent;)V

    const-string v2, "android"

    .line 318
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    .line 322
    iget-object v3, v0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 325
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    new-instance v11, Lcom/android/server/pm/VerificationParams$1;

    invoke-direct {v11, v0, v1}, Lcom/android/server/pm/VerificationParams$1;-><init>(Lcom/android/server/pm/VerificationParams;I)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 322
    invoke-virtual/range {v5 .. v15}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const-wide/32 v2, 0x40000

    const-string/jumbo v5, "integrity_verification"

    .line 339
    invoke-static {v2, v3, v5, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 343
    iput-boolean v4, v0, Lcom/android/server/pm/VerificationParams;->mWaitForIntegrityVerificationToComplete:Z

    return-void
.end method

.method public final sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V
    .registers 38

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 381
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v1, v2, :cond_12

    .line 382
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    :cond_12
    move-object v15, v1

    .line 384
    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    .line 386
    iget-object v1, v7, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 388
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService;->mSamsungVerifierPackage:Ljava/lang/String;

    .line 394
    iget v1, v7, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    and-int/lit8 v3, v1, 0x20

    const/4 v12, 0x1

    if-eqz v3, :cond_45

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-nez v1, :cond_45

    const-string v1, "debug.pm.adb_verifier_override_package"

    const-string v3, ""

    .line 396
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 400
    invoke-virtual {v7, v1}, Lcom/android/server/pm/VerificationParams;->packageExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 405
    invoke-virtual {v7, v0, v14, v12}, Lcom/android/server/pm/VerificationParams;->isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z

    move-result v3

    if-nez v3, :cond_45

    move v2, v12

    goto :goto_47

    :cond_45
    move-object v1, v2

    const/4 v2, 0x0

    .line 417
    :goto_47
    iget-object v3, v7, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v11

    const-wide/32 v5, 0x10000000

    if-nez v1, :cond_54

    const/4 v10, -0x1

    goto :goto_58

    .line 419
    :cond_54
    invoke-interface {v11, v1, v5, v6, v14}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v10

    .line 421
    :goto_58
    invoke-virtual {v9, v10}, Lcom/android/server/pm/PackageVerificationState;->setRequiredVerifierUid(I)V

    if-nez v13, :cond_5f

    const/4 v6, -0x1

    goto :goto_64

    .line 424
    :cond_5f
    invoke-interface {v11, v13, v5, v6, v14}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    move v6, v5

    .line 426
    :goto_64
    invoke-virtual {v9, v6}, Lcom/android/server/pm/PackageVerificationState;->setSamsungVerifierUid(I)V

    .line 428
    invoke-virtual {v7, v0, v14}, Lcom/android/server/pm/VerificationParams;->isVerificationEnabled(Landroid/content/pm/PackageInfoLite;I)Z

    move-result v5

    .line 431
    iget-object v3, v7, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v3, v3, Lcom/android/server/pm/OriginInfo;->mExisting:Z

    if-nez v3, :cond_2ea

    if-nez v5, :cond_75

    goto/16 :goto_2ea

    .line 439
    :cond_75
    new-instance v5, Landroid/content/Intent;

    const-string v3, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 440
    invoke-virtual {v5, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 441
    new-instance v3, Ljava/io/File;

    iget-object v4, v7, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    invoke-virtual {v5, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 446
    iget-object v3, v7, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-wide/16 v20, 0x0

    const-string v19, "application/vnd.android.package-archive"

    move-object/from16 v16, v3

    move-object/from16 v17, v11

    move-object/from16 v18, v5

    move/from16 v22, v14

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    const-string v4, "android.content.pm.extra.VERIFICATION_ID"

    .line 455
    invoke-virtual {v5, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    iget v4, v7, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    const-string v12, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    invoke-virtual {v5, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    iget-object v4, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const-string v12, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    invoke-virtual {v5, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    iget v4, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const-string v12, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    invoke-virtual {v5, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v27, v11

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v11

    const-string v4, "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

    .line 466
    invoke-virtual {v5, v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 470
    iget-object v4, v7, Lcom/android/server/pm/VerificationParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v4

    .line 471
    iget-object v11, v7, Lcom/android/server/pm/VerificationParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v11

    .line 472
    invoke-static {v4, v11}, Lcom/android/server/pm/PackageManagerServiceUtils;->buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e4

    const-string v11, "android.content.pm.extra.VERIFICATION_ROOT_HASH"

    .line 476
    invoke-virtual {v5, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    :cond_e4
    iget v4, v7, Lcom/android/server/pm/VerificationParams;->mDataLoaderType:I

    const-string v11, "android.content.pm.extra.DATA_LOADER_TYPE"

    invoke-virtual {v5, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 481
    iget v4, v7, Lcom/android/server/pm/VerificationParams;->mSessionId:I

    const-string v11, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v5, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 483
    invoke-virtual {v7, v5}, Lcom/android/server/pm/VerificationParams;->populateInstallerExtras(Landroid/content/Intent;)V

    .line 488
    iget v4, v7, Lcom/android/server/pm/VerificationParams;->mDataLoaderType:I

    const/4 v11, 0x2

    if-ne v4, v11, :cond_10c

    iget-object v4, v7, Lcom/android/server/pm/VerificationParams;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 489
    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v4

    const/4 v12, 0x4

    if-ne v4, v12, :cond_10c

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerificationParams;->getDefaultVerificationResponse()I

    move-result v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_10c

    const/4 v12, 0x1

    goto :goto_10d

    :cond_10c
    const/4 v12, 0x0

    .line 492
    :goto_10d
    iget-object v4, v7, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v12}, Lcom/android/server/pm/VerificationUtils;->getVerificationTimeout(Landroid/content/Context;Z)J

    move-result-wide v28

    .line 496
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    .line 495
    invoke-virtual {v7, v0, v4, v9}, Lcom/android/server/pm/VerificationParams;->matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v4

    .line 499
    iget-boolean v0, v0, Landroid/content/pm/PackageInfoLite;->isSdkLibrary:Z

    if-eqz v0, :cond_13f

    if-nez v4, :cond_129

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 503
    :cond_129
    new-instance v0, Landroid/content/ComponentName;

    const-string v11, "android"

    move/from16 v30, v6

    const-string v6, "com.android.server.sdksandbox.SdkSandboxVerifierReceiver"

    invoke-direct {v0, v11, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/server/pm/PackageVerificationState;->addSufficientVerifier(I)V

    goto :goto_141

    :cond_13f
    move/from16 v30, v6

    .line 511
    :goto_141
    iget-object v0, v7, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v6, Lcom/android/server/DeviceIdleInternal;

    .line 512
    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/server/DeviceIdleInternal;

    .line 513
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v6

    const/16 v19, 0x0

    const/16 v20, 0x131

    const-string v21, ""

    move-object/from16 v16, v6

    move-wide/from16 v17, v28

    .line 514
    invoke-virtual/range {v16 .. v21}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    const-string v0, "PackageManager"

    if-eqz v4, :cond_1bd

    .line 523
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_175

    const-string v4, "Additional verifiers required, but none installed."

    .line 526
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, -0x16

    .line 527
    invoke-virtual {v7, v11, v4}, Lcom/android/server/pm/VerificationParams;->setReturnCode(ILjava/lang/String;)V

    goto :goto_1bd

    :cond_175
    move-object/from16 v32, v13

    const/4 v13, 0x0

    :goto_178
    if-ge v13, v11, :cond_1bf

    .line 530
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v33, v4

    move-object/from16 v4, v16

    check-cast v4, Landroid/content/ComponentName;

    .line 531
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v17

    .line 532
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const/16 v22, 0x0

    const/16 v23, 0x131

    const-string/jumbo v24, "package verifier"

    move-object/from16 v16, v31

    move-wide/from16 v19, v28

    move/from16 v21, v14

    .line 531
    invoke-interface/range {v16 .. v24}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    move/from16 v16, v11

    .line 536
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 537
    invoke-virtual {v11, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 538
    iget-object v4, v7, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 540
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    const/4 v9, 0x0

    .line 538
    invoke-virtual {v4, v11, v15, v9, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v8, p1

    move-object/from16 v9, p3

    move/from16 v11, v16

    move-object/from16 v4, v33

    goto :goto_178

    :cond_1bd
    :goto_1bd
    move-object/from16 v32, v13

    :cond_1bf
    const/4 v9, 0x0

    if-nez v1, :cond_1c8

    const-string v1, "Required verifier is null"

    .line 546
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 551
    :cond_1c8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerificationParams;->getDefaultVerificationResponse()I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_1d1

    const/4 v0, 0x2

    goto :goto_1d2

    :cond_1d1
    const/4 v0, -0x1

    .line 556
    :goto_1d2
    new-instance v11, Lcom/android/server/pm/PackageVerificationResponse;

    invoke-direct {v11, v0, v10}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    if-nez v2, :cond_1e5

    .line 566
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 565
    invoke-static {v1, v0}, Lcom/android/server/pm/VerificationParams;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 567
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1e8

    .line 569
    :cond_1e5
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    :goto_1e8
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v17

    const/16 v22, 0x0

    const/16 v23, 0x131

    const-string/jumbo v24, "package verifier"

    move-object/from16 v16, v31

    move-object/from16 v18, v1

    move-wide/from16 v19, v28

    move/from16 v21, v14

    invoke-interface/range {v16 .. v24}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    if-eqz v12, :cond_20e

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v12

    move-object v3, v11

    move-object/from16 v21, v5

    move-wide/from16 v4, v28

    .line 578
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/VerificationParams;->startVerificationTimeoutCountdown(IZLcom/android/server/pm/PackageVerificationResponse;J)V

    goto :goto_210

    :cond_20e
    move-object/from16 v21, v5

    .line 582
    :goto_210
    iget-object v0, v7, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/16 v16, -0x1

    .line 585
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v17

    new-instance v18, Lcom/android/server/pm/VerificationParams$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v3, p1

    move-object v4, v11

    move/from16 v13, v30

    move-wide/from16 v5, v28

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/VerificationParams$2;-><init>(Lcom/android/server/pm/VerificationParams;ZILcom/android/server/pm/PackageVerificationResponse;J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v2, "android.permission.PACKAGE_VERIFICATION_AGENT"

    move-object v4, v9

    move-object/from16 v3, v27

    move-object/from16 v11, v21

    move/from16 v26, v12

    move-object v12, v15

    move v6, v13

    move-object/from16 v9, v32

    move-object v13, v2

    move/from16 v22, v14

    move/from16 v14, v16

    move-object/from16 v25, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v0

    move/from16 v18, v1

    .line 582
    invoke-virtual/range {v10 .. v20}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    if-eqz v9, :cond_2dc

    .line 601
    new-instance v10, Lcom/android/server/pm/PackageVerificationResponse;

    invoke-direct {v10, v8, v6}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    move-object/from16 v11, p3

    .line 603
    invoke-virtual {v11, v10}, Lcom/android/server/pm/PackageVerificationState;->setSamsungVerificationResponseAtTimeout(Lcom/android/server/pm/PackageVerificationResponse;)V

    .line 604
    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/content/Intent;

    const-string v0, "com.samsung.android.intent.action.PACKAGE_NEEDS_VERIFICATION2"

    .line 606
    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    invoke-virtual {v12, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 610
    iget-object v0, v7, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-wide/16 v4, 0x0

    const-string v13, "application/vnd.android.package-archive"

    move-object v1, v3

    move-object v2, v12

    move-object v3, v13

    move v13, v6

    move/from16 v6, v22

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_289

    .line 620
    invoke-virtual {v11, v13, v8}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    goto :goto_2dc

    .line 623
    :cond_289
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 622
    invoke-static {v9, v0}, Lcom/android/server/pm/VerificationParams;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 624
    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v26, :cond_2a2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v26

    move-object v3, v10

    move-wide/from16 v4, v28

    .line 628
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/VerificationParams;->startSamsungVerificationTimeoutCountdown(IZLcom/android/server/pm/PackageVerificationResponse;J)V

    .line 632
    :cond_2a2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v17

    .line 634
    invoke-virtual/range {v25 .. v25}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x131

    const-string/jumbo v24, "package verifier"

    move-object/from16 v16, v31

    move-object/from16 v18, v9

    move-wide/from16 v19, v28

    .line 632
    invoke-interface/range {v16 .. v24}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 636
    iget-object v0, v7, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v13, Lcom/android/server/pm/VerificationParams$3;

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, v26

    move/from16 v3, p1

    move-object v4, v10

    move-wide/from16 v5, v28

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/VerificationParams$3;-><init>(Lcom/android/server/pm/VerificationParams;ZILcom/android/server/pm/PackageVerificationResponse;J)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v0, "com.samsung.android.permission.PACKAGE_VERIFICATION_AGENT2"

    move-object v10, v12

    move-object/from16 v11, v25

    move-object v12, v0

    invoke-virtual/range {v9 .. v17}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_2dc
    :goto_2dc
    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "verification"

    move/from16 v3, p1

    .line 653
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 659
    iput-boolean v8, v7, Lcom/android/server/pm/VerificationParams;->mWaitForVerificationToComplete:Z

    return-void

    :cond_2ea
    :goto_2ea
    move v13, v6

    move-object v11, v9

    move v8, v12

    .line 432
    invoke-virtual {v11, v10, v8}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 434
    invoke-virtual {v11, v13, v8}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    return-void
.end method

.method public final sendVerificationCompleteNotification()V
    .registers 5

    .line 915
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mParentVerificationParams:Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;

    if-eqz v0, :cond_8

    .line 916
    invoke-virtual {v0, p0}, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->trySendVerificationCompleteNotification(Lcom/android/server/pm/VerificationParams;)V

    goto :goto_1f

    .line 919
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/pm/VerificationParams;->mRet:I

    iget-object p0, p0, Lcom/android/server/pm/VerificationParams;->mErrorMessage:Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1, v2, p0, v3}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_18

    goto :goto_1f

    :catch_18
    const-string p0, "PackageManager"

    const-string v0, "Observer no longer exists."

    .line 922
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method public setReturnCode(ILjava/lang/String;)V
    .registers 5

    .line 879
    iget v0, p0, Lcom/android/server/pm/VerificationParams;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 882
    iput p1, p0, Lcom/android/server/pm/VerificationParams;->mRet:I

    .line 883
    iput-object p2, p0, Lcom/android/server/pm/VerificationParams;->mErrorMessage:Ljava/lang/String;

    :cond_9
    return-void
.end method

.method public final startSamsungVerificationTimeoutCountdown(IZLcom/android/server/pm/PackageVerificationResponse;J)V
    .registers 8

    .line 674
    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 675
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 676
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 677
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 678
    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final startVerificationTimeoutCountdown(IZLcom/android/server/pm/PackageVerificationResponse;J)V
    .registers 8

    .line 664
    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 665
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 666
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 667
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 668
    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object p0, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public verifyStage()V
    .registers 3

    .line 928
    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/VerificationParams$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/VerificationParams$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/VerificationParams;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public verifyStage(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/VerificationParams;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 933
    new-instance v0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;

    iget-object v1, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;-><init>(Lcom/android/server/pm/VerificationParams;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 935
    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/pm/VerificationParams$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/android/server/pm/VerificationParams$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
