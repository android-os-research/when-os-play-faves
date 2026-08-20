.class public Lcom/android/server/pm/ShortcutUser;
.super Ljava/lang/Object;
.source "ShortcutUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    }
.end annotation


# static fields
.field public static final ATTR_KNOWN_LOCALES:Ljava/lang/String; = "locales"

.field public static final ATTR_LAST_APP_SCAN_OS_FINGERPRINT:Ljava/lang/String; = "last-app-scan-fp"

.field public static final ATTR_LAST_APP_SCAN_TIME:Ljava/lang/String; = "last-app-scan-time2"

.field public static final ATTR_RESTORE_SOURCE_FINGERPRINT:Ljava/lang/String; = "restore-from-fp"

.field public static final ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final DIRECTORY_LUANCHERS:Ljava/lang/String; = "launchers"

.field public static final DIRECTORY_PACKAGES:Ljava/lang/String; = "packages"

.field public static final KEY_LAUNCHERS:Ljava/lang/String; = "launchers"

.field public static final KEY_PACKAGES:Ljava/lang/String; = "packages"

.field public static final KEY_USER_ID:Ljava/lang/String; = "userId"

.field public static final TAG:Ljava/lang/String; = "ShortcutService"

.field public static final TAG_LAUNCHER:Ljava/lang/String; = "launcher"

.field public static final TAG_ROOT:Ljava/lang/String; = "user"


# instance fields
.field public final mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

.field public mCachedLauncher:Ljava/lang/String;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mInFlightSessions:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/appsearch/AppSearchSession;",
            ">;>;"
        }
    .end annotation
.end field

.field public mKnownLocales:Ljava/lang/String;

.field public mLastAppScanOsFingerprint:Ljava/lang/String;

.field public mLastAppScanTime:J

.field public final mLaunchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/pm/ShortcutUser$PackageWithUser;",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;"
        }
    .end annotation
.end field

.field public mRestoreFromOsFingerprint:Ljava/lang/String;

