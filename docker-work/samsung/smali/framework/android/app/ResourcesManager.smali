.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ResourcesManager$UpdateHandler;,
        Landroid/app/ResourcesManager$EvictingArrayQueue;,
        Landroid/app/ResourcesManager$ActivityResource;,
        Landroid/app/ResourcesManager$ActivityResources;,
        Landroid/app/ResourcesManager$ApkAssetsSupplier;,
        Landroid/app/ResourcesManager$ApkKey;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist LOGGING_TIME_FOR_REPLACING_IMPL:I = 0x32

.field static final greylist-max-o TAG:Ljava/lang/String; = "ResourcesManager"

.field private static blacklist sLastColorThemeSeq:I

.field private static greylist-max-o sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final blacklist CAPACITY_LOG:I

.field private final greylist mActivityResourceReferences:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ResourcesManager$ActivityResources;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mApplicationOwnedApks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCachedApkAssets:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ResourcesManager$ApkKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ApkAssets;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mDPImplHash:I

.field private blacklist mDPResHash:I

.field private blacklist mFormatter:Ljava/time/format/DateTimeFormatter;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mPendingAppInfoUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final greylist mResConfiguration:Landroid/content/res/Configuration;

.field private blacklist mResDisplayId:I

.field private final greylist mResourceImpls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ResourcesImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist mResourceReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mResourcesReferencesQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSavedLogs:Landroid/app/ResourcesManager$EvictingArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/ResourcesManager$EvictingArrayQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUpdateCallbacks:Landroid/app/ResourcesManager$UpdateHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/app/ResourcesManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResourceImpls(Landroid/app/ResourcesManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfindKeyForResourceImplLocked(Landroid/app/ResourcesManager;Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfindOrCreateResourcesImplForKeyLocked(Landroid/app/ResourcesManager;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mloadApkAssets(Landroid/app/ResourcesManager;Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->loadApkAssets(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mredirectResourcesToNewImplLocked(Landroid/app/ResourcesManager;Landroid/util/ArrayMap;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 148
    const/4 v0, 0x0

    sput v0, Landroid/app/ResourcesManager;->sLastColorThemeSeq:I

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 4

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    .line 113
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    .line 132
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    .line 141
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Landroid/app/ResourcesManager;->mResourcesReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    .line 207
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    .line 284
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    .line 291
    new-instance v1, Landroid/app/ResourcesManager$UpdateHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/ResourcesManager$UpdateHandler;-><init>(Landroid/app/ResourcesManager;Landroid/app/ResourcesManager$UpdateHandler-IA;)V

    iput-object v1, p0, Landroid/app/ResourcesManager;->mUpdateCallbacks:Landroid/app/ResourcesManager$UpdateHandler;

    .line 297
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    .line 661
    iput v0, p0, Landroid/app/ResourcesManager;->mDPResHash:I

    .line 662
    iput v0, p0, Landroid/app/ResourcesManager;->mDPImplHash:I

    .line 664
    const/16 v1, 0x32

    iput v1, p0, Landroid/app/ResourcesManager;->CAPACITY_LOG:I

    .line 665
    iput-object v2, p0, Landroid/app/ResourcesManager;->mFormatter:Ljava/time/format/DateTimeFormatter;

    .line 666
    iput-object v2, p0, Landroid/app/ResourcesManager;->mSavedLogs:Landroid/app/ResourcesManager$EvictingArrayQueue;

    .line 302
    const-string v1, "debug.wallpaper.theme.seq"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/app/ResourcesManager;->sLastColorThemeSeq:I

    .line 304
    return-void
.end method

.method private blacklist addApplicationPathsLocked(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "sourceDir"    # Ljava/lang/String;
    .param p2, "splitDirs"    # [Ljava/lang/String;

    .line 501
    iget-object v0, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 502
    if-eqz p2, :cond_10

    .line 503
    iget-object v0, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 505
    :cond_10
    return-void
.end method

.method private blacklist adjustConfigForDexDisplayIfNeeded(Landroid/content/res/Configuration;ILandroid/view/DisplayAdjustments;)V
    .registers 8
    .param p1, "outConfig"    # Landroid/content/res/Configuration;
    .param p2, "displayId"    # I
    .param p3, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .line 2344
    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    .line 2345
    return-void

    .line 2348
    :cond_4
    invoke-direct {p0, p2, p3}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v1

    .line 2349
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_1d

    .line 2350
    iget v2, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_11

    .line 2351
    iput v3, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 2354
    :cond_11
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/2addr v2, v0

    if-nez v2, :cond_1d

    .line 2355
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x10

    or-int/2addr v0, v2

    iput v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 2359
    :cond_1d
    return-void
.end method

.method private blacklist adjustTab(I)Ljava/lang/String;
    .registers 5
    .param p1, "id"    # I

    .line 756
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_d

    move-object v1, v0

    goto :goto_20

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_20
    return-object v1
.end method

.method private blacklist applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;Landroid/content/res/ResourcesKey;Landroid/content/res/ResourcesImpl;)V
    .registers 8
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "tmpConfig"    # Landroid/content/res/Configuration;
    .param p4, "key"    # Landroid/content/res/ResourcesKey;
    .param p5, "resourcesImpl"    # Landroid/content/res/ResourcesImpl;

    .line 1926
    invoke-virtual {p3, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1927
    invoke-virtual {p4}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1928
    iget-object v0, p4, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1934
    :cond_e
    invoke-virtual {p5}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    .line 1935
    .local v0, "daj":Landroid/view/DisplayAdjustments;
    if-eqz p2, :cond_1d

    .line 1936
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1, v0}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    move-object v0, v1

    .line 1937
    invoke-virtual {v0, p2}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 1939
    :cond_1d
    invoke-virtual {v0, p3}, Landroid/view/DisplayAdjustments;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 1940
    invoke-direct {p0, p4}, Landroid/app/ResourcesManager;->generateDisplayId(Landroid/content/res/ResourcesKey;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1948
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p5, p3, v1, p2}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1949
    return-void
.end method

.method private static blacklist applyDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .registers 3
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 406
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/app/ResourcesManager;->applyDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;I)V

    .line 407
    return-void
.end method

.method private static blacklist applyDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;I)V
    .registers 7
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "displayId"    # I

    .line 412
    const/4 v0, 0x1

    iput v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 413
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 414
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 415
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 416
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v1

    .line 417
    .local v1, "sl":I
    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_33

    .line 418
    const/4 v0, 0x2

    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 419
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v1, v0, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_3f

    .line 422
    :cond_33
    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 423
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v1, v0, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 445
    :goto_3f
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 447
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 448
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 449
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 450
    return-void
.end method

.method private blacklist applyNewResourceDirsLocked([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .registers 25
    .param p1, "oldSourceDirs"    # [Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 2024
    const-wide/16 v3, 0x2000

    :try_start_6
    const-string v0, "ResourcesManager#applyNewResourceDirsLocked"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2027
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    .line 2029
    .local v0, "baseCodePath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    move v15, v5

    .line 2030
    .local v15, "myUid":I
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v15, :cond_1b

    .line 2031
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    goto :goto_1d

    .line 2032
    :cond_1b
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    :goto_1d
    move-object/from16 v16, v5

    .line 2035
    .local v16, "newSplitDirs":[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v14, v5

    .line 2036
    .local v14, "copiedSplitDirs":[Ljava/lang/String;
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/app/ResourcesManager;->combinedOverlayPaths([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2039
    .local v8, "copiedResourceDirs":[Ljava/lang/String;
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v15, :cond_35

    .line 2040
    invoke-direct {v1, v0, v14}, Landroid/app/ResourcesManager;->addApplicationPathsLocked(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2043
    :cond_35
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    move-object v13, v5

    .line 2044
    .local v13, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    iget-object v5, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5
    :try_end_41
    .catchall {:try_start_6 .. :try_end_41} :catchall_11d

    move v12, v5

    .line 2045
    .local v12, "implCount":I
    const/4 v5, 0x0

    move v11, v5

    .local v11, "i":I
    :goto_44
    if-ge v11, v12, :cond_108

    .line 2046
    :try_start_46
    iget-object v5, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v5, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ResourcesKey;

    move-object v10, v5

    .line 2047
    .local v10, "key":Landroid/content/res/ResourcesKey;
    iget-object v5, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v5, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;
    :try_end_57
    .catchall {:try_start_46 .. :try_end_57} :catchall_104

    move-object/from16 v17, v5

    .line 2048
    .local v17, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v17, :cond_62

    :try_start_5b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ResourcesImpl;
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_11d

    goto :goto_63

    :cond_62
    const/4 v5, 0x0

    :goto_63
    move-object v9, v5

    .line 2050
    .local v9, "impl":Landroid/content/res/ResourcesImpl;
    if-nez v9, :cond_71

    .line 2051
    move-object/from16 v21, v0

    move v3, v11

    move v4, v12

    move-object v2, v13

    move-object/from16 v18, v14

    move/from16 v19, v15

    goto/16 :goto_f2

    .line 2054
    :cond_71
    :try_start_71
    iget-object v5, v10, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;
    :try_end_73
    .catchall {:try_start_71 .. :try_end_73} :catchall_104

    if-nez v5, :cond_98

    :try_start_75
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_98

    const-string v5, "android"

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_98

    .line 2055
    const-string v5, "ResourcesManager"

    const-string/jumbo v6, "skip fill in resDir with other app resource path"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_75 .. :try_end_8d} :catchall_11d

    .line 2056
    move-object/from16 v21, v0

    move v3, v11

    move v4, v12

    move-object v2, v13

    move-object/from16 v18, v14

    move/from16 v19, v15

    goto/16 :goto_f2

    .line 2059
    :cond_98
    :try_start_98
    iget-object v5, v10, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;
    :try_end_9a
    .catchall {:try_start_98 .. :try_end_9a} :catchall_104

    if-eqz v5, :cond_c1

    :try_start_9c
    iget-object v5, v10, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 2060
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b9

    iget-object v5, v10, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;
    :try_end_a6
    .catchall {:try_start_9c .. :try_end_a6} :catchall_bc

    .line 2061
    move-object/from16 v7, p1

    :try_start_a8
    invoke-static {v7, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_11d

    if-eqz v5, :cond_af

    goto :goto_c3

    :cond_af
    move-object/from16 v21, v0

    move v3, v11

    move v4, v12

    move-object v2, v13

    move-object/from16 v18, v14

    move/from16 v19, v15

    goto :goto_f2

    .line 2060
    :cond_b9
    move-object/from16 v7, p1

    goto :goto_c3

    .line 2092
    .end local v0    # "baseCodePath":Ljava/lang/String;
    .end local v8    # "copiedResourceDirs":[Ljava/lang/String;
    .end local v9    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v10    # "key":Landroid/content/res/ResourcesKey;
    .end local v11    # "i":I
    .end local v12    # "implCount":I
    .end local v13    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v14    # "copiedSplitDirs":[Ljava/lang/String;
    .end local v15    # "myUid":I
    .end local v16    # "newSplitDirs":[Ljava/lang/String;
    .end local v17    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :catchall_bc
    move-exception v0

    move-object/from16 v7, p1

    goto/16 :goto_11e

    .line 2059
    .restart local v0    # "baseCodePath":Ljava/lang/String;
    .restart local v8    # "copiedResourceDirs":[Ljava/lang/String;
    .restart local v9    # "impl":Landroid/content/res/ResourcesImpl;
    .restart local v10    # "key":Landroid/content/res/ResourcesKey;
    .restart local v11    # "i":I
    .restart local v12    # "implCount":I
    .restart local v13    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .restart local v14    # "copiedSplitDirs":[Ljava/lang/String;
    .restart local v15    # "myUid":I
    .restart local v16    # "newSplitDirs":[Ljava/lang/String;
    .restart local v17    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_c1
    move-object/from16 v7, p1

    .line 2064
    :goto_c3
    :try_start_c3
    new-instance v6, Landroid/content/res/ResourcesKey;

    iget-object v5, v10, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget v3, v10, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget-object v4, v10, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v10, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v18, v13

    .end local v13    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .local v18, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    iget-object v13, v10, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    move/from16 v19, v15

    .end local v15    # "myUid":I
    .local v19, "myUid":I
    iget-object v15, v10, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v5

    move-object v5, v6

    move-object v1, v6

    move-object v6, v0

    move-object v7, v14

    move-object/from16 v21, v0

    move-object v0, v9

    .end local v9    # "impl":Landroid/content/res/ResourcesImpl;
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    .local v21, "baseCodePath":Ljava/lang/String;
    move-object/from16 v9, v20

    move-object/from16 v20, v10

    .end local v10    # "key":Landroid/content/res/ResourcesKey;
    .local v20, "key":Landroid/content/res/ResourcesKey;
    move v10, v3

    move v3, v11

    .end local v11    # "i":I
    .local v3, "i":I
    move-object v11, v4

    move v4, v12

    .end local v12    # "implCount":I
    .local v4, "implCount":I
    move-object v12, v2

    move-object/from16 v2, v18

    .end local v18    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .local v2, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    move-object/from16 v18, v14

    .end local v14    # "copiedSplitDirs":[Ljava/lang/String;
    .local v18, "copiedSplitDirs":[Ljava/lang/String;
    move-object v14, v15

    invoke-direct/range {v5 .. v14}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f2
    .catchall {:try_start_c3 .. :try_end_f2} :catchall_104

    .line 2045
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v17    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .end local v20    # "key":Landroid/content/res/ResourcesKey;
    :goto_f2
    add-int/lit8 v11, v3, 0x1

    move-object/from16 v1, p0

    move-object v13, v2

    move v12, v4

    move-object/from16 v14, v18

    move/from16 v15, v19

    move-object/from16 v0, v21

    const-wide/16 v3, 0x2000

    move-object/from16 v2, p2

    .end local v3    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_44

    .line 2092
    .end local v2    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v4    # "implCount":I
    .end local v8    # "copiedResourceDirs":[Ljava/lang/String;
    .end local v11    # "i":I
    .end local v16    # "newSplitDirs":[Ljava/lang/String;
    .end local v18    # "copiedSplitDirs":[Ljava/lang/String;
    .end local v19    # "myUid":I
    .end local v21    # "baseCodePath":Ljava/lang/String;
    :catchall_104
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_11e

    .line 2045
    .local v0, "baseCodePath":Ljava/lang/String;
    .restart local v8    # "copiedResourceDirs":[Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v12    # "implCount":I
    .restart local v13    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .restart local v14    # "copiedSplitDirs":[Ljava/lang/String;
    .restart local v15    # "myUid":I
    .restart local v16    # "newSplitDirs":[Ljava/lang/String;
    :cond_108
    move-object/from16 v21, v0

    move v3, v11

    move v4, v12

    move-object v2, v13

    move-object/from16 v18, v14

    move/from16 v19, v15

    .line 2090
    .end local v0    # "baseCodePath":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "implCount":I
    .end local v13    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v14    # "copiedSplitDirs":[Ljava/lang/String;
    .end local v15    # "myUid":I
    .restart local v2    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .restart local v4    # "implCount":I
    .restart local v18    # "copiedSplitDirs":[Ljava/lang/String;
    .restart local v19    # "myUid":I
    .restart local v21    # "baseCodePath":Ljava/lang/String;
    move-object/from16 v1, p0

    :try_start_113
    invoke-direct {v1, v2}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    :try_end_116
    .catchall {:try_start_113 .. :try_end_116} :catchall_11d

    .line 2092
    .end local v2    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v4    # "implCount":I
    .end local v8    # "copiedResourceDirs":[Ljava/lang/String;
    .end local v16    # "newSplitDirs":[Ljava/lang/String;
    .end local v18    # "copiedSplitDirs":[Ljava/lang/String;
    .end local v19    # "myUid":I
    .end local v21    # "baseCodePath":Ljava/lang/String;
    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2093
    nop

    .line 2094
    return-void

    .line 2092
    :catchall_11d
    move-exception v0

    :goto_11e
    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2093
    throw v0
.end method

.method private blacklist buildLogString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ResourcesManager;->mFormatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 749
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/app/ResourcesManager;->adjustTab(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 750
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/app/ResourcesManager;->adjustTab(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 751
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/ResourcesManager;->adjustTab(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 748
    return-object v0
.end method

.method private static blacklist cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TT;>;)V"
        }
    .end annotation

    .line 1337
    .local p0, "references":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<TT;>;>;"
    .local p1, "referenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/app/ResourcesManager;->cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;Ljava/util/function/Function;)V

    .line 1338
    return-void
.end method

.method private static blacklist cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;Ljava/util/function/Function;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TC;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TC;",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1345
    .local p0, "referenceContainers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TC;>;"
    .local p1, "referenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    .local p2, "unwrappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<TC;Ljava/lang/ref/WeakReference<TT;>;>;"
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 1346
    .local v0, "enqueuedRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    if-nez v0, :cond_7

    .line 1347
    return-void

    .line 1350
    :cond_7
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1351
    .local v1, "deadReferences":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/ref/Reference<+TT;>;>;"
    :goto_c
    if-eqz v0, :cond_16

    .line 1352
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1351
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_c

    .line 1355
    :cond_16
    new-instance v2, Landroid/app/ResourcesManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, v1}, Landroid/app/ResourcesManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Function;Ljava/util/HashSet;)V

    invoke-static {p0, v2}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    .line 1359
    return-void
.end method

.method private static blacklist combinedOverlayPaths([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p0, "resourceDirs"    # [Ljava/lang/String;
    .param p1, "overlayPaths"    # [Ljava/lang/String;

    .line 2111
    if-nez p0, :cond_9

    .line 2112
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 2113
    :cond_9
    if-nez p1, :cond_12

    .line 2114
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 2116
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2117
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1a
    if-ge v3, v1, :cond_24

    aget-object v4, p1, v3

    .line 2118
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2117
    .end local v4    # "path":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 2120
    :cond_24
    array-length v1, p0

    move v3, v2

    :goto_26
    if-ge v3, v1, :cond_36

    aget-object v4, p0, v3

    .line 2121
    .restart local v4    # "path":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 2122
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2120
    .end local v4    # "path":Ljava/lang/String;
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 2125
    :cond_36
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private static greylist-max-o countLiveReferences(Ljava/util/Collection;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;)I"
        }
    .end annotation

    .line 650
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<TT;>;>;"
    const/4 v0, 0x0

    .line 651
    .local v0, "count":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 652
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    .line 653
    .local v3, "value":Ljava/lang/Object;, "TT;"
    :goto_19
    if-eqz v3, :cond_1d

    .line 654
    add-int/lit8 v0, v0, 0x1

    .line 656
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    :cond_1d
    goto :goto_5

    .line 657
    :cond_1e
    return v0
.end method

.method private blacklist createApkAssetsSupplierNotLocked(Landroid/content/res/ResourcesKey;)Landroid/app/ResourcesManager$ApkAssetsSupplier;
    .registers 15
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 1367
    const-wide/16 v0, 0x2000

    const-string v2, "ResourcesManager#createApkAssetsSupplierNotLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1375
    :try_start_7
    new-instance v2, Landroid/app/ResourcesManager$ApkAssetsSupplier;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/app/ResourcesManager$ApkAssetsSupplier;-><init>(Landroid/app/ResourcesManager;Landroid/app/ResourcesManager$ApkAssetsSupplier-IA;)V

    .line 1376
    .local v2, "supplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    invoke-static {p1}, Landroid/app/ResourcesManager;->extractApkKeys(Landroid/content/res/ResourcesKey;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1377
    .local v3, "apkKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResourcesManager$ApkKey;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "n":I
    :goto_16
    if-ge v4, v5, :cond_39

    .line 1378
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ResourcesManager$ApkKey;
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_3e

    .line 1380
    .local v6, "apkKey":Landroid/app/ResourcesManager$ApkKey;
    :try_start_1e
    invoke-virtual {v2, v6}, Landroid/app/ResourcesManager$ApkAssetsSupplier;->load(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22
    .catchall {:try_start_1e .. :try_end_21} :catchall_3e

    .line 1383
    goto :goto_36

    .line 1381
    :catch_22
    move-exception v7

    .line 1382
    .local v7, "e":Ljava/io/IOException;
    :try_start_23
    const-string v8, "ResourcesManager"

    const-string v9, "failed to preload asset path \'%s\'"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v6, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_3e

    .line 1377
    .end local v6    # "apkKey":Landroid/app/ResourcesManager$ApkKey;
    .end local v7    # "e":Ljava/io/IOException;
    :goto_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1385
    .end local v4    # "i":I
    .end local v5    # "n":I
    :cond_39
    nop

    .line 1387
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1385
    return-object v2

    .line 1387
    .end local v2    # "supplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    .end local v3    # "apkKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResourcesManager$ApkKey;>;"
    :catchall_3e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1388
    throw v2
.end method

.method private blacklist createAssetManager(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/AssetManager;
    .registers 14
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "apkSupplier"    # Landroid/app/ResourcesManager$ApkAssetsSupplier;

    .line 613
    new-instance v0, Landroid/content/res/AssetManager$Builder;

    invoke-direct {v0}, Landroid/content/res/AssetManager$Builder;-><init>()V

    .line 615
    .local v0, "builder":Landroid/content/res/AssetManager$Builder;
    invoke-static {p1}, Landroid/app/ResourcesManager;->extractApkKeys(Landroid/content/res/ResourcesKey;)Ljava/util/ArrayList;

    move-result-object v1

    .line 616
    .local v1, "apkKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResourcesManager$ApkKey;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "n":I
    :goto_e
    const/4 v4, 0x0

    if-ge v2, v3, :cond_68

    .line 617
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ResourcesManager$ApkKey;

    .line 619
    .local v5, "apkKey":Landroid/app/ResourcesManager$ApkKey;
    nop

    .line 620
    if-eqz p2, :cond_1f

    :try_start_1a
    invoke-virtual {p2, v5}, Landroid/app/ResourcesManager$ApkAssetsSupplier;->load(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;

    move-result-object v6

    goto :goto_23

    :cond_1f
    invoke-direct {p0, v5}, Landroid/app/ResourcesManager;->loadApkAssets(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;

    move-result-object v6

    .line 619
    :goto_23
    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager$Builder;->addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_26} :catch_27

    .line 637
    goto :goto_54

    .line 621
    :catch_27
    move-exception v6

    .line 622
    .local v6, "e":Ljava/io/IOException;
    iget-boolean v7, v5, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    const-string v8, "ResourcesManager"

    const/4 v9, 0x1

    if-eqz v7, :cond_41

    .line 623
    new-array v7, v9, [Ljava/lang/Object;

    iget-object v10, v5, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    aput-object v10, v7, v4

    const-string v4, "failed to add overlay path \'%s\'"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    iput-boolean v9, p1, Landroid/content/res/ResourcesKey;->hasInvalidOverlayPath:Z

    goto :goto_54

    .line 629
    :cond_41
    iget-boolean v7, v5, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    if-eqz v7, :cond_57

    .line 630
    new-array v7, v9, [Ljava/lang/Object;

    iget-object v9, v5, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    aput-object v9, v7, v4

    const-string v4, "asset path \'%s\' does not exist or contains no resources"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    .end local v5    # "apkKey":Landroid/app/ResourcesManager$ApkKey;
    .end local v6    # "e":Ljava/io/IOException;
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 634
    .restart local v5    # "apkKey":Landroid/app/ResourcesManager$ApkKey;
    .restart local v6    # "e":Ljava/io/IOException;
    :cond_57
    new-array v7, v9, [Ljava/lang/Object;

    iget-object v9, v5, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    aput-object v9, v7, v4

    const-string v4, "failed to add asset path \'%s\'"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 635
    const/4 v4, 0x0

    return-object v4

    .line 640
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v5    # "apkKey":Landroid/app/ResourcesManager$ApkKey;
    .end local v6    # "e":Ljava/io/IOException;
    :cond_68
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    if-eqz v2, :cond_79

    .line 641
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    array-length v3, v2

    :goto_6f
    if-ge v4, v3, :cond_79

    aget-object v5, v2, v4

    .line 642
    .local v5, "loader":Landroid/content/res/loader/ResourcesLoader;
    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager$Builder;->addLoader(Landroid/content/res/loader/ResourcesLoader;)Landroid/content/res/AssetManager$Builder;

    .line 641
    .end local v5    # "loader":Landroid/content/res/loader/ResourcesLoader;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    .line 646
    :cond_79
    invoke-virtual {v0}, Landroid/content/res/AssetManager$Builder;->build()Landroid/content/res/AssetManager;

    move-result-object v2

    return-object v2
.end method

.method private blacklist createResources(Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;
    .registers 7
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "apkSupplier"    # Landroid/app/ResourcesManager$ApkAssetsSupplier;

    .line 1404
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1411
    :try_start_3
    invoke-direct {p0, p1, p3}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;

    move-result-object v1

    .line 1412
    .local v1, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-nez v1, :cond_c

    .line 1413
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1416
    :cond_c
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p2, v1, v2}, Landroid/app/ResourcesManager;->createResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1417
    .end local v1    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private blacklist createResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;
    .registers 16
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "key"    # Landroid/content/res/ResourcesKey;
    .param p3, "initialOverrideConfig"    # Landroid/content/res/Configuration;
    .param p4, "overrideDisplayId"    # Ljava/lang/Integer;
    .param p5, "classLoader"    # Ljava/lang/ClassLoader;
    .param p6, "apkSupplier"    # Landroid/app/ResourcesManager$ApkAssetsSupplier;

    .line 1425
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1432
    :try_start_3
    invoke-direct {p0, p2, p6}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;

    move-result-object v1

    .line 1433
    .local v1, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-nez v1, :cond_c

    .line 1434
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1437
    :cond_c
    iget-object v8, p2, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Landroid/app/ResourcesManager;->createResourcesForActivityLocked(Landroid/os/IBinder;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1439
    .end local v1    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private blacklist createResourcesForActivityLocked(Landroid/os/IBinder;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .registers 12
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "initialOverrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "overrideDisplayId"    # Ljava/lang/Integer;
    .param p4, "classLoader"    # Ljava/lang/ClassLoader;
    .param p5, "impl"    # Landroid/content/res/ResourcesImpl;
    .param p6, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 1078
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    .line 1080
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResourcesQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v3, Landroid/app/ResourcesManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/app/ResourcesManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/app/ResourcesManager;->cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;Ljava/util/function/Function;)V

    .line 1084
    invoke-virtual {p6}, Landroid/content/res/CompatibilityInfo;->needsCompatResources()Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v1, Landroid/content/res/CompatResources;

    invoke-direct {v1, p4}, Landroid/content/res/CompatResources;-><init>(Ljava/lang/ClassLoader;)V

    goto :goto_21

    .line 1085
    :cond_1c
    new-instance v1, Landroid/content/res/Resources;

    invoke-direct {v1, p4}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    :goto_21
    nop

    .line 1086
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1, p5}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 1087
    iget-object v2, p0, Landroid/app/ResourcesManager;->mUpdateCallbacks:Landroid/app/ResourcesManager$UpdateHandler;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->setCallbacks(Landroid/content/res/Resources$UpdateCallbacks;)V

    .line 1089
    new-instance v2, Landroid/app/ResourcesManager$ActivityResource;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/app/ResourcesManager$ActivityResource;-><init>(Landroid/app/ResourcesManager$ActivityResource-IA;)V

    .line 1090
    .local v2, "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResourcesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3, v1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v3, v2, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    .line 1092
    iget-object v3, v2, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1093
    iput-object p3, v2, Landroid/app/ResourcesManager$ActivityResource;->overrideDisplayId:Ljava/lang/Integer;

    .line 1094
    iget-object v3, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    return-object v1
.end method

.method private blacklist createResourcesImpl(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;
    .registers 8
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "apkSupplier"    # Landroid/app/ResourcesManager$ApkAssetsSupplier;

    .line 876
    invoke-direct {p0, p1, p2}, Landroid/app/ResourcesManager;->createAssetManager(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/AssetManager;

    move-result-object v0

    .line 877
    .local v0, "assets":Landroid/content/res/AssetManager;
    if-nez v0, :cond_8

    .line 878
    const/4 v1, 0x0

    return-object v1

    .line 881
    :cond_8
    new-instance v1, Landroid/view/DisplayAdjustments;

    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    .line 882
    .local v1, "daj":Landroid/view/DisplayAdjustments;
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v2}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 885
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->generateDisplayId(Landroid/content/res/ResourcesKey;)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 892
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->generateConfig(Landroid/content/res/ResourcesKey;)Landroid/content/res/Configuration;

    move-result-object v3

    .line 894
    .local v3, "config":Landroid/content/res/Configuration;
    new-instance v4, Landroid/content/res/ResourcesImpl;

    invoke-direct {v4, v0, v2, v3, v1}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    .line 899
    .local v4, "impl":Landroid/content/res/ResourcesImpl;
    return-object v4
.end method

.method private blacklist createResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .registers 8
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "impl"    # Landroid/content/res/ResourcesImpl;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 1104
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourcesReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {v0, v1}, Landroid/app/ResourcesManager;->cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;)V

    .line 1106
    invoke-virtual {p3}, Landroid/content/res/CompatibilityInfo;->needsCompatResources()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Landroid/content/res/CompatResources;

    invoke-direct {v0, p1}, Landroid/content/res/CompatResources;-><init>(Ljava/lang/ClassLoader;)V

    goto :goto_18

    .line 1107
    :cond_13
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0, p1}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    :goto_18
    nop

    .line 1108
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 1109
    iget-object v1, p0, Landroid/app/ResourcesManager;->mUpdateCallbacks:Landroid/app/ResourcesManager$UpdateHandler;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->setCallbacks(Landroid/content/res/Resources$UpdateCallbacks;)V

    .line 1110
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourcesReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    return-object v0
.end method

.method private static blacklist extractApkKeys(Landroid/content/res/ResourcesKey;)Ljava/util/ArrayList;
    .registers 9
    .param p0, "key"    # Landroid/content/res/ResourcesKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/ResourcesKey;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/app/ResourcesManager$ApkKey;",
            ">;"
        }
    .end annotation

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v0, "apkKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResourcesManager$ApkKey;>;"
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 565
    new-instance v1, Landroid/app/ResourcesManager$ApkKey;

    iget-object v3, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v2}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    :cond_14
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 569
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_1c
    if-ge v4, v3, :cond_2b

    aget-object v5, v1, v4

    .line 570
    .local v5, "splitResDir":Ljava/lang/String;
    new-instance v6, Landroid/app/ResourcesManager$ApkKey;

    invoke-direct {v6, v5, v2, v2}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    .end local v5    # "splitResDir":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 574
    :cond_2b
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v1, :cond_4b

    .line 575
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v4, v1

    move v5, v2

    :goto_34
    if-ge v5, v4, :cond_4b

    aget-object v6, v1, v5

    .line 577
    .local v6, "libDir":Ljava/lang/String;
    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 578
    new-instance v7, Landroid/app/ResourcesManager$ApkKey;

    invoke-direct {v7, v6, v3, v2}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    .end local v6    # "libDir":Ljava/lang/String;
    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 583
    :cond_4b
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    if-eqz v1, :cond_62

    .line 584
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    array-length v4, v1

    move v5, v2

    :goto_53
    if-ge v5, v4, :cond_62

    aget-object v6, v1, v5

    .line 585
    .local v6, "idmapPath":Ljava/lang/String;
    new-instance v7, Landroid/app/ResourcesManager$ApkKey;

    invoke-direct {v7, v6, v2, v3}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    .end local v6    # "idmapPath":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    .line 589
    :cond_62
    return-object v0
.end method

.method private greylist-max-o findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .registers 6
    .param p1, "resourceImpl"    # Landroid/content/res/ResourcesImpl;

    .line 1005
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1006
    .local v0, "refCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_25

    .line 1007
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1008
    .local v2, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v2, :cond_22

    invoke-virtual {v2, p1}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1009
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesKey;

    return-object v3

    .line 1006
    .end local v2    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1012
    .end local v1    # "i":I
    :cond_25
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .registers 3
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 935
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    return-object v0
.end method

.method private blacklist findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;
    .registers 22
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "apkSupplier"    # Landroid/app/ResourcesManager$ApkAssetsSupplier;

    .line 944
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v2

    .line 945
    .local v2, "impl":Landroid/content/res/ResourcesImpl;
    if-nez v2, :cond_145

    .line 946
    invoke-direct/range {p0 .. p2}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;

    move-result-object v2

    .line 947
    if-eqz v2, :cond_145

    .line 949
    iget-object v3, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 950
    .local v3, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v3, :cond_21

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ResourcesImpl;

    goto :goto_22

    :cond_21
    const/4 v5, 0x0

    .line 951
    .local v5, "oldImpl":Landroid/content/res/ResourcesImpl;
    :goto_22
    if-eqz v5, :cond_130

    .line 952
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 954
    .local v6, "delayedTime":J
    iget-object v8, v0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 955
    .local v8, "resourcesCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2f
    if-ge v9, v8, :cond_51

    .line 956
    iget-object v10, v0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    .line 957
    .local v10, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v10, :cond_42

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/Resources;

    goto :goto_43

    :cond_42
    const/4 v11, 0x0

    .line 958
    .local v11, "r":Landroid/content/res/Resources;
    :goto_43
    if-eqz v11, :cond_4e

    invoke-virtual {v11}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v12

    if-ne v12, v5, :cond_4e

    .line 959
    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 955
    .end local v10    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .end local v11    # "r":Landroid/content/res/Resources;
    :cond_4e
    add-int/lit8 v9, v9, 0x1

    goto :goto_2f

    .line 962
    .end local v9    # "i":I
    :cond_51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v6

    .line 963
    .end local v6    # "delayedTime":J
    .local v9, "delayedTime":J
    const-wide/16 v6, 0x32

    cmp-long v11, v9, v6

    const-string v12, ", impl = "

    const-string v13, ", oldImpl = "

    const-string/jumbo v14, "replacing resources impl time : "

    const-string v15, "ResourcesManager"

    if-lez v11, :cond_93

    .line 964
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v4, " ms, resources size = "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_93
    iget-object v4, v0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ResourcesManager$ActivityResources;

    .line 970
    .local v11, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v6, v11, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 971
    .local v6, "resCount":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 972
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_b4
    if-ge v7, v6, :cond_e7

    .line 973
    move-object/from16 v16, v3

    .end local v3    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .local v16, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 974
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ResourcesManager$ActivityResource;

    .line 975
    .local v3, "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    if-eqz v3, :cond_cd

    .line 976
    move-object/from16 v17, v4

    iget-object v4, v3, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;

    goto :goto_d0

    :cond_cd
    move-object/from16 v17, v4

    const/4 v4, 0x0

    .line 977
    .local v4, "r":Landroid/content/res/Resources;
    :goto_d0
    if-eqz v4, :cond_de

    move-object/from16 v18, v3

    .end local v3    # "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    .local v18, "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    if-ne v3, v5, :cond_e0

    .line 978
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    goto :goto_e0

    .line 977
    .end local v18    # "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    .restart local v3    # "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    :cond_de
    move-object/from16 v18, v3

    .line 972
    .end local v3    # "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    .end local v4    # "r":Landroid/content/res/Resources;
    :cond_e0
    :goto_e0
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto :goto_b4

    .end local v16    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .local v3, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_e7
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 981
    .end local v3    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .end local v7    # "i":I
    .restart local v16    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v9, v3, v9

    .line 982
    const-wide/16 v3, 0x32

    cmp-long v7, v9, v3

    if-lez v7, :cond_125

    .line 983
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v3, " ms, activity resources size = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    .end local v6    # "resCount":I
    .end local v11    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    :cond_125
    move-object/from16 v3, v16

    move-object/from16 v4, v17

    const-wide/16 v6, 0x32

    goto/16 :goto_9d

    .line 969
    .end local v16    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .restart local v3    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_12d
    move-object/from16 v16, v3

    .end local v3    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .restart local v16    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    goto :goto_132

    .line 951
    .end local v8    # "resourcesCount":I
    .end local v9    # "delayedTime":J
    .end local v16    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .restart local v3    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_130
    move-object/from16 v16, v3

    .line 989
    .end local v3    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .restart local v16    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :goto_132
    iget-boolean v3, v1, Landroid/content/res/ResourcesKey;->hasInvalidOverlayPath:Z

    if-eqz v3, :cond_13b

    .line 990
    iget-object v3, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    :cond_13b
    iget-object v3, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    .end local v5    # "oldImpl":Landroid/content/res/ResourcesImpl;
    .end local v16    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_145
    return-object v2
.end method

.method private blacklist findResourcesForActivityLocked(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .registers 11
    .param p1, "targetActivityToken"    # Landroid/os/IBinder;
    .param p2, "targetKey"    # Landroid/content/res/ResourcesKey;
    .param p3, "targetClassLoader"    # Ljava/lang/ClassLoader;

    .line 1053
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    .line 1056
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1057
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_b
    const/4 v3, 0x0

    if-ge v2, v1, :cond_3f

    .line 1058
    iget-object v4, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ResourcesManager$ActivityResource;

    .line 1059
    .local v4, "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    iget-object v5, v4, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Resources;

    .line 1060
    .local v5, "resources":Landroid/content/res/Resources;
    if-nez v5, :cond_21

    goto :goto_29

    .line 1061
    :cond_21
    invoke-virtual {v5}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    .line 1060
    invoke-direct {p0, v3}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v3

    .line 1063
    .local v3, "key":Landroid/content/res/ResourcesKey;
    :goto_29
    if-eqz v3, :cond_3c

    .line 1064
    invoke-virtual {v5}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v6, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 1065
    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 1066
    return-object v5

    .line 1057
    .end local v3    # "key":Landroid/content/res/ResourcesKey;
    .end local v4    # "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    .end local v5    # "resources":Landroid/content/res/Resources;
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1070
    .end local v2    # "index":I
    :cond_3f
    return-object v3
.end method

.method private greylist-max-o findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .registers 8
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 909
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 910
    .local v0, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesImpl;

    goto :goto_13

    :cond_12
    move-object v2, v1

    .line 911
    .local v2, "impl":Landroid/content/res/ResourcesImpl;
    :goto_13
    if-eqz v2, :cond_50

    .line 913
    invoke-direct {p0, v2}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v3

    .line 914
    .local v3, "oldKey":Landroid/content/res/ResourcesKey;
    if-eqz v3, :cond_45

    iget-boolean v4, v3, Landroid/content/res/ResourcesKey;->hasInvalidOverlayPath:Z

    if-eqz v4, :cond_45

    .line 915
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[hasInvalidOverlayPath] ignore existing impl "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ResourcesManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/content/res/ResourcesKey;->hasInvalidOverlayPath:Z

    .line 917
    return-object v1

    .line 920
    :cond_45
    invoke-virtual {v2}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 921
    return-object v2

    .line 924
    .end local v3    # "oldKey":Landroid/content/res/ResourcesKey;
    :cond_50
    return-object v1
.end method

.method private blacklist generateConfig(Landroid/content/res/ResourcesKey;)Landroid/content/res/Configuration;
    .registers 3
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 826
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/app/ResourcesManager;->generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private blacklist generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)Landroid/content/res/Configuration;
    .registers 7
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;
    .param p3, "daj"    # Landroid/view/DisplayAdjustments;

    .line 833
    invoke-virtual {p1}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v0

    .line 855
    .local v0, "hasOverrideConfig":Z
    if-eqz v0, :cond_15

    .line 856
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 857
    .local v1, "config":Landroid/content/res/Configuration;
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto :goto_19

    .line 860
    .end local v1    # "config":Landroid/content/res/Configuration;
    :cond_15
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 862
    .restart local v1    # "config":Landroid/content/res/Configuration;
    :goto_19
    return-object v1
.end method

.method private blacklist generateDisplayId(Landroid/content/res/ResourcesKey;)I
    .registers 4
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 866
    iget v0, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    goto :goto_a

    .line 871
    :cond_8
    iget v0, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    .line 866
    :goto_a
    return v0
.end method

.method private greylist-max-o getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "daj"    # Landroid/view/DisplayAdjustments;

    .line 2362
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2363
    :try_start_3
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 2364
    .local v1, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v1, :cond_c

    .line 2366
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2368
    :cond_c
    invoke-virtual {v1, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2369
    .end local v1    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist getDisplayMetrics(Landroid/content/res/Configuration;)Landroid/util/DisplayMetrics;
    .registers 6
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 390
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 391
    .local v0, "displayManagerGlobal":Landroid/hardware/display/DisplayManagerGlobal;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 392
    .local v1, "dm":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_12

    .line 393
    iget v2, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 394
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    :goto_13
    if-eqz v2, :cond_1f

    .line 395
    sget-object v3, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    .line 396
    invoke-virtual {v3}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    .line 395
    invoke-virtual {v2, v1, v3, p1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    goto :goto_22

    .line 398
    :cond_1f
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 400
    :goto_22
    return-object v1
.end method

.method private blacklist getImplHashList()Ljava/lang/String;
    .registers 9

    .line 728
    const-string v0, "ImplHashList "

    .line 729
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 730
    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    const/4 v2, 0x0

    .line 731
    .local v2, "count":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 732
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v4, :cond_22

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ResourcesImpl;

    goto :goto_23

    :cond_22
    const/4 v5, 0x0

    .line 733
    .local v5, "value":Landroid/content/res/ResourcesImpl;
    :goto_23
    if-eqz v5, :cond_5e

    .line 734
    add-int/lit8 v2, v2, 0x1

    .line 735
    const/4 v6, 0x1

    if-ne v2, v6, :cond_32

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    goto :goto_39

    :cond_32
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", "

    :goto_39
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 736
    .local v6, "impl":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 738
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .end local v5    # "value":Landroid/content/res/ResourcesImpl;
    .end local v6    # "impl":Ljava/lang/String;
    :cond_5e
    goto :goto_d

    .line 739
    :cond_5f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 740
    return-object v0
.end method

.method public static greylist getInstance()Landroid/app/ResourcesManager;
    .registers 2

    .line 308
    const-class v0, Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 309
    :try_start_3
    sget-object v1, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v1, :cond_e

    .line 310
    new-instance v1, Landroid/app/ResourcesManager;

    invoke-direct {v1}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v1, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 312
    :cond_e
    sget-object v1, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    monitor-exit v0

    return-object v1

    .line 313
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private greylist-max-o getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 1042
    iget-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;

    .line 1043
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    if-nez v0, :cond_16

    .line 1044
    new-instance v1, Landroid/app/ResourcesManager$ActivityResources;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/ResourcesManager$ActivityResources;-><init>(Landroid/app/ResourcesManager$ActivityResources-IA;)V

    move-object v0, v1

    .line 1045
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    :cond_16
    return-object v0
.end method

.method private blacklist getResourcesHashList()Ljava/lang/String;
    .registers 15

    .line 696
    const-string v0, "ResourcesHashList "

    .line 697
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 698
    .local v1, "count":I
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ", "

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 699
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v3, :cond_21

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Resources;

    .line 700
    .local v5, "value":Landroid/content/res/Resources;
    :cond_21
    if-eqz v5, :cond_5d

    .line 701
    add-int/lit8 v1, v1, 0x1

    .line 702
    if-ne v1, v6, :cond_33

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_3c

    :cond_33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :goto_3c
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 703
    .local v4, "res":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 705
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .end local v4    # "res":Ljava/lang/String;
    .end local v5    # "value":Landroid/content/res/Resources;
    :cond_5d
    goto :goto_9

    .line 706
    :cond_5e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 708
    const/4 v1, 0x0

    .line 709
    iget-object v2, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_80
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ResourcesManager$ActivityResources;

    .line 710
    .local v7, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v8, v7, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 711
    .local v8, "resCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_93
    if-ge v9, v8, :cond_e6

    .line 712
    iget-object v10, v7, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 713
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ResourcesManager$ActivityResource;

    .line 714
    .local v10, "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    if-eqz v10, :cond_a8

    .line 715
    iget-object v11, v10, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/Resources;

    goto :goto_a9

    :cond_a8
    move-object v11, v5

    .line 716
    .local v11, "value":Landroid/content/res/Resources;
    :goto_a9
    if-eqz v11, :cond_e3

    .line 717
    add-int/lit8 v1, v1, 0x1

    .line 718
    new-instance v12, Ljava/lang/StringBuilder;

    if-ne v1, v6, :cond_bb

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", [activityResources = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    goto :goto_c2

    :cond_bb
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    :goto_c2
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 719
    .local v12, "res":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    .end local v10    # "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    .end local v11    # "value":Landroid/content/res/Resources;
    .end local v12    # "res":Ljava/lang/String;
    :cond_e3
    add-int/lit8 v9, v9, 0x1

    goto :goto_93

    .line 722
    .end local v7    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v8    # "resCount":I
    .end local v9    # "i":I
    :cond_e6
    goto :goto_80

    .line 723
    :cond_e7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 724
    return-object v0
.end method

.method private blacklist isNewerColorPalette()Z
    .registers 4

    .line 2325
    const-string v0, "debug.wallpaper.theme.seq"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2326
    .local v0, "currentSeq":I
    sget v2, Landroid/app/ResourcesManager;->sLastColorThemeSeq:I

    if-eq v2, v0, :cond_f

    .line 2327
    sput v0, Landroid/app/ResourcesManager;->sLastColorThemeSeq:I

    .line 2328
    const/4 v1, 0x1

    return v1

    .line 2330
    :cond_f
    return v1
.end method

.method static synthetic blacklist lambda$cleanupReferences$1(Ljava/util/function/Function;Ljava/util/HashSet;Ljava/lang/Object;)Z
    .registers 5
    .param p0, "unwrappingFunction"    # Ljava/util/function/Function;
    .param p1, "deadReferences"    # Ljava/util/HashSet;
    .param p2, "refContainer"    # Ljava/lang/Object;

    .line 1356
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1357
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v0, :cond_11

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method static synthetic blacklist lambda$createResourcesForActivityLocked$0(Landroid/app/ResourcesManager$ActivityResource;)Ljava/lang/ref/WeakReference;
    .registers 2
    .param p0, "r"    # Landroid/app/ResourcesManager$ActivityResource;

    .line 1082
    iget-object v0, p0, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private blacklist loadApkAssets(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;
    .registers 3
    .param p1, "key"    # Landroid/app/ResourcesManager$ApkKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/app/ResourcesManager;->loadApkAssets(Landroid/app/ResourcesManager$ApkKey;Z)Landroid/content/res/ApkAssets;

    move-result-object v0

    return-object v0
.end method

.method private blacklist loadApkAssets(Landroid/app/ResourcesManager$ApkKey;Z)Landroid/content/res/ApkAssets;
    .registers 8
    .param p1, "key"    # Landroid/app/ResourcesManager$ApkKey;
    .param p2, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 522
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 523
    .local v1, "apkAssetsRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ApkAssets;>;"
    if-eqz v1, :cond_24

    .line 524
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ApkAssets;

    .line 525
    .local v2, "apkAssets":Landroid/content/res/ApkAssets;
    if-eqz p2, :cond_1f

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 526
    monitor-exit v0

    return-object v2

    .line 529
    :cond_1f
    iget-object v3, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    .end local v1    # "apkAssetsRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ApkAssets;>;"
    .end local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_64

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "flags":I
    iget-boolean v1, p1, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    if-eqz v1, :cond_2c

    .line 536
    or-int/lit8 v0, v0, 0x2

    .line 538
    :cond_2c
    iget-object v1, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 539
    or-int/lit8 v0, v0, 0x10

    move v1, v0

    goto :goto_3b

    .line 538
    :cond_3a
    move v1, v0

    .line 541
    .end local v0    # "flags":I
    .local v1, "flags":I
    :goto_3b
    iget-boolean v0, p1, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    if-eqz v0, :cond_4b

    .line 542
    iget-object v0, p1, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/ResourcesManager;->overlayPathToIdmapPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->loadOverlayFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v0

    move-object v2, v0

    .local v0, "apkAssets":Landroid/content/res/ApkAssets;
    goto :goto_52

    .line 544
    .end local v0    # "apkAssets":Landroid/content/res/ApkAssets;
    :cond_4b
    iget-object v0, p1, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v0

    move-object v2, v0

    .line 547
    .restart local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    :goto_52
    iget-object v3, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 548
    :try_start_55
    iget-object v0, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    monitor-exit v3

    .line 551
    return-object v2

    .line 549
    :catchall_61
    move-exception v0

    monitor-exit v3
    :try_end_63
    .catchall {:try_start_55 .. :try_end_63} :catchall_61

    throw v0

    .line 532
    .end local v1    # "flags":I
    .end local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    :catchall_64
    move-exception v1

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v1
.end method

.method private static greylist-max-o overlayPathToIdmapPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/resource-cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@idmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist rebaseActivityOverrideConfig(Landroid/app/ResourcesManager$ActivityResource;Landroid/content/res/Configuration;I)Landroid/content/res/ResourcesKey;
    .registers 25
    .param p1, "activityResource"    # Landroid/app/ResourcesManager$ActivityResource;
    .param p2, "newOverrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I

    .line 1727
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    .line 1728
    .local v3, "resources":Landroid/content/res/Resources;
    const/4 v4, 0x0

    if-nez v3, :cond_12

    .line 1729
    return-object v4

    .line 1734
    :cond_12
    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v5

    .line 1735
    .local v5, "oldKey":Landroid/content/res/ResourcesKey;
    if-nez v5, :cond_39

    .line 1736
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t find ResourcesKey for resources impl="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1737
    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1736
    const-string v7, "ResourcesManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    return-object v4

    .line 1742
    :cond_39
    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    .line 1743
    .local v6, "rebasedOverrideConfig":Landroid/content/res/Configuration;
    if-eqz v2, :cond_43

    .line 1744
    invoke-virtual {v6, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1747
    :cond_43
    iget-object v15, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideDisplayId:Ljava/lang/Integer;

    .line 1748
    .local v15, "overrideDisplayId":Ljava/lang/Integer;
    if-eqz v15, :cond_65

    .line 1749
    new-instance v7, Landroid/view/DisplayAdjustments;

    invoke-direct {v7, v6}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    .line 1750
    .local v7, "displayAdjustments":Landroid/view/DisplayAdjustments;
    invoke-virtual {v7}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v9, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, v9}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1751
    iget-object v8, v5, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v7, v8}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 1753
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8, v7}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 1759
    .local v8, "dm":Landroid/util/DisplayMetrics;
    invoke-static {v8, v6}, Landroid/app/ResourcesManager;->applyDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1763
    .end local v7    # "displayAdjustments":Landroid/view/DisplayAdjustments;
    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    :cond_65
    iget-object v7, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    sget-object v8, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 1764
    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    move/from16 v18, v7

    .line 1765
    .local v18, "hasOverrideConfig":Z
    if-eqz v18, :cond_78

    .line 1766
    iget-object v7, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1769
    :cond_78
    iget-object v7, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideDisplayId:Ljava/lang/Integer;

    if-eqz v7, :cond_8b

    iget-object v7, v1, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1770
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_8b

    .line 1774
    iget-object v7, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7, v4}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 1778
    :cond_8b
    if-eqz v15, :cond_93

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v12, v4

    goto :goto_95

    :cond_93
    move/from16 v12, p3

    .line 1781
    .end local p3    # "displayId":I
    .local v12, "displayId":I
    :goto_95
    const/4 v4, 0x0

    .line 1791
    .local v4, "displayId2":I
    new-instance v19, Landroid/content/res/ResourcesKey;

    iget-object v8, v5, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v10, v5, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    iget-object v11, v5, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget-object v14, v5, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v13, v5, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    iget-object v7, v5, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    move-object/from16 v16, v7

    move-object/from16 v7, v19

    move-object/from16 v17, v13

    move-object v13, v6

    move-object/from16 v20, v15

    .end local v15    # "overrideDisplayId":Ljava/lang/Integer;
    .local v20, "overrideDisplayId":Ljava/lang/Integer;
    move-object/from16 v15, v17

    move/from16 v17, v4

    invoke-direct/range {v7 .. v17}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;Ljava/lang/String;I)V

    .line 1817
    .local v7, "newKey":Landroid/content/res/ResourcesKey;
    return-object v7
.end method

.method private blacklist rebaseKeyForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Z)V
    .registers 9
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "key"    # Landroid/content/res/ResourcesKey;
    .param p3, "overridesActivityDisplay"    # Z

    .line 1272
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1273
    nop

    .line 1274
    :try_start_4
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v1

    .line 1276
    .local v1, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget v2, p2, Landroid/content/res/ResourcesKey;->mDisplayId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    .line 1277
    iget v2, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideDisplayId:I

    iput v2, p2, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 1281
    :cond_11
    invoke-virtual {p2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1282
    new-instance v2, Landroid/content/res/Configuration;

    iget-object v3, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1283
    .local v2, "config":Landroid/content/res/Configuration;
    iget-object v3, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto :goto_26

    .line 1285
    .end local v2    # "config":Landroid/content/res/Configuration;
    :cond_24
    iget-object v2, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 1288
    .restart local v2    # "config":Landroid/content/res/Configuration;
    :goto_26
    if-eqz p3, :cond_44

    iget-object v3, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1289
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_44

    .line 1290
    invoke-virtual {p2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 1292
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v2, v3

    .line 1298
    :cond_3e
    iget-object v3, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 1301
    :cond_44
    iget-object v3, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1302
    .end local v1    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v2    # "config":Landroid/content/res/Configuration;
    monitor-exit v0

    .line 1303
    return-void

    .line 1302
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method private blacklist rebaseKeyForDisplay(Landroid/content/res/ResourcesKey;I)V
    .registers 7
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "overrideDisplay"    # I

    .line 1312
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 1314
    .local v0, "temp":Landroid/content/res/Configuration;
    new-instance v1, Landroid/view/DisplayAdjustments;

    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    .line 1315
    .local v1, "daj":Landroid/view/DisplayAdjustments;
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v2}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 1317
    invoke-virtual {p0, p2, v1}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1323
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-static {v2, v0}, Landroid/app/ResourcesManager;->applyDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1326
    invoke-virtual {p1}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1327
    iget-object v3, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1329
    :cond_23
    iget-object v3, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1330
    return-void
.end method

.method private greylist-max-o redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesImpl;",
            "Landroid/content/res/ResourcesKey;",
            ">;)V"
        }
    .end annotation

    .line 2132
    .local p1, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2133
    return-void

    .line 2137
    :cond_7
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2138
    .local v0, "resourcesCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    const-string v2, "failed to redirect ResourcesImpl"

    const-string v3, "ResourcesManager"

    const/4 v4, 0x0

    if-ge v1, v0, :cond_c3

    .line 2139
    iget-object v5, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 2140
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v5, :cond_25

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;

    .line 2141
    .local v4, "r":Landroid/content/res/Resources;
    :cond_25
    if-eqz v4, :cond_bf

    .line 2142
    invoke-virtual {v4}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/ResourcesKey;

    .line 2143
    .local v6, "key":Landroid/content/res/ResourcesKey;
    if-eqz v6, :cond_bf

    .line 2144
    invoke-direct {p0, v6}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v7

    .line 2147
    .local v7, "impl":Landroid/content/res/ResourcesImpl;
    if-nez v7, :cond_4f

    .line 2148
    iget v8, p0, Landroid/app/ResourcesManager;->mDPResHash:I

    if-eqz v8, :cond_4b

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v8

    iget v9, p0, Landroid/app/ResourcesManager;->mDPResHash:I

    if-ne v8, v9, :cond_4b

    .line 2149
    const-string/jumbo v8, "redirectResourcesToNewImplLocked, FAIL"

    invoke-direct {p0, v8}, Landroid/app/ResourcesManager;->save(Ljava/lang/String;)V

    .line 2151
    :cond_4b
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bf

    .line 2153
    :cond_4f
    iget v2, p0, Landroid/app/ResourcesManager;->mDPResHash:I

    if-eqz v2, :cond_bc

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget v3, p0, Landroid/app/ResourcesManager;->mDPResHash:I

    if-ne v2, v3, :cond_bc

    invoke-virtual {v4}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v2

    if-eq v2, v7, :cond_bc

    .line 2154
    invoke-virtual {v4}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v2

    if-eqz v2, :cond_9d

    .line 2155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "redirectResourcesToNewImplLocked, impl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/ResourcesManager;->save(Ljava/lang/String;)V

    goto :goto_bc

    .line 2157
    :cond_9d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "redirectResourcesToNewImplLocked, impl = null -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/ResourcesManager;->save(Ljava/lang/String;)V

    .line 2160
    :cond_bc
    :goto_bc
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 2138
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .end local v6    # "key":Landroid/content/res/ResourcesKey;
    .end local v7    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_bf
    :goto_bf
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e

    .line 2173
    .end local v1    # "i":I
    :cond_c3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_cd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_115

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ResourcesManager$ActivityResources;

    .line 2174
    .local v5, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v6, v5, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2175
    .local v6, "resCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_e0
    if-ge v7, v6, :cond_114

    .line 2176
    iget-object v8, v5, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 2177
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ResourcesManager$ActivityResource;

    .line 2178
    .local v8, "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    if-eqz v8, :cond_f5

    .line 2179
    iget-object v9, v8, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/Resources;

    goto :goto_f6

    :cond_f5
    move-object v9, v4

    .line 2180
    .local v9, "r":Landroid/content/res/Resources;
    :goto_f6
    if-eqz v9, :cond_111

    .line 2181
    invoke-virtual {v9}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/res/ResourcesKey;

    .line 2182
    .local v10, "key":Landroid/content/res/ResourcesKey;
    if-eqz v10, :cond_111

    .line 2183
    invoke-direct {p0, v10}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v11

    .line 2186
    .local v11, "impl":Landroid/content/res/ResourcesImpl;
    if-nez v11, :cond_10e

    .line 2187
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_111

    .line 2189
    :cond_10e
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 2175
    .end local v8    # "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    .end local v9    # "r":Landroid/content/res/Resources;
    .end local v10    # "key":Landroid/content/res/ResourcesKey;
    .end local v11    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_111
    :goto_111
    add-int/lit8 v7, v7, 0x1

    goto :goto_e0

    .line 2201
    .end local v5    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v6    # "resCount":I
    .end local v7    # "i":I
    :cond_114
    goto :goto_cd

    .line 2202
    :cond_115
    return-void
.end method

.method private blacklist save(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 744
    iget-object v0, p0, Landroid/app/ResourcesManager;->mSavedLogs:Landroid/app/ResourcesManager$EvictingArrayQueue;

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->buildLogString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager$EvictingArrayQueue;->add(Ljava/lang/Object;)V

    .line 745
    return-void
.end method

.method private blacklist shouldApplyDisplayMetricsForDex(Landroid/content/res/ResourcesKey;)Z
    .registers 6
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 2376
    invoke-static {}, Landroid/app/ActivityThread;->isInDexDisplay()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_10

    .line 2377
    iget v0, p1, Landroid/content/res/ResourcesKey;->mDisplayId2:I

    if-eq v0, v3, :cond_e

    goto :goto_16

    :cond_e
    move v1, v2

    goto :goto_16

    .line 2378
    :cond_10
    iget v0, p1, Landroid/content/res/ResourcesKey;->mDisplayId2:I

    if-ne v0, v3, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    .line 2376
    :goto_16
    return v1
.end method

.method private blacklist updateResourcesForThemeChange(Z)V
    .registers 25
    .param p1, "isColorThemeChange"    # Z

    .line 2278
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2281
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v0

    .line 2283
    .local v2, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    iget-object v0, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/Map$Entry;

    .line 2284
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 2285
    .local v5, "impl":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/res/ResourcesKey;

    .line 2286
    .local v6, "key":Landroid/content/res/ResourcesKey;
    if-nez p1, :cond_3d

    iget v0, v6, Landroid/content/res/ResourcesKey;->mDisplayId2:I

    if-nez v0, :cond_39

    goto :goto_3d

    :cond_39
    move-object/from16 v19, v3

    goto/16 :goto_e4

    .line 2287
    :cond_3d
    :goto_3d
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 2288
    .local v7, "packageManager":Landroid/content/pm/IPackageManager;
    const/4 v8, 0x0

    .line 2290
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    :try_start_42
    iget-object v0, v6, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    const-wide/16 v9, 0x0

    .line 2291
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 2290
    invoke-interface {v7, v0, v9, v10, v11}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4e} :catch_50

    move-object v8, v0

    .line 2294
    goto :goto_54

    .line 2292
    :catch_50
    move-exception v0

    .line 2293
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2295
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_54
    if-eqz v5, :cond_de

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_de

    if-eqz v8, :cond_de

    .line 2296
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 2297
    .local v0, "overlayPaths":[Ljava/lang/String;
    if-eqz v0, :cond_67

    array-length v9, v0

    if-nez v9, :cond_74

    :cond_67
    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    if-eqz v9, :cond_d5

    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    array-length v9, v9

    if-nez v9, :cond_74

    move-object/from16 v19, v3

    goto/16 :goto_e4

    .line 2301
    :cond_74
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateResourcesForSamsungThemeChange adding to updatedResourceKeys for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and overlays = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2303
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2301
    const-string v10, "ResourcesManager"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Landroid/content/res/ResourcesImpl;

    new-instance v14, Landroid/content/res/ResourcesKey;

    iget-object v10, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v11, v6, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v13, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget v12, v6, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v19, v3

    iget-object v3, v6, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    const/16 v17, 0x0

    move-object/from16 v20, v4

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    .local v20, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    iget-object v4, v6, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    move-object/from16 v16, v9

    move-object v9, v14

    move/from16 v18, v12

    move-object v12, v0

    move-object/from16 v21, v0

    move-object v0, v14

    .end local v0    # "overlayPaths":[Ljava/lang/String;
    .local v21, "overlayPaths":[Ljava/lang/String;
    move/from16 v14, v18

    move-object/from16 v22, v5

    move-object v5, v15

    .end local v5    # "impl":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .local v22, "impl":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    move-object/from16 v15, v16

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v9 .. v18}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e4

    .line 2297
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    .end local v21    # "overlayPaths":[Ljava/lang/String;
    .end local v22    # "impl":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .restart local v0    # "overlayPaths":[Ljava/lang/String;
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    .restart local v5    # "impl":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_d5
    move-object/from16 v21, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    .end local v0    # "overlayPaths":[Ljava/lang/String;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    .end local v5    # "impl":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .restart local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    .restart local v21    # "overlayPaths":[Ljava/lang/String;
    .restart local v22    # "impl":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    goto :goto_e4

    .line 2295
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    .end local v21    # "overlayPaths":[Ljava/lang/String;
    .end local v22    # "impl":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    .restart local v5    # "impl":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_de
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    .line 2318
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    .end local v5    # "impl":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .end local v6    # "key":Landroid/content/res/ResourcesKey;
    .end local v7    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    :goto_e4
    move-object/from16 v3, v19

    goto/16 :goto_17

    .line 2319
    :cond_e8
    invoke-direct {v1, v2}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V

    .line 2320
    return-void
.end method


# virtual methods
.method public greylist appendLibAssetForMainAssetPath(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "libAsset"    # Ljava/lang/String;

    .line 1959
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/app/ResourcesManager;->appendLibAssetsForMainAssetPath(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1960
    return-void
.end method

.method public blacklist appendLibAssetsForMainAssetPath(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 29
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "libAssets"    # [Ljava/lang/String;

    .line 1969
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v3, v1, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1972
    :try_start_7
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1974
    .local v0, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    iget-object v4, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_a7

    .line 1975
    .local v4, "implCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_13
    if-ge v5, v4, :cond_9e

    .line 1976
    :try_start_15
    iget-object v6, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/ResourcesKey;

    .line 1977
    .local v6, "key":Landroid/content/res/ResourcesKey;
    iget-object v7, v1, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_9a

    .line 1978
    .local v7, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v7, :cond_2e

    :try_start_27
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/ResourcesImpl;
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_a7

    goto :goto_2f

    :cond_2e
    const/4 v8, 0x0

    .line 1979
    .local v8, "impl":Landroid/content/res/ResourcesImpl;
    :goto_2f
    if-eqz v8, :cond_8c

    :try_start_31
    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    move-object/from16 v10, p1

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8c

    .line 1980
    iget-object v9, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    .line 1981
    .local v9, "newLibAssets":[Ljava/lang/String;
    array-length v11, v2
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_9a

    const/4 v12, 0x0

    :goto_3f
    if-ge v12, v11, :cond_4f

    :try_start_41
    aget-object v13, v2, v12

    .line 1982
    .local v13, "libAsset":Ljava/lang/String;
    const-class v14, Ljava/lang/String;

    .line 1983
    invoke-static {v14, v9, v13}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_a7

    move-object v9, v14

    .line 1981
    .end local v13    # "libAsset":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_3f

    .line 1986
    :cond_4f
    :try_start_4f
    iget-object v11, v6, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    invoke-static {v9, v11}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_87

    .line 1989
    new-instance v11, Landroid/content/res/ResourcesKey;

    iget-object v14, v6, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v15, v6, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v12, v6, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    iget v13, v6, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget-object v2, v6, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move/from16 v24, v4

    .end local v4    # "implCount":I
    .local v24, "implCount":I
    iget-object v4, v6, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v25, v7

    .end local v7    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .local v25, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    iget-object v7, v6, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    iget-object v10, v6, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    iget v1, v6, Landroid/content/res/ResourcesKey;->mDisplayId2:I

    move/from16 v18, v13

    move-object v13, v11

    move-object/from16 v16, v12

    move-object/from16 v17, v9

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v7

    move-object/from16 v22, v10

    move/from16 v23, v1

    invoke-direct/range {v13 .. v23}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;Ljava/lang/String;I)V

    invoke-virtual {v0, v8, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catchall {:try_start_4f .. :try_end_86} :catchall_9a

    goto :goto_90

    .line 1986
    .end local v24    # "implCount":I
    .end local v25    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .restart local v4    # "implCount":I
    .restart local v7    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_87
    move/from16 v24, v4

    move-object/from16 v25, v7

    .end local v4    # "implCount":I
    .end local v7    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .restart local v24    # "implCount":I
    .restart local v25    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    goto :goto_90

    .line 1979
    .end local v9    # "newLibAssets":[Ljava/lang/String;
    .end local v24    # "implCount":I
    .end local v25    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .restart local v4    # "implCount":I
    .restart local v7    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_8c
    move/from16 v24, v4

    move-object/from16 v25, v7

    .line 1975
    .end local v4    # "implCount":I
    .end local v6    # "key":Landroid/content/res/ResourcesKey;
    .end local v7    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .end local v8    # "impl":Landroid/content/res/ResourcesImpl;
    .restart local v24    # "implCount":I
    :goto_90
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v4, v24

    goto/16 :goto_13

    .line 2018
    .end local v0    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v5    # "i":I
    .end local v24    # "implCount":I
    :catchall_9a
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_a8

    .line 1975
    .restart local v0    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .restart local v4    # "implCount":I
    .restart local v5    # "i":I
    :cond_9e
    move/from16 v24, v4

    .line 2017
    .end local v4    # "implCount":I
    .end local v5    # "i":I
    .restart local v24    # "implCount":I
    move-object/from16 v1, p0

    :try_start_a2
    invoke-direct {v1, v0}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V

    .line 2018
    .end local v0    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    .end local v24    # "implCount":I
    monitor-exit v3

    .line 2019
    return-void

    .line 2018
    :catchall_a7
    move-exception v0

    :goto_a8
    monitor-exit v3
    :try_end_a9
    .catchall {:try_start_a2 .. :try_end_a9} :catchall_a7

    throw v0
.end method

.method public blacklist appendPendingAppInfoUpdate([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .registers 6
    .param p1, "oldSourceDirs"    # [Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1822
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1823
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    .line 1824
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    .line 1829
    :cond_e
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_16
    if-ltz v1, :cond_32

    .line 1830
    iget-object v2, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/internal/util/ArrayUtils;->containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1831
    iget-object v2, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1829
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 1834
    .end local v1    # "i":I
    :cond_32
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1835
    monitor-exit v0

    .line 1836
    return-void

    .line 1835
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public final blacklist applyAllPendingAppInfoUpdates()V
    .registers 7

    .line 1839
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1840
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    if-eqz v1, :cond_27

    .line 1841
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_c
    if-ge v2, v1, :cond_24

    .line 1842
    iget-object v3, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1843
    .local v3, "appInfo":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/lang/String;Landroid/content/pm/ApplicationInfo;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v4, v5}, Landroid/app/ResourcesManager;->applyNewResourceDirsLocked([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 1841
    .end local v3    # "appInfo":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/lang/String;Landroid/content/pm/ApplicationInfo;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1845
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_24
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    .line 1847
    :cond_27
    monitor-exit v0

    .line 1848
    return-void

    .line 1847
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist applyCompatConfiguration(ILandroid/content/res/Configuration;)Z
    .registers 5
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    .line 454
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_15

    .line 456
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 457
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 459
    :cond_15
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 460
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public final blacklist applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .registers 21
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 1852
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v10, v7, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1854
    const-wide/16 v11, 0x2000

    :try_start_b
    const-string v0, "ResourcesManager#applyConfigurationToResources"

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1857
    iget-object v0, v7, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v8}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_b3

    const/4 v13, 0x0

    if-nez v0, :cond_21

    if-nez v9, :cond_21

    .line 1862
    nop

    .line 1913
    :try_start_1c
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v10
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_b9

    .line 1862
    return v13

    .line 1865
    :cond_21
    :try_start_21
    iget-object v0, v7, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v8}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 1866
    .local v0, "changes":I
    if-eqz v9, :cond_37

    iget-object v1, v7, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v1, :cond_33

    .line 1867
    invoke-virtual {v1, v9}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 1868
    :cond_33
    iput-object v9, v7, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 1869
    or-int/lit16 v0, v0, 0xd00

    .line 1877
    :cond_37
    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_40

    .line 1878
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->applyAllPendingAppInfoUpdates()V

    .line 1881
    :cond_40
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getDisplayMetrics(Landroid/content/res/Configuration;)Landroid/util/DisplayMetrics;

    move-result-object v2

    move-object v14, v2

    .line 1882
    .local v14, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {v8, v14, v9}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1884
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 1888
    const/high16 v2, 0x10000

    and-int/2addr v2, v0

    const/4 v15, 0x1

    if-eqz v2, :cond_55

    .line 1889
    invoke-direct {v7, v13}, Landroid/app/ResourcesManager;->updateResourcesForThemeChange(Z)V

    goto :goto_61

    .line 1891
    :cond_55
    and-int/2addr v1, v0

    if-eqz v1, :cond_61

    invoke-direct/range {p0 .. p0}, Landroid/app/ResourcesManager;->isNewerColorPalette()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1892
    invoke-direct {v7, v15}, Landroid/app/ResourcesManager;->updateResourcesForThemeChange(Z)V

    .line 1898
    :cond_61
    :goto_61
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 1900
    .local v4, "tmpConfig":Landroid/content/res/Configuration;
    iget-object v1, v7, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v15

    move v6, v1

    .local v6, "i":I
    :goto_6e
    if-ltz v6, :cond_a8

    .line 1901
    iget-object v1, v7, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/res/ResourcesKey;

    .line 1902
    .local v5, "key":Landroid/content/res/ResourcesKey;
    iget-object v1, v7, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v1

    .line 1903
    .local v16, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v16, :cond_8c

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ResourcesImpl;

    goto :goto_8d

    :cond_8c
    const/4 v1, 0x0

    :goto_8d
    move-object/from16 v17, v1

    .line 1904
    .local v17, "r":Landroid/content/res/ResourcesImpl;
    if-eqz v17, :cond_9e

    .line 1905
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v13, v6

    .end local v6    # "i":I
    .local v13, "i":I
    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;Landroid/content/res/ResourcesKey;Landroid/content/res/ResourcesImpl;)V

    goto :goto_a4

    .line 1907
    .end local v13    # "i":I
    .restart local v6    # "i":I
    :cond_9e
    move v13, v6

    .end local v6    # "i":I
    .restart local v13    # "i":I
    iget-object v1, v7, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v13}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_a4
    .catchall {:try_start_21 .. :try_end_a4} :catchall_b3

    .line 1900
    .end local v5    # "key":Landroid/content/res/ResourcesKey;
    .end local v16    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    .end local v17    # "r":Landroid/content/res/ResourcesImpl;
    :goto_a4
    add-int/lit8 v6, v13, -0x1

    const/4 v13, 0x0

    .end local v13    # "i":I
    .restart local v6    # "i":I
    goto :goto_6e

    :cond_a8
    move v13, v6

    .line 1911
    .end local v6    # "i":I
    if-eqz v0, :cond_ad

    move v13, v15

    goto :goto_ae

    :cond_ad
    const/4 v13, 0x0

    .line 1913
    :goto_ae
    :try_start_ae
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v10

    .line 1911
    return v13

    .line 1913
    .end local v0    # "changes":I
    .end local v4    # "tmpConfig":Landroid/content/res/Configuration;
    .end local v14    # "displayMetrics":Landroid/util/DisplayMetrics;
    :catchall_b3
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1914
    nop

    .end local p0    # "this":Landroid/app/ResourcesManager;
    .end local p1    # "config":Landroid/content/res/Configuration;
    .end local p2    # "compat":Landroid/content/res/CompatibilityInfo;
    throw v0

    .line 1915
    .restart local p0    # "this":Landroid/app/ResourcesManager;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    .restart local p2    # "compat":Landroid/content/res/CompatibilityInfo;
    :catchall_b9
    move-exception v0

    monitor-exit v10
    :try_end_bb
    .catchall {:try_start_ae .. :try_end_bb} :catchall_b9

    throw v0
.end method

.method protected greylist createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;
    .registers 3
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 603
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ResourcesManager;->createAssetManager(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createBaseTokenResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;
    .registers 25
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "legacyOverlayDirs"    # [Ljava/lang/String;
    .param p5, "overlayPaths"    # [Ljava/lang/String;
    .param p6, "libDirs"    # [Ljava/lang/String;
    .param p7, "displayId"    # I
    .param p8, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p9, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p10, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .line 1152
    .local p11, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v12}, Landroid/app/ResourcesManager;->createBaseTokenResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createBaseTokenResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)Landroid/content/res/Resources;
    .registers 27
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "legacyOverlayDirs"    # [Ljava/lang/String;
    .param p5, "overlayPaths"    # [Ljava/lang/String;
    .param p6, "libDirs"    # [Ljava/lang/String;
    .param p7, "displayId"    # I
    .param p8, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p9, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p10, "classLoader"    # Ljava/lang/ClassLoader;
    .param p12, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .line 1170
    .local p11, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v13}, Landroid/app/ResourcesManager;->createBaseTokenResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createBaseTokenResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;I)Landroid/content/res/Resources;
    .registers 38
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "legacyOverlayDirs"    # [Ljava/lang/String;
    .param p5, "overlayPaths"    # [Ljava/lang/String;
    .param p6, "libDirs"    # [Ljava/lang/String;
    .param p7, "displayId"    # I
    .param p8, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p9, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p10, "classLoader"    # Ljava/lang/ClassLoader;
    .param p12, "packageName"    # Ljava/lang/String;
    .param p13, "displayId2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .local p11, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p11

    .line 1189
    const-wide/16 v11, 0x2000

    :try_start_8
    const-string v0, "ResourcesManager#createBaseActivityResources"

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1194
    new-instance v0, Landroid/content/res/ResourcesKey;

    .line 1197
    invoke-static/range {p4 .. p5}, Landroid/app/ResourcesManager;->combinedOverlayPaths([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1202
    if-nez v10, :cond_19

    const/4 v1, 0x0

    :goto_16
    move-object/from16 v21, v1

    goto :goto_23

    :cond_19
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {v10, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/res/loader/ResourcesLoader;

    goto :goto_16

    :goto_23
    move-object v13, v0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v17, p6

    move/from16 v18, p7

    move-object/from16 v19, p8

    move-object/from16 v20, p9

    move-object/from16 v22, p12

    move/from16 v23, p13

    invoke-direct/range {v13 .. v23}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;Ljava/lang/String;I)V

    move-object v13, v0

    .line 1231
    .local v13, "key":Landroid/content/res/ResourcesKey;
    if-eqz p10, :cond_3d

    move-object/from16 v0, p10

    goto :goto_41

    :cond_3d
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_82

    :goto_41
    move-object v14, v0

    .line 1238
    .end local p10    # "classLoader":Ljava/lang/ClassLoader;
    .local v14, "classLoader":Ljava/lang/ClassLoader;
    :try_start_42
    iget-object v1, v8, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_7e

    .line 1240
    :try_start_45
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    .line 1241
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_75

    .line 1244
    move/from16 v15, p7

    move-object/from16 v7, p8

    :try_start_4d
    invoke-virtual {v8, v9, v7, v15}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    .line 1246
    iget-object v1, v8, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_7a

    .line 1247
    :try_start_53
    invoke-direct {v8, v9, v13, v14}, Landroid/app/ResourcesManager;->findResourcesForActivityLocked(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v0

    .line 1249
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_5e

    .line 1250
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_72

    .line 1259
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1250
    return-object v0

    .line 1252
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_5e
    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_72

    .line 1255
    :try_start_5f
    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-object v6, v14

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Landroid/app/ResourcesManager;->createResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_6e
    .catchall {:try_start_5f .. :try_end_6e} :catchall_7a

    .line 1259
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1255
    return-object v0

    .line 1252
    :catchall_72
    move-exception v0

    :try_start_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    .end local v14    # "classLoader":Ljava/lang/ClassLoader;
    .end local p0    # "this":Landroid/app/ResourcesManager;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "resDir":Ljava/lang/String;
    .end local p3    # "splitResDirs":[Ljava/lang/String;
    .end local p4    # "legacyOverlayDirs":[Ljava/lang/String;
    .end local p5    # "overlayPaths":[Ljava/lang/String;
    .end local p6    # "libDirs":[Ljava/lang/String;
    .end local p7    # "displayId":I
    .end local p8    # "overrideConfig":Landroid/content/res/Configuration;
    .end local p9    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local p11    # "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    .end local p12    # "packageName":Ljava/lang/String;
    .end local p13    # "displayId2":I
    :try_start_74
    throw v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_7a

    .line 1241
    .restart local v14    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p0    # "this":Landroid/app/ResourcesManager;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "resDir":Ljava/lang/String;
    .restart local p3    # "splitResDirs":[Ljava/lang/String;
    .restart local p4    # "legacyOverlayDirs":[Ljava/lang/String;
    .restart local p5    # "overlayPaths":[Ljava/lang/String;
    .restart local p6    # "libDirs":[Ljava/lang/String;
    .restart local p7    # "displayId":I
    .restart local p8    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p9    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .restart local p11    # "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    .restart local p12    # "packageName":Ljava/lang/String;
    .restart local p13    # "displayId2":I
    :catchall_75
    move-exception v0

    move/from16 v15, p7

    :goto_78
    :try_start_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_7c

    .end local v14    # "classLoader":Ljava/lang/ClassLoader;
    .end local p0    # "this":Landroid/app/ResourcesManager;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "resDir":Ljava/lang/String;
    .end local p3    # "splitResDirs":[Ljava/lang/String;
    .end local p4    # "legacyOverlayDirs":[Ljava/lang/String;
    .end local p5    # "overlayPaths":[Ljava/lang/String;
    .end local p6    # "libDirs":[Ljava/lang/String;
    .end local p7    # "displayId":I
    .end local p8    # "overrideConfig":Landroid/content/res/Configuration;
    .end local p9    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local p11    # "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    .end local p12    # "packageName":Ljava/lang/String;
    .end local p13    # "displayId2":I
    :try_start_79
    throw v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    .line 1259
    .end local v13    # "key":Landroid/content/res/ResourcesKey;
    .restart local v14    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p0    # "this":Landroid/app/ResourcesManager;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "resDir":Ljava/lang/String;
    .restart local p3    # "splitResDirs":[Ljava/lang/String;
    .restart local p4    # "legacyOverlayDirs":[Ljava/lang/String;
    .restart local p5    # "overlayPaths":[Ljava/lang/String;
    .restart local p6    # "libDirs":[Ljava/lang/String;
    .restart local p7    # "displayId":I
    .restart local p8    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p9    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .restart local p11    # "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    .restart local p12    # "packageName":Ljava/lang/String;
    .restart local p13    # "displayId2":I
    :catchall_7a
    move-exception v0

    goto :goto_87

    .line 1241
    .restart local v13    # "key":Landroid/content/res/ResourcesKey;
    :catchall_7c
    move-exception v0

    goto :goto_78

    .line 1259
    .end local v13    # "key":Landroid/content/res/ResourcesKey;
    :catchall_7e
    move-exception v0

    move/from16 v15, p7

    goto :goto_87

    .end local v14    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p10    # "classLoader":Ljava/lang/ClassLoader;
    :catchall_82
    move-exception v0

    move/from16 v15, p7

    move-object/from16 v14, p10

    .end local p10    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v14    # "classLoader":Ljava/lang/ClassLoader;
    :goto_87
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1260
    throw v0
.end method

.method public greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "printWriter"    # Ljava/io/PrintWriter;

    .line 800
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 801
    :try_start_3
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 802
    .local v1, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_19

    .line 803
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 802
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 806
    .end local v2    # "i":I
    :cond_19
    const-string v2, "ResourcesManager:"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 808
    const-string/jumbo v2, "total apks: "

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 809
    iget-object v2, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 811
    const-string/jumbo v2, "resources: "

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 813
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-static {v2}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v2

    .line 814
    .local v2, "references":I
    iget-object v3, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ResourcesManager$ActivityResources;

    .line 815
    .local v4, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    invoke-virtual {v4}, Landroid/app/ResourcesManager$ActivityResources;->countLiveReferences()I

    move-result v5

    add-int/2addr v2, v5

    .line 816
    .end local v4    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    goto :goto_4a

    .line 817
    :cond_5c
    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 819
    const-string/jumbo v3, "resource impls: "

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 820
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 821
    .end local v1    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v2    # "references":I
    monitor-exit v0

    .line 822
    return-void

    .line 821
    :catchall_74
    move-exception v1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_74

    throw v1
.end method

.method public greylist-max-o getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 471
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 472
    :try_start_3
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 473
    .local v1, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v1, :cond_c

    .line 475
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 477
    :cond_c
    invoke-virtual {v1, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 478
    .end local v1    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public greylist-max-o getConfiguration()Landroid/content/res/Configuration;
    .registers 3

    .line 351
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    monitor-exit v0

    return-object v1

    .line 353
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public greylist-max-o getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 3

    .line 364
    iget v0, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    sget-object v1, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "da"    # Landroid/view/DisplayAdjustments;

    .line 372
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 373
    .local v0, "displayManagerGlobal":Landroid/hardware/display/DisplayManagerGlobal;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 374
    .local v1, "dm":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_10

    .line 375
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 376
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    :goto_11
    if-eqz v2, :cond_17

    .line 377
    invoke-virtual {v2, v1, p2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    goto :goto_1a

    .line 379
    :cond_17
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 381
    :goto_1a
    return-object v1
.end method

.method public blacklist getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;
    .registers 25
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "legacyOverlayDirs"    # [Ljava/lang/String;
    .param p5, "overlayPaths"    # [Ljava/lang/String;
    .param p6, "libDirs"    # [Ljava/lang/String;
    .param p7, "overrideDisplayId"    # Ljava/lang/Integer;
    .param p8, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p9, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p10, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .line 1487
    .local p11, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v12}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)Landroid/content/res/Resources;
    .registers 27
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "legacyOverlayDirs"    # [Ljava/lang/String;
    .param p5, "overlayPaths"    # [Ljava/lang/String;
    .param p6, "libDirs"    # [Ljava/lang/String;
    .param p7, "overrideDisplayId"    # Ljava/lang/Integer;
    .param p8, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p9, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p10, "classLoader"    # Ljava/lang/ClassLoader;
    .param p12, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .line 1507
    .local p11, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v13}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;Z)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;Z)Landroid/content/res/Resources;
    .registers 29
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "legacyOverlayDirs"    # [Ljava/lang/String;
    .param p5, "overlayPaths"    # [Ljava/lang/String;
    .param p6, "libDirs"    # [Ljava/lang/String;
    .param p7, "overrideDisplayId"    # Ljava/lang/Integer;
    .param p8, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p9, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p10, "classLoader"    # Ljava/lang/ClassLoader;
    .param p12, "packageName"    # Ljava/lang/String;
    .param p13, "creatingDisplayContext"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .line 1519
    .local p11, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    invoke-virtual/range {v0 .. v14}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;ZZ)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;ZZ)Landroid/content/res/Resources;
    .registers 39
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "legacyOverlayDirs"    # [Ljava/lang/String;
    .param p5, "overlayPaths"    # [Ljava/lang/String;
    .param p6, "libDirs"    # [Ljava/lang/String;
    .param p7, "overrideDisplayId"    # Ljava/lang/Integer;
    .param p8, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p9, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p10, "classLoader"    # Ljava/lang/ClassLoader;
    .param p12, "packageName"    # Ljava/lang/String;
    .param p13, "creatingDisplayContext"    # Z
    .param p14, "creatingDeXConfigContext"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .local p11, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p11

    .line 1533
    const-wide/16 v11, 0x2000

    :try_start_8
    const-string v0, "ResourcesManager#getResources"

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1536
    const/4 v0, 0x0

    .line 1546
    .local v0, "displayId2":I
    new-instance v1, Landroid/content/res/ResourcesKey;

    .line 1549
    invoke-static/range {p4 .. p5}, Landroid/app/ResourcesManager;->combinedOverlayPaths([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1551
    if-eqz p7, :cond_1b

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1c

    :cond_1b
    const/4 v2, -0x1

    :goto_1c
    move/from16 v18, v2

    .line 1554
    const/4 v2, 0x0

    if-nez v10, :cond_25

    const/4 v3, 0x0

    :goto_22
    move-object/from16 v21, v3

    goto :goto_2e

    :cond_25
    new-array v3, v2, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {v10, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/res/loader/ResourcesLoader;

    goto :goto_22

    :goto_2e
    move-object v13, v1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v17, p6

    move-object/from16 v19, p8

    move-object/from16 v20, p9

    move-object/from16 v22, p12

    move/from16 v23, v0

    invoke-direct/range {v13 .. v23}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;Ljava/lang/String;I)V

    move-object v13, v1

    .line 1585
    .local v13, "key":Landroid/content/res/ResourcesKey;
    if-eqz p10, :cond_46

    move-object/from16 v1, p10

    goto :goto_4a

    :cond_46
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1
    :try_end_4a
    .catchall {:try_start_8 .. :try_end_4a} :catchall_81

    :goto_4a
    move-object v14, v1

    .line 1589
    .end local p10    # "classLoader":Ljava/lang/ClassLoader;
    .local v14, "classLoader":Ljava/lang/ClassLoader;
    :try_start_4b
    invoke-direct {v8, v13}, Landroid/app/ResourcesManager;->createApkAssetsSupplierNotLocked(Landroid/content/res/ResourcesKey;)Landroid/app/ResourcesManager$ApkAssetsSupplier;

    move-result-object v1

    move-object v15, v1

    .line 1591
    .local v15, "assetsSupplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    if-eqz p7, :cond_59

    .line 1592
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v8, v13, v1}, Landroid/app/ResourcesManager;->rebaseKeyForDisplay(Landroid/content/res/ResourcesKey;I)V

    .line 1596
    :cond_59
    if-eqz v9, :cond_76

    .line 1597
    new-instance v4, Landroid/content/res/Configuration;

    iget-object v1, v13, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v4, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1598
    .local v4, "initialOverrideConfig":Landroid/content/res/Configuration;
    if-eqz p7, :cond_65

    const/4 v2, 0x1

    :cond_65
    invoke-direct {v8, v9, v13, v2}, Landroid/app/ResourcesManager;->rebaseKeyForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Z)V

    .line 1599
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-object/from16 v5, p7

    move-object v6, v14

    move-object v7, v15

    invoke-direct/range {v1 .. v7}, Landroid/app/ResourcesManager;->createResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;

    move-result-object v1

    .line 1601
    .end local v4    # "initialOverrideConfig":Landroid/content/res/Configuration;
    .local v1, "resources":Landroid/content/res/Resources;
    goto :goto_7a

    .line 1602
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_76
    invoke-direct {v8, v13, v14, v15}, Landroid/app/ResourcesManager;->createResources(Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_7a
    .catchall {:try_start_4b .. :try_end_7a} :catchall_7f

    .line 1620
    .restart local v1    # "resources":Landroid/content/res/Resources;
    :goto_7a
    nop

    .line 1622
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1620
    return-object v1

    .line 1622
    .end local v0    # "displayId2":I
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v13    # "key":Landroid/content/res/ResourcesKey;
    .end local v15    # "assetsSupplier":Landroid/app/ResourcesManager$ApkAssetsSupplier;
    :catchall_7f
    move-exception v0

    goto :goto_84

    .end local v14    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p10    # "classLoader":Ljava/lang/ClassLoader;
    :catchall_81
    move-exception v0

    move-object/from16 v14, p10

    .end local p10    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v14    # "classLoader":Ljava/lang/ClassLoader;
    :goto_84
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1623
    throw v0
.end method

.method public blacklist initializeApplicationPaths(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "sourceDir"    # Ljava/lang/String;
    .param p2, "splitDirs"    # [Ljava/lang/String;

    .line 486
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 487
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 488
    invoke-direct {p0, p1, p2}, Landroid/app/ResourcesManager;->addApplicationPathsLocked(Ljava/lang/String;[Ljava/lang/String;)V

    .line 490
    :cond_e
    monitor-exit v0

    .line 491
    return-void

    .line 490
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public greylist-max-o invalidatePath(Ljava/lang/String;)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;

    .line 322
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    const/4 v1, 0x0

    .line 325
    .local v1, "count":I
    :try_start_4
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_c
    if-ltz v2, :cond_34

    .line 326
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesKey;

    .line 327
    .local v3, "key":Landroid/content/res/ResourcesKey;
    invoke-virtual {v3, p1}, Landroid/content/res/ResourcesKey;->isPathReferenced(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 328
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ResourcesImpl;

    .line 329
    .local v4, "impl":Landroid/content/res/ResourcesImpl;
    if-eqz v4, :cond_2f

    .line 330
    invoke-virtual {v4}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 332
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    .line 325
    .end local v3    # "key":Landroid/content/res/ResourcesKey;
    .end local v4    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_31
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 336
    .end local v2    # "i":I
    :cond_34
    const-string v2, "ResourcesManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalidated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " asset managers that referenced "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v2, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_5e
    if-ltz v2, :cond_8c

    .line 339
    iget-object v3, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ResourcesManager$ApkKey;

    .line 340
    .local v3, "key":Landroid/app/ResourcesManager$ApkKey;
    iget-object v4, v3, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 341
    iget-object v4, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 342
    .local v4, "apkAssetsRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ApkAssets;>;"
    if-eqz v4, :cond_89

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_89

    .line 343
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ApkAssets;

    invoke-virtual {v5}, Landroid/content/res/ApkAssets;->close()V

    .line 338
    .end local v3    # "key":Landroid/app/ResourcesManager$ApkKey;
    .end local v4    # "apkAssetsRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ApkAssets;>;"
    :cond_89
    add-int/lit8 v2, v2, -0x1

    goto :goto_5e

    .line 347
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_8c
    monitor-exit v0

    .line 348
    return-void

    .line 347
    :catchall_8e
    move-exception v1

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_4 .. :try_end_90} :catchall_8e

    throw v1
.end method

.method public greylist-max-o isSameResourcesOverrideConfig(Landroid/os/IBinder;Landroid/content/res/Configuration;)Z
    .registers 8
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 1024
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1026
    if-eqz p1, :cond_10

    :try_start_5
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ResourcesManager$ActivityResources;

    goto :goto_11

    .line 1037
    :catchall_e
    move-exception v1

    goto :goto_37

    .line 1026
    :cond_10
    const/4 v1, 0x0

    .line 1027
    .local v1, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    :goto_11
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1b

    .line 1028
    if-nez p2, :cond_18

    goto :goto_19

    :cond_18
    move v2, v3

    :goto_19
    monitor-exit v0

    return v2

    .line 1032
    :cond_1b
    iget-object v4, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    if-eqz p2, :cond_32

    iget-object v4, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v4, :cond_32

    iget-object v4, v1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 1034
    invoke-virtual {p2, v4}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v4

    if-nez v4, :cond_32

    goto :goto_34

    :cond_32
    move v2, v3

    goto :goto_35

    :cond_34
    :goto_34
    nop

    :goto_35
    monitor-exit v0

    .line 1032
    return v2

    .line 1037
    .end local v1    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_e

    throw v1
.end method

.method public blacklist leaveLogCurrentState()V
    .registers 4

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mResConfiguration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResourcesManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Res : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/app/ResourcesManager;->getResourcesHashList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impl : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/app/ResourcesManager;->getImplHashList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void
.end method

.method public blacklist setDisplayPolicyResources(Landroid/content/res/Resources;I)V
    .registers 8
    .param p1, "displayPolicyResources"    # Landroid/content/res/Resources;
    .param p2, "type"    # I

    .line 672
    iget-object v0, p0, Landroid/app/ResourcesManager;->mSavedLogs:Landroid/app/ResourcesManager$EvictingArrayQueue;

    if-nez v0, :cond_15

    .line 673
    const-string v0, "MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ResourcesManager;->mFormatter:Ljava/time/format/DateTimeFormatter;

    .line 674
    new-instance v0, Landroid/app/ResourcesManager$EvictingArrayQueue;

    const/16 v1, 0x32

    invoke-direct {v0, p0, v1}, Landroid/app/ResourcesManager$EvictingArrayQueue;-><init>(Landroid/app/ResourcesManager;I)V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mSavedLogs:Landroid/app/ResourcesManager$EvictingArrayQueue;

    .line 676
    :cond_15
    if-eqz p1, :cond_7d

    invoke-virtual {p1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 677
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 678
    .local v0, "newRes":I
    invoke-virtual {p1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 679
    .local v1, "newImpl":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDisplayPolicyResources #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/ResourcesManager;->mDPResHash:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", impl = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroid/app/ResourcesManager;->mDPImplHash:I

    .line 680
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 679
    invoke-direct {p0, v2}, Landroid/app/ResourcesManager;->save(Ljava/lang/String;)V

    .line 681
    iput v0, p0, Landroid/app/ResourcesManager;->mDPResHash:I

    .line 682
    iput v1, p0, Landroid/app/ResourcesManager;->mDPImplHash:I

    .line 684
    .end local v0    # "newRes":I
    .end local v1    # "newImpl":I
    :cond_7d
    return-void
.end method

.method blacklist shouldApplyDexDisplayId(ZZLjava/lang/Integer;)Z
    .registers 8
    .param p1, "creatingDisplayContext"    # Z
    .param p2, "creatingDeXConfigContext"    # Z
    .param p3, "overrideDisplayId"    # Ljava/lang/Integer;

    .line 2383
    invoke-static {}, Landroid/app/ActivityThread;->isInDexDisplay()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2384
    return v1

    .line 2386
    :cond_8
    if-eqz p2, :cond_b

    .line 2387
    return v1

    .line 2389
    :cond_b
    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_1a

    .line 2390
    if-eqz p3, :cond_18

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    return v1

    .line 2392
    :cond_1a
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->dexMode:I

    if-ne v3, v0, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    return v1
.end method

.method public blacklist updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V
    .registers 20
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1639
    const-wide/16 v4, 0x2000

    :try_start_8
    const-string v0, "ResourcesManager#updateResourcesForActivity"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1641
    const/4 v0, -0x1

    if-eq v3, v0, :cond_86

    .line 1644
    iget-object v6, v1, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_8e

    .line 1645
    nop

    .line 1646
    :try_start_14
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    .line 1648
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget v7, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideDisplayId:I

    if-eq v7, v3, :cond_1e

    const/4 v7, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v7, 0x0

    .line 1649
    .local v7, "movedToDifferentDisplay":Z
    :goto_1f
    iget-object v8, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {v8, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    if-nez v7, :cond_2e

    .line 1652
    monitor-exit v6
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_83

    .line 1716
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1652
    return-void

    .line 1657
    :cond_2e
    :try_start_2e
    new-instance v8, Landroid/content/res/Configuration;

    iget-object v9, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v8, v9}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1660
    .local v8, "oldConfig":Landroid/content/res/Configuration;
    if-eqz v2, :cond_3d

    .line 1661
    iget-object v9, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v9, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto :goto_42

    .line 1663
    :cond_3d
    iget-object v9, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v9}, Landroid/content/res/Configuration;->unset()V

    .line 1667
    :goto_42
    iput v3, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideDisplayId:I

    .line 1672
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->applyAllPendingAppInfoUpdates()V

    .line 1688
    iget-object v9, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1689
    .local v9, "refCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4e
    if-ge v10, v9, :cond_7d

    .line 1690
    iget-object v11, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 1691
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ResourcesManager$ActivityResource;

    .line 1693
    .local v11, "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    iget-object v12, v11, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/Resources;

    .line 1694
    .local v12, "resources":Landroid/content/res/Resources;
    if-nez v12, :cond_63

    .line 1695
    goto :goto_7a

    .line 1698
    :cond_63
    invoke-direct {v1, v11, v2, v3}, Landroid/app/ResourcesManager;->rebaseActivityOverrideConfig(Landroid/app/ResourcesManager$ActivityResource;Landroid/content/res/Configuration;I)Landroid/content/res/ResourcesKey;

    move-result-object v13

    .line 1700
    .local v13, "newKey":Landroid/content/res/ResourcesKey;
    if-nez v13, :cond_6a

    .line 1701
    goto :goto_7a

    .line 1706
    :cond_6a
    nop

    .line 1707
    invoke-direct {v1, v13}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v14

    .line 1708
    .local v14, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-eqz v14, :cond_7a

    invoke-virtual {v12}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v15

    if-eq v14, v15, :cond_7a

    .line 1711
    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 1689
    .end local v11    # "activityResource":Landroid/app/ResourcesManager$ActivityResource;
    .end local v12    # "resources":Landroid/content/res/Resources;
    .end local v13    # "newKey":Landroid/content/res/ResourcesKey;
    .end local v14    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    :cond_7a
    :goto_7a
    add-int/lit8 v10, v10, 0x1

    goto :goto_4e

    .line 1714
    .end local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v7    # "movedToDifferentDisplay":Z
    .end local v8    # "oldConfig":Landroid/content/res/Configuration;
    .end local v9    # "refCount":I
    .end local v10    # "i":I
    :cond_7d
    monitor-exit v6
    :try_end_7e
    .catchall {:try_start_2e .. :try_end_7e} :catchall_83

    .line 1716
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1717
    nop

    .line 1718
    return-void

    .line 1714
    :catchall_83
    move-exception v0

    :try_start_84
    monitor-exit v6
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    .end local p0    # "this":Landroid/app/ResourcesManager;
    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "overrideConfig":Landroid/content/res/Configuration;
    .end local p3    # "displayId":I
    :try_start_85
    throw v0

    .line 1642
    .restart local p0    # "this":Landroid/app/ResourcesManager;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    .restart local p2    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p3    # "displayId":I
    :cond_86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "displayId can not be INVALID_DISPLAY"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ResourcesManager;
    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "overrideConfig":Landroid/content/res/Configuration;
    .end local p3    # "displayId":I
    throw v0
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_8e

    .line 1716
    .restart local p0    # "this":Landroid/app/ResourcesManager;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    .restart local p2    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p3    # "displayId":I
    :catchall_8e
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1717
    throw v0
.end method
