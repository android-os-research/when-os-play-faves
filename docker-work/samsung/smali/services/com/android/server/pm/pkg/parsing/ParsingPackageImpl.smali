.class public Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
.super Ljava/lang/Object;
.source "ParsingPackageImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.implements Lcom/android/server/pm/pkg/parsing/ParsingPackageHidden;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl$Booleans;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/pm/pkg/component/ParsedMainComponent;",
            ">;"
        }
    .end annotation
.end field

.field public static sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

.field public static sForIntentInfoPairs:Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

.field public static sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

.field public static sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

.field public static sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

.field public static sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

.field public static sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

.field public static sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;


# instance fields
.field public activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end field

.field public adoptPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public anyDensity:Ljava/lang/Boolean;

.field public apexSystemServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedApexSystemService;",
            ">;"
        }
    .end annotation
.end field

.field public appComponentFactory:Ljava/lang/String;

.field public attributions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedAttribution;",
            ">;"
        }
    .end annotation
.end field

.field public autoRevokePermissions:I

.field public backupAgentName:Ljava/lang/String;

.field public banner:I

.field public baseRevisionCode:I

.field public category:I

.field public classLoaderName:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public compatibleWidthLimitDp:I

.field public compileSdkVersion:I

.field public compileSdkVersionCodeName:Ljava/lang/String;

.field public configPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public dataExtractionRules:I

.field public descriptionRes:I

.field public featureGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field public fullBackupContent:I

.field public gwpAsanMode:I

.field public iconRes:I

.field public implicitPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public installLocation:I

.field public instrumentations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation
.end field

.field public isSamsungThemeOverlay:Z

.field public keySetMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation
.end field

.field public labelRes:I

.field public largestWidthLimitDp:I

.field public libraryNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public logo:I

.field public mBaseApkPath:Ljava/lang/String;

.field public mBooleans:J

.field public mKnownActivityEmbeddingCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLocaleConfigRes:I

.field public mLongVersionCode:J

.field public mPath:Ljava/lang/String;

.field public mProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation
.end field

.field public mStorageUuid:Ljava/util/UUID;

.field public manageSpaceActivityName:Ljava/lang/String;

.field public maxAspectRatio:F

.field public maxSdkVersion:I

.field public memtagMode:I

.field public metaData:Landroid/os/Bundle;

.field public mimeGroups:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public minAspectRatio:F

.field public minExtensionVersions:Landroid/util/SparseIntArray;

.field public minSdkVersion:I

.field public nativeHeapZeroInitialized:I

.field public networkSecurityConfigRes:I

.field public nonLocalizedLabel:Ljava/lang/CharSequence;

.field public originalPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public overlayCategory:Ljava/lang/String;

.field public overlayPriority:I

.field public overlayTarget:Ljava/lang/String;

.field public overlayTargetOverlayableName:Ljava/lang/String;

.field public overlayables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public packageName:Ljava/lang/String;

.field public permission:Ljava/lang/String;

.field public permissionGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field public permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation
.end field

.field public preferredActivityFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public processName:Ljava/lang/String;

.field public processes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation
.end field

.field public protectedBroadcasts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation
.end field

.field public queriesIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public queriesPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public queriesProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public receivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end field

.field public reqFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public requestRawExternalStorageAccess:Ljava/lang/Boolean;

.field public requestedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public requiredAccountType:Ljava/lang/String;

.field public requiresSmallestWidthDp:I

.field public resizeable:Ljava/lang/Boolean;

.field public resizeableActivity:Ljava/lang/Boolean;

.field public restrictUpdateHash:[B

.field public restrictedAccountType:Ljava/lang/String;

.field public roundIconRes:I

.field public sdkLibName:Ljava/lang/String;

.field public sdkLibVersionMajor:I

.field public services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            ">;"
        }
    .end annotation
.end field

.field public sharedUserId:Ljava/lang/String;

.field public sharedUserLabel:I

.field public signingDetails:Landroid/content/pm/SigningDetails;