.field public final mService:Lcom/android/server/pm/ShortcutService;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$3kJg405JmDTqVoYpKLzFnAWmg1Y(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutUser;->lambda$detectLocaleChange$1(Lcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cro22bo0GMwtvt4MGtcaIYiFnT4(ILjava/lang/String;Ljava/util/function/Consumer;Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutUser;->lambda$forPackageItem$0(ILjava/lang/String;Ljava/util/function/Consumer;Lcom/android/server/pm/ShortcutPackageItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LSyj1HAVOEQ4goGQ2cA-Sad1-J0(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[ILcom/android/server/pm/ShortcutLauncher;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutUser;->lambda$mergeRestoredFile$5(Lcom/android/server/pm/ShortcutService;[ILcom/android/server/pm/ShortcutLauncher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LTgrC1-kFrju8CpKn8yvjhvpGto(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I[ILcom/android/server/pm/ShortcutPackage;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutUser;->lambda$mergeRestoredFile$6(Lcom/android/server/pm/ShortcutService;[I[ILcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MD25wol9zQLXTmQNZdRALFaMbOU(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;ZLjava/io/File;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutUser;->lambda$loadFromXml$3(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;ZLjava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MFiFmhZT2tb0WotSIv4ol97gTBc(Lcom/android/server/pm/ShortcutUser;IZLjava/io/File;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutUser;->lambda$loadFromXml$4(Lcom/android/server/pm/ShortcutUser;IZLjava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UPTj9Vvm16hhLpjtIhGyXgHEZo4(Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutUser;->lambda$attemptToRestoreIfNeededAndSave$2(Lcom/android/server/pm/ShortcutPackageItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oiWWf7CcfCvEPdu1dcUOb64-hWY(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchResult;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutUser;->lambda$getAppSearch$7(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchResult;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/ShortcutService;I)V
    .registers 4

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 136
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLock:Ljava/lang/Object;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mInFlightSessions:Ljava/util/ArrayList;

    .line 154
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 155
    iput p2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 156
    iget-object p1, p1, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/app/appsearch/AppSearchManager;

    .line 157
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/AppSearchManager;

    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    .line 158
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static forAllFilesIn(Ljava/io/File;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/function/Consumer<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 495
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 498
    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 499
    array-length v0, p0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_17

    aget-object v2, p0, v1

    .line 500
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_17
    return-void
.end method

.method public static synthetic lambda$attemptToRestoreIfNeededAndSave$2(Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 1

    .line 360
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    return-void
.end method

.method public static synthetic lambda$detectLocaleChange$1(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 1

    .line 334
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimiting()V

    .line 335
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resolveResourceStrings()V

    return-void
.end method

.method public static synthetic lambda$forPackageItem$0(ILjava/lang/String;Ljava/util/function/Consumer;Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 5

    .line 282
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v0

    if-ne v0, p0, :cond_13

    .line 283
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 284
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method public static synthetic lambda$getAppSearch$7(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchResult;)V
    .registers 3

    .line 726
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_13

    .line 727
    new-instance v0, Ljava/lang/RuntimeException;

    .line 728
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void

    .line 731
    :cond_13
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$loadFromXml$3(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;ZLjava/io/File;)V
    .registers 4

    .line 476
    invoke-static {p0, p1, p3, p2}, Lcom/android/server/pm/ShortcutPackage;->loadFromFile(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Ljava/io/File;Z)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 478
    iget-object p1, p1, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method public static synthetic lambda$loadFromXml$4(Lcom/android/server/pm/ShortcutUser;IZLjava/io/File;)V
    .registers 4

    .line 484
    invoke-static {p3, p0, p1, p2}, Lcom/android/server/pm/ShortcutLauncher;->loadFromFile(Ljava/io/File;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 486
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$mergeRestoredFile$5(Lcom/android/server/pm/ShortcutService;[ILcom/android/server/pm/ShortcutLauncher;)V
    .registers 6

    .line 541
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 542
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_25

    iget-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 543
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService;->isSmartSwitchBackupAllowed()Z

    move-result p1

    if-nez p1, :cond_25

    return-void

    .line 546
    :cond_25
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutUser;->addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V

    const/4 p0, 0x0

    .line 547
    aget p1, p2, p0

    add-int/lit8 p1, p1, 0x1

    aput p1, p2, p0

    return-void
.end method

.method private synthetic lambda$mergeRestoredFile$6(Lcom/android/server/pm/ShortcutService;[I[ILcom/android/server/pm/ShortcutPackage;)V
    .registers 7

    .line 552
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 553
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_25

    iget-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 554
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService;->isSmartSwitchBackupAllowed()Z

    move-result p1

    if-nez p1, :cond_25

    return-void

    .line 558
    :cond_25
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 559
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->hasNonManifestShortcuts()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shortcuts for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " are being restored. Existing non-manifeset shortcuts will be overwritten."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    if-eqz p1, :cond_59

    .line 565
    invoke-virtual {p1, p4}, Lcom/android/server/pm/ShortcutPackage;->mergeNonManifestShortcuts(Lcom/android/server/pm/ShortcutPackage;)V

    .line 568
    :cond_59
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->removeAllShortcutsAsync()V

    .line 569
    invoke-virtual {p0, p4}, Lcom/android/server/pm/ShortcutUser;->addPackage(Lcom/android/server/pm/ShortcutPackage;)V

    const/4 p0, 0x0

    .line 570
    aget p1, p2, p0

    add-int/lit8 p1, p1, 0x1

    aput p1, p2, p0

    .line 571
    aget p1, p3, p0

    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getShortcutCount()I

    move-result p2

    add-int/2addr p1, p2

    aput p1, p3, p0

    return-void
.end method

.method public static loadFromXml(Lcom/android/server/pm/ShortcutService;Landroid/util/TypedXmlPullParser;IZ)Lcom/android/server/pm/ShortcutUser;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;
        }
    .end annotation

    .line 414
    new-instance v0, Lcom/android/server/pm/ShortcutUser;

    invoke-direct {v0, p0, p2}, Lcom/android/server/pm/ShortcutUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    :try_start_5
    const-string/jumbo v1, "locales"

    .line 417
    invoke-static {p1, v1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    const-string/jumbo v1, "last-app-scan-time2"

    .line 422
    invoke-static {p1, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v1

    .line 424
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_1e

    goto :goto_20

    :cond_1e
    const-wide/16 v1, 0x0

    .line 425
    :goto_20
    iput-wide v1, v0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    const-string/jumbo v1, "last-app-scan-fp"

    .line 426
    invoke-static {p1, v1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    const-string/jumbo v1, "restore-from-fp"

    .line 428
    invoke-static {p1, v1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    .line 430
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    .line 432
    :goto_3b
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    if-eq v5, v3, :cond_9f

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4a

    .line 433
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_9f

    :cond_4a
    const/4 v6, 0x2

    if-eq v5, v6, :cond_4e

    goto :goto_3b

    .line 437
    :cond_4e
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    .line 438
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    if-ne v5, v7, :cond_9b

    const/4 v7, -0x1

    .line 441
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x4457a875

    if-eq v8, v9, :cond_75

    const v9, -0x301acbba

    if-eq v8, v9, :cond_6a

    goto :goto_7f

    :cond_6a
    const-string/jumbo v8, "package"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7f

    move v7, v2

    goto :goto_7f

    :cond_75
    const-string/jumbo v8, "launcher-pins"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7f

    move v7, v3

    :cond_7f
    :goto_7f
    if-eqz v7, :cond_8d

    if-eq v7, v3, :cond_84

    goto :goto_9b

    .line 454
    :cond_84
    invoke-static {p1, v0, p2, p3}, Lcom/android/server/pm/ShortcutLauncher;->loadFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v4

    .line 453
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutUser;->addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V

    :goto_8b
    move v4, v3

    goto :goto_3b

    .line 443
    :cond_8d
    invoke-static {p0, v0, p1, p3}, Lcom/android/server/pm/ShortcutPackage;->loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Landroid/util/TypedXmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v4

    .line 447
    iget-object v5, v0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8b

    .line 460
    :cond_9b
    :goto_9b
    invoke-static {v5, v6}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_9e} :catch_ca

    goto :goto_3b

    :cond_9f
    if-eqz v4, :cond_a5

    .line 471
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    goto :goto_c9

    .line 473
    :cond_a5
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object p1

    .line 475
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "packages"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p3}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Z)V

    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutUser;->forAllFilesIn(Ljava/io/File;Ljava/util/function/Consumer;)V

    .line 482
    new-instance p0, Ljava/io/File;

    const-string/jumbo v1, "launchers"

    invoke-direct {p0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda3;

    invoke-direct {p1, v0, p2, p3}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/ShortcutUser;IZ)V

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllFilesIn(Ljava/io/File;Ljava/util/function/Consumer;)V

    :goto_c9
    return-object v0

    :catch_ca
    move-exception p0

    .line 463
    new-instance p1, Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;

    const-string p2, "Unable to parse file"

    invoke-direct {p1, p2, p0}, Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 4

    .line 216
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutPackageItem;->replaceUser(Lcom/android/server/pm/ShortcutUser;)V

    .line 217
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v0

    .line 218
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addPackage(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 3

    .line 193
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutPackageItem;->replaceUser(Lcom/android/server/pm/ShortcutUser;)V

    .line 194
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 4

    .line 359
    new-instance p1, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/pm/ShortcutUser;->forPackageItem(Ljava/lang/String;ILjava/util/function/Consumer;)V

    return-void
.end method

.method public cancelAllInFlightTasks()V
    .registers 5

    .line 740
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 741
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mInFlightSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    const/4 v3, 0x1

    .line 742
    invoke-virtual {v2, v3}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    goto :goto_9

    .line 744
    :cond_1a
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mInFlightSessions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 745
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public detectLocaleChange()V
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectGetLocaleTagsForUser(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    return-void

    .line 331
    :cond_19
    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    .line 333
    new-instance v0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 338
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget p0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .registers 9

    .line 585
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpDetails()Z

    move-result v0

    const-string v1, "  "

    if-eqz v0, :cond_76

    .line 586
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "User: "

    .line 587
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 588
    iget v0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "  Known locales: "

    .line 589
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Last app scan: ["

    .line 591
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 592
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "] "

    .line 593
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 594
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    invoke-static {v2, v3}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 598
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Last app scan FP: "

    .line 599
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Restore from FP: "

    .line 603
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 607
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Cached launcher: "

    .line 608
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_76
    const/4 v0, 0x0

    move v2, v0

    .line 613
    :goto_78
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_98

    .line 614
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutLauncher;

    .line 615
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isPackageMatch(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 616
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/pm/ShortcutLauncher;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    .line 620
    :cond_98
    :goto_98
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_b8

    .line 621
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutPackage;

    .line 622
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isPackageMatch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 623
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    :cond_b5
    add-int/lit8 v0, v0, 0x1

    goto :goto_98

    .line 627
    :cond_b8
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpDetails()Z

    move-result p3

    if-eqz p3, :cond_e3

    .line 628
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 629
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Bitmap directories: "

    .line 630
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {p3, v0}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutUser;->dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V

    :cond_e3
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 663
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 665
    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 668
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 669
    :goto_14
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_2e

    .line 670
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ShortcutLauncher;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/ShortcutLauncher;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_2e
    const-string/jumbo v3, "launchers"

    .line 672
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 676
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 677
    :goto_39
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_53

    .line 678
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ShortcutPackage;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_53
    const-string/jumbo p0, "packages"

    .line 680
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public final dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V
    .registers 13

    .line 639
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_41

    .line 641
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v4, v0

    move-wide v5, v2

    move v2, v1

    :goto_10
    if-ge v1, v4, :cond_3f

    aget-object v3, v0, v1

    .line 642
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_22

    add-int/lit8 v2, v2, 0x1

    .line 644
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    goto :goto_3c

    .line 645
    :cond_22
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 646
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v3}, Lcom/android/server/pm/ShortcutUser;->dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V

    :cond_3c
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_3f
    move v1, v2

    move-wide v2, v5

    .line 650
    :cond_41
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "Path: "

    .line 651
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "/ has "

    .line 653
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " files, size="

    .line 655
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string p2, " ("

    .line 657
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 658
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, ")"

    .line 659
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public forAllLaunchers(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;)V"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 270
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method public forAllPackageItems(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/server/pm/ShortcutPackageItem;",
            ">;)V"
        }
    .end annotation

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forAllPackages(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;)V"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 263
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method public forPackageItem(Ljava/lang/String;ILjava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/ShortcutPackageItem;",
            ">;)V"
        }
    .end annotation

    .line 281
    new-instance v0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getAllLaunchersForTest()Landroid/util/ArrayMap;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/pm/ShortcutUser$PackageWithUser;",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public getAllPackagesForTest()Landroid/util/ArrayMap;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public getAppSearch(Landroid/app/appsearch/AppSearchManager$SearchContext;)Lcom/android/internal/infra/AndroidFuture;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchManager$SearchContext;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/appsearch/AppSearchSession;",
            ">;"
        }
    .end annotation

    .line 708
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 709
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 710
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mInFlightSessions:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 711
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mInFlightSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_71

    .line 713
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    if-nez v1, :cond_27

    .line 714
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "app search manager is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-object v0

    .line 717
    :cond_27
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_58

    .line 720
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-object v0

    .line 723
    :cond_58
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 725
    :try_start_5c
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v3, p1, p0, v4}, Landroid/app/appsearch/AppSearchManager;->createSearchSession(Landroid/app/appsearch/AppSearchManager$SearchContext;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_6c

    .line 734
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_6c
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 735
    throw p0

    :catchall_71
    move-exception p0

    .line 712
    :try_start_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw p0
.end method

.method public getCachedLauncher()Ljava/lang/String;
    .registers 1

    .line 509
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Ljava/lang/String;

    return-object p0
.end method

.method public final getKnownLocales()Ljava/lang/String;
    .registers 3

    .line 310
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 311
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectGetLocaleTagsForUser(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    .line 312
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 314
    :cond_19
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    return-object p0
.end method

.method public getLastAppScanOsFingerprint()Ljava/lang/String;
    .registers 1

    .line 174
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    return-object p0
.end method

.method public getLastAppScanTime()J
    .registers 3

    .line 166
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    return-wide v0
.end method

.method public getLauncherShortcuts(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;
    .registers 6

    .line 249
    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutLauncher;

    if-nez v1, :cond_1b

    .line 252
    new-instance v1, Lcom/android/server/pm/ShortcutLauncher;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V

    .line 253
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 255
    :cond_1b
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    :goto_1e
    return-object v1
.end method

.method public getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .registers 4

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    if-nez v0, :cond_12

    .line 240
    new-instance v0, Lcom/android/server/pm/ShortcutPackage;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    .line 241
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-object v0
.end method

.method public getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .registers 2

    .line 229
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ShortcutPackage;

    if-eqz p0, :cond_d

    .line 231
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    :cond_d
    return-object p0
.end method

.method public getUserId()I
    .registers 1

    .line 162
    iget p0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    return p0
.end method

.method public hasPackage(Ljava/lang/String;)Z
    .registers 2

    .line 189
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public logSharingShortcutStats(Lcom/android/internal/logging/MetricsLogger;)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 689
    :goto_3
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_2b

    .line 690
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->hasShareTargets()Z

    move-result v3

    if-eqz v3, :cond_28

    add-int/lit8 v1, v1, 0x1

    .line 692
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->getSharingShortcutCount()I

    move-result v3

    add-int/2addr v2, v3

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 696
    :cond_2b
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v3, 0x6b5

    invoke-direct {v0, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v3, 0x1

    .line 697
    invoke-virtual {v0, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    iget p0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 698
    invoke-virtual {v3, p0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 697
    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    const/4 p0, 0x2

    .line 699
    invoke-virtual {v0, p0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 700
    invoke-virtual {p0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 699
    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    const/4 p0, 0x3

    .line 701
    invoke-virtual {v0, p0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 702
    invoke-virtual {p0, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 701
    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;)V
    .registers 7

    .line 519
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    const/4 v1, 0x1

    new-array v2, v1, [I

    new-array v3, v1, [I

    new-array v1, v1, [I

    .line 537
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 538
    new-instance v4, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I)V

    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 549
    new-instance v4, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I[I)V

    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 574
    iget-object v0, p1, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 575
    iget-object v0, p1, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 577
    iget-object p1, p1, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    .line 579
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Restored: L="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    aget v0, v2, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " P="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v3, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " S="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCalledByPublisher(Ljava/lang/String;)V
    .registers 3

    .line 305
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->detectLocaleChange()V

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    return-void
.end method

.method public removeLauncher(ILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;
    .registers 3

    .line 224
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ShortcutLauncher;

    return-object p0
.end method

.method public removePackage(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .registers 4

    .line 198
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    if-eqz v0, :cond_d

    .line 201
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->removeAllShortcutsAsync()V

    .line 203
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget p0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v1, p0, p1}, Lcom/android/server/pm/ShortcutService;->cleanupBitmapsForPackage(ILjava/lang/String;)V

    return-object v0
.end method

.method public rescanPackageIfNeeded(Ljava/lang/String;Z)V
    .registers 5

    .line 342
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 348
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 350
    invoke-virtual {v1, v0, p2}, Lcom/android/server/pm/ShortcutPackage;->rescanPackageIfNeeded(ZZ)Z

    move-result p2

    if-nez p2, :cond_19

    if-eqz v0, :cond_19

    .line 352
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    return-void
.end method

.method public resetThrottling()V
    .registers 3

    .line 513
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 514
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->resetThrottling()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public final saveShortcutPackageItem(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 401
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->waitForBitmapSaves()Z

    if-eqz p3, :cond_14

    .line 403
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    move-result v0

    if-eq p0, v0, :cond_10

    return-void

    .line 406
    :cond_10
    invoke-virtual {p2, p1, p3}, Lcom/android/server/pm/ShortcutPackageItem;->saveToXml(Landroid/util/TypedXmlSerializer;Z)V

    goto :goto_17

    .line 408
    :cond_14
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->saveShortcutPackageItem()V

    :goto_17
    return-void
.end method

.method public saveToXml(Landroid/util/TypedXmlSerializer;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "user"

    .line 366
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "restore-from-fp"

    if-nez p2, :cond_2a

    .line 370
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    const-string/jumbo v4, "locales"

    invoke-static {p1, v4, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 371
    iget-wide v3, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    const-string/jumbo v5, "last-app-scan-time2"

    invoke-static {p1, v5, v3, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 373
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    const-string/jumbo v4, "last-app-scan-fp"

    invoke-static {p1, v4, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 375
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 378
    :cond_2a
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 379
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->injectBuildFingerprint()Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-static {p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 384
    :goto_33
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_3b
    if-ge v4, v2, :cond_4b

    .line 386
    iget-object v5, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-virtual {p0, p1, v5, p2}, Lcom/android/server/pm/ShortcutUser;->saveShortcutPackageItem(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 390
    :cond_4b
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    :goto_51
    if-ge v3, v2, :cond_61

    .line 392
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-virtual {p0, p1, v4, p2}, Lcom/android/server/pm/ShortcutUser;->saveShortcutPackageItem(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 396
    :cond_61
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public setCachedLauncher(Ljava/lang/String;)V
    .registers 2

    .line 505
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Ljava/lang/String;

    return-void
.end method

.method public setLastAppScanOsFingerprint(Ljava/lang/String;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    return-void
.end method

.method public setLastAppScanTime(J)V
    .registers 3

    .line 170
    iput-wide p1, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    return-void
.end method
