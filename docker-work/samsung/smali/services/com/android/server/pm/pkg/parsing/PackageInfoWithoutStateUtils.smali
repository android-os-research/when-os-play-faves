.class public Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;
.super Ljava/lang/Object;
.source "PackageInfoWithoutStateUtils.java"


# static fields
.field public static final SYSTEM_DATA_PATH:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    invoke-static {}, Landroid/os/Environment;->getDataDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appInfoFlags(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I
    .registers 4

    .line 843
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isExternalStorage()Z

    move-result v0

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v0

    .line 844
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isBaseHardwareAccelerated()Z

    move-result v1

    const/high16 v2, 0x20000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 845
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isAllowBackup()Z

    move-result v1

    const v2, 0x8000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 846
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isKillAfterRestore()Z

    move-result v1

    const/high16 v2, 0x10000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 847
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isRestoreAnyVersion()Z

    move-result v1

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 848
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isFullBackupOnly()Z

    move-result v1

    const/high16 v2, 0x4000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 849
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isPersistent()Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 850
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDebuggable()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 851
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isVmSafeMode()Z

    move-result v1

    const/16 v2, 0x4000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 852
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isHasCode()Z

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 853
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isAllowTaskReparenting()Z

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 854
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isAllowClearUserData()Z

    move-result v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 855
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isLargeHeap()Z

    move-result v1

    const/high16 v2, 0x100000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 856
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isUsesCleartextTraffic()Z

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 857
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isSupportsRtl()Z

    move-result v1

    const/high16 v2, 0x400000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 858
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isTestOnly()Z

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 859
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isMultiArch()Z

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 860
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isExtractNativeLibs()Z

    move-result v1

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 861
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isGame()Z

    move-result v1

    const/high16 v2, 0x2000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 862
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isSupportsSmallScreens()Z

    move-result v1

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 863
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isSupportsNormalScreens()Z

    move-result v1

    const/16 v2, 0x400

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 864
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isSupportsLargeScreens()Z

    move-result v1

    const/16 v2, 0x800

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 865
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isSupportsExtraLargeScreens()Z

    move-result v1

    const/high16 v2, 0x80000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 866
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isResizeable()Z

    move-result v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 867
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isAnyDensity()Z

    move-result p0

    const/16 v1, 0x2000

    invoke-static {p0, v1}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static appInfoPrivateFlags(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I
    .registers 4

    .line 874
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isStaticSharedLibrary()Z

    move-result v0

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v0

    .line 875
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isOverlay()Z

    move-result v1

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 876
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isIsolatedSplitLoading()Z

    move-result v1

    const v2, 0x8000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 877
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isHasDomainUrls()Z

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 878
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isProfileableByShell()Z

    move-result v1

    const/high16 v2, 0x800000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 879
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isBackupInForeground()Z

    move-result v1

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 880
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isUseEmbeddedDex()Z

    move-result v1

    const/high16 v2, 0x2000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 881
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDefaultToDeviceProtectedStorage()Z

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 882
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDirectBootAware()Z

    move-result v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 883
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isPartiallyDirectBootAware()Z

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 884
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isAllowClearUserDataOnFailedRestore()Z

    move-result v1

    const/high16 v2, 0x4000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 885
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isAllowAudioPlaybackCapture()Z

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 886
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isRequestLegacyExternalStorage()Z

    move-result v1

    const/high16 v2, 0x20000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 887
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isUsesNonSdkApi()Z

    move-result v1

    const/high16 v2, 0x400000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 888
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isHasFragileUserData()Z

    move-result v1

    const/high16 v2, 0x1000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 889
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isCantSaveState()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 890
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isResizeableActivityViaSdkVersion()Z

    move-result v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 891
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isAllowNativeHeapPointerTagging()Z

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 894
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getResizeableActivity()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_d6

    .line 896
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_d4

    or-int/lit16 v0, v0, 0x400

    goto :goto_d6

    :cond_d4
    or-int/lit16 v0, v0, 0x800

    :cond_d6
    :goto_d6
    return v0
.end method

.method public static appInfoPrivateFlagsExt(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I
    .registers 4

    .line 910
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isProfileable()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v0

    .line 911
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->hasRequestForegroundServiceExemption()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 913
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->areAttributionsUserVisible()Z

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 915
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isOnBackInvokedCallbackEnabled()Z

    move-result p0

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)V
    .registers 3

    .line 809
    invoke-static {p0, p1}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    .line 810
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getDescriptionRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 811
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 812
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 813
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getSplitName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 814
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getAttributionTags()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    return-void
.end method

.method public static assignSharedFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Lcom/android/server/pm/pkg/component/ParsedComponent;)V
    .registers 3

    .line 819
    invoke-static {p1}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->getNonLocalizedLabel(Lcom/android/server/pm/pkg/component/ParsedComponent;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 820
    invoke-static {p1}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->getIcon(Lcom/android/server/pm/pkg/component/ParsedComponent;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 822
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getBanner()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 823
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getLabelRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 824
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getLogo()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 825
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 826
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static assignUserFields(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Landroid/content/pm/ApplicationInfo;I)V
    .registers 7

    .line 956
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p2, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    iput v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 958
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    .line 959
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 960
    sget-object p0, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    iput-object p0, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-void

    .line 965
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 966
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Environment;->getDataDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 967
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "user_de"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 972
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDefaultToDeviceProtectedStorage()Z

    move-result p0

    if-eqz p0, :cond_84

    .line 974
    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object p0, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto :goto_88

    .line 976
    :cond_84
    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object p0, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    :goto_88
    return-void
.end method

.method public static assignUserFields(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Landroid/content/pm/InstrumentationInfo;I)V
    .registers 7

    .line 982
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    .line 983
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 984
    sget-object p0, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    iput-object p0, p1, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    return-void

    .line 989
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 990
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Environment;->getDataDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 991
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "user_de"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 996
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDefaultToDeviceProtectedStorage()Z

    move-result p0

    if-eqz p0, :cond_78

    .line 998
    iget-object p0, p1, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object p0, p1, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    goto :goto_7c

    .line 1000
    :cond_78
    iget-object p0, p1, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object p0, p1, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    :goto_7c
    return-void
.end method

.method public static checkUseInstalled(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/PackageUserState;J)Z
    .registers 4

    .line 924
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result p0

    return p0
.end method

.method public static checkUseInstalledOrHidden(JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z
    .registers 9

    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 794
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v4

    if-nez v4, :cond_18

    if-eqz p3, :cond_18

    iget-boolean v4, p3, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    if-eqz v4, :cond_18

    return v1

    .line 801
    :cond_18
    invoke-static {p2, p0, p1}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result p2

    if-nez p2, :cond_30

    if-eqz p3, :cond_31

    .line 802
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p2

    if-eqz p2, :cond_31

    const-wide/32 p2, 0x402000

    and-long/2addr p0, p2

    cmp-long p0, p0, v2

    if-nez p0, :cond_30

    if-eqz v0, :cond_31

    :cond_30
    const/4 v1, 0x1

    :cond_31
    return v1
.end method

.method public static flag(ZI)I
    .registers 2

    if-eqz p0, :cond_3

    return p1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static generate(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;
    .registers 15

    .line 94
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    int-to-long v2, p2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    sget-object v9, Lcom/android/server/pm/pkg/PackageUserState;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserState;

    .line 95
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v11, p1

    .line 94
    invoke-static/range {v0 .. v11}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateWithComponents(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserState;ILandroid/apex/ApexInfo;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/PackageInfo;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;",
            "[IJJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageUserState;",
            "I)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    .line 88
    invoke-static/range {v0 .. v11}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateWithComponents(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserState;ILandroid/apex/ApexInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateActivityInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v6, p5

    .line 574
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateActivityInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ActivityInfo;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 506
    :cond_4
    invoke-static {p0, p4, p2, p3}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->checkUseInstalled(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    if-nez p5, :cond_11

    .line 510
    invoke-static {p0, p2, p3, p4, p6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    :cond_11
    if-nez p5, :cond_14

    return-object v0

    .line 516
    :cond_14
    invoke-static {p1, p2, p3, p5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateActivityInfoUnchecked(Lcom/android/server/pm/pkg/component/ParsedActivity;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateActivityInfoUnchecked(Lcom/android/server/pm/pkg/component/ParsedActivity;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;
    .registers 7

    .line 531
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 532
    invoke-static {v0, p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)V

    .line 533
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 534
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 535
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isExported()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 536
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTheme()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 537
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getUiOptions()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 538
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getParentActivityName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 539
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPermission()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 540
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTaskAffinity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 541
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 542
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPrivateFlags()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 543
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getLaunchMode()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 544
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getDocumentLaunchMode()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 545
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMaxRecents()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 546
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getConfigChanges()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 547
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getSoftInputMode()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 548
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPersistableMode()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 549
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getLockTaskLaunchMode()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 550
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getScreenOrientation()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 551
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 552
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->setMaxAspectRatio(F)V

    .line 553
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->setMinAspectRatio(F)V

    .line 554
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->isSupportsSizeChanges()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 555
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getRequestedVrComponent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 556
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getRotationAnimation()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 557
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getColorMode()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 558
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 559
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getAttributionTags()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    const-wide/16 v1, 0x80

    and-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-eqz p1, :cond_c2

    .line 561
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object p1

    .line 563
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_c0

    const/4 p1, 0x0

    :cond_c0
    iput-object p1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 565
    :cond_c2
    iput-object p3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 566
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getKnownActivityEmbeddingCerts()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    return-object v0
.end method

.method public static generateApplicationInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .registers 13

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 388
    :cond_4
    invoke-static {p0, p3, p1, p2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->checkUseInstalled(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    const/4 v7, 0x1

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    .line 392
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateApplicationInfoUnchecked(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JLcom/android/server/pm/pkg/PackageUserState;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateApplicationInfoUnchecked(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JLcom/android/server/pm/pkg/PackageUserState;IZ)Landroid/content/pm/ApplicationInfo;
    .registers 7

    .line 413
    move-object v0, p0

    check-cast v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageHidden;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz p5, :cond_c

    .line 416
    invoke-static {p0, v0, p4}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->assignUserFields(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Landroid/content/pm/ApplicationInfo;I)V

    .line 419
    :cond_c
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;)V

    return-object v0
.end method

.method public static generateAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Landroid/content/pm/Attribution;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 787
    :cond_4
    new-instance v0, Landroid/content/pm/Attribution;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedAttribution;->getLabel()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/content/pm/Attribution;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static generateDelegateActivityInfo(Landroid/content/pm/ActivityInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .registers 6

    if-eqz p0, :cond_19

    .line 490
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->checkUseInstalledOrHidden(JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_19

    .line 495
    :cond_b
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 496
    iget-object p0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 497
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateDelegateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateDelegateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .registers 6

    if-eqz p0, :cond_22

    .line 473
    invoke-static {p1, p2, p3, p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->checkUseInstalledOrHidden(JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_22

    .line 478
    :cond_9
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 479
    invoke-virtual {v0, p4}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 480
    sget-boolean p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    if-eqz p0, :cond_1a

    iget p0, v0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    if-eqz p0, :cond_1a

    goto :goto_1c

    .line 481
    :cond_1a
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    :goto_1c
    iput p0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 482
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;)V

    return-object v0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateInstrumentationInfo(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JIZ)Landroid/content/pm/InstrumentationInfo;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 704
    :cond_4
    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    .line 705
    invoke-static {v1, p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    .line 706
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 707
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->getTargetProcesses()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    .line 708
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->isHandleProfiling()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 709
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->isFunctionalTest()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 711
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    .line 712
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    .line 713
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitNames:[Ljava/lang/String;

    .line 714
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_3f

    move-object v2, v0

    goto :goto_43

    :cond_3f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    :goto_43
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 715
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_4e

    move-object v2, v0

    goto :goto_52

    .line 716
    :cond_4e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    :goto_52
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 717
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_60

    move-object v2, v0

    goto :goto_64

    .line 718
    :cond_60
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v2

    :goto_64
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitDependencies:Landroid/util/SparseArray;

    if-eqz p5, :cond_6b

    .line 721
    invoke-static {p1, v1, p4}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->assignUserFields(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Landroid/content/pm/InstrumentationInfo;I)V

    :cond_6b
    const-wide/16 p4, 0x80

    and-long p1, p2, p4

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_76

    return-object v1

    .line 727
    :cond_76
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    .line 729
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_81

    goto :goto_82

    :cond_81
    move-object v0, p0

    :goto_82
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    return-object v1
.end method

.method public static generatePermissionGroupInfo(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 763
    :cond_4
    new-instance v1, Landroid/content/pm/PermissionGroupInfo;

    .line 764
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getRequestDetailRes()I

    move-result v2

    .line 765
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getBackgroundRequestRes()I

    move-result v3

    .line 766
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getBackgroundRequestDetailRes()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PermissionGroupInfo;-><init>(III)V

    .line 769
    invoke-static {v1, p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    .line 770
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getDescriptionRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 771
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getPriority()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 772
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;->getRequestRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->requestRes:I

    .line 773
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->flags:I

    const-wide/16 v2, 0x80

    and-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_3a

    return-object v1

    .line 778
    :cond_3a
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    .line 780
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_45

    goto :goto_46

    :cond_45
    move-object v0, p0

    :goto_46
    iput-object v0, v1, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    return-object v1
.end method

.method public static generatePermissionInfo(Lcom/android/server/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 738
    :cond_4
    new-instance v1, Landroid/content/pm/PermissionInfo;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getBackgroundPermission()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PermissionInfo;-><init>(Ljava/lang/String;)V

    .line 740
    invoke-static {v1, p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    .line 742
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 743
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getRequestRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 744
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 745
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getDescriptionRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 746
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 747
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getKnownCerts()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    const-wide/16 v2, 0x80

    and-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_3e

    return-object v1

    .line 752
    :cond_3e
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    .line 754
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_49

    goto :goto_4a

    :cond_49
    move-object v0, p0

    :goto_4a
    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    return-object v1
.end method

.method public static generateProviderInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ProviderInfo;
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v6, p5

    .line 691
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateProviderInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ProviderInfo;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 635
    :cond_4
    invoke-static {p0, p4, p2, p3}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->checkUseInstalled(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    if-nez p5, :cond_11

    .line 639
    invoke-static {p0, p2, p3, p4, p6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    :cond_11
    if-nez p5, :cond_14

    return-object v0

    .line 645
    :cond_14
    invoke-static {p1, p2, p3, p5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateProviderInfoUnchecked(Lcom/android/server/pm/pkg/component/ParsedProvider;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateProviderInfoUnchecked(Lcom/android/server/pm/pkg/component/ParsedProvider;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ProviderInfo;
    .registers 11

    .line 660
    new-instance v0, Landroid/content/pm/ProviderInfo;

    invoke-direct {v0}, Landroid/content/pm/ProviderInfo;-><init>()V

    .line 661
    invoke-static {v0, p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)V

    .line 662
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isExported()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 663
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 664
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 665
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 666
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isSyncable()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 667
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 668
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 669
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isGrantUriPermissions()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 670
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isForceUriPermissions()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    .line 671
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isMultiProcess()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 672
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getInitOrder()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 673
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getUriPermissionPatterns()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/os/PatternMatcher;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/PatternMatcher;

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 674
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getPathPermissions()Ljava/util/List;

    move-result-object v1

    new-array v2, v2, [Landroid/content/pm/PathPermission;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/PathPermission;

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const-wide/16 v1, 0x800

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_73

    .line 676
    iput-object v2, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    :cond_73
    const-wide/16 v5, 0x80

    and-long/2addr p1, v5

    cmp-long p1, p1, v3

    if-eqz p1, :cond_88

    .line 679
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    .line 681
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_85

    goto :goto_86

    :cond_85
    move-object v2, p0

    :goto_86
    iput-object v2, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 683
    :cond_88
    iput-object p3, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static generateServiceInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ServiceInfo;
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v6, p5

    .line 627
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateServiceInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateServiceInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ServiceInfo;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 582
    :cond_4
    invoke-static {p0, p4, p2, p3}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->checkUseInstalled(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    if-nez p5, :cond_11

    .line 586
    invoke-static {p0, p2, p3, p4, p6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    :cond_11
    if-nez p5, :cond_14

    return-object v0

    .line 592
    :cond_14
    invoke-static {p1, p2, p3, p5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateServiceInfoUnchecked(Lcom/android/server/pm/pkg/component/ParsedService;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateServiceInfoUnchecked(Lcom/android/server/pm/pkg/component/ParsedService;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;
    .registers 7

    .line 607
    new-instance v0, Landroid/content/pm/ServiceInfo;

    invoke-direct {v0}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 608
    invoke-static {v0, p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)V

    .line 609
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isExported()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 610
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 611
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 612
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 613
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedService;->getForegroundServiceType()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 614
    iput-object p3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-wide/16 v1, 0x80

    and-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-eqz p1, :cond_3e

    .line 616
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    .line 618
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3c

    const/4 p0, 0x0

    :cond_3c
    iput-object p0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    :cond_3e
    return-object v0
.end method

.method public static generateWithComponents(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserState;ILandroid/apex/ApexInfo;)Landroid/content/pm/PackageInfo;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;",
            "[IJJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageUserState;",
            "I",
            "Landroid/apex/ApexInfo;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    move-wide/from16 v13, p2

    move-object/from16 v15, p0

    move-object/from16 v12, p9

    move/from16 v11, p10

    .line 103
    invoke-static {v15, v13, v14, v12, v11}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    const/16 v17, 0x0

    if-nez v16, :cond_11

    return-object v17

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, v16

    .line 107
    invoke-static/range {v0 .. v12}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateWithoutComponents(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserState;ILandroid/apex/ApexInfo;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-nez v7, :cond_2c

    return-object v17

    :cond_2c
    const-wide/16 v0, 0x1

    and-long/2addr v0, v13

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_98

    .line 115
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_98

    .line 118
    new-array v12, v11, [Landroid/content/pm/ActivityInfo;

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_43
    if-ge v6, v11, :cond_8f

    .line 120
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/pm/pkg/component/ParsedActivity;

    const/4 v1, 0x0

    .line 121
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p9

    move-object/from16 v3, v17

    move v10, v4

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 123
    sget-object v0, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 124
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    goto :goto_89

    :cond_70
    add-int/lit8 v18, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, p2

    move-object/from16 v4, p9

    move-object/from16 v5, v16

    move/from16 v17, v6

    move/from16 v6, p10

    .line 127
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    aput-object v0, v12, v10

    move/from16 v4, v18

    goto :goto_8c

    :cond_89
    :goto_89
    move/from16 v17, v6

    move v4, v10

    :goto_8c
    add-int/lit8 v6, v17, 0x1

    goto :goto_43

    :cond_8f
    move v10, v4

    .line 131
    invoke-static {v12, v10}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v7, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    :cond_98
    const-wide/16 v0, 0x2

    and-long/2addr v0, v13

    cmp-long v0, v0, v8

    if-eqz v0, :cond_f3

    .line 135
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_f3

    .line 138
    new-array v11, v10, [Landroid/content/pm/ActivityInfo;

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_ad
    if-ge v12, v10, :cond_ea

    .line 140
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/pm/pkg/component/ParsedActivity;

    const/4 v1, 0x0

    .line 141
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p9

    move-object/from16 v3, v17

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z

    move-result v0

    if-eqz v0, :cond_e4

    add-int/lit8 v18, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, p2

    move-object/from16 v4, p9

    move-object/from16 v5, v16

    move v8, v6

    move/from16 v6, p10

    .line 143
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    aput-object v0, v11, v8

    move/from16 v6, v18

    goto :goto_e5

    :cond_e4
    move v8, v6

    :goto_e5
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v8, 0x0

    goto :goto_ad

    :cond_ea
    move v8, v6

    .line 147
    invoke-static {v11, v8}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v7, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    :cond_f3
    const-wide/16 v0, 0x4

    and-long/2addr v0, v13

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_146

    .line 151
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_146

    .line 154
    new-array v9, v8, [Landroid/content/pm/ServiceInfo;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_10a
    if-ge v10, v8, :cond_13e

    .line 156
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedService;

    const/4 v1, 0x0

    .line 157
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p9

    move-object v3, v6

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z

    move-result v0

    if-eqz v0, :cond_13b

    add-int/lit8 v12, v11, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, p2

    move-object/from16 v4, p9

    move-object/from16 v5, v16

    move/from16 v6, p10

    .line 159
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateServiceInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    aput-object v0, v9, v11

    move v11, v12

    :cond_13b
    add-int/lit8 v10, v10, 0x1

    goto :goto_10a

    .line 163
    :cond_13e
    invoke-static {v9, v11}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ServiceInfo;

    iput-object v0, v7, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    :cond_146
    const-wide/16 v0, 0x8

    and-long/2addr v0, v13

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_199

    .line 167
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_199

    .line 170
    new-array v9, v8, [Landroid/content/pm/ProviderInfo;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_15d
    if-ge v10, v8, :cond_191

    .line 172
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v0

    .line 173
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedProvider;

    const/4 v1, 0x0

    .line 174
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p9

    move-object v3, v6

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z

    move-result v0

    if-eqz v0, :cond_18e

    add-int/lit8 v12, v11, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, p2

    move-object/from16 v4, p9

    move-object/from16 v5, v16

    move/from16 v6, p10

    .line 176
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    aput-object v0, v9, v11

    move v11, v12

    :cond_18e
    add-int/lit8 v10, v10, 0x1

    goto :goto_15d

    .line 180
    :cond_191
    invoke-static {v9, v11}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ProviderInfo;

    iput-object v0, v7, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    :cond_199
    const-wide/16 v0, 0x10

    and-long/2addr v0, v13

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d3

    .line 184
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d3

    .line 186
    new-array v1, v0, [Landroid/content/pm/InstrumentationInfo;

    iput-object v1, v7, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    const/4 v10, 0x0

    :goto_1b1
    if-ge v10, v0, :cond_1d3

    .line 188
    iget-object v1, v7, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 189
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getInstrumentations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    const/4 v3, 0x1

    move-object/from16 p4, v2

    move-object/from16 p5, p0

    move-wide/from16 p6, p2

    move/from16 p8, p10

    move/from16 p9, v3

    .line 188
    invoke-static/range {p4 .. p9}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateInstrumentationInfo(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JIZ)Landroid/content/pm/InstrumentationInfo;

    move-result-object v2

    aput-object v2, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1b1

    :cond_1d3
    return-object v7
.end method

.method public static generateWithoutComponents(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserState;ILandroid/apex/ApexInfo;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/PackageInfo;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;",
            "[IJJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageUserState;",
            "I",
            "Landroid/apex/ApexInfo;",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 203
    invoke-static {p0, p9, p2, p3}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->checkUseInstalled(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 207
    :cond_8
    invoke-static/range {p0 .. p12}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateWithoutComponentsUnchecked(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserState;ILandroid/apex/ApexInfo;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateWithoutComponentsUnchecked(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserState;ILandroid/apex/ApexInfo;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/PackageInfo;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;",
            "[IJJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageUserState;",
            "I",
            "Landroid/apex/ApexInfo;",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 223
    new-instance p9, Landroid/content/pm/PackageInfo;

    invoke-direct {p9}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 224
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p10

    iput-object p10, p9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 225
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSplitNames()[Ljava/lang/String;

    move-result-object p10

    iput-object p10, p9, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 226
    move-object p10, p0

    check-cast p10, Lcom/android/server/pm/pkg/parsing/ParsingPackageHidden;

    invoke-interface {p10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageHidden;->getVersionCode()I

    move-result v0

    iput v0, p9, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 227
    invoke-interface {p10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageHidden;->getVersionCodeMajor()I

    move-result p10

    iput p10, p9, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    .line 228
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getBaseRevisionCode()I

    move-result p10

    iput p10, p9, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    .line 229
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSplitRevisionCodes()[I

    move-result-object p10

    iput-object p10, p9, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 230
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getVersionName()Ljava/lang/String;

    move-result-object p10

    iput-object p10, p9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 231
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object p10

    iput-object p10, p9, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 232
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserLabel()I

    move-result p10

    iput p10, p9, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 233
    iput-object p12, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 234
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getInstallLocation()I

    move-result p10

    iput p10, p9, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 235
    iget-object p10, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p10, p10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p12, p10, 0x1

    if-nez p12, :cond_52

    and-int/lit16 p10, p10, 0x80

    if-eqz p10, :cond_58

    .line 237
    :cond_52
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->isRequiredForAllUsers()Z

    move-result p10

    iput-boolean p10, p9, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 239
    :cond_58
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRestrictedAccountType()Ljava/lang/String;

    move-result-object p10

    iput-object p10, p9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 240
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequiredAccountType()Ljava/lang/String;

    move-result-object p10

    iput-object p10, p9, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 241
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object p10

    iput-object p10, p9, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 242
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object p10

    iput-object p10, p9, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    .line 243
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayCategory()Ljava/lang/String;

    move-result-object p10

    iput-object p10, p9, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 244
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayPriority()I

    move-result p10

    iput p10, p9, Landroid/content/pm/PackageInfo;->overlayPriority:I

    .line 245
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->isOverlayIsStatic()Z

    move-result p10

    iput-boolean p10, p9, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    .line 246
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getCompileSdkVersion()I

    move-result p10

    iput p10, p9, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    .line 247
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getCompileSdkVersionCodeName()Ljava/lang/String;

    move-result-object p10

    iput-object p10, p9, Landroid/content/pm/PackageInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 248
    iput-wide p4, p9, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 249
    iput-wide p6, p9, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    const-wide/16 p4, 0x100

    and-long/2addr p4, p2

    const-wide/16 p6, 0x0

    cmp-long p4, p4, p6

    if-eqz p4, :cond_9d

    .line 251
    iput-object p1, p9, Landroid/content/pm/PackageInfo;->gids:[I

    :cond_9d
    const-wide/16 p4, 0x4000

    and-long/2addr p4, p2

    cmp-long p1, p4, p6

    if-eqz p1, :cond_e9

    .line 254
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getConfigPreferences()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_bb

    .line 256
    new-array p1, p1, [Landroid/content/pm/ConfigurationInfo;

    iput-object p1, p9, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 257
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getConfigPreferences()Ljava/util/List;

    move-result-object p1

    iget-object p4, p9, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-interface {p1, p4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 259
    :cond_bb
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedFeatures()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d2

    .line 261
    new-array p1, p1, [Landroid/content/pm/FeatureInfo;

    iput-object p1, p9, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 262
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedFeatures()Ljava/util/List;

    move-result-object p1

    iget-object p4, p9, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-interface {p1, p4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 264
    :cond_d2
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getFeatureGroups()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_e9

    .line 266
    new-array p1, p1, [Landroid/content/pm/FeatureGroupInfo;

    iput-object p1, p9, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 267
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getFeatureGroups()Ljava/util/List;

    move-result-object p1

    iget-object p4, p9, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-interface {p1, p4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_e9
    const-wide/16 p4, 0x1000

    and-long/2addr p4, p2

    cmp-long p1, p4, p6

    const/4 p4, 0x0

    const/4 p5, 0x1

    if-eqz p1, :cond_169

    .line 271
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p1

    if-lez p1, :cond_118

    .line 273
    new-array p10, p1, [Landroid/content/pm/PermissionInfo;

    iput-object p10, p9, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    move p10, p4

    :goto_101
    if-ge p10, p1, :cond_118

    .line 275
    iget-object p12, p9, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedPermission;

    invoke-static {v0, p2, p3}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generatePermissionInfo(Lcom/android/server/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    aput-object v0, p12, p10

    add-int/lit8 p10, p10, 0x1

    goto :goto_101

    .line 279
    :cond_118
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesPermissions()Ljava/util/List;

    move-result-object p1

    .line 280
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p10

    if-lez p10, :cond_169

    .line 282
    new-array p12, p10, [Ljava/lang/String;

    iput-object p12, p9, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 283
    new-array p12, p10, [I

    iput-object p12, p9, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    move p12, p4

    :goto_12b
    if-ge p12, p10, :cond_169

    .line 285
    invoke-interface {p1, p12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;

    .line 286
    iget-object v1, p9, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p12

    .line 288
    iget-object v1, p9, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v2, v1, p12

    or-int/2addr v2, p5

    aput v2, v1, p12

    if-eqz p8, :cond_156

    .line 291
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_156

    .line 292
    iget-object v1, p9, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v2, v1, p12

    or-int/lit8 v2, v2, 0x2

    aput v2, v1, p12

    .line 295
    :cond_156
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;->getUsesPermissionFlags()I

    move-result v0

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_166

    .line 297
    iget-object v0, p9, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v2, v0, p12

    or-int/2addr v1, v2

    aput v1, v0, p12

    :cond_166
    add-int/lit8 p12, p12, 0x1

    goto :goto_12b

    :cond_169
    const-wide/32 v0, -0x80000000

    and-long/2addr v0, p2

    cmp-long p1, v0, p6

    if-eqz p1, :cond_1af

    .line 304
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getAttributions()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p1

    if-lez p1, :cond_197

    .line 306
    new-array p8, p1, [Landroid/content/pm/Attribution;

    iput-object p8, p9, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    move p8, p4

    :goto_180
    if-ge p8, p1, :cond_197

    .line 308
    iget-object p10, p9, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getAttributions()Ljava/util/List;

    move-result-object p12

    invoke-interface {p12, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p12

    check-cast p12, Lcom/android/server/pm/pkg/component/ParsedAttribution;

    invoke-static {p12}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Landroid/content/pm/Attribution;

    move-result-object p12

    aput-object p12, p10, p8

    add-int/lit8 p8, p8, 0x1

    goto :goto_180

    .line 311
    :cond_197
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->areAttributionsUserVisible()Z

    move-result p1

    if-eqz p1, :cond_1a6

    .line 312
    iget-object p1, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p8, p1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    or-int/lit8 p8, p8, 0x4

    iput p8, p1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    goto :goto_1b7

    .line 315
    :cond_1a6
    iget-object p1, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p8, p1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 p8, p8, -0x5

    iput p8, p1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    goto :goto_1b7

    .line 319
    :cond_1af
    iget-object p1, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p8, p1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 p8, p8, -0x5

    iput p8, p1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    :goto_1b7
    if-eqz p11, :cond_202

    .line 324
    new-instance p1, Ljava/io/File;

    iget-object p8, p11, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {p1, p8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    iget-object p8, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p10

    iput-object p10, p8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 327
    iget-object p8, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 328
    iget-boolean p1, p11, Landroid/apex/ApexInfo;->isFactory:Z

    if-eqz p1, :cond_1de

    .line 329
    iget-object p1, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p8, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr p8, p5

    and-int/lit16 p8, p8, -0x81

    .line 330
    iput p8, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_1e8

    .line 332
    :cond_1de
    iget-object p1, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p8, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p8, p8, -0x2

    or-int/lit16 p8, p8, 0x80

    .line 333
    iput p8, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 335
    :goto_1e8
    iget-boolean p1, p11, Landroid/apex/ApexInfo;->isActive:Z

    if-eqz p1, :cond_1f6

    .line 336
    iget-object p1, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p8, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p10, 0x800000

    or-int/2addr p8, p10

    iput p8, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_200

    .line 338
    :cond_1f6
    iget-object p1, p9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p8, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const p10, -0x800001

    and-int/2addr p8, p10

    iput p8, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 340
    :goto_200
    iput-boolean p5, p9, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 343
    :cond_202
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    const-wide/16 p10, 0x40

    and-long/2addr p10, p2

    cmp-long p8, p10, p6

    if-eqz p8, :cond_238

    .line 346
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result p8

    if-eqz p8, :cond_220

    new-array p5, p5, [Landroid/content/pm/Signature;

    .line 349
    iput-object p5, p9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 350
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object p8

    aget-object p8, p8, p4

    aput-object p8, p5, p4

    goto :goto_238

    .line 351
    :cond_220
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasSignatures()Z

    move-result p5

    if-eqz p5, :cond_238

    .line 353
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p5

    array-length p5, p5

    .line 354
    new-array p8, p5, [Landroid/content/pm/Signature;

    iput-object p8, p9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 355
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p8

    iget-object p10, p9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p8, p4, p10, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_238
    :goto_238
    const-wide/32 p4, 0x8000000

    and-long/2addr p2, p4

    cmp-long p2, p2, p6

    if-eqz p2, :cond_24f

    .line 362
    sget-object p2, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq p1, p2, :cond_24c

    .line 364
    new-instance p2, Landroid/content/pm/SigningInfo;

    invoke-direct {p2, p1}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object p2, p9, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    goto :goto_24f

    :cond_24c
    const/4 p1, 0x0

    .line 366
    iput-object p1, p9, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 372
    :cond_24f
    :goto_24f
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result p0

    iput-boolean p0, p9, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    return-object p9
.end method

.method public static getCredentialProtectedDataDir(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;I)Ljava/io/File;
    .registers 3

    .line 949
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    .line 950
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 949
    invoke-static {v0, p1, p0}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getDataDir(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;I)Ljava/io/File;
    .registers 4

    .line 929
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 930
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 933
    :cond_11
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDefaultToDeviceProtectedStorage()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 935
    invoke-static {p0, p1}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->getDeviceProtectedDataDir(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 937
    :cond_1c
    invoke-static {p0, p1}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->getCredentialProtectedDataDir(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceProtectedDataDir(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;I)Ljava/io/File;
    .registers 3

    .line 943
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    .line 944
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 943
    invoke-static {v0, p1, p0}, Landroid/os/Environment;->getDataUserDePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static updateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;)V
    .registers 12

    const-wide/16 v0, 0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 427
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :cond_c
    const-wide/16 v4, 0x400

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_17

    .line 430
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 431
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 435
    :cond_17
    sget-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    if-nez v0, :cond_1e

    .line 436
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 439
    :cond_1e
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v1

    const/high16 v4, 0x200000

    invoke-static {v1, v4}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    .line 440
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v4

    const/high16 v5, 0x800000

    invoke-static {v4, v5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v4

    or-int/2addr v1, v4

    .line 441
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v4

    or-int/2addr v1, v4

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 442
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v1

    const/16 v4, 0x80

    invoke-static {v1, v4}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    .line 443
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v4

    const/high16 v5, 0x10000

    invoke-static {v4, v5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v4

    or-int/2addr v1, v4

    .line 444
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v4

    or-int/2addr v1, v4

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 446
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v5, :cond_71

    .line 447
    iput-boolean v5, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_9d

    .line 448
    :cond_71
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_8d

    const-wide/32 v6, 0x8000

    and-long/2addr v6, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_8a

    const-wide/32 v6, 0x20000000

    and-long/2addr p1, v6

    cmp-long p1, p1, v2

    if-eqz p1, :cond_89

    goto :goto_8a

    :cond_89
    move v5, v1

    .line 450
    :cond_8a
    :goto_8a
    iput-boolean v5, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_9d

    .line 452
    :cond_8d
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_9b

    .line 453
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_9d

    .line 455
    :cond_9b
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 457
    :cond_9d
    :goto_9d
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p1

    iput p1, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 458
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_b0

    .line 459
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/pm/FallbackCategoryProvider;->getFallbackCategory(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 461
    :cond_b0
    invoke-static {p3}, Lcom/android/server/pm/pkg/SELinuxUtil;->getSeinfoUser(Lcom/android/server/pm/pkg/PackageUserState;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 462
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p1

    if-eqz p1, :cond_d8

    .line 464
    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 465
    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    :cond_d8
    return-void
.end method
