.class public Lcom/android/server/rollback/AppDataRollbackHelper;
.super Ljava/lang/Object;
.source "AppDataRollbackHelper.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RollbackManager"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mInstaller:Lcom/android/server/pm/Installer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Installer;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 47
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Installer;Lcom/android/server/pm/ApexManager;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 53
    iput-object p2, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    return-void
.end method


# virtual methods
.method public commitPendingBackupAndRestoreForUser(ILcom/android/server/rollback/Rollback;)Z
    .registers 15

    .line 227
    iget-object v0, p2, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    .line 230
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getPendingBackups()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2d

    .line 232
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2d

    move v2, v5

    move v6, v2

    goto :goto_2e

    :cond_2d
    move v6, v1

    .line 238
    :goto_2e
    invoke-virtual {v3, p1}, Landroid/content/rollback/PackageRollbackInfo;->getRestoreInfo(I)Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    move-result-object v11

    if-eqz v11, :cond_36

    move v2, v5

    goto :goto_37

    :cond_36
    move v5, v1

    :goto_37
    if-eqz v6, :cond_42

    if-eqz v5, :cond_42

    .line 247
    invoke-virtual {v3, p1}, Landroid/content/rollback/PackageRollbackInfo;->removePendingBackup(I)V

    .line 248
    invoke-virtual {v3, p1}, Landroid/content/rollback/PackageRollbackInfo;->removePendingRestoreInfo(I)V

    goto :goto_c

    :cond_42
    if-eqz v6, :cond_5c

    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 254
    iget-object v7, p2, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 255
    invoke-virtual {v7}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v7

    const/4 v8, 0x2

    .line 254
    invoke-virtual {p0, v3, p1, v7, v8}, Lcom/android/server/rollback/AppDataRollbackHelper;->doSnapshot(Landroid/content/rollback/PackageRollbackInfo;III)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 256
    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5c
    if-eqz v5, :cond_c

    .line 260
    iget-object v4, p2, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v7

    iget v8, v11, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->appId:I

    iget-object v9, v11, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->seInfo:Ljava/lang/String;

    const/4 v10, 0x2

    move-object v4, p0

    move-object v5, v3

    move v6, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/rollback/AppDataRollbackHelper;->doRestoreOrWipe(Landroid/content/rollback/PackageRollbackInfo;IIILjava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 262
    invoke-virtual {v3, v11}, Landroid/content/rollback/PackageRollbackInfo;->removeRestoreInfo(Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;)V

    goto :goto_c

    :cond_76
    return v2
.end method

.method public destroyApexCeSnapshots(II)V
    .registers 4

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/AppDataRollbackHelper;->isUserCredentialLocked(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 214
    iget-object p0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ApexManager;->destroyCeSnapshots(II)Z

    :cond_b
    return-void
.end method

.method public destroyApexDeSnapshots(I)V
    .registers 2

    .line 205
    iget-object p0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->destroyDeSnapshots(I)Z

    return-void
.end method

.method public destroyAppDataSnapshot(ILandroid/content/rollback/PackageRollbackInfo;I)V
    .registers 6

    .line 193
    :try_start_0
    iget-object p0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p3, p1, v1}, Lcom/android/server/pm/Installer;->destroyAppDataSnapshot(Ljava/lang/String;III)Z
    :try_end_a
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_26

    :catch_b
    move-exception p0

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to delete app data snapshot for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RollbackManager"

    .line 196
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return-void
.end method

.method public final doRestoreOrWipe(Landroid/content/rollback/PackageRollbackInfo;IIILjava/lang/String;I)Z
    .registers 16

    .line 144
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 145
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result p4

    if-eqz p4, :cond_e

    goto :goto_42

    :cond_e
    and-int/lit8 p4, p6, 0x2

    if-eqz p4, :cond_42

    .line 152
    iget-object p0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 153
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/pm/ApexManager;->restoreCeData(IILjava/lang/String;)Z

    goto :goto_42

    .line 162
    :cond_1c
    :try_start_1c
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result v0

    if-eqz v0, :cond_34

    if-eq v0, v1, :cond_25

    goto :goto_42

    .line 164
    :cond_25
    iget-object v2, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v7, 0x0

    move v5, p2

    move v6, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_42

    .line 169
    :cond_34
    iget-object v2, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move v4, p4

    move-object v5, p5

    move v6, p2

    move v7, p3

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->restoreAppDataSnapshot(Ljava/lang/String;ILjava/lang/String;III)Z
    :try_end_42
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1c .. :try_end_42} :catch_43

    :cond_42
    :goto_42
    return v1

    :catch_43
    move-exception p0

    .line 176
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to restore/wipe app data: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " policy="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RollbackManager"

    .line 176
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final doSnapshot(Landroid/content/rollback/PackageRollbackInfo;III)Z
    .registers 6

    .line 122
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v0

    if-eqz v0, :cond_17

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_15

    .line 125
    iget-object p0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 126
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/pm/ApexManager;->snapshotCeData(IILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x1

    return p0

    .line 131
    :cond_17
    :try_start_17
    iget-object p0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 132
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/pm/Installer;->snapshotAppData(Ljava/lang/String;III)Z

    move-result p0
    :try_end_21
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_17 .. :try_end_21} :catch_22

    return p0

    :catch_22
    move-exception p0

    .line 134
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to create app data snapshot for: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", userId: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RollbackManager"

    .line 134
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isUserCredentialLocked(I)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 273
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 274
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public restoreAppData(ILandroid/content/rollback/PackageRollbackInfo;IILjava/lang/String;)Z
    .registers 16

    .line 91
    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getPendingBackups()Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getPendingRestores()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    .line 98
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_22

    .line 99
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_30

    .line 104
    :cond_22
    invoke-virtual {p0, p3}, Lcom/android/server/rollback/AppDataRollbackHelper;->isUserCredentialLocked(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 107
    new-instance v0, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    invoke-direct {v0, p3, p4, p5}, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_30
    move v9, v2

    goto :goto_36

    :cond_32
    const/4 v2, 0x3

    const/4 v0, 0x0

    move v9, v2

    move v2, v0

    :goto_36
    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v6, p1

    move v7, p4

    move-object v8, p5

    .line 115
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/rollback/AppDataRollbackHelper;->doRestoreOrWipe(Landroid/content/rollback/PackageRollbackInfo;IIILjava/lang/String;I)Z

    return v2
.end method

.method public snapshotAppData(ILandroid/content/rollback/PackageRollbackInfo;[I)V
    .registers 9

    .line 63
    array-length v0, p3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_33

    aget v2, p3, v1

    .line 65
    invoke-virtual {p0, v2}, Lcom/android/server/rollback/AppDataRollbackHelper;->isUserCredentialLocked(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isn\'t unlocked, skipping CE userdata backup."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RollbackManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p2, v2}, Landroid/content/rollback/PackageRollbackInfo;->addPendingBackup(I)V

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x3

    .line 75
    :goto_2d
    invoke-virtual {p0, p2, v2, p1, v3}, Lcom/android/server/rollback/AppDataRollbackHelper;->doSnapshot(Landroid/content/rollback/PackageRollbackInfo;III)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_33
    return-void
.end method