.field public splitClassLoaderNames:[Ljava/lang/String;

.field public splitCodePaths:[Ljava/lang/String;

.field public splitDependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field public splitFlags:[I

.field public splitNames:[Ljava/lang/String;

.field public splitRevisionCodes:[I

.field public staticSharedLibName:Ljava/lang/String;

.field public staticSharedLibVersion:J

.field public supportsExtraLargeScreens:Ljava/lang/Boolean;

.field public supportsLargeScreens:Ljava/lang/Boolean;

.field public supportsNormalScreens:Ljava/lang/Boolean;

.field public supportsSmallScreens:Ljava/lang/Boolean;

.field public targetSandboxVersion:I

.field public targetSdkVersion:I

.field public taskAffinity:Ljava/lang/String;

.field public theme:I

.field public uiOptions:I

.field public upgradeKeySets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesNativeLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesOptionalLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesOptionalNativeLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedUsesPermission;",
            ">;"
        }
    .end annotation
.end field

.field public usesSdkLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesSdkLibrariesCertDigests:[[Ljava/lang/String;

.field public usesSdkLibrariesVersionsMajor:[J

.field public usesStaticLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesStaticLibrariesCertDigests:[[Ljava/lang/String;

.field public usesStaticLibrariesVersions:[J

.field public versionCode:I

.field public versionCodeMajor:I

.field public versionName:Ljava/lang/String;

.field public volumeUuid:Ljava/lang/String;

.field public zygotePreloadName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$VIpuXzegVo12DY15boysLIeX1Qc(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->lambda$static$0(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;

    .line 109
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    .line 110
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    .line 112
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    .line 114
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    .line 116
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    .line 117
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    .line 118
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 119
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    .line 120
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    .line 121
    new-instance v0, Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForIntentInfoPairs:Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    .line 124
    new-instance v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    .line 1507
    new-instance v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    .line 1351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    .line 200
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    .line 203
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 207
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 214
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 222
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 234
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    .line 236
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    .line 238
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    .line 245
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    .line 248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    .line 256
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    .line 259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    .line 263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    .line 266
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 268
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    .line 272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 275
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    .line 278
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    .line 281
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    .line 284
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    .line 287
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    .line 290
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    .line 293
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    .line 296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    .line 299
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    .line 303
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 309
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    .line 315
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    .line 329
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    .line 333
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    .line 337
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    const/4 v0, -0x1

    .line 361
    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->category:I

    .line 374
    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    const/4 v0, 0x1

    .line 385
    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    const v0, 0x7fffffff

    .line 386
    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxSdkVersion:I

    const/4 v0, 0x0

    .line 399
    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const-wide v1, 0x100000000000L

    .line 439
    iput-wide v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    .line 1353
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1354
    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    .line 1355
    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    .line 1356
    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    .line 1357
    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    .line 1358
    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeable:Ljava/lang/Boolean;

    .line 1359
    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->anyDensity:Ljava/lang/Boolean;

    .line 1360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCode:I

    .line 1361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCodeMajor:I

    .line 1362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->baseRevisionCode:I

    .line 1363
    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionName:Ljava/lang/String;

    .line 1364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersion:I

    .line 1365
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    .line 1366
    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    .line 1367
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBaseApkPath:Ljava/lang/String;

    .line 1368
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictedAccountType:Ljava/lang/String;

    .line 1369
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiredAccountType:Ljava/lang/String;

    .line 1370
    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTarget:Ljava/lang/String;

    .line 1371
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    .line 1372
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayCategory:Ljava/lang/String;

    .line 1373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayPriority:I

    .line 1374
    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;->unparcel(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    .line 1375
    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibName:Ljava/lang/String;

    .line 1376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibVersionMajor:I

    .line 1377
    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibName:Ljava/lang/String;

    .line 1378
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibVersion:J

    .line 1379
    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    .line 1380
    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    .line 1381
    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 1382
    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 1383
    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 1385
    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 1386
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesVersions:[J

    .line 1388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ltz v2, :cond_1ea

    .line 1390
    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    move v3, v0

    :goto_1db
    if-ge v3, v2, :cond_1ea

    .line 1392
    iget-object v4, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    sget-object v5, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-virtual {v5, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;->unparcel(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1db

    .line 1398
    :cond_1ea
    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 1399
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesVersionsMajor:[J

    .line 1401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ltz v2, :cond_211

    .line 1403
    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    :goto_202
    if-ge v0, v2, :cond_211

    .line 1405
    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    sget-object v4, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-virtual {v4, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;->unparcel(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_202

    .line 1410
    :cond_211
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserId:Ljava/lang/String;

    .line 1411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserLabel:I

    .line 1412
    sget-object v0, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    .line 1413
    sget-object v0, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    .line 1414
    sget-object v0, Landroid/content/pm/FeatureGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    .line 1415
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictUpdateHash:[B

    .line 1416
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    .line 1417
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    .line 1418
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    .line 1419
    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    .line 1421
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    .line 1422
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 1423
    invoke-static {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    .line 1424
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 1426
    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    .line 1427
    sget-object v2, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    .line 1429
    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    .line 1430
    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    .line 1431
    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    .line 1432
    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    .line 1434
    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    .line 1435
    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    .line 1437
    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    .line 1439
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForIntentInfoPairs:Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 1440
    const-class v0, Lcom/android/server/pm/pkg/component/ParsedProcess;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    .line 1441
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->metaData:Landroid/os/Bundle;

    .line 1442
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    .line 1443
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 1444
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mPath:Ljava/lang/String;

    .line 1445
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    .line 1446
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    .line 1447
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    .line 1448
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->appComponentFactory:Ljava/lang/String;

    .line 1449
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->backupAgentName:Ljava/lang/String;

    .line 1450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->banner:I

    .line 1451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->category:I

    .line 1452
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->classLoaderName:Ljava/lang/String;

    .line 1453
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    .line 1454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compatibleWidthLimitDp:I

    .line 1455
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->descriptionRes:I

    .line 1456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->fullBackupContent:I

    .line 1457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->dataExtractionRules:I

    .line 1458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->iconRes:I

    .line 1459
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    .line 1460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->labelRes:I

    .line 1461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->largestWidthLimitDp:I

    .line 1462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->logo:I

    .line 1463
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    .line 1464
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxAspectRatio:F

    .line 1465
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minAspectRatio:F

    .line 1466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    .line 1467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxSdkVersion:I

    .line 1468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->networkSecurityConfigRes:I

    .line 1469
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1470
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permission:Ljava/lang/String;

    .line 1471
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processName:Ljava/lang/String;

    .line 1472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiresSmallestWidthDp:I

    .line 1473
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->roundIconRes:I

    .line 1474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSandboxVersion:I

    .line 1475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    .line 1476
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->taskAffinity:Ljava/lang/String;

    .line 1477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->theme:I

    .line 1478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->uiOptions:I

    .line 1479
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->zygotePreloadName:Ljava/lang/String;

    .line 1480
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    .line 1481
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    .line 1482
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    .line 1483
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitFlags:[I

    .line 1484
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitNames:[Ljava/lang/String;

    .line 1485
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitRevisionCodes:[I

    .line 1486
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    .line 1488
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->autoRevokePermissions:I

    .line 1489
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    .line 1490
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->gwpAsanMode:I

    .line 1491
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    .line 1492
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    .line 1493
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    .line 1494
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->memtagMode:I

    .line 1495
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nativeHeapZeroInitialized:I

    .line 1496
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    .line 1497
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLocaleConfigRes:I

    .line 1498
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 1501
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->isSamsungThemeOverlay:Z

    .line 1504
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->assignDerivedFields()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    .line 200
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    .line 203
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 207
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 214
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 222
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 234
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    .line 236
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    .line 238
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    .line 245
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    .line 248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    .line 256
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    .line 259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    .line 263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    .line 266
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 268
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    .line 272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 275
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    .line 278
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    .line 281
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    .line 284
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    .line 287
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    .line 290
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    .line 293
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    .line 296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    .line 299
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    .line 303
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 309
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    .line 315
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    .line 329
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    .line 333
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    .line 337
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    const/4 v0, -0x1

    .line 361
    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->category:I

    .line 374
    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    const/4 v0, 0x1

    .line 385
    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    const v1, 0x7fffffff

    .line 386
    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxSdkVersion:I

    const/4 v1, 0x0

    .line 399
    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const-wide v2, 0x100000000000L

    .line 439
    iput-wide v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    .line 584
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    .line 585
    iput-object p2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBaseApkPath:Ljava/lang/String;

    .line 586
    iput-object p3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mPath:Ljava/lang/String;

    if-eqz p4, :cond_12a

    .line 589
    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCode:I

    const/16 p1, 0xb

    .line 590
    invoke-virtual {p4, p1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCodeMajor:I

    const/4 p1, 0x5

    .line 593
    invoke-virtual {p4, p1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 592
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBaseRevisionCode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    const/4 p1, 0x2

    .line 594
    invoke-virtual {p4, p1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setVersionName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    const/16 p1, 0x9

    .line 597
    invoke-virtual {p4, p1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setCompileSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    const/16 p1, 0xa

    .line 599
    invoke-virtual {p4, p1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setCompileSdkVersionCodeName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    const/4 p1, 0x6

    .line 602
    invoke-virtual {p4, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setIsolatedSplitLoading(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    :cond_12a
    return-void
.end method

.method public static synthetic lambda$static$0(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)I
    .registers 2

    .line 125
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result p1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 790
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    .line 791
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addMimeGroupsFromComponent(Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    return-object p0
.end method

.method public bridge synthetic addAdoptPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addAdoptPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addAdoptPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 740
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    .line 741
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 740
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addApexSystemService(Lcom/android/server/pm/pkg/component/ParsedApexSystemService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addApexSystemService(Lcom/android/server/pm/pkg/component/ParsedApexSystemService;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public final addApexSystemService(Lcom/android/server/pm/pkg/component/ParsedApexSystemService;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 798
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 826
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 685
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 697
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    .line 771
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    .line 772
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    .line 773
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 772
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addInstrumentation(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addInstrumentation(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addInstrumentation(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 721
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 3

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    .line 779
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_f

    .line 781
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 783
    :cond_f
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 784
    iget-object p2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {p2, p1, v0}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic addLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 832
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    .line 833
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 832
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    return-object p0
.end method

.method public final addMimeGroupsFromComponent(Lcom/android/server/pm/pkg/component/ParsedComponent;)V
    .registers 7

    .line 1878
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_49

    .line 1879
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 1880
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countMimeGroups()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_20
    if-ltz v2, :cond_46

    .line 1881
    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/16 v4, 0x1f4

    if-gt v3, v4, :cond_2f

    goto :goto_37

    .line 1882
    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Max limit on number of MIME Groups reached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1884
    :cond_37
    :goto_37
    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->getMimeGroup(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    :cond_46
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_49
    return-void
.end method

.method public bridge synthetic addOriginalPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addOriginalPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addOriginalPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 727
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    return-object p0
.end method

.method public addOverlayable(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 4

    .line 733
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    .line 734
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 733
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic addPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 747
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 753
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addPreferredActivityFilter(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 3

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addPreferredActivityFilter(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addPreferredActivityFilter(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    .line 905
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 906
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 905
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    if-nez p1, :cond_3

    return-object p0

    .line 706
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic addProtectedBroadcast(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addProtectedBroadcast(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addProtectedBroadcast(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 712
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 713
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 714
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 713
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    :cond_14
    return-object p0
.end method

.method public bridge synthetic addProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 819
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    .line 820
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addMimeGroupsFromComponent(Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    return-object p0
.end method

.method public bridge synthetic addQueriesIntent(Landroid/content/Intent;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addQueriesIntent(Landroid/content/Intent;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addQueriesIntent(Landroid/content/Intent;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 912
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addQueriesPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addQueriesPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addQueriesPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 918
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    .line 919
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 918
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addQueriesProvider(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addQueriesProvider(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addQueriesProvider(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 925
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    return-object p0
.end method

.method public bridge synthetic addReceiver(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addReceiver(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addReceiver(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 805
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    .line 806
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addMimeGroupsFromComponent(Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    return-object p0
.end method

.method public bridge synthetic addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 691
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addService(Lcom/android/server/pm/pkg/component/ParsedService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addService(Lcom/android/server/pm/pkg/component/ParsedService;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addService(Lcom/android/server/pm/pkg/component/ParsedService;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 812
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    .line 813
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addMimeGroupsFromComponent(Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    return-object p0
.end method

.method public bridge synthetic addUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 846
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    .line 847
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 846
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public final addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 867
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 868
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 867
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 839
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 840
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 839
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public final addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 860
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 861
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 860
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 759
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    .line 763
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    .line 764
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object p1

    .line 763
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 5

    .line 106
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 6

    .line 881
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 882
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 881
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 883
    iget-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesVersionsMajor:[J

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesVersionsMajor:[J

    .line 885
    const-class p1, [Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {p1, p2, p4, v0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 5

    .line 106
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 6

    .line 893
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 894
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 893
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 895
    iget-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesVersions:[J

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesVersions:[J

    .line 897
    const-class p1, [Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {p1, p2, p4, v0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    return-object p0
.end method

.method public areAttributionsUserVisible()Z
    .registers 3

    const-wide v0, 0x800000000000L

    .line 2412
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 5

    .line 106
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[I",
            "Landroid/util/SparseArray<",
            "[I>;)",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;"
        }
    .end annotation

    .line 992
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitNames:[Ljava/lang/String;

    .line 993
    iput-object p2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    .line 994
    iput-object p3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitRevisionCodes:[I

    .line 995
    iput-object p4, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    .line 997
    array-length p1, p1

    .line 998
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitFlags:[I

    .line 999
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    return-object p0
.end method

.method public final assignDerivedFields()V
    .registers 3

    .line 679
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mStorageUuid:Ljava/util/UUID;

    .line 680
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCodeMajor:I

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLongVersionCode:J

    return-void
.end method

.method public final buildAppClassNamesByProcess()Landroid/util/ArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1180
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1183
    :cond_a
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1184
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1185
    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedProcess;

    .line 1187
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getAppClassNamesByPackage()Landroid/util/ArrayMap;

    move-result-object v3

    const/4 v4, 0x0

    .line 1189
    :goto_33
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_1a

    .line 1190
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1192
    iget-object v6, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1193
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1194
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_56

    .line 1195
    invoke-virtual {v0, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_59
    return-object v0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getActivities()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .line 1799
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    return-object p0
.end method

.method public getAdoptPermissions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1746
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    return-object p0
.end method

.method public getApexSystemServices()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedApexSystemService;",
            ">;"
        }
    .end annotation

    .line 1805
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    return-object p0
.end method

.method public getAppComponentFactory()Ljava/lang/String;
    .registers 1

    .line 1985
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->appComponentFactory:Ljava/lang/String;

    return-object p0
.end method

.method public getAttributions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedAttribution;",
            ">;"
        }
    .end annotation

    .line 1829
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    return-object p0
.end method

.method public getAutoRevokePermissions()I
    .registers 1

    .line 2397
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->autoRevokePermissions:I

    return p0
.end method

.method public getBackupAgentName()Ljava/lang/String;
    .registers 1

    .line 1991
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->backupAgentName:Ljava/lang/String;

    return-object p0
.end method

.method public getBanner()I
    .registers 1

    .line 1996
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->banner:I

    return p0
.end method

.method public getBaseApkPath()Ljava/lang/String;
    .registers 1

    .line 1566
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBaseApkPath:Ljava/lang/String;

    return-object p0
.end method

.method public getBaseRevisionCode()I
    .registers 1

    .line 1537
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->baseRevisionCode:I

    return p0
.end method

.method public final getBoolean(J)Z
    .registers 5
    .param p1    # J
        .annotation build Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl$Booleans$Values;
        .end annotation
    .end param

    .line 568
    iget-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    and-long p0, v0, p1

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public getCategory()I
    .registers 1

    .line 2001
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->category:I

    return p0
.end method

.method public getClassLoaderName()Ljava/lang/String;
    .registers 1

    .line 2007
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->classLoaderName:Ljava/lang/String;

    return-object p0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 1

    .line 2013
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    return-object p0
.end method

.method public getCompatibleWidthLimitDp()I
    .registers 1

    .line 2018
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compatibleWidthLimitDp:I

    return p0
.end method

.method public getCompileSdkVersion()I
    .registers 1

    .line 1548
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersion:I

    return p0
.end method

.method public getCompileSdkVersionCodeName()Ljava/lang/String;
    .registers 1

    .line 1554
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    return-object p0
.end method

.method public getConfigPreferences()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation

    .line 1716
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    return-object p0
.end method

.method public getDataExtractionRules()I
    .registers 1

    .line 2043
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->dataExtractionRules:I

    return p0
.end method

.method public getDescriptionRes()I
    .registers 1

    .line 2023
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->descriptionRes:I

    return p0
.end method

.method public getFeatureGroups()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation

    .line 1728
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    return-object p0
.end method

.method public getFullBackupContent()I
    .registers 1

    .line 2038
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->fullBackupContent:I

    return p0
.end method

.method public getGwpAsanMode()I
    .registers 1

    .line 2324
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->gwpAsanMode:I

    return p0
.end method

.method public getIconRes()I
    .registers 1

    .line 2048
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->iconRes:I

    return p0
.end method

.method public getImplicitPermissions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1769
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    return-object p0
.end method

.method public getInstallLocation()I
    .registers 1

    .line 2053
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    return p0
.end method

.method public getInstrumentations()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation

    .line 1847
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    return-object p0
.end method

.method public getKeySetMapping()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation

    .line 1787
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    return-object p0
.end method

.method public getKnownActivityEmbeddingCerts()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2423
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-nez p0, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getLabelRes()I
    .registers 1

    .line 2058
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->labelRes:I

    return p0
.end method

.method public getLargestWidthLimitDp()I
    .registers 1

    .line 2063
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->largestWidthLimitDp:I

    return p0
.end method

.method public getLibraryNames()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1645
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    return-object p0
.end method

.method public getLocaleConfigRes()I
    .registers 1

    .line 2341
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLocaleConfigRes:I

    return p0
.end method

.method public getLogo()I
    .registers 1

    .line 2068
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->logo:I

    return p0
.end method

.method public getLongVersionCode()J
    .registers 3

    .line 1532
    iget-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLongVersionCode:J

    return-wide v0
.end method

.method public getManageSpaceActivityName()Ljava/lang/String;
    .registers 1

    .line 2074
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxAspectRatio()F
    .registers 1

    .line 2079
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxAspectRatio:F

    return p0
.end method

.method public getMaxSdkVersion()I
    .registers 1

    .line 2100
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxSdkVersion:I

    return p0
.end method

.method public getMemtagMode()I
    .registers 1

    .line 2330
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->memtagMode:I

    return p0
.end method

.method public getMetaData()Landroid/os/Bundle;
    .registers 1

    .line 1865
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->metaData:Landroid/os/Bundle;

    return-object p0
.end method

.method public getMimeGroups()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1892
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getMinAspectRatio()F
    .registers 1

    .line 2084
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minAspectRatio:F

    return p0
.end method

.method public getMinExtensionVersions()Landroid/util/SparseIntArray;
    .registers 1

    .line 2090
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public getMinSdkVersion()I
    .registers 1

    .line 2095
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    return p0
.end method

.method public getNativeHeapZeroInitialized()I
    .registers 1

    .line 2336
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nativeHeapZeroInitialized:I

    return p0
.end method

.method public getNetworkSecurityConfigRes()I
    .registers 1

    .line 2105
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->networkSecurityConfigRes:I

    return p0
.end method

.method public getNonLocalizedLabel()Ljava/lang/CharSequence;
    .registers 1

    .line 2111
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getOriginalPackages()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1740
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    return-object p0
.end method

.method public getOverlayCategory()Ljava/lang/String;
    .registers 1

    .line 1601
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayCategory:Ljava/lang/String;

    return-object p0
.end method

.method public getOverlayPriority()I
    .registers 1

    .line 1606
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayPriority:I

    return p0
.end method

.method public getOverlayTarget()Ljava/lang/String;
    .registers 1

    .line 1589
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTarget:Ljava/lang/String;

    return-object p0
.end method

.method public getOverlayTargetOverlayableName()Ljava/lang/String;
    .registers 1

    .line 1595
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    return-object p0
.end method

.method public getOverlayables()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1617
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 1560
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .registers 1

    .line 1910
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public getPermission()Ljava/lang/String;
    .registers 1

    .line 2117
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public getPermissionGroups()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation

    .line 1841
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    return-object p0
.end method

.method public getPermissions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation

    .line 1835
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    return-object p0
.end method

.method public getPreferredActivityFilters()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation

    .line 1853
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    return-object p0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 2

    .line 1056
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processName:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    :goto_7
    return-object v0
.end method

.method public getProcesses()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation

    .line 1859
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    return-object p0
.end method

.method public getProperties()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 1775
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    return-object p0
.end method

.method public getProtectedBroadcasts()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1793
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    return-object p0
.end method

.method public getProviders()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .line 1823
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    return-object p0
.end method

.method public getQueriesIntents()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1931
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    return-object p0
.end method

.method public getQueriesPackages()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1937
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    return-object p0
.end method

.method public getQueriesProviders()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1943
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    return-object p0
.end method

.method public getReceivers()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .line 1811
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    return-object p0
.end method

.method public getRequestedFeatures()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    .line 1722
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    return-object p0
.end method

.method public getRequestedPermissions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1757
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    return-object p0
.end method

.method public getRequiredAccountType()Ljava/lang/String;
    .registers 1

    .line 1583
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiredAccountType:Ljava/lang/String;

    return-object p0
.end method

.method public getRequiresSmallestWidthDp()I
    .registers 1

    .line 2122
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiresSmallestWidthDp:I

    return p0
.end method

.method public getResizeableActivity()Ljava/lang/Boolean;
    .registers 1

    .line 2263
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getRestrictUpdateHash()[B
    .registers 1

    .line 1734
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictUpdateHash:[B

    return-object p0
.end method

.method public getRestrictedAccountType()Ljava/lang/String;
    .registers 1

    .line 1577
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictedAccountType:Ljava/lang/String;

    return-object p0
.end method

.method public getRoundIconRes()I
    .registers 1

    .line 2127
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->roundIconRes:I

    return p0
.end method

.method public getSdkLibName()Ljava/lang/String;
    .registers 1

    .line 1623
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibName:Ljava/lang/String;

    return-object p0
.end method

.method public getSdkLibVersionMajor()I
    .registers 1

    .line 1628
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibVersionMajor:I

    return p0
.end method

.method public getServices()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            ">;"
        }
    .end annotation

    .line 1817
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    return-object p0
.end method

.method public getSharedUserId()Ljava/lang/String;
    .registers 1

    .line 1705
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserId:Ljava/lang/String;

    return-object p0
.end method

.method public getSharedUserLabel()I
    .registers 1

    .line 1710
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserLabel:I

    return p0
.end method

.method public getSigningDetails()Landroid/content/pm/SigningDetails;
    .registers 1

    .line 1904
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    return-object p0
.end method

.method public getSplitClassLoaderNames()[Ljava/lang/String;
    .registers 1

    .line 1949
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    if-nez p0, :cond_6

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_6
    return-object p0
.end method

.method public getSplitCodePaths()[Ljava/lang/String;
    .registers 1

    .line 1955
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    if-nez p0, :cond_6

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_6
    return-object p0
.end method

.method public getSplitDependencies()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 1961
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    if-nez p0, :cond_6

    sget-object p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;

    :cond_6
    return-object p0
.end method

.method public getSplitFlags()[I
    .registers 1

    .line 1967
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitFlags:[I

    return-object p0
.end method

.method public getSplitNames()[Ljava/lang/String;
    .registers 1

    .line 1973
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitNames:[Ljava/lang/String;

    if-nez p0, :cond_6

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_6
    return-object p0
.end method

.method public getSplitRevisionCodes()[I
    .registers 1

    .line 1979
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitRevisionCodes:[I

    if-nez p0, :cond_6

    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    :cond_6
    return-object p0
.end method

.method public getStaticSharedLibName()Ljava/lang/String;
    .registers 1

    .line 1634
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibName:Ljava/lang/String;

    return-object p0
.end method

.method public getStaticSharedLibVersion()J
    .registers 3

    .line 1639
    iget-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibVersion:J

    return-wide v0
.end method

.method public getTargetSandboxVersion()I
    .registers 1

    .line 2137
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSandboxVersion:I

    return p0
.end method

.method public getTargetSdkVersion()I
    .registers 1

    .line 2132
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    return p0
.end method

.method public getTaskAffinity()Ljava/lang/String;
    .registers 1

    .line 2143
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->taskAffinity:Ljava/lang/String;

    return-object p0
.end method

.method public getTheme()I
    .registers 1

    .line 2148
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->theme:I

    return p0
.end method

.method public getUiOptions()I
    .registers 1

    .line 2153
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->uiOptions:I

    return p0
.end method

.method public getUpgradeKeySets()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1781
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    return-object p0
.end method

.method public getUsesLibraries()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1651
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    return-object p0
.end method

.method public getUsesNativeLibraries()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1663
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    return-object p0
.end method

.method public getUsesOptionalLibraries()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1657
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object p0
.end method

.method public getUsesOptionalNativeLibraries()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1669
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    return-object p0
.end method

.method public getUsesPermissions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedUsesPermission;",
            ">;"
        }
    .end annotation

    .line 1763
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    return-object p0
.end method

.method public getUsesSdkLibraries()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1692
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    return-object p0
.end method

.method public getUsesSdkLibrariesCertDigests()[[Ljava/lang/String;
    .registers 1

    .line 1700
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    return-object p0
.end method

.method public getUsesSdkLibrariesVersionsMajor()[J
    .registers 1

    .line 1696
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesVersionsMajor:[J

    return-object p0
.end method

.method public getUsesStaticLibraries()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1675
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    return-object p0
.end method

.method public getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;
    .registers 1

    .line 1687
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    return-object p0
.end method

.method public getUsesStaticLibrariesVersions()[J
    .registers 1

    .line 1681
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesVersions:[J

    return-object p0
.end method

.method public getVersionCode()I
    .registers 1

    .line 1522
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCode:I

    return p0
.end method

.method public getVersionCodeMajor()I
    .registers 1

    .line 1527
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCodeMajor:I

    return p0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 1

    .line 1543
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .registers 1

    .line 1898
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    return-object p0
.end method

.method public getZygotePreloadName()Ljava/lang/String;
    .registers 1

    .line 2159
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->zygotePreloadName:Ljava/lang/String;

    return-object p0
.end method

.method public hasPreserveLegacyExternalStorage()Z
    .registers 3

    const-wide v0, 0x2000000000L

    .line 2402
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public hasRequestForegroundServiceExemption()Z
    .registers 3

    const-wide v0, 0x400000000000L

    .line 2407
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public hasRequestRawExternalStorageAccess()Ljava/lang/Boolean;
    .registers 1

    .line 2347
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    return-object p0
.end method

.method public hasSelectivePermissionsForMDM()Z
    .registers 2

    .line 1870
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1873
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.samsung.knoxlicense.permissions"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hideAsParsed()Ljava/lang/Object;
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 674
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->assignDerivedFields()V

    return-object p0
.end method

.method public isAllowAudioPlaybackCapture()Z
    .registers 3

    const-wide v0, 0x80000000L

    .line 2367
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isAllowBackup()Z
    .registers 3

    const-wide/16 v0, 0x4

    .line 2174
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isAllowClearUserData()Z
    .registers 3

    const-wide/16 v0, 0x800

    .line 2219
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isAllowClearUserDataOnFailedRestore()Z
    .registers 3

    const-wide/32 v0, 0x40000000

    .line 2362
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isAllowNativeHeapPointerTagging()Z
    .registers 3

    const-wide v0, 0x1000000000L

    .line 2392
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isAllowTaskReparenting()Z
    .registers 3

    const-wide/16 v0, 0x400

    .line 2214
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isAnyDensity()Z
    .registers 2

    .line 645
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->anyDensity:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 646
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0

    .line 649
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isBackupInForeground()Z
    .registers 3

    const-wide/32 v0, 0x1000000

    .line 2303
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isBaseHardwareAccelerated()Z
    .registers 3

    const-wide/16 v0, 0x2

    .line 2169
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isCantSaveState()Z
    .registers 3

    const-wide v0, 0x800000000L

    .line 2387
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isCrossProfile()Z
    .registers 3

    const-wide v0, 0x80000000000L

    .line 2033
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isDebuggable()Z
    .registers 3

    const-wide/16 v0, 0x80

    .line 2199
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isDefaultToDeviceProtectedStorage()Z
    .registers 3

    const-wide/32 v0, 0x4000000

    .line 2313
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isDirectBootAware()Z
    .registers 3

    const-wide/32 v0, 0x8000000

    .line 2318
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .registers 3

    const-wide v0, 0x100000000000L

    .line 2028
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isExternalStorage()Z
    .registers 3

    const-wide/16 v0, 0x1

    .line 2164
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isExtractNativeLibs()Z
    .registers 3

    const-wide/32 v0, 0x20000

    .line 2249
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isForceQueryable()Z
    .registers 3

    const-wide v0, 0x40000000000L

    .line 1925
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isFullBackupOnly()Z
    .registers 3

    const-wide/16 v0, 0x20

    .line 2189
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isGame()Z
    .registers 3

    const-wide/32 v0, 0x40000

    .line 2254
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isHasCode()Z
    .registers 3

    const-wide/16 v0, 0x200

    .line 2209
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isHasDomainUrls()Z
    .registers 3

    const-wide/32 v0, 0x400000

    .line 2288
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isHasFragileUserData()Z
    .registers 3

    const-wide v0, 0x400000000L

    .line 2382
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isIsolatedSplitLoading()Z
    .registers 3

    const-wide/32 v0, 0x200000

    .line 2283
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isKillAfterRestore()Z
    .registers 3

    const-wide/16 v0, 0x8

    .line 2179
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isLargeHeap()Z
    .registers 3

    const-wide/16 v0, 0x1000

    .line 2224
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isLeavingSharedUid()Z
    .registers 3

    const-wide/high16 v0, 0x8000000000000L

    .line 2434
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isMultiArch()Z
    .registers 3

    const-wide/32 v0, 0x10000

    .line 2244
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isOnBackInvokedCallbackEnabled()Z
    .registers 3

    const-wide/high16 v0, 0x4000000000000L

    .line 2429
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isOverlay()Z
    .registers 3

    const-wide/32 v0, 0x100000

    .line 2278
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isOverlayIsStatic()Z
    .registers 3

    const-wide v0, 0x8000000000L

    .line 1611
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isPartiallyDirectBootAware()Z
    .registers 3

    const-wide/32 v0, 0x10000000

    .line 2352
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isPersistent()Z
    .registers 3

    const-wide/16 v0, 0x40

    .line 2194
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isProfileable()Z
    .registers 3

    const-wide v0, 0x200000000000L

    .line 2298
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isProfileableByShell()Z
    .registers 3

    .line 2293
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->isProfileable()Z

    move-result v0

    if-eqz v0, :cond_11

    const-wide/32 v0, 0x800000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public isRequestLegacyExternalStorage()Z
    .registers 3

    const-wide v0, 0x100000000L

    .line 2372
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isRequiredForAllUsers()Z
    .registers 3

    const-wide v0, 0x4000000000L

    .line 1571
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isResetEnabledSettingsOnAppDataCleared()Z
    .registers 3

    const-wide/high16 v0, 0x1000000000000L

    .line 2417
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isResizeable()Z
    .registers 2

    .line 637
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeable:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 638
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0

    .line 641
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isResizeableActivityViaSdkVersion()Z
    .registers 3

    const-wide/32 v0, 0x20000000

    .line 2357
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isRestoreAnyVersion()Z
    .registers 3

    const-wide/16 v0, 0x10

    .line 2184
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isSamsungThemeOverlay()Z
    .registers 1

    .line 3052
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->isSamsungThemeOverlay:Z

    return p0
.end method

.method public isSdkLibrary()Z
    .registers 3

    const-wide/high16 v0, 0x2000000000000L

    .line 2273
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isStaticSharedLibrary()Z
    .registers 3

    const-wide/32 v0, 0x80000

    .line 2268
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isSupportsExtraLargeScreens()Z
    .registers 2

    .line 629
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    .line 630
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const/16 v0, 0x9

    if-lt p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0

    .line 633
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSupportsLargeScreens()Z
    .registers 2

    .line 621
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 622
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0

    .line 625
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSupportsNormalScreens()Z
    .registers 1

    .line 617
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public isSupportsRtl()Z
    .registers 3

    const-wide/16 v0, 0x4000

    .line 2234
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isSupportsSmallScreens()Z
    .registers 2

    .line 609
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 610
    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0

    .line 613
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isTestOnly()Z
    .registers 3

    const-wide/32 v0, 0x8000

    .line 2239
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isUse32BitAbi()Z
    .registers 3

    const-wide v0, 0x10000000000L

    .line 1915
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isUseEmbeddedDex()Z
    .registers 3

    const-wide/32 v0, 0x2000000

    .line 2308
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isUsesCleartextTraffic()Z
    .registers 3

    const-wide/16 v0, 0x2000

    .line 2229
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isUsesNonSdkApi()Z
    .registers 3

    const-wide v0, 0x200000000L

    .line 2377
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isVisibleToInstantApps()Z
    .registers 3

    const-wide v0, 0x20000000000L

    .line 1920
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isVmSafeMode()Z
    .registers 3

    const-wide/16 v0, 0x100

    .line 2204
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 853
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 873
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic setAllowAudioPlaybackCapture(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAllowAudioPlaybackCapture(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAllowAudioPlaybackCapture(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide v0, 0x80000000L

    .line 2892
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAllowBackup(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAllowBackup(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAllowBackup(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/16 v0, 0x4

    .line 2692
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAllowClearUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAllowClearUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAllowClearUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/16 v0, 0x800

    .line 2737
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAllowClearUserDataOnFailedRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAllowClearUserDataOnFailedRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAllowClearUserDataOnFailedRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/32 v0, 0x40000000

    .line 2887
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAllowNativeHeapPointerTagging(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAllowNativeHeapPointerTagging(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAllowNativeHeapPointerTagging(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide v0, 0x1000000000L

    .line 2917
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAllowTaskReparenting(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAllowTaskReparenting(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAllowTaskReparenting(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/16 v0, 0x400

    .line 2732
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAnyDensity(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAnyDensity(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAnyDensity(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object p0

    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 985
    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->anyDensity:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setAppComponentFactory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAppComponentFactory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAppComponentFactory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2970
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->appComponentFactory:Ljava/lang/String;

    return-object p0
.end method

.method public setAttributionsAreUserVisible(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 4

    const-wide v0, 0x800000000000L

    .line 3018
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    return-object p0
.end method

.method public bridge synthetic setAutoRevokePermissions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAutoRevokePermissions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAutoRevokePermissions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2922
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->autoRevokePermissions:I

    return-object p0
.end method

.method public bridge synthetic setBackupAgentName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBackupAgentName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setBackupAgentName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2976
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->backupAgentName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setBackupInForeground(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBackupInForeground(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setBackupInForeground(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/32 v0, 0x1000000

    .line 2833
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setBanner(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBanner(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setBanner(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2524
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->banner:I

    return-object p0
.end method

.method public bridge synthetic setBaseHardwareAccelerated(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBaseHardwareAccelerated(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setBaseHardwareAccelerated(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/16 v0, 0x2

    .line 2687
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setBaseRevisionCode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBaseRevisionCode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setBaseRevisionCode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2439
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->baseRevisionCode:I

    return-object p0
.end method

.method public final setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 6
    .param p1    # J
        .annotation build Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl$Booleans$Values;
        .end annotation
    .end param

    if-eqz p3, :cond_8

    .line 560
    iget-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    goto :goto_e

    .line 562
    :cond_8
    iget-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    not-long p1, p1

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    :goto_e
    return-object p0
.end method

.method public bridge synthetic setCantSaveState(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setCantSaveState(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setCantSaveState(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide v0, 0x800000000L

    .line 2912
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setCategory(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setCategory(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setCategory(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2530
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->category:I

    return-object p0
.end method

.method public bridge synthetic setClassLoaderName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setClassLoaderName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setClassLoaderName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2982
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->classLoaderName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setClassName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setClassName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setClassName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    .line 2988
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_8
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setCompatibleWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setCompatibleWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setCompatibleWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2536
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compatibleWidthLimitDp:I

    return-object p0
.end method

.method public bridge synthetic setCompileSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setCompileSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setCompileSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2445
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersion:I

    return-object p0
.end method

.method public setCompileSdkVersionCodeName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 2939
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setCrossProfile(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setCrossProfile(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setCrossProfile(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide v0, 0x80000000000L

    .line 2553
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDataExtractionRules(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setDataExtractionRules(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setDataExtractionRules(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2564
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->dataExtractionRules:I

    return-object p0
.end method

.method public bridge synthetic setDebuggable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setDebuggable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setDebuggable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/16 v0, 0x80

    .line 2717
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/32 v0, 0x4000000

    .line 2843
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDescriptionRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setDescriptionRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setDescriptionRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2542
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->descriptionRes:I

    return-object p0
.end method

.method public bridge synthetic setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/32 v0, 0x8000000

    .line 2848
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide v0, 0x100000000000L

    .line 2548
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/16 v0, 0x1

    .line 2682
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setExtractNativeLibs(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setExtractNativeLibs(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setExtractNativeLibs(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/32 v0, 0x20000

    .line 2767
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setForceQueryable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setForceQueryable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setForceQueryable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide v0, 0x40000000000L

    .line 2519
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setFullBackupContent(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setFullBackupContent(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setFullBackupContent(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2558
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->fullBackupContent:I

    return-object p0
.end method

.method public bridge synthetic setFullBackupOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setFullBackupOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setFullBackupOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/16 v0, 0x20

    .line 2707
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setGame(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setGame(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setGame(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/32 v0, 0x40000

    .line 2772
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setGwpAsanMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setGwpAsanMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setGwpAsanMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2853
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->gwpAsanMode:I

    return-object p0
.end method

.method public bridge synthetic setHasCode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setHasCode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setHasCode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/16 v0, 0x200

    .line 2727
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setHasDomainUrls(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setHasDomainUrls(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setHasDomainUrls(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/32 v0, 0x400000

    .line 2818
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setHasFragileUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setHasFragileUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setHasFragileUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide v0, 0x400000000L

    .line 2907
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2570
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->iconRes:I

    return-object p0
.end method

.method public bridge synthetic setInstallLocation(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setInstallLocation(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setInstallLocation(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2576
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    return-object p0
.end method

.method public bridge synthetic setIsolatedSplitLoading(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setIsolatedSplitLoading(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setIsolatedSplitLoading(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/32 v0, 0x200000

    .line 2813
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setKillAfterRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setKillAfterRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setKillAfterRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/16 v0, 0x8

    .line 2697
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setKnownActivityEmbeddingCerts(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;"
        }
    .end annotation

    .line 3039
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    return-object p0
.end method

.method public bridge synthetic setLabelRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setLabelRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setLabelRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2587
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->labelRes:I

    return-object p0
.end method

.method public bridge synthetic setLargeHeap(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setLargeHeap(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setLargeHeap(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/16 v0, 0x1000

    .line 2742
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setLargestWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setLargestWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setLargestWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2593
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->largestWidthLimitDp:I

    return-object p0
.end method

.method public bridge synthetic setLeavingSharedUid(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setLeavingSharedUid(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setLeavingSharedUid(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/high16 v0, 0x8000000000000L

    .line 2582
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setLocaleConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setLocaleConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setLocaleConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 3032
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLocaleConfigRes:I

    return-object p0
.end method

.method public bridge synthetic setLogo(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setLogo(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setLogo(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2599
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->logo:I

    return-object p0
.end method

.method public bridge synthetic setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2994
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setMaxAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMaxAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMaxAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2605
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxAspectRatio:F

    return-object p0
.end method

.method public bridge synthetic setMaxSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMaxSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMaxSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2629
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxSdkVersion:I

    return-object p0
.end method

.method public bridge synthetic setMemtagMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMemtagMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMemtagMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2859
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->memtagMode:I

    return-object p0
.end method

.method public bridge synthetic setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2497
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->metaData:Landroid/os/Bundle;

    return-object p0
.end method

.method public bridge synthetic setMinAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMinAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMinAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2611
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minAspectRatio:F

    return-object p0
.end method

.method public bridge synthetic setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2617
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public bridge synthetic setMinSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMinSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMinSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2623
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    return-object p0
.end method

.method public bridge synthetic setMultiArch(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMultiArch(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMultiArch(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/32 v0, 0x10000

    .line 2762
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setNativeHeapZeroInitialized(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setNativeHeapZeroInitialized(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setNativeHeapZeroInitialized(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2866
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nativeHeapZeroInitialized:I

    return-object p0
.end method

.method public bridge synthetic setNetworkSecurityConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setNetworkSecurityConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setNetworkSecurityConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2635
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->networkSecurityConfigRes:I

    return-object p0
.end method

.method public bridge synthetic setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_c

    .line 1049
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_c
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setOnBackInvokedCallbackEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 4

    const-wide/high16 v0, 0x4000000000000L

    .line 3045
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    return-object p0
.end method

.method public bridge synthetic setOverlay(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setOverlay(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOverlay(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/32 v0, 0x100000

    .line 2808
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setOverlayCategory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setOverlayCategory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOverlayCategory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2964
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayCategory:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setOverlayIsStatic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setOverlayIsStatic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOverlayIsStatic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide v0, 0x8000000000L

    .line 2462
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setOverlayPriority(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setOverlayPriority(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOverlayPriority(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2456
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayPriority:I

    return-object p0
.end method

.method public bridge synthetic setOverlayTarget(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setOverlayTarget(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOverlayTarget(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 1025
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTarget:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2958
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setPartiallyDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setPartiallyDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPartiallyDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/32 v0, 0x10000000

    .line 2877
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 3000
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/16 v0, 0x40

    .line 2712
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setPreserveLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setPreserveLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPreserveLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide v0, 0x2000000000L

    .line 2928
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2945
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setProcesses(Ljava/util/Map;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setProcesses(Ljava/util/Map;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setProcesses(Ljava/util/Map;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;)",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;"
        }
    .end annotation

    .line 2491
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic setProfileable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setProfileable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setProfileable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    xor-int/lit8 p1, p1, 0x1

    const-wide v0, 0x200000000000L

    .line 2828
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setProfileableByShell(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setProfileableByShell(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setProfileableByShell(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/32 v0, 0x800000

    .line 2823
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRequestForegroundServiceExemption(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRequestForegroundServiceExemption(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRequestForegroundServiceExemption(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide v0, 0x400000000000L

    .line 2671
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRequestLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRequestLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRequestLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide v0, 0x100000000L

    .line 2897
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2872
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setRequiredAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRequiredAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRequiredAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 1019
    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiredAccountType:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setRequiredForAllUsers(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRequiredForAllUsers(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRequiredForAllUsers(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide v0, 0x4000000000L

    .line 2451
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRequiresSmallestWidthDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRequiresSmallestWidthDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRequiresSmallestWidthDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2641
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiresSmallestWidthDp:I

    return-object p0
.end method

.method public setResetEnabledSettingsOnAppDataCleared(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 4

    const-wide/high16 v0, 0x1000000000000L

    .line 3025
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    return-object p0
.end method

.method public bridge synthetic setResizeable(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setResizeable(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setResizeable(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object p0

    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 975
    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2780
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setResizeableActivityViaSdkVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setResizeableActivityViaSdkVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setResizeableActivityViaSdkVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/32 v0, 0x20000000

    .line 2882
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRestoreAnyVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRestoreAnyVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRestoreAnyVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/16 v0, 0x10

    .line 2702
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public varargs setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2479
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictUpdateHash:[B

    return-object p0
.end method

.method public bridge synthetic setRestrictedAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRestrictedAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRestrictedAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2951
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictedAccountType:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setRoundIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRoundIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRoundIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2647
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->roundIconRes:I

    return-object p0
.end method

.method public bridge synthetic setSamsungThemeOverlay(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSamsungThemeOverlay(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSamsungThemeOverlay(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 3057
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->isSamsungThemeOverlay:Z

    return-object p0
.end method

.method public bridge synthetic setSdkLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSdkLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSdkLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2786
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setSdkLibVersionMajor(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSdkLibVersionMajor(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSdkLibVersionMajor(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2792
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibVersionMajor:I

    return-object p0
.end method

.method public bridge synthetic setSdkLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSdkLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSdkLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/high16 v0, 0x2000000000000L

    .line 2798
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setSharedUserId(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSharedUserId(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSharedUserId(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 1043
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserId:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setSharedUserLabel(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSharedUserLabel(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSharedUserLabel(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2473
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserLabel:I

    return-object p0
.end method

.method public bridge synthetic setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2503
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    return-object p0
.end method

.method public bridge synthetic setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 3

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    .line 1013
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-object p0
.end method

.method public bridge synthetic setSplitHasCode(IZ)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 3

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSplitHasCode(IZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSplitHasCode(IZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    .line 1005
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitFlags:[I

    if-eqz p2, :cond_9

    .line 1006
    aget p2, v0, p1

    or-int/lit8 p2, p2, 0x4

    goto :goto_d

    .line 1007
    :cond_9
    aget p2, v0, p1

    and-int/lit8 p2, p2, -0x5

    :goto_d
    aput p2, v0, p1

    return-object p0
.end method

.method public bridge synthetic setStaticSharedLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setStaticSharedLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setStaticSharedLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 1037
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setStaticSharedLibVersion(J)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 3

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setStaticSharedLibVersion(J)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setStaticSharedLibVersion(J)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 2467
    iput-wide p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibVersion:J

    return-object p0
.end method

.method public bridge synthetic setStaticSharedLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setStaticSharedLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setStaticSharedLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/32 v0, 0x80000

    .line 2803
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setSupportsExtraLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSupportsExtraLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSupportsExtraLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object p0

    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 965
    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setSupportsLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSupportsLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSupportsLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object p0

    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 955
    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setSupportsNormalScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSupportsNormalScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSupportsNormalScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object p0

    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 945
    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setSupportsRtl(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSupportsRtl(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSupportsRtl(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/16 v0, 0x4000

    .line 2752
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setSupportsSmallScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSupportsSmallScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSupportsSmallScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object p0

    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 935
    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setTargetSandboxVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setTargetSandboxVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setTargetSandboxVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2653
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSandboxVersion:I

    return-object p0
.end method

.method public bridge synthetic setTargetSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setTargetSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setTargetSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2659
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    return-object p0
.end method

.method public bridge synthetic setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 3006
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->taskAffinity:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setTestOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setTestOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setTestOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/32 v0, 0x8000

    .line 2757
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setTheme(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setTheme(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setTheme(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2665
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->theme:I

    return-object p0
.end method

.method public bridge synthetic setUiOptions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setUiOptions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setUiOptions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2676
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->uiOptions:I

    return-object p0
.end method

.method public bridge synthetic setUpgradeKeySets(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setUpgradeKeySets(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setUpgradeKeySets(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;"
        }
    .end annotation

    .line 2485
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    return-object p0
.end method

.method public bridge synthetic setUse32BitAbi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setUse32BitAbi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setUse32BitAbi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide v0, 0x10000000000L

    .line 2509
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUseEmbeddedDex(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setUseEmbeddedDex(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setUseEmbeddedDex(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/32 v0, 0x2000000

    .line 2838
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUsesCleartextTraffic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setUsesCleartextTraffic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setUsesCleartextTraffic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/16 v0, 0x2000

    .line 2747
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUsesNonSdkApi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setUsesNonSdkApi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setUsesNonSdkApi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide v0, 0x200000000L

    .line 2902
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setVersionName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setVersionName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setVersionName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 2933
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setVisibleToInstantApps(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setVisibleToInstantApps(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setVisibleToInstantApps(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide v0, 0x20000000000L

    .line 2514
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setVmSafeMode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setVmSafeMode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setVmSafeMode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4

    const-wide/16 v0, 0x100

    .line 2722
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 1031
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setZygotePreloadName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setZygotePreloadName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setZygotePreloadName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 3012
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->zygotePreloadName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic sortActivities()Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 1

    .line 106
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sortActivities()Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public sortActivities()Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 654
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public bridge synthetic sortReceivers()Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 1

    .line 106
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sortReceivers()Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public sortReceivers()Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 660
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public bridge synthetic sortServices()Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 1

    .line 106
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sortServices()Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public sortServices()Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 666
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1069
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1070
    invoke-static {p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->appInfoFlags(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1071
    invoke-static {p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1072
    invoke-static {p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->appInfoPrivateFlagsExt(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I

    move-result p0

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    return-object v0
.end method

.method public toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;
    .registers 4

    .line 1077
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 1082
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->appComponentFactory:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    .line 1083
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->backupAgentName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 1084
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->banner:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->banner:I

    .line 1085
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->category:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1086
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->classLoaderName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 1087
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 1088
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compatibleWidthLimitDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 1089
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 1090
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 1092
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->isCrossProfile()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    .line 1094
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->descriptionRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    const-wide v1, 0x100000000000L

    .line 1096
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1098
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->fullBackupContent:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 1099
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->dataExtractionRules:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    .line 1104
    sget-boolean v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    if-eqz v1, :cond_4f

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->roundIconRes:I

    if-eqz v1, :cond_4f

    goto :goto_51

    :cond_4f
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->iconRes:I

    :goto_51
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 1105
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->iconRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    .line 1106
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->roundIconRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    .line 1107
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1108
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->labelRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 1109
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->largestWidthLimitDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 1110
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->logo:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    .line 1111
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 1112
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxAspectRatio:F

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    .line 1113
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1114
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minAspectRatio:F

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->minAspectRatio:F

    .line 1115
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 1116
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 1120
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->networkSecurityConfigRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 1121
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1122
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1123
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permission:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 1125
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 1126
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiresSmallestWidthDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 1135
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    .line 1136
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_b0

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_ad

    goto :goto_b0

    .line 1137
    :cond_ad
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    goto :goto_b1

    :cond_b0
    :goto_b0
    move-object v1, v2

    :goto_b1
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 1138
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitNames:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 1139
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mStorageUuid:Ljava/util/UUID;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 1140
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSandboxVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 1141
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1142
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->taskAffinity:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 1143
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->theme:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 1145
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->uiOptions:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 1146
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 1147
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->zygotePreloadName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    .line 1148
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->gwpAsanMode:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setGwpAsanMode(I)V

    .line 1149
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->memtagMode:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setMemtagMode(I)V

    .line 1150
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nativeHeapZeroInitialized:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setNativeHeapZeroInitialized(I)V

    .line 1151
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)V

    .line 1152
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    .line 1153
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    .line 1154
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    .line 1155
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    .line 1156
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_109

    move-object v1, v2

    goto :goto_10b

    :cond_109
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    :goto_10b
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    .line 1157
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_117

    goto :goto_119

    :cond_117
    iget-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    :goto_119
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    .line 1158
    iget-wide v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLongVersionCode:J

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 1159
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->buildAppClassNamesByProcess()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setAppClassNamesByProcess(Landroid/util/ArrayMap;)V

    .line 1160
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLocaleConfigRes:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setLocaleConfigRes(I)V

    .line 1161
    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-eqz p0, :cond_134

    .line 1162
    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    :cond_134
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 1210
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 1211
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 1212
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 1213
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 1214
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 1215
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->anyDensity:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 1216
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1217
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCodeMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->baseRevisionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 1220
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1221
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1222
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 1223
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictedAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1225
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiredAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1226
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 1227
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1228
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1229
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1230
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;->parcel(Ljava/util/Map;Landroid/os/Parcel;I)V

    .line 1231
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 1232
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibVersionMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1233
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 1234
    iget-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1235
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1236
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1237
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1238
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1239
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1241
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1242
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesVersions:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1243
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_ce

    .line 1244
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e0

    .line 1246
    :cond_ce
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 1247
    :goto_d3
    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_e0

    .line 1248
    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d3

    .line 1252
    :cond_e0
    :goto_e0
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-virtual {v0, v3, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1253
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesVersionsMajor:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1254
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    if-nez v0, :cond_f4

    .line 1255
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_105

    .line 1257
    :cond_f4
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1258
    :goto_f8
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    array-length v1, v0

    if-ge v2, v1, :cond_105

    .line 1259
    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f8

    .line 1263
    :cond_105
    :goto_105
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 1264
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1266
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1267
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1268
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictUpdateHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1269
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1270
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1271
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1272
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1273
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1274
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 1275
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->writeKeySetMapping(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 1276
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1277
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1278
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1279
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1280
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1281
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1282
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1283
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1284
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1285
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1286
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForIntentInfoPairs:Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1287
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1288
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1289
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 1290
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1291
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1292
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1293
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1294
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 1295
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->appComponentFactory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1296
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1297
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->banner:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1298
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1299
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->classLoaderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1300
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1301
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compatibleWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1303
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->fullBackupContent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1304
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->dataExtractionRules:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1305
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->iconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1306
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1307
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1308
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->largestWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1309
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->logo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1311
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1312
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1313
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1314
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1315
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->networkSecurityConfigRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1316
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 1317
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1318
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1319
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiresSmallestWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1320
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->roundIconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1321
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSandboxVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1322
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1323
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1324
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1325
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1326
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->zygotePreloadName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1327
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1328
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1329
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 1330
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitFlags:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1331
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1332
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitRevisionCodes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1333
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 1334
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->autoRevokePermissions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1335
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 1336
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->gwpAsanMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1337
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseIntArray(Landroid/util/SparseIntArray;)V

    .line 1338
    iget-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1339
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1340
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->memtagMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1341
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nativeHeapZeroInitialized:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1342
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 1343
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLocaleConfigRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1344
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 1347
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->isSamsungThemeOverlay:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
