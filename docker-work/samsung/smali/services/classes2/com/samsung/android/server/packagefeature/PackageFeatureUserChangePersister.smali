.class public Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;
.super Ljava/lang/Object;
.source "PackageFeatureUserChangePersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;,
        Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;,
        Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyHolder;
    }
.end annotation


# static fields
.field public static final APP_CONTINUITY_CONTROLLER_FILE_NAME:Ljava/lang/String; = "AppContinuityPackageMap"

.field public static final CONVENTIONAL_MODE_DIRECTORY:Ljava/lang/String;

.field public static final CUSTOM_ASPECT_RATIO_CONTROLLER_FILE_NAME:Ljava/lang/String; = "CustomAspectRatioPackageMap"

.field public static final CUSTOM_ASPECT_RATIO_CONTROLLER_LEGACY_FILE_NAME:Ljava/lang/String; = "PackageMap"

.field public static final DATA_SYSTEM_DIRECTORY:Ljava/lang/String;

.field public static final DISPLAY_CUTOUT_CONTROLLER_FILE_NAME:Ljava/lang/String; = "DisplayCutoutPackageMap"

.field public static final EMBED_ACTIVITY_CONTROLLER_FILE_NAME:Ljava/lang/String; = "EmbedActivityPackageSetting"

.field public static final EMBED_ACTIVITY_DIRECTORY:Ljava/lang/String;

.field public static final FIXED_ASPECT_RATIO_CONTROLLER_FILE_NAME:Ljava/lang/String; = "FixedAspectRatioPackageMap"

.field public static final FLEX_PANEL_CONTROLLER_FILE_NAME:Ljava/lang/String; = "SupportsFlexPanelPackageMap"

.field public static final LOCAL_DEBUG:Z = false

.field public static final MULTI_DISPLAY_DIRECTORY:Ljava/lang/String;

.field public static final NO_WAIT_ROTATION_CONTROLLER_FILE_NAME:Ljava/lang/String; = "NoWaitRotationPackageSetting"

.field public static final ORIENTATION_CONTROLLER_FILE_NAME:Ljava/lang/String; = "OrientationControlPackageMap"

.field public static final PACKAGE_SETTINGS_DIRECTORY:Ljava/lang/String;

.field public static final SPLIT_ACTIVITY_CONTROLLER_FILE_NAME:Ljava/lang/String; = "SplitActivityPackageSetting"

.field public static final SPLIT_ACTIVITY_DIRECTORY:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "PackageFeature"


# instance fields
.field public final mH:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;

.field public mLoadRequestFlags:I

.field public final mLock:Ljava/lang/Object;

.field public final mPackageFeatureUserChanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;",
            ">;"
        }
    .end annotation
.end field

