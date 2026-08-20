.class public Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;
.super Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;
.source "ChnPrePackageInstaller.java"


# static fields
.field public static final INSTALLED_APPLIST_STORE_PATH:Ljava/lang/String; = "/efs/sec_efs/preloadinstalled.lst"


# instance fields
.field public mCscAddedAPKList:Ljava/lang/String;

.field public mCscInstallOnceAPKList:Ljava/lang/String;

.field public mCscUninstallPKGList:Ljava/lang/String;

.field public mCscUpdateAPKList:Ljava/lang/String;

.field public mInstalledAppListDeviceInfo:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mStorePreloadAppList:Z


# direct methods
.method public static synthetic $r8$lambda$6bJq5eTnf5Z9ux3_8_LevjUfWno(Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->lambda$uninstallPackage$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;ZZ)V
    .registers 5

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;ZZ)V

    .line 26
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mInstalledAppListDeviceInfo:Ljava/util/HashSet;

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mStorePreloadAppList:Z

    const-string p1, ""

    .line 30
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscAddedAPKList:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUpdateAPKList:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscInstallOnceAPKList:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUninstallPKGList:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$uninstallPackage$0(Ljava/lang/String;)V
    .registers 3

    .line 72
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mStorePreloadAppList:Z

    if-eqz v0, :cond_9

    .line 73
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mInstalledAppListDeviceInfo:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method


# virtual methods
.method public final checkNeedPreloadAppList()V
    .registers 3

    .line 124
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_SupportPreInstallerShowPreloadAppList"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mStorePreloadAppList:Z

    :cond_f
    return-void
.end method

