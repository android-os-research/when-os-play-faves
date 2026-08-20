.class public Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;
.super Ljava/lang/Object;
.source "AppMetadataBackupWriter.java"


# instance fields
.field public final mOutput:Landroid/app/backup/FullBackupDataOutput;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/app/backup/FullBackupDataOutput;Landroid/content/pm/PackageManager;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    .line 51
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public backupApk(Landroid/content/pm/PackageInfo;)V
    .registers 14

    .line 247
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v5

    .line 248
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 249
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    const-string v2, "a"

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 258
    sget-object v1, Lcom/android/server/backup/UserBackupManagerService;->mSplitBackupFlag:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3f

    .line 259
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 261
    array-length v2, v1

    const/4 v3, 0x0

    :goto_2d
    if-ge v3, v2, :cond_3f

    aget-object v10, v1, v3

    .line 263
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v11, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    const-string v7, "a"

    move-object v9, v0

    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_3f
    return-void
.end method

.method public backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1, p6}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->getManifestBytes(Landroid/content/pm/PackageInfo;Z)[B

    move-result-object p6

    .line 92
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 93
    invoke-virtual {v0, p6}, Ljava/io/FileOutputStream;->write([B)V

    .line 94
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const-wide/16 v0, 0x0

    .line 100
    invoke-virtual {p2, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 102
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 106
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    move-object v3, p4

    move-object v4, p5

    .line 102
    invoke-static/range {v2 .. v7}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    return-void
.end method

.method public backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    .line 62
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public backupObb(ILandroid/content/pm/PackageInfo;)V
    .registers 12

    .line 280
    new-instance v0, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v0, p1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 282
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_34

    .line 287
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 289
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 290
    array-length v8, v1

    :goto_1b
    if-ge v0, v8, :cond_34

    aget-object v2, v1, v0

    .line 291
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    .line 296
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    const-string/jumbo v5, "obb"

    move-object v2, v3

    move-object v3, v5

    move-object v5, p1

    .line 291
    invoke-static/range {v2 .. v7}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_34
    return-void
.end method

.method public backupWidget(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;[B)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    array-length v0, p4

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    const-string v1, "Can\'t backup widget with no data."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 180
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 181
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 182
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 183
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-direct {p1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 185
    invoke-virtual {p0, v2}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->getMetadataBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 187
    invoke-virtual {p0, p1, p4}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->writeWidgetData(Ljava/io/DataOutputStream;[B)V

    .line 188
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 189
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    const-wide/16 v0, 0x0

    .line 193
    invoke-virtual {p2, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 199
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    .line 195
    invoke-static/range {v2 .. v7}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    return-void
.end method

.method public final getManifestBytes(Landroid/content/pm/PackageInfo;Z)[B
    .registers 9

    .line 128
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 130
    new-instance v2, Landroid/util/StringBuilderPrinter;

    invoke-direct {v2, v1}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v3, 0x1

    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2, v0}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 135
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 137
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_36

    goto :goto_38

    :cond_36
    const-string p0, ""

    .line 138
    :goto_38
    invoke-virtual {v2, p0}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    const-string p0, "0"

    if-eqz p2, :cond_42

    const-string v0, "1"

    goto :goto_43

    :cond_42
    move-object v0, p0

    .line 140
    :goto_43
    invoke-virtual {v2, v0}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/android/server/backup/UserBackupManagerService;->mSplitBackupFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v3, :cond_5e

    if-eqz p2, :cond_5a

    .line 143
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    if-eqz p2, :cond_5a

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_5b

    :cond_5a
    move-object p2, p0

    :goto_5b
    invoke-virtual {v2, p2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 148
    :cond_5e
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez p1, :cond_66

    .line 150
    invoke-virtual {v2, p0}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    goto :goto_82

    .line 154
    :cond_66
    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    .line 155
    array-length p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 156
    array-length p1, p0

    const/4 p2, 0x0

    :goto_74
    if-ge p2, p1, :cond_82

    aget-object v0, p0, p2

    .line 157
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_74

    .line 160
    :cond_82
    :goto_82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public final getMetadataBytes(Ljava/lang/String;)[B
    .registers 4

    .line 215
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 216
    new-instance v0, Landroid/util/StringBuilderPrinter;

    invoke-direct {v0, p0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v1, 0x1

    .line 217
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, p1}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public final writeWidgetData(Ljava/io/DataOutputStream;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const p0, 0x1ffed01

    .line 235
    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 236
    array-length p0, p2

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 237
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method
