.class public abstract Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;
.super Ljava/lang/Object;
.source "PrePackageInstallerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;,
        Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;,
        Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final INSTALLER_NAME_PRELOAD:Ljava/lang/String; = "PrePackageInstaller"

.field public static final SETTING_PROVIDER_FINGERPRINT_STATE:Ljava/lang/String; = "preload_fingerprint"

.field public static final STATE_FINGERPRINT_FINISHED:I = 0x3

.field public static final STATE_FINGERPRINT_RUNNING_FIRSTBOOT:I = 0x1

.field public static final STATE_FINGERPRINT_RUNNING_UPGRADE:I = 0x2

.field public static final STATE_FINGERPRINT_UNDEFINED:I = 0x0

.field public static final UNINSTALL_PKG_LIST_PATH:Ljava/lang/String; = "/system/etc/uninstall_preloadpkg.lst"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mFingerprintState:I

.field public mHistoryForSettingProvider:Ljava/lang/String;

.field public mInstallHistory:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mInstallPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public mIsFirstBoot:Z

.field public mIsUpgrade:Z

.field public mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

.field public mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mSettingsProviderProxy:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;

.field public final mUninstallPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6jGcRsdcDUZN9A9MshO3afw9eUE(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;Ljava/util/concurrent/CompletableFuture;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->lambda$runPrePackageInstaller$0(Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pqb27WV3wFliDIk2SoeZIx-yN7s(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->lambda$makeInstallPackageList$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f23CNwEFl3lgNi6fO2AeNyydUdg(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->lambda$addPackageLocation$1(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;ZZ)V
    .registers 6

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mUninstallPackageList:Ljava/util/ArrayList;

    const-string v0, ""

    .line 72
    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mHistoryForSettingProvider:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallHistory:Ljava/util/Collection;

    .line 77
    new-instance v0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    invoke-direct {v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    .line 81
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 83
    iput-boolean p3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsFirstBoot:Z

    .line 84
    iput-boolean p4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsUpgrade:Z

    .line 85
    new-instance p2, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;

    invoke-direct {p2, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mSettingsProviderProxy:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;

    .line 86
    invoke-virtual {p2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;->getFingerprintState()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mFingerprintState:I

    .line 88
    iget-object p1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public static isChinaModel()Z
    .registers 2

    const-string/jumbo v0, "ro.csc.sales_code"

    .line 163
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHZ"

    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "CHU"

    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "CHC"

    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_3a

    :cond_38
    const/4 v0, 0x0

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 v0, 0x1

    :goto_3b
    return v0
.end method

.method public static synthetic lambda$addPackageLocation$1(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    const-string p0, "apk"

    .line 214
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makeInstallPackageList$2(Ljava/lang/String;)V
    .registers 2

    .line 403
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->addPackageLocation(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$runPrePackageInstaller$0(Ljava/util/concurrent/CompletableFuture;)V
    .registers 2

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->startPrePackageInstall()V

    .line 103
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final addPackageLocation(Ljava/lang/String;)V
    .registers 7

    .line 201
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_12

    return-void

    .line 207
    :cond_12
    array-length v1, p1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_28

    aget-object v3, p1, v2

    .line 208
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 209
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->addPackageLocation(Ljava/lang/String;)V

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 214
    :cond_28
    new-instance p1, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_34

    return-void

    .line 219
    :cond_34
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->makeInstallPackageList([Ljava/io/File;)V

    :cond_37
    return-void
.end method

.method public final addUninstallPkgList(Ljava/io/File;)V
    .registers 8

    .line 548
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 549
    :try_start_6
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_77

    .line 550
    :try_start_b
    new-instance p1, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_6d

    .line 551
    :try_start_12
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_63

    .line 554
    :cond_17
    :goto_17
    :try_start_17
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 555
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_17

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mUninstallPackageList:Ljava/util/ArrayList;

    .line 556
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 557
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add to unInstallPackageList from list omcFile - pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 558
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mUninstallPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_17 .. :try_end_4e} :catchall_59

    goto :goto_17

    .line 561
    :cond_4f
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_63

    :try_start_52
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_6d

    :try_start_55
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_77

    goto :goto_81

    :catchall_59
    move-exception v2

    .line 549
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception v1

    :try_start_5f
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_62
    throw v2
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_63

    :catchall_63
    move-exception v1

    :try_start_64
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_6c

    :catchall_68
    move-exception p1

    :try_start_69
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6c
    throw v1
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception p1

    :try_start_6e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_76

    :catchall_72
    move-exception v0

    :try_start_73
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_76
    throw p1
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_77} :catch_77

    :catch_77
    move-exception p1

    .line 562
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    :cond_81
    :goto_81
    return-void
.end method

.method public final getCscCode()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    const-string/jumbo v1, "ro.csc.sales_code"

    .line 584
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string/jumbo v1, "ril.sales_code"

    .line 586
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    goto :goto_1f

    .line 589
    :catch_17
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string/jumbo v1, "sales_code reading failed"

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    return-object v0
.end method

.method public final installPreloadPackage(Ljava/io/File;)V
    .registers 14

    .line 246
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSTALL ------------------ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 250
    :try_start_1a
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 252
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->setInstallFlags(Landroid/content/pm/PackageInstaller$SessionParams;)V

    .line 253
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    const-string v3, "PrePackageInstaller"

    iget-object v4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mContext:Landroid/content/Context;

    .line 254
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 253
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/server/pm/PackageInstallerService;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 255
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 256
    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageInstallerService;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 260
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Write : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_5b} :catch_183

    .line 262
    :try_start_5b
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_60} :catch_a0

    .line 263
    :try_start_60
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v10

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v6
    :try_end_6f
    .catchall {:try_start_60 .. :try_end_6f} :catchall_96

    const/high16 v7, 0x10000

    :try_start_71
    new-array v7, v7, [B

    .line 267
    :goto_73
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7e

    .line 268
    invoke-virtual {v6, v7, v5, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_73

    .line 270
    :cond_7e
    invoke-virtual {v2, v6}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_81
    .catchall {:try_start_71 .. :try_end_81} :catchall_8a

    if-eqz v6, :cond_86

    .line 271
    :try_start_83
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_96

    :cond_86
    :try_start_86
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_a0

    goto :goto_b7

    :catchall_8a
    move-exception v5

    if-eqz v6, :cond_95

    .line 261
    :try_start_8d
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_91

    goto :goto_95

    :catchall_91
    move-exception v6

    :try_start_92
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_95
    :goto_95
    throw v5
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_96

    :catchall_96
    move-exception v5

    :try_start_97
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9b

    goto :goto_9f

    :catchall_9b
    move-exception v0

    :try_start_9c
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9f
    throw v5
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a0} :catch_a0

    :catch_a0
    move-exception v0

    .line 272
    :try_start_a1
    iget-object v5, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " : ignored"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 279
    :goto_b7
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Write Done :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 282
    new-instance v0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;-><init>(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver-IA;)V

    .line 283
    invoke-virtual {v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 284
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 287
    invoke-virtual {v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.content.pm.extra.STATUS"

    .line 288
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_15e

    .line 291
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SUCCESS install, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    const-string p1, "android.content.pm.extra.PACKAGE_NAME"

    .line 292
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 295
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->isLocaleOptimizedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 296
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.localeoverlaymanager.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.localeoverlaymanager"

    const-string v5, "com.samsung.android.localeoverlaymanager.ResourceOverlayService"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "package"

    .line 301
    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "isPreLoadInstall"

    .line 302
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installed LocaleOptimzed preloaded package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Starting LOM with intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 309
    :cond_15a
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->putInstallHistory(Ljava/lang/String;)V

    goto :goto_19a

    .line 311
    :cond_15e
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAIL install, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", msg = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "android.content.pm.extra.STATUS_MESSAGE"

    .line 312
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 311
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_182} :catch_183

    goto :goto_19a

    :catch_183
    move-exception p1

    .line 315
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error #2, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    :goto_19a
    return-void
.end method

.method public final installPreloadPackageList()V
    .registers 6

    .line 226
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 227
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v1, "apk count is 0. call setDisabled()"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->setDisabled()V

    return-void

    .line 232
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 233
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 235
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->installPreloadPackage(Ljava/io/File;)V

    goto :goto_19

    .line 237
    :cond_36
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Skip..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    goto :goto_19

    .line 241
    :cond_51
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v0, "installPreloadPackageList() --------------------- COMPLETE"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    return-void
.end method

.method public final isExistHigherVersionPkg(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)Z
    .registers 4

    .line 520
    iget p0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-gt p0, v0, :cond_1c

    iget-object p0, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 521
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_1a

    iget-object p0, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 522
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public final isLocaleOptimizedPackage(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 337
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 340
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_35

    const-string v1, "com.samsung.android.hasZippedOverlays"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_15} :catch_1a

    if-eqz p0, :cond_35

    const/4 p0, 0x1

    move v0, p0

    goto :goto_35

    :catch_1a
    move-exception p1

    .line 345
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLocaleOptimizedPackage() PackageManager.NameNotFoundException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 345
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    :cond_35
    :goto_35
    return v0
.end method

.method public final isOmcModel()Z
    .registers 2

    const-string/jumbo p0, "persist.sys.omc_support"

    .line 595
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    .line 596
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final loadInstallHistory()V
    .registers 6

    .line 568
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallHistory:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 569
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mSettingsProviderProxy:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;->getInstallHistory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mHistoryForSettingProvider:Ljava/lang/String;

    .line 570
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadInstallHistory() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mHistoryForSettingProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->write(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mHistoryForSettingProvider:Ljava/lang/String;

    if-eqz v0, :cond_3d

    const-string v1, ";"

    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 573
    array-length v1, v0

    const/4 v2, 0x0

    :goto_31
    if-ge v2, v1, :cond_41

    aget-object v3, v0, v2

    .line 574
    iget-object v4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallHistory:Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_3d
    const-string v0, ""

    .line 577
    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mHistoryForSettingProvider:Ljava/lang/String;

    :cond_41
    return-void
.end method

.method public final makeInstallPackageList()V
    .registers 8

    .line 390
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->getCscCode()Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cscCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 393
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/system/preload"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/prism/preload/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/hidden_app"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v6, "/system/carrier/preload"

    aput-object v6, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/product/preload/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v0, 0x4

    const-string v3, "/product/preload/Common_app"

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 400
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsUpgrade:Z

    if-eq v0, v5, :cond_6e

    const-string v0, "/system/preloadFactoryResetOnly"

    .line 401
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_6e
    new-instance v0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;)V

    invoke-interface {v1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 405
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->removeEmptyApks()V

    .line 406
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->removeInstalledPkgFromList()V

    .line 408
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v1, "[CONFIRMED INSTALLING LIST]"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_89
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 410
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TO INSTALL :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    goto :goto_89

    :cond_b0
    return-void
.end method

.method public abstract makeInstallPackageList([Ljava/io/File;)V
.end method

.method public abstract prepareInstall()V
.end method

.method public prepareSettings()V
    .registers 6

    .line 133
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsFirstBoot:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 134
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mSettingsProviderProxy:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;->setFingerprintState(I)V

    goto :goto_24

    .line 135
    :cond_b
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsUpgrade:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_16

    .line 136
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mSettingsProviderProxy:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;->setFingerprintState(I)V

    goto :goto_24

    .line 138
    :cond_16
    iget v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mFingerprintState:I

    if-eqz v0, :cond_22

    if-eq v0, v1, :cond_22

    if-eq v0, v2, :cond_1f

    goto :goto_24

    .line 144
    :cond_1f
    iput-boolean v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsUpgrade:Z

    goto :goto_24

    .line 141
    :cond_22
    iput-boolean v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsFirstBoot:Z

    :goto_24
    const-string/jumbo v0, "persist.sys.storage_preload"

    .line 150
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "persist.sys.storage_preload : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 153
    iget-boolean v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsFirstBoot:Z

    if-eqz v2, :cond_5e

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 154
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string/jumbo v1, "previously, Something\'s wrong.. mounting hidden as first booting"

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 155
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 156
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    :cond_5e
    return-void
.end method

.method public putInstallHistory(Ljava/lang/String;)V
    .registers 5

    .line 320
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallHistory:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 321
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallHistory:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mHistoryForSettingProvider:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mHistoryForSettingProvider:Ljava/lang/String;

    .line 323
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mSettingsProviderProxy:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;->setInstallHistory(Ljava/lang/String;)V

    .line 324
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveInstallHistory() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->write(Ljava/lang/String;)V

    :cond_42
    return-void
.end method

.method public final removeEmptyApks()V
    .registers 9

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 416
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 417
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 418
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_25
    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 419
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 420
    iget-object v5, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remove : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 421
    iget-object v5, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_60
    return-void
.end method

.method public removeInstalledPkgFromList()V
    .registers 8

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 471
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_b
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_112

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 472
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 473
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 475
    iget-boolean v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsUpgrade:Z

    const-string v5, ", e = "

    if-eqz v3, :cond_b3

    if-eqz v2, :cond_b

    .line 476
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 478
    :try_start_2e
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 479
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 481
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 482
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->isExistHigherVersionPkg(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 483
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exists higher Version: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 484
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 485
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->putInstallHistory(Ljava/lang/String;)V
    :try_end_6d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_6d} :catch_97
    .catch Ljava/lang/NullPointerException; {:try_start_2e .. :try_end_6d} :catch_6e

    goto :goto_b

    :catch_6e
    move-exception v2

    .line 491
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 492
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "something wrong occurred #1  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-virtual {v3, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 489
    :catch_97
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_b3
    if-eqz v2, :cond_b

    .line 500
    :try_start_b5
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 501
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 502
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "already installed : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 503
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 504
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->putInstallHistory(Ljava/lang/String;)V
    :try_end_e7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b5 .. :try_end_e7} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_b5 .. :try_end_e7} :catch_e9

    goto/16 :goto_b

    :catch_e9
    move-exception v2

    .line 509
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 510
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "something wrong occurred #2  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    invoke-virtual {v3, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 516
    :cond_112
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v0, "fin"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    return-void
.end method

.method public runPrePackageInstaller()Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsFirstBoot:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsUpgrade:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mFingerprintState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsUpgrade : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsUpgrade:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsFirstBoot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsFirstBoot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", fingerState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mFingerprintState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 96
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PrePackageInstallThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 99
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 100
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 101
    new-instance v0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1
.end method

.method public setDisabled()V
    .registers 4

    const-string/jumbo v0, "persist.sys.storage_preload"

    const-string v1, "0"

    .line 170
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v2, "Set package state to disabled"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->write(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_25

    .line 178
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v2, "Waiting for cache flush..."

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->write(Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    .line 180
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    :cond_25
    const-string v1, "2"

    .line 183
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsFirstBoot:Z

    if-eqz v0, :cond_38

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->setGrantPermissions()V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v1, "call setGrantPermissions"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 190
    :cond_38
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mSettingsProviderProxy:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;->setFingerprintState(I)V

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.PREINSTALLER_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 197
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string/jumbo v0, "setDisabled() is FINISHED"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final setGrantPermissions()V
    .registers 13

    const-string v0, " , Request : "

    const-string v1, "mdc.sys.omc_etcpath"

    const/4 v2, 0x0

    .line 429
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10a

    .line 430
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto/16 :goto_10a

    .line 435
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/grantpermissionslist.txt"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "grantPermission file path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 438
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_109

    .line 440
    :try_start_45
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4a} :catch_ef

    .line 441
    :try_start_4a
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_e5

    .line 442
    :try_start_51
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_db

    .line 444
    :cond_56
    :goto_56
    :try_start_56
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c7

    .line 445
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_56

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_56

    const-string v6, "/"

    .line 446
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 447
    array-length v6, v5
    :try_end_71
    .catchall {:try_start_56 .. :try_end_71} :catchall_d1

    const/4 v7, 0x2

    if-ne v6, v7, :cond_56

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 449
    :try_start_76
    iget-object v8, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v9, v5, v7

    aget-object v10, v5, v6

    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 451
    iget-object v8, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "grantPermission Pkg : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v5, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v5, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_a1} :catch_a2
    .catchall {:try_start_76 .. :try_end_a1} :catchall_d1

    goto :goto_56

    :catch_a2
    move-exception v8

    .line 454
    :try_start_a3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 455
    iget-object v8, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Error] grantPermission Pkg : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v5, v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v5, v6

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_a3 .. :try_end_c6} :catchall_d1

    goto :goto_56

    .line 461
    :cond_c7
    :try_start_c7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_db

    :try_start_ca
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_e5

    :try_start_cd
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_ef

    goto :goto_109

    :catchall_d1
    move-exception v0

    .line 440
    :try_start_d2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_d6

    goto :goto_da

    :catchall_d6
    move-exception v4

    :try_start_d7
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_da
    throw v0
    :try_end_db
    .catchall {:try_start_d7 .. :try_end_db} :catchall_db

    :catchall_db
    move-exception v0

    :try_start_dc
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_df
    .catchall {:try_start_dc .. :try_end_df} :catchall_e0

    goto :goto_e4

    :catchall_e0
    move-exception v2

    :try_start_e1
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e4
    throw v0
    :try_end_e5
    .catchall {:try_start_e1 .. :try_end_e5} :catchall_e5

    :catchall_e5
    move-exception v0

    :try_start_e6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_ea

    goto :goto_ee

    :catchall_ea
    move-exception v2

    :try_start_eb
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ee
    throw v0
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ef} :catch_ef

    :catch_ef
    move-exception v0

    .line 462
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file error on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_109
    :goto_109
    return-void

    .line 431
    :cond_10a
    :goto_10a
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v0, "No file is existed for granting permissions"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    return-void
.end method

.method public final setInstallFlags(Landroid/content/pm/PackageInstaller$SessionParams;)V
    .registers 3

    .line 353
    iget p0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v0, 0x4000000

    or-int/2addr p0, v0

    iput p0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 355
    iget p0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    const/high16 v0, 0x2000000

    or-int/2addr p0, v0

    iput p0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    return-void
.end method

.method public setPackageManager(Landroid/content/pm/PackageManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 634
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public setSettingsProviderProxy(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;)V
    .registers 2

    .line 600
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mSettingsProviderProxy:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;

    return-void
.end method

.method public startPrePackageInstall()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 115
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 116
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v1, "DeviceOwner abnormal case!! -> setDisabled"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->setDisabled()V

    return-void

    .line 121
    :cond_1b
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->loadInstallHistory()V

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->prepareInstall()V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->makeInstallPackageList()V

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->installPreloadPackageList()V

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->uninstallPackage()V

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->setDisabled()V

    return-void
.end method

.method public uninstallPackage()V
    .registers 6

    .line 526
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/uninstall_preloadpkg.lst"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->addUninstallPkgList(Ljava/io/File;)V

    .line 529
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->isOmcModel()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdc.sys.omc_etcpath"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/uninstall_preloadpkg.lst"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "omcEtcPath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->addUninstallPkgList(Ljava/io/File;)V

    .line 537
    :cond_45
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mUninstallPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 538
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletePackage :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 540
    :try_start_6d
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_74} :catch_75

    goto :goto_4b

    :catch_75
    move-exception v1

    .line 542
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    goto :goto_4b

    :cond_80
    return-void
.end method
