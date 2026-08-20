.class public Lcom/samsung/android/server/pm/install/PrePackageInstaller;
.super Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;
.source "PrePackageInstaller.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;ZZ)V
    .registers 5

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;ZZ)V

    return-void
.end method


# virtual methods
.method public makeInstallPackageList([Ljava/io/File;)V
    .registers 9

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstaller;->readEnforceSkippingPackageList()Ljava/util/List;

    move-result-object v0

    .line 59
    array-length v1, p1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_51

    aget-object v3, p1, v2

    .line 60
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 61
    iget-object v4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is skipped by EnforceSkippingPackage"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    goto :goto_4e

    .line 63
    :cond_2f
    iget-object v4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is Added on mInstallPackageList"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 64
    iget-object v4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_51
    return-void
.end method

.method public prepareInstall()V
    .registers 3

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->prepareSettings()V

    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v0, "fota - mount hidden area using persist values."

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    const-string/jumbo p0, "persist.sys.storage_preload"

    const-string v0, "1"

    .line 51
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 52
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    return-void
.end method

.method public readEnforceSkippingPackageList()Ljava/util/List;
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mdc.sys.omc_etcpath"

    const/4 v2, 0x0

    .line 95
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_aa

    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto/16 :goto_aa

    :cond_16
    const/4 v2, 0x2

    const-string v3, "/enforceskippingpackages.txt"

    const-string v4, "/enforcedeletepackage.txt"

    .line 102
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v2, :cond_a9

    .line 103
    aget-object v5, v3, v4

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 105
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 108
    :try_start_3e
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_8b

    .line 109
    :try_start_43
    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_81

    .line 110
    :try_start_4a
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_77

    .line 112
    :cond_4f
    :goto_4f
    :try_start_4f
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_63

    .line 113
    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4f

    .line 114
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catchall {:try_start_4f .. :try_end_62} :catchall_6d

    goto :goto_4f

    .line 117
    :cond_63
    :try_start_63
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_77

    :try_start_66
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_81

    :try_start_69
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_8b

    goto :goto_a5

    :catchall_6d
    move-exception v9

    .line 108
    :try_start_6e
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_76

    :catchall_72
    move-exception v8

    :try_start_73
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_76
    throw v9
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception v8

    :try_start_78
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    goto :goto_80

    :catchall_7c
    move-exception v7

    :try_start_7d
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_80
    throw v8
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_81

    :catchall_81
    move-exception v7

    :try_start_82
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_8a

    :catchall_86
    move-exception v5

    :try_start_87
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8a
    throw v7
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8b} :catch_8b

    :catch_8b
    move-exception v5

    .line 118
    iget-object v7, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file error on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a5
    :goto_a5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_20

    :cond_a9
    return-object v0

    .line 97
    :cond_aa
    :goto_aa
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    const-string v1, "No file is existed for enforced skip"

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    return-object v0
.end method

.method public removeInstalledPkgFromList()V
    .registers 7

    .line 71
    invoke-super {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->removeInstalledPkgFromList()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 75
    iget-boolean v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsUpgrade:Z

    if-eqz v1, :cond_5c

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 77
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 80
    :try_start_29
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_30} :catch_31

    goto :goto_12

    .line 82
    :catch_31
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallHistory:Ljava/util/Collection;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 83
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removed by user : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$PrePackageInstallLogMsg;->out(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_5c
    return-void
.end method