.method public getConfigApkListInCsc()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 234
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Setting_ConfigApkListForPreloadInstaller"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isApkInCscList(Ljava/lang/String;Ljava/io/File;)Z
    .registers 3

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_12

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isEnabledActivationMode()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 228
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Setting_ConfigActivationModeForPreloadInstaller"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isFileInCscApkList(Ljava/io/File;)Z
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscAddedAPKList:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->isApkInCscList(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->isInstalled(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUpdateAPKList:Ljava/lang/String;

    .line 155
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->isApkInCscList(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->isInstalled(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_30

    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscInstallOnceAPKList:Ljava/lang/String;

    .line 156
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->isApkInCscList(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 157
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->isInstalled(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->isInstalledInHistory(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_32

    :cond_30
    const/4 p0, 0x1

    goto :goto_33

    :cond_32
    const/4 p0, 0x0

    :goto_33
    return p0
.end method

.method public isInstalled(Ljava/io/File;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_16

    .line 168
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string/jumbo p1, "pkgInfo is null"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    return v1

    .line 172
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_1d} :catch_1f

    const/4 p0, 0x1

    return p0

    .line 174
    :catch_1f
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageManager can\'t search - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    return v1
.end method

.method public final isInstalledInHistory(Ljava/io/File;)Z
    .registers 4

    .line 181
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_16

    .line 183
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string/jumbo p1, "pkgInfo is null on isInstalledInHistory()"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    return v1

    .line 186
    :cond_16
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallHistory:Ljava/util/Collection;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public loadChinaCSCConfig()Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->isEnabledActivationMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_114

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->getConfigApkListInCsc()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 196
    array-length v2, v0

    move v3, v1

    :goto_13
    if-ge v3, v2, :cond_81

    aget-object v4, v0, v3

    const-string v5, "+"

    .line 197
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscAddedAPKList:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscAddedAPKList:Ljava/lang/String;

    goto :goto_7e

    :cond_33
    const-string v5, "-"

    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUninstallPKGList:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUninstallPKGList:Ljava/lang/String;

    goto :goto_7e

    :cond_4f
    const-string v5, "!"

    .line 201
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscInstallOnceAPKList:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscInstallOnceAPKList:Ljava/lang/String;

    goto :goto_7e

    .line 204
    :cond_6b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUpdateAPKList:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUpdateAPKList:Ljava/lang/String;

    :goto_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 207
    :cond_81
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCscFeatureAddedAPKList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscAddedAPKList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCscFeatureUninstallPKGList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUninstallPKGList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCscFeatureInstallOnceAPKList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscInstallOnceAPKList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCscFeatureUpdateAPKList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUpdateAPKList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscAddedAPKList:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_10a

    iget-object v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUpdateAPKList:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_10a

    iget-object v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscInstallOnceAPKList:Ljava/lang/String;

    .line 212
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_10a

    iget-object v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUninstallPKGList:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_102

    goto :goto_10a

    .line 216
    :cond_102
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v0, "mEnabledActivationMode is true. But empty apk list. call setDisabled"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    goto :goto_11b

    .line 213
    :cond_10a
    :goto_10a
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v0, "mEnabledActivationMode is true. and items are loaded."

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    const/4 p0, 0x1

    move v1, p0

    goto :goto_11b

    .line 220
    :cond_114
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v0, "mEnabledActivationMode is false. call setDisabled"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    :goto_11b
    return v1
.end method

.method public final loadInstallAppListHashSet()V
    .registers 5

    .line 131
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v1, "loadInstallApplistHashSet"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 133
    :try_start_7
    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "/efs/sec_efs/preloadinstalled.lst"

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_41

    .line 134
    :try_start_e
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_37

    .line 136
    :try_start_13
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 137
    instance-of v3, v2, Ljava/util/HashSet;

    if-eqz v3, :cond_26

    .line 138
    check-cast v2, Ljava/util/HashSet;

    iput-object v2, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mInstalledAppListDeviceInfo:Ljava/util/HashSet;

    .line 139
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v3, "SUCCESS : Load INSTALLED_APPLIST file from previous one"

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_2d

    .line 141
    :cond_26
    :try_start_26
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_37

    :try_start_29
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_41

    goto :goto_48

    :catchall_2d
    move-exception v2

    .line 133
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception v1

    :try_start_33
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_36
    throw v2
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v1

    :try_start_38
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v0

    :try_start_3d
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw v1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_41} :catch_41

    .line 142
    :catch_41
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v1, "FAIL : Error occurred during loadInstallApplistHashSet for INSTALLED_APPLIST"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 146
    :goto_48
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mInstalledAppListDeviceInfo:Ljava/util/HashSet;

    if-nez v0, :cond_5a

    .line 147
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v1, "Failed to load INSTALLED_APPLIST, Create new INSTALLED_APPLIST HashSet"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mInstalledAppListDeviceInfo:Ljava/util/HashSet;

    :cond_5a
    return-void
.end method

.method public makeInstallPackageList([Ljava/io/File;)V
    .registers 7

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->isEnabledActivationMode()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 96
    array-length v0, p1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_34

    aget-object v2, p1, v1

    .line 97
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->isFileInCscApkList(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 98
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " added installPackageList"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_34
    return-void
.end method

.method public prepareInstall()V
    .registers 3

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->prepareSettings()V

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->checkNeedPreloadAppList()V

    .line 45
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsUpgrade:Z

    if-eqz v0, :cond_39

    .line 47
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mStorePreloadAppList:Z

    if-eqz v0, :cond_11

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->loadInstallAppListHashSet()V

    .line 51
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->loadChinaCSCConfig()Z

    move-result v0

    if-nez v0, :cond_22

    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v1, "CHN - loadChinaCSCConfig - no items to load -> setDisabled"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->setDisabled()V

    return-void

    .line 59
    :cond_22
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v1, "fota - mount hidden area using persist values."

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.storage_preload"

    const-string v1, "1"

    .line 60
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 61
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->scanUninstallPkgChinaCSC()V

    :cond_39
    return-void
.end method

.method public putInstallHistory(Ljava/lang/String;)V
    .registers 3

    .line 80
    invoke-super {p0, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->putInstallHistory(Ljava/lang/String;)V

    .line 82
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mStorePreloadAppList:Z

    if-eqz v0, :cond_c

    .line 83
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mInstalledAppListDeviceInfo:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    return-void
.end method

.method public final scanUninstallPkgChinaCSC()V
    .registers 9

    .line 239
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUninstallPKGList:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 243
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUninstallPKGList:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 246
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_66

    aget-object v4, v0, v3

    :try_start_18
    const-string v5, "\\r\\n|\\r|\\n"

    const-string v6, ""

    .line 248
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 249
    iget-object v5, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_26} :catch_27

    goto :goto_3e

    .line 251
    :catch_27
    iget-object v5, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to getApplicationInfo :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_3e
    if-eqz v5, :cond_63

    .line 255
    iget-object v5, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mUninstallPackageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_63

    .line 256
    iget-object v5, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add to unInstallPackageList from csc xml pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 257
    iget-object v5, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mUninstallPackageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_66
    return-void
.end method

.method public setDisabled()V
    .registers 1

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->storeInstallAppListHashSet()V

    .line 90
    invoke-super {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->setDisabled()V

    return-void
.end method

.method public storeInstallAppListHashSet()V
    .registers 5

    .line 106
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mStorePreloadAppList:Z

    if-eqz v0, :cond_4e

    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string/jumbo v1, "storeInstallAppListHashSet"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mInstalledAppListDeviceInfo:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 110
    :try_start_14
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "/efs/sec_efs/preloadinstalled.lst"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_47

    .line 111
    :try_start_1b
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_3d

    .line 113
    :try_start_20
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mInstalledAppListDeviceInfo:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 114
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v3, "SUCCESS : Stored INSTALLED_APPLIST file"

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_33

    .line 115
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3d

    :try_start_2f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_47

    goto :goto_4e

    :catchall_33
    move-exception v2

    .line 110
    :try_start_34
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v1

    :try_start_39
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3c
    throw v2
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v1

    :try_start_3e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception v0

    :try_start_43
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_46
    throw v1
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_47} :catch_47

    .line 116
    :catch_47
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v0, "FAIL : Error ocurred during storeInstallApplistHashSet for INSTALLED_APPLIST"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public uninstallPackage()V
    .registers 3

    .line 69
    invoke-super {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->uninstallPackage()V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mUninstallPackageList:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