.field public final mSaveRequestFlagsWithUserId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mThreadStarted:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLoadRequestFlags(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLoadRequestFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSaveRequestFlagsWithUserId(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mSaveRequestFlagsWithUserId:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThreadStarted(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mThreadStarted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmThreadStarted(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mThreadStarted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mloadFiles(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->loadFiles()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msaveFiles(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->saveFiles()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->DATA_SYSTEM_DIRECTORY:Ljava/lang/String;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "packagesettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->PACKAGE_SETTINGS_DIRECTORY:Ljava/lang/String;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "multidisplay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->MULTI_DISPLAY_DIRECTORY:Ljava/lang/String;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "conventionalmode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->CONVENTIONAL_MODE_DIRECTORY:Ljava/lang/String;

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "splitactivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->SPLIT_ACTIVITY_DIRECTORY:Ljava/lang/String;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "embedactivity"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->EMBED_ACTIVITY_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLock:Ljava/lang/Object;

    .line 102
    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;Landroid/os/Looper;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H-IA;)V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mH:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mPackageFeatureUserChanges:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mSaveRequestFlagsWithUserId:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;-><init>()V

    return-void
.end method

.method public static getDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 336
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 338
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    const-string v2, "PackageFeature"

    if-eqz v1, :cond_28

    .line 339
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create directory: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 341
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to create directory: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    :goto_3c
    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;
    .registers 1

    .line 95
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyHolder;->sPackageFeatureUserChangePersister:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    return-object v0
.end method


# virtual methods
.method public addUserChange(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mPackageFeatureUserChanges:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget p1, p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->requestToLoad(I)V

    .line 113
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final loadFile(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    .line 238
    :cond_3
    iget-object p0, p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mFilePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->getDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 239
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_d4

    .line 240
    array-length v0, p0

    if-nez v0, :cond_14

    goto/16 :goto_d4

    .line 244
    :cond_14
    array-length v0, p0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_d4

    aget-object v2, p0, v1

    .line 245
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 246
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 247
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v5, ", flag=0x"

    const-string v6, "Failed to loadFile, userId="

    const-string v7, "PackageFeature"

    if-nez v2, :cond_7b

    .line 252
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_d0

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    .line 254
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", file is not exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    .line 259
    :cond_7b
    :try_start_7b
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_80} :catch_b1

    .line 260
    :try_start_80
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_a7

    .line 261
    :try_start_85
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    .line 262
    instance-of v9, v8, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v9, :cond_96

    .line 263
    invoke-virtual {p1, v3}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    check-cast v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v8}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V
    :try_end_96
    .catchall {:try_start_85 .. :try_end_96} :catchall_9d

    .line 265
    :cond_96
    :try_start_96
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_a7

    :try_start_99
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_b1

    goto :goto_d0

    :catchall_9d
    move-exception v8

    .line 259
    :try_start_9e
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_a2

    goto :goto_a6

    :catchall_a2
    move-exception v4

    :try_start_a3
    invoke-virtual {v8, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a6
    throw v8
    :try_end_a7
    .catchall {:try_start_a3 .. :try_end_a7} :catchall_a7

    :catchall_a7
    move-exception v4

    :try_start_a8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_ac

    goto :goto_b0

    :catchall_ac
    move-exception v2

    :try_start_ad
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b0
    throw v4
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b1} :catch_b1

    :catch_b1
    move-exception v2

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    .line 267
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-static {v7, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d0
    :goto_d0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_16

    :cond_d4
    :goto_d4
    return-void
.end method

.method public final loadFiles()V
    .registers 5

    .line 219
    iget v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLoadRequestFlags:I

    if-nez v0, :cond_5

    return-void

    .line 226
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mPackageFeatureUserChanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 227
    iget v3, v2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_b

    .line 228
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->loadFile(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V

    goto :goto_b

    :cond_20
    const/4 v0, 0x0

    .line 231
    iput v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLoadRequestFlags:I

    return-void
.end method

.method public requestToLoad(I)V
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLoadRequestFlags:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLoadRequestFlags:I

    const/4 p1, 0x1

    .line 119
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->scheduleRequest(I)V

    .line 120
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public requestToReset(II)V
    .registers 6

    .line 135
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mH:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    .line 137
    iput v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLoadRequestFlags:I

    .line 138
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mSaveRequestFlagsWithUserId:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->resetFiles(II)V

    .line 140
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public requestToSave(II)V
    .registers 6

    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mSaveRequestFlagsWithUserId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_16

    .line 127
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr p2, v1

    .line 129
    :cond_16
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mSaveRequestFlagsWithUserId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    .line 130
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->scheduleRequest(I)V

    .line 131
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public final resetFile(ILcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V
    .registers 8

    const-string p0, "/"

    const-string v0, ", flag=0x"

    const-string v1, "PackageFeature"

    if-nez p2, :cond_9

    return-void

    .line 323
    :cond_9
    :try_start_9
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_72

    .line 326
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Succeeded to resetFile, userId="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    .line 327
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 326
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_50} :catch_51

    goto :goto_72

    :catch_51
    move-exception p0

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resetFile, userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    .line 331
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 330
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_72
    :goto_72
    return-void
.end method

.method public final resetFiles(II)V
    .registers 6

    .line 311
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mPackageFeatureUserChanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 312
    iget v2, v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_6

    .line 313
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->resetFile(ILcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V

    goto :goto_6

    :cond_1b
    return-void
.end method

.method public final saveFile(ILcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 296
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->getDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 298
    :try_start_35
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3a} :catch_61

    .line 299
    :try_start_3a
    new-instance p0, Ljava/io/ObjectOutputStream;

    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_57

    .line 300
    :try_start_3f
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_4d

    .line 301
    :try_start_46
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_57

    :try_start_49
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_61

    goto :goto_86

    :catchall_4d
    move-exception v1

    .line 298
    :try_start_4e
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_56

    :catchall_52
    move-exception p0

    :try_start_53
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_56
    throw v1
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception p0

    :try_start_58
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception v0

    :try_start_5d
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_60
    throw p0
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_61} :catch_61

    :catch_61
    move-exception p0

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to saveFile, userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", flag=0x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    .line 303
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageFeature"

    .line 302
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_86
    return-void
.end method

.method public final saveFiles()V
    .registers 7

    .line 273
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mSaveRequestFlagsWithUserId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 276
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mSaveRequestFlagsWithUserId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 277
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 278
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 283
    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mPackageFeatureUserChanges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_39
    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 284
    iget v5, v4, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_39

    .line 285
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->saveFile(ILcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V

    goto :goto_39

    .line 289
    :cond_4e
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mSaveRequestFlagsWithUserId:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final scheduleRequest(I)V
    .registers 6

    .line 148
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mH:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    if-ne p1, v1, :cond_14

    .line 152
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mH:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1e

    :cond_14
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    .line 154
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mH:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1e
    :goto_1e
    return-void
.end method
